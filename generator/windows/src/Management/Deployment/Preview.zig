pub const ClassicAppManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindInstalledApp(appUninstallKey: HSTRING) core.HResult!*InstalledClassicAppInfo {
        const factory = @This().IClassicAppManagerStaticsCache.get();
        return try factory.FindInstalledApp(appUninstallKey);
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.Preview.ClassicAppManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IClassicAppManagerStaticsCache: FactoryCache(IClassicAppManagerStatics, RUNTIME_NAME) = .{};
};
pub const IClassicAppManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn FindInstalledApp(self: *@This(), appUninstallKey: HSTRING) core.HResult!*InstalledClassicAppInfo {
        var _r: *InstalledClassicAppInfo = undefined;
        const _c = self.vtable.FindInstalledApp(@ptrCast(self), appUninstallKey, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.Preview.IClassicAppManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e2fad668-882c-4f33-b035-0df7b90d67e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindInstalledApp: *const fn(self: *anyopaque, appUninstallKey: HSTRING, _r: **InstalledClassicAppInfo) callconv(.winapi) HRESULT,
    };
};
pub const IInstalledClassicAppInfo = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.Preview.IInstalledClassicAppInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a7d3da3-65d0-4086-80d6-0610d760207d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const InstalledClassicAppInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IInstalledClassicAppInfo = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getDisplayVersion(self: *@This()) core.HResult!HSTRING {
        const this: *IInstalledClassicAppInfo = @ptrCast(self);
        return try this.getDisplayVersion();
    }
    pub const NAME: []const u8 = "Windows.Management.Deployment.Preview.InstalledClassicAppInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInstalledClassicAppInfo.GUID;
    pub const IID: Guid = IInstalledClassicAppInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInstalledClassicAppInfo.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TrustLevel = @import("../../root.zig").TrustLevel;
const HSTRING = @import("../../root.zig").HSTRING;
