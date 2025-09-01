pub const ApplicationDataManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateForPackageFamily(packageFamilyName: HSTRING) core.HResult!*ApplicationData {
        const _f = @This().IApplicationDataManagerStaticsCache.get();
        return try _f.CreateForPackageFamily(packageFamilyName);
    }
    pub const NAME: []const u8 = "Windows.Management.Core.ApplicationDataManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IApplicationDataManager.GUID;
    pub const IID: Guid = IApplicationDataManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IApplicationDataManager.SIGNATURE);
    var _IApplicationDataManagerStaticsCache: FactoryCache(IApplicationDataManagerStatics, RUNTIME_NAME) = .{};
};
pub const IApplicationDataManager = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Management.Core.IApplicationDataManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "74d10432-2e99-4000-9a3a-64307e858129";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationDataManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForPackageFamily(self: *@This(), packageFamilyName: HSTRING) core.HResult!*ApplicationData {
        var _r: *ApplicationData = undefined;
        const _c = self.vtable.CreateForPackageFamily(@ptrCast(self), packageFamilyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Management.Core.IApplicationDataManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e1862e3-698e-49a1-9752-dee94925b9b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForPackageFamily: *const fn(self: *anyopaque, packageFamilyName: HSTRING, _r: **ApplicationData) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TrustLevel = @import("../root.zig").TrustLevel;
const ApplicationData = @import("../Storage.zig").ApplicationData;
const HSTRING = @import("../root.zig").HSTRING;
