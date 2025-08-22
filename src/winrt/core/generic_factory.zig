const winrt = @import("../../root.zig");
const win32 = @import("win32");

pub const Guid = win32.zig.Guid;
pub const HRESULT = win32.foundation.HRESULT;
pub const IInspectable = win32.system.win_rt.IInspectable;

pub const FactoryCache = @import("factory_cache.zig").FactoryCache;

pub const S_OK = winrt.S_OK;

pub const IGenericFactory = extern struct {
    pub const VTable = extern struct { base: IInspectable.VTable, ActivateInstance: *const fn (*IGenericFactory, **anyopaque) callconv(.C) HRESULT };

    vtable: *const VTable,

    pub const IID: Guid = Guid.initString("00000035-0000-0000-c000-000000000046");

    pub fn ActivateInstance(self: *IGenericFactory, R: type) error { NoInterface }!*R {
        var inspectable: *IInspectable = undefined;
        const code = @as(u32, @bitCast(self.vtable.ActivateInstance(self, @ptrCast(@alignCast(&inspectable)))));
        if (code < S_OK) return error.NoInterface;

        var result: *R = undefined;
        if (inspectable.vtable.base.QueryInterface(@ptrCast(inspectable), &R.IID, @ptrCast(&result)) < S_OK) {
            return error.NoInterface;
        }

        return result;
    }
};

