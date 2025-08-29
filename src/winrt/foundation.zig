const std = @import("std");
const core = @import("core.zig");
const win32 = @import("win32");
const winrt = @import("../root.zig");

const Guid = win32.zig.Guid;
const HRESULT = win32.foundation.HRESULT;
const Signature = core.Signature;
const wiredGuidEql = core.wiredGuidEql;
const generic = core.generic;
const isInterface = core.isInterface;

const TrustLevel = winrt.TrustLevel;
const HSTRING = winrt.HSTRING;
const WindowsGetString = winrt.WindowsGetString;
const Implements = core.Implements;

const IUnknown = winrt.IUnknown;
const IInspectable = winrt.IInspectable;
const IID_IAgileObject = win32.system.com.IID_IAgileObject;
const IID_IMarshal = win32.system.com.IID_IMarshal;
const S_OK = winrt.S_OK;
const E_NOINTERFACE = winrt.E_NOINTERFACE;
const E_OUTOFMEMORY = winrt.E_OUTOFMEMORY;

pub const collections = @import("foundation/collections.zig");

pub const DateTime = extern struct {
    UniversalTime: i64,

    pub const SIGNATURE: []const u8 = "struct(Windows.Foundation.DateTime;i8)";
};

pub const TimeSpan = extern struct {
    Duration: i64,

    pub const SIGNATURE: []const u8 = "struct(Windows.Foundation.TimeSpan;i8)";
};

// The type erased interface for a TypedEventHandler
//
// The first part of the memory layout is the same as `TypedEventHandler(I, R)`
// so it functions as expected when the pointers are cast between the two types
// when crossing the boundry between zig and windows.
// pub const ITypedEventHandler = extern struct {
//     // COM vtable layout
//     vtable: *const VTable,
//
// };

/// Represents a method that handles general events
///
/// This method handles delegating the invoked callback for a
/// given typed event.
pub fn TypedEventHandler(TSender: type, TArgs: type) type {
    return extern struct {
        const SIGNATURE = Signature.pinterface("9de1c534-6ae1-11e0-84e1-18a905bcc53f", &.{ Signature.get(TSender), Signature.get(TArgs) });
        const IID = Signature.guid(SIGNATURE);
        const GUID = &core.guidToString(&IID);

        pub const VTABLE = VTable{
            .QueryInterface = queryInterface,
            .AddRef = addRef,
            .Release = release,
            .Invoke = invoke,
        };

        vtable: *const VTable,
        refs: std.atomic.Value(u32),
        cb: *const fn (context: ?*anyopaque, sender: generic(TSender), args: generic(TArgs)) callconv(.c) void,
        context: ?*anyopaque = null,

        pub fn init(
            callback: *const fn (context: ?*anyopaque, sender: generic(TSender), args: generic(TArgs)) callconv(.c) void,
        ) !*@This() {
            const _r = try std.heap.c_allocator.create(@This());
            _r.* = .{
                .vtable = &VTABLE,
                .refs = std.atomic.Value(u32).init(1),
                .cb = callback,
            };
            return _r;
        }

        pub fn initWithState(
            callback: *const fn (context: ?*anyopaque, sender: generic(TSender), args: generic(TArgs)) callconv(.c) void,
            context: anytype,
        ) !*@This() {
            const _r = try std.heap.c_allocator.create(@This());
            _r.* = .{
                .vtable = &VTABLE,
                .refs = std.atomic.Value(u32).init(1),
                .cb = callback,
                .context = @ptrCast(context),
            };
            return _r;
        }

        pub fn deinit(self: *@This()) void {
            _ = release(@ptrCast(self));
        }

        fn queryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
            const me: *@This() = @ptrCast(@alignCast(self));
            // TODO: Handle IMarshal
            if (wiredGuidEql(riid, &IID) or
                wiredGuidEql(riid, &IUnknown.IID) or
                wiredGuidEql(riid, IID_IAgileObject))
            {
                out.* = @as(?*anyopaque, @ptrCast(me));
                _ = addRef(self);
                return S_OK;
            }
            out.* = null;
            return @bitCast(E_NOINTERFACE);
        }

        fn addRef(self: *anyopaque) callconv(.c) u32 {
            const me: *@This() = @ptrCast(@alignCast(self));
            return me.refs.fetchAdd(1, .monotonic) + 1;
        }

        fn release(self: *anyopaque) callconv(.c) u32 {
            const this: *@This() = @ptrCast(@alignCast(self));
            const left = this.refs.fetchSub(1, .acq_rel) - 1;
            if (left == 0) std.heap.c_allocator.destroy(this);
            return left;
        }

        // Invoke(sender, args)
        //
        // This will always return `S_OK` because event callbacks shouldn't fail
        fn invoke(self: *@This(), sender: generic(TSender), args: generic(TArgs)) callconv(.c) HRESULT {
            self.cb(self.context, sender, args);
            return S_OK;
        }

        pub const VTable = extern struct {
            QueryInterface: *const fn (
                self: *anyopaque,
                riid: *const Guid,
                ppvObject: *?*anyopaque,
            ) callconv(.c) HRESULT,
            AddRef: *const fn (
                self: *anyopaque,
            ) callconv(.c) u32,
            Release: *const fn (
                self: *anyopaque,
            ) callconv(.c) u32,

            // Invoke method for the delegate
            Invoke: *const fn (
                self: *TypedEventHandler(TSender, TArgs),
                sender: generic(TSender),
                args: generic(TArgs),
            ) callconv(.c) HRESULT,
        };
    };
}

