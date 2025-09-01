pub const EnterpriseKeyCredentialRegistrationInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTenantId(self: *@This()) core.HResult!HSTRING {
        const this: *IEnterpriseKeyCredentialRegistrationInfo = @ptrCast(self);
        return try this.getTenantId();
    }
    pub fn getTenantName(self: *@This()) core.HResult!HSTRING {
        const this: *IEnterpriseKeyCredentialRegistrationInfo = @ptrCast(self);
        return try this.getTenantName();
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        const this: *IEnterpriseKeyCredentialRegistrationInfo = @ptrCast(self);
        return try this.getSubject();
    }
    pub fn getKeyId(self: *@This()) core.HResult!HSTRING {
        const this: *IEnterpriseKeyCredentialRegistrationInfo = @ptrCast(self);
        return try this.getKeyId();
    }
    pub fn getKeyName(self: *@This()) core.HResult!HSTRING {
        const this: *IEnterpriseKeyCredentialRegistrationInfo = @ptrCast(self);
        return try this.getKeyName();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEnterpriseKeyCredentialRegistrationInfo.GUID;
    pub const IID: Guid = IEnterpriseKeyCredentialRegistrationInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEnterpriseKeyCredentialRegistrationInfo.SIGNATURE);
};
pub const EnterpriseKeyCredentialRegistrationManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetRegistrationsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(EnterpriseKeyCredentialRegistrationInfo)) {
        const this: *IEnterpriseKeyCredentialRegistrationManager = @ptrCast(self);
        return try this.GetRegistrationsAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getCurrent() core.HResult!*EnterpriseKeyCredentialRegistrationManager {
        const _f = @This().IEnterpriseKeyCredentialRegistrationManagerStaticsCache.get();
        return try _f.getCurrent();
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.EnterpriseKeyCredentialRegistrationManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEnterpriseKeyCredentialRegistrationManager.GUID;
    pub const IID: Guid = IEnterpriseKeyCredentialRegistrationManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEnterpriseKeyCredentialRegistrationManager.SIGNATURE);
    var _IEnterpriseKeyCredentialRegistrationManagerStaticsCache: FactoryCache(IEnterpriseKeyCredentialRegistrationManagerStatics, RUNTIME_NAME) = .{};
};
pub const IEnterpriseKeyCredentialRegistrationInfo = extern struct {
    vtable: *const VTable,
    pub fn getTenantId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TenantId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTenantName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TenantName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubject(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KeyId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_KeyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38321acc-672b-4823-b603-6b3c753daf97";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TenantId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TenantName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Subject: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_KeyId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_KeyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IEnterpriseKeyCredentialRegistrationManager = extern struct {
    vtable: *const VTable,
    pub fn GetRegistrationsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(EnterpriseKeyCredentialRegistrationInfo)) {
        var _r: *IAsyncOperation(IVectorView(EnterpriseKeyCredentialRegistrationInfo)) = undefined;
        const _c = self.vtable.GetRegistrationsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83f3be3f-a25f-4cba-bb8e-bdc32d03c297";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetRegistrationsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(EnterpriseKeyCredentialRegistrationInfo))) callconv(.winapi) HRESULT,
    };
};
pub const IEnterpriseKeyCredentialRegistrationManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrent(self: *@This()) core.HResult!*EnterpriseKeyCredentialRegistrationManager {
        var _r: *EnterpriseKeyCredentialRegistrationManager = undefined;
        const _c = self.vtable.get_Current(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Security.Authentication.Identity.IEnterpriseKeyCredentialRegistrationManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "77b85e9e-acf4-4bc0-bac2-40bb46efbb3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Current: *const fn(self: *anyopaque, _r: **EnterpriseKeyCredentialRegistrationManager) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const FactoryCache = @import("../../core.zig").FactoryCache;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
pub const Core = @import("./Identity/Core.zig");
pub const Provider = @import("./Identity/Provider.zig");
