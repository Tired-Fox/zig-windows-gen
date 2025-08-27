const std = @import("std");
const winrt = @import("../../root.zig");
const win32 = @import("win32");

const Guid = win32.zig.Guid;
const HRESULT = win32.foundation.HRESULT;
const HSTRING = winrt.HSTRING;
const IUnknown = win32.system.com.IUnknown;

const CO_E_NOTINITIALIZED = winrt.CO_E_NOTINITIALIZED;
const E_ACCESSDENIED = winrt.E_ACCESSDENIED;
const E_OUTOFMEMORY = winrt.E_OUTOFMEMORY;
const IID_IAgileObject = win32.system.com.IID_IAgileObject;
const REGDB_E_CLASSNOTREG = winrt.REGDB_E_CLASSNOTREG;
const S_OK = winrt.S_OK;

const WindowsCreateString = winrt.WindowsCreateString;
const WindowsDeleteString = winrt.WindowsDeleteString;

const CoIncrementMTAUsage = win32.system.com.CoIncrementMTAUsage;
const RoGetActivationFactory = win32.system.win_rt.RoGetActivationFactory;

pub const FactoryError = error{
    /// No interface found for the given action, or the given class does not implement IInspectable
    NoInterface,
    /// The thread has not been initialized in the Windows Runtime by calling RoInitialize
    NotInitialized,
    /// The TrustLevel for the class requires a full-trust process
    AccessDenied,
    OutOfMemory,
};

pub const FactoryCache = struct {
    shared: std.atomic.Value(?*anyopaque) = .init(null),

    pub fn call(self: *@This(), I: type, runtime_name: [:0]const u16) !*I {
        while (true) {
            // Attempt to load a previously cached factory pointer.
            if (self.shared.load(.acquire)) |ptr| {
                // If a pointer is found, the cache is primed and we're good to go.
                return @ptrCast(@alignCast(ptr));
            }

            // Otherwise, we load the factory the usual way.
            const factory = try loadFactory(I, runtime_name);

            // If the factory is agile, we can safely cache it.
            const unknown: *IUnknown = @ptrCast(@alignCast(factory));

            var temp: *anyopaque = undefined;
            if (@as(u32, @bitCast(unknown.QueryInterface(IID_IAgileObject, &temp))) == S_OK) {
                _ = self.shared.cmpxchgStrong(null, factory, .acq_rel, .acquire);
            } else {
                // Otherwise, for non-agile factories we simply use the factory
                // and discard after use as it is not safe to cache.
                return @ptrCast(@alignCast(factory));
            }
        }
    }
};

fn loadFactory(I: type, runtime_name: [:0]const u16) FactoryError!*anyopaque {
    const interface_iid: *const Guid = &I.IID;

    var factory: *anyopaque = undefined;

    const name: ?HSTRING = try WindowsCreateString(runtime_name);
    defer WindowsDeleteString(name);

    const code = code_block: {
        var result: u32 = @bitCast(RoGetActivationFactory(
            name,
            interface_iid,
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
                interface_iid,
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

    return error.NoInterface;
}

const suffix: []const u16 = std.unicode.utf8ToUtf16LeStringLiteral(".dll");

// Remove the suffix until a match is found appending `.dll\0` at the end
///
/// For example, if the class name is
/// "A.B.TypeName" then the attempted load order will be:
///   1. A.B.dll
///   2. A.dll
fn searchPath(runtime_path: [:0]const u16, name: *const ?HSTRING) FactoryError!?*anyopaque {
    var path: []const u16 = runtime_path[0..];

    while (std.mem.lastIndexOf(u16, path, &[_]u16{'.'})) |pos| {
        path = path[0..pos];

        var library: [:0]u16 = std.heap.smp_allocator.allocSentinel(u16, path.len + suffix.len, 0) catch return error.OutOfMemory;
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
    if (result == S_OK) {
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