pub fn IReference(T: type) type {
    const TYPE = if (isInterface(T)) *T else T;
    return extern struct {
        vtable: *const VTable,

        pub fn queryInterface(self: *@This(), I: type) !*I {
            var result: *anyopaque = undefined;
            if (self.vtable.QueryInterface(@ptrCast(self), &I.IID, &result) != S_OK) {
                return error.E_NOINTERFACE;
            }
            return @ptrCast(@alignCast(result));
        }

        pub fn addRef(self: *@This()) u32 {
            return self.vtable.AddRef(@ptrCast(self));
        }

        pub fn release(self: *@This()) u32 {
            return self.vtable.Release(@ptrCast(self));
        }

        pub fn getIids(self: *@This()) ![]const Guid {
            var count: u32 = 0;
            var iids: [*]Guid = undefined;
            if (self.vtable.GetIids(@ptrCast(self), &count, &iids) != S_OK) {
                return error.OutOfMemory;
            }
            return iids[0..@as(usize, @intCast(count))];
        }

        pub fn getRuntimeClassName(self: *@This()) ![]const u16 {
            var name: HSTRING = undefined;
            const code = self.vtable.GetRuntimeClassName(@ptrCast(self), &name);
            if (code == S_OK) {
                return WindowsGetString(name).?;
            } else if (code == E_OUTOFMEMORY) {
                return error.OutOfMemory;
            } else {
                return error.IllegalMethodCall;
            }
        }

        pub fn getTrustLevel(self: *@This()) TrustLevel {
            var trust: TrustLevel = undefined;
            _ = self.vtable.GetTrustLevel(@ptrCast(self), &trust);
            return trust;
        }

        pub fn value(self: *@This()) TYPE {
            var result: TYPE = undefined;
            _ = self.vtable.Value(@ptrCast(self), &result);
            return result;
        }

        pub const TYPE_NAME: []const u8 = "Windows.Foundation.IReference";
        pub const RUNTIME_NAME: [:0]const u16 = std.unicode.utf8ToUtf16LeStringLiteral(TYPE_NAME);

        pub const SIGNATURE: []const u8 = Signature.pinterface("61c17706-2d65-11e0-9ae8-d48564015472", &.{Signature.get(T)});
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(IInspectable.VTable, struct {
            Value: *const fn (*anyopaque, *TYPE) callconv(.c) HRESULT,
        });
    };
}
