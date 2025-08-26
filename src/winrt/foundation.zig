const std = @import("std");
const core = @import("core.zig");
const win32 = @import("win32");
const winrt = @import("../root.zig");

const Guid = win32.zig.Guid;
const HRESULT = win32.foundation.HRESULT;
const Signature = core.Signature;
const Generic = core.Generic;
const isInterface = core.isInterface;

const TrustLevel = winrt.TrustLevel;
const HSTRING = winrt.HSTRING;
const WindowsGetString = winrt.WindowsGetString;
const Implements = core.Implements;

const IUnknown = winrt.IUnknown;
const IInspectable = winrt.IInspectable;
const IID_IAgileObject = win32.system.com.IID_IAgileObject;
const S_OK = winrt.S_OK;
const E_NOINTERFACE = winrt.E_NOINTERFACE;
const E_OUTOFMEMORY = winrt.E_OUTOFMEMORY;

pub const collections = @import("foundation/collections.zig");

/// GUID values must be wire order when matching with GUID passed in from windows
///
/// This means the first 4 + 2 + 2 bytes are big endian and the rest are little endian.
/// + First 4 are reversed for the first value
/// + Next 2 bytes are reversed for the second value
/// + Next 2 bytes are reversed for the third value
/// + Remaining 8 bytes are kept as is for the fourth value
pub fn wiredGuid(iid: *const Guid) Guid {
    const bytes = iid.Bytes;
    return .{
        .Bytes = [16]u8{
            bytes[3],  bytes[2],  bytes[1],  bytes[0],
            bytes[5],  bytes[4],  bytes[7],  bytes[6],
            bytes[8],  bytes[9],  bytes[10], bytes[11],
            bytes[12], bytes[13], bytes[14], bytes[15],
        },
    };
}

pub const DateTime = extern struct {
    UniversalTime: i64,

    pub const SIGNATURE: []const u8 = "struct(Windows.Foundation.DateTime;i8)";
};

pub const TimeSpan = extern struct {
    Duration: i64,

    pub const SIGNATURE: []const u8 = "struct(Windows.Foundation.TimeSpan;i8)";
};

// Represents a method that handles general events
///
/// This method handles delegating the invoked callback for a
/// given typed event.
pub fn TypedEventHandler(T0: type, T1: type) type {
    const TSender = Generic(T0);
    const TArgs = Generic(T1);

    const signature: []const u8 = Signature.pinterface("9de1c534-6ae1-11e0-84e1-18a905bcc53f", &.{ Signature.get(T0), Signature.get(T1) });
    const iid = Signature.guid(signature);

    return extern struct {
        const SIGNATURE = signature;
        const IID = iid;
        const GUID = Signature.guid_string(iid);

        pub const VTABLE = VTable{
            .QueryInterface = queryInterface,
            .AddRef = addRef,
            .Release = release,
            .Invoke = invoke,
        };

        vtable: *const VTable,
        refs: std.atomic.Value(u32),
        cb: *const fn (context: ?*anyopaque, sender: TSender.IN, args: TArgs.IN) callconv(.c) void,
        context: ?*anyopaque = null,

        pub fn init(callback: *const fn (context: ?*anyopaque, sender: TSender.IN, args: TArgs.IN) callconv(.c) void) @This() {
            return .{
                .vtable = &VTABLE,
                .refs = std.atomic.Value(u32).init(1),
                .cb = callback,
            };
        }

        pub fn initWithState(callback: *const fn (context: ?*anyopaque, sender: TSender.IN, args: TArgs.IN) callconv(.c) void, context: anytype) @This() {
            return .{
                .vtable = &VTABLE,
                .refs = std.atomic.Value(u32).init(1),
                .cb = callback,
                .context = @ptrCast(context),
            };
        }

        fn queryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
            const me: *@This() = @ptrCast(@alignCast(self));
            // TODO: Handle IMarshal
            if (std.mem.eql(u8, &riid.Bytes, &wiredGuid(&IID).Bytes) or
                std.mem.eql(u8, &riid.Bytes, &wiredGuid(&IUnknown.IID).Bytes) or
                std.mem.eql(u8, &riid.Bytes, &wiredGuid(IID_IAgileObject).Bytes))
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
            const me: *@This() = @ptrCast(@alignCast(self));
            const left = me.refs.fetchSub(1, .acq_rel) - 1;
            return left;
        }

        // Invoke(sender, args)
        //
        // This will always return `S_OK` because event callbacks shouldn't fail
        fn invoke(self: *@This(), sender: TSender.IN, args: TArgs.IN) callconv(.c) HRESULT {
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
                self: *TypedEventHandler(T0, T1),
                sender: TSender.IN,
                args: TArgs.IN,
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
                return error.NoInterface;
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

        pub const SIGNATURE: []const u8 = Signature.pinterface("61c17706-2d65-11e0-9ae8-d48564015472", &.{ Signature.get(T) });
        pub const IID: Guid = Signature.guid(SIGNATURE);
        pub const GUID: []const u8 = Signature.guid_string(IID);

        pub const VTable = Implements(IInspectable.VTable, struct {
            Value: *const fn(*anyopaque, *TYPE) callconv(.c) HRESULT,
        });
    };
}
