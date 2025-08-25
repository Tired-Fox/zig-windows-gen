const winrt = @import("../../root.zig");
const win32 = @import("win32");

pub const Guid = win32.zig.Guid;
pub const HRESULT = win32.foundation.HRESULT;

pub const IInspectable = winrt.IInspectable;
pub const HSTRING = winrt.HSTRING;
pub const TrustLevel = winrt.TrustLevel;
pub const WindowsGetString = winrt.WindowsGetString;
pub const E_OUTOFMEMORY = winrt.E_OUTOFMEMORY;

pub const Implements = @import("../core.zig").Implements;
pub const FactoryCache = @import("factory_cache.zig").FactoryCache;

pub const S_OK = winrt.S_OK;

pub const IGenericFactory = extern struct {
    vtable: *const VTable,

    pub fn queryInterface(self: *@This(), T: type) !*T {
        var result: *anyopaque = undefined;
        if (self.vtable.QueryInterface(@ptrCast(self), &T.IID, &result) != S_OK) {
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

    pub fn ActivateInstance(self: *IGenericFactory, R: type) error { NoInterface }!*R {
        var inspectable: *IInspectable = undefined;
        const code = @as(u32, @bitCast(self.vtable.ActivateInstance(self, @ptrCast(@alignCast(&inspectable)))));
        if (code < S_OK) return error.NoInterface;

        return try inspectable.queryInterface(R);
    }

    pub const IID: Guid = Guid.initString("00000035-0000-0000-c000-000000000046");
    pub const VTable = Implements(IInspectable.VTable, struct {
        ActivateInstance: *const fn (*IGenericFactory, **anyopaque) callconv(.c) HRESULT
    });
};

