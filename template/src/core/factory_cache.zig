// ----- This code is written and maintained by hand -----
const std = @import("std");
const core = @import("../core.zig");
const windows = @import("../root.zig");
const win32 = @import("win32");

const Guid = windows.Guid;
const HRESULT = windows.HRESULT;
const HSTRING = windows.HSTRING;
const IUnknown = windows.IUnknown;
const IAgileObject = windows.IAgileObject;

pub const CO_E_NOTINITIALIZED: u32 = 0x800401F0;
pub const REGDB_E_CLASSNOTREG: u32 = 0x80040154;

const WindowsCreateString = windows.WindowsCreateString;
const WindowsDeleteString = windows.WindowsDeleteString;

const CoIncrementMTAUsage = win32.system.com.CoIncrementMTAUsage;
const RoGetActivationFactory = win32.system.win_rt.RoGetActivationFactory;

/// Creates a cached factory that is of a certain Factory type
/// and is meant to only instantiate the class provided by the Runtime Name (RN)
/// parameter.
pub fn FactoryCache(F: type, comptime RN: [:0]const u16) type {
    return struct {
        shared: std.atomic.Value(?*anyopaque) = .init(null),

        pub fn get(self: *@This()) core.HResult!*F {
            while (true) {
                // Attempt to load a previously cached factory pointer.
                if (self.shared.load(.acquire)) |ptr| {
                    // If a pointer is found, the cache is primed and we're good to go.
                    return @ptrCast(@alignCast(ptr));
                }

                // Otherwise, we load the factory the usual way.
                const factory = try loadFactory(&F.IID, RN);

                // If the factory is agile, we can safely cache it.
                const unknown: *IUnknown = @ptrCast(@alignCast(factory));

                var temp: ?*anyopaque = undefined;
                if (unknown.QueryInterface(&IAgileObject.IID, &temp) == 0) {
                    _ = self.shared.cmpxchgStrong(null, factory, .acq_rel, .acquire);
                } else {
                    // Otherwise, for non-agile factories we simply use the factory
                    // and discard after use as it is not safe to cache.
                    return @ptrCast(@alignCast(factory));
                }
            }
        }
    };
}

fn loadFactory(factory_iid: *const Guid, runtime_name: [:0]const u16) core.HResult!*anyopaque {
    var factory: *anyopaque = undefined;

    const name: ?HSTRING = try WindowsCreateString(runtime_name);
    defer WindowsDeleteString(name);

    const code = code_block: {
        var result: u32 = @bitCast(RoGetActivationFactory(
            name,
            factory_iid,
            &factory,
        ));

        // If RoGetActivationFactory fails because combase hasn't been loaded yet then load combase
        // automatically so that it "just works" for apartment-agnostic code.
        if (result == CO_E_NOTINITIALIZED) {
            var cookie: isize = undefined;
            // Attempt initialize
            _ = CoIncrementMTAUsage(&cookie);
            // _ = RoInitialize(.MULTITHREADED);

            // Now try a second time to get the activation factory via the OS.
            result = @bitCast(RoGetActivationFactory(
                name,
                factory_iid,
                &factory,
            ));
        }

        break :code_block result;
    };

    // If this succeeded then return the resulting factory interface.
    if (code == 0) {
        return factory;
    }

    // If not, first capture the error information from the failure above so that we
    // can ultimately return this error information if all else fails.
    // let original: crate::Error = code.into();

    // Reg-free activation should only be attempted if the class is not registered.
    // It should not be attempted if the class is registered but fails to activate.
    if (code == REGDB_E_CLASSNOTREG) {
        // Now attempt to find the factory's implementation heuristically.
        if (try searchPath(runtime_name, &name)) |i| {
            return i;
        }
    }

    return error.E_NOINTERFACE;
}

const suffix: []const u16 = std.unicode.utf8ToUtf16LeStringLiteral(".dll");

// Remove the suffix until a match is found appending `.dll\0` at the end
///
/// For example, if the class name is
/// "A.B.TypeName" then the attempted load order will be:
///   1. A.B.dll
///   2. A.dll
fn searchPath(runtime_path: [:0]const u16, name: *const ?HSTRING) core.HResult!?*anyopaque {
    var path: []const u16 = runtime_path[0..];

    while (std.mem.lastIndexOf(u16, path, &[_]u16{'.'})) |pos| {
        path = path[0..pos];

        var library: [:0]u16 = std.heap.smp_allocator.allocSentinel(u16, path.len + suffix.len, 0) catch return error.E_OUTOFMEMORY;
        defer std.heap.smp_allocator.free(library);

        @memcpy(library[0..path.len], path);
        @memcpy(library[path.len..], suffix);

        if (getActivationFactory(library.ptr, name)) |r| {
            return r;
        }
    }
    return null;
}

const DllGetActivationFactory = *const fn (name: *const anyopaque, factory: **anyopaque) HRESULT;
const DllGetActivationFactoryName: [:0]const u8 = "DllGetActivationFactory";

fn getActivationFactory(
    library: [*:0]const u16,
    name: *const ?HSTRING,
) ?*anyopaque {
    const function = delayLoad(DllGetActivationFactory, library, DllGetActivationFactoryName.ptr) orelse return null;
    var abi: *anyopaque = undefined;
    const result = function(@ptrCast(@alignCast(name)), &abi);
    if (result == 0) {
        return @ptrCast(@alignCast(abi));
    }
    return null;
}

fn delayLoad(T: type, library: [*:0]const u16, function: [*:0]const u8) ?T {
    const lib = win32.system.library_loader.LoadLibraryExW(
        library,
        null,
        win32.system.library_loader.LOAD_LIBRARY_SEARCH_DEFAULT_DIRS,
    );

    if (lib == null) return null;

    const address = win32.system.library_loader.GetProcAddress(lib, function);

    if (address) |a| {
        return @ptrCast(@alignCast(a));
    }

    _ = win32.system.library_loader.FreeLibrary(lib);
    return null;
}
