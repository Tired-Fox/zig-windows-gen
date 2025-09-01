pub const ILicenseManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn AddLicenseAsync(self: *@This(), license: *IBuffer) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AddLicenseAsync(@ptrCast(self), license, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSatisfactionInfosAsync(self: *@This(), contentIds: *IIterable(HSTRING), keyIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(LicenseSatisfactionResult) {
        var _r: *IAsyncOperation(LicenseSatisfactionResult) = undefined;
        const _c = self.vtable.GetSatisfactionInfosAsync(@ptrCast(self), contentIds, keyIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.LicenseManagement.ILicenseManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5ac3ae0-da47-4f20-9a23-09182c9476ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddLicenseAsync: *const fn(self: *anyopaque, license: *IBuffer, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetSatisfactionInfosAsync: *const fn(self: *anyopaque, contentIds: *IIterable(HSTRING), keyIds: *IIterable(HSTRING), _r: **IAsyncOperation(LicenseSatisfactionResult)) callconv(.winapi) HRESULT,
    };
};
pub const ILicenseManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn RefreshLicensesAsync(self: *@This(), refreshOption: LicenseRefreshOption) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RefreshLicensesAsync(@ptrCast(self), refreshOption, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.LicenseManagement.ILicenseManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab2ec47b-1f79-4480-b87e-2c499e601ba3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RefreshLicensesAsync: *const fn(self: *anyopaque, refreshOption: LicenseRefreshOption, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ILicenseSatisfactionInfo = extern struct {
    vtable: *const VTable,
    pub fn getSatisfiedByDevice(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SatisfiedByDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSatisfiedByOpenLicense(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SatisfiedByOpenLicense(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSatisfiedByTrial(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SatisfiedByTrial(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSatisfiedByPass(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SatisfiedByPass(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSatisfiedByInstallMedia(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SatisfiedByInstallMedia(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSatisfiedBySignedInUser(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SatisfiedBySignedInUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSatisfied(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSatisfied(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.LicenseManagement.ILicenseSatisfactionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3ccbb08f-db31-48d5-8384-fa17c81474e2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SatisfiedByDevice: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SatisfiedByOpenLicense: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SatisfiedByTrial: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SatisfiedByPass: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SatisfiedByInstallMedia: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SatisfiedBySignedInUser: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSatisfied: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ILicenseSatisfactionResult = extern struct {
    vtable: *const VTable,
    pub fn getLicenseSatisfactionInfos(self: *@This()) core.HResult!*IMapView(HSTRING,LicenseSatisfactionInfo) {
        var _r: *IMapView(HSTRING,LicenseSatisfactionInfo) = undefined;
        const _c = self.vtable.get_LicenseSatisfactionInfos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.LicenseManagement.ILicenseSatisfactionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c674f73-3c87-4ee1-8201-f428359bd3af";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LicenseSatisfactionInfos: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,LicenseSatisfactionInfo)) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const LicenseManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RefreshLicensesAsync(refreshOption: LicenseRefreshOption) core.HResult!*IAsyncAction {
        const _f = @This().ILicenseManagerStatics2Cache.get();
        return try _f.RefreshLicensesAsync(refreshOption);
    }
    pub fn AddLicenseAsync(license: *IBuffer) core.HResult!*IAsyncAction {
        const _f = @This().ILicenseManagerStaticsCache.get();
        return try _f.AddLicenseAsync(license);
    }
    pub fn GetSatisfactionInfosAsync(contentIds: *IIterable(HSTRING), keyIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(LicenseSatisfactionResult) {
        const _f = @This().ILicenseManagerStaticsCache.get();
        return try _f.GetSatisfactionInfosAsync(contentIds, keyIds);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.LicenseManagement.LicenseManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ILicenseManagerStatics2Cache: FactoryCache(ILicenseManagerStatics2, RUNTIME_NAME) = .{};
    var _ILicenseManagerStaticsCache: FactoryCache(ILicenseManagerStatics, RUNTIME_NAME) = .{};
};
pub const LicenseRefreshOption = enum(i32) {
    RunningLicenses = 0,
    AllLicenses = 1,
};
pub const LicenseSatisfactionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSatisfiedByDevice(self: *@This()) core.HResult!bool {
        const this: *ILicenseSatisfactionInfo = @ptrCast(self);
        return try this.getSatisfiedByDevice();
    }
    pub fn getSatisfiedByOpenLicense(self: *@This()) core.HResult!bool {
        const this: *ILicenseSatisfactionInfo = @ptrCast(self);
        return try this.getSatisfiedByOpenLicense();
    }
    pub fn getSatisfiedByTrial(self: *@This()) core.HResult!bool {
        const this: *ILicenseSatisfactionInfo = @ptrCast(self);
        return try this.getSatisfiedByTrial();
    }
    pub fn getSatisfiedByPass(self: *@This()) core.HResult!bool {
        const this: *ILicenseSatisfactionInfo = @ptrCast(self);
        return try this.getSatisfiedByPass();
    }
    pub fn getSatisfiedByInstallMedia(self: *@This()) core.HResult!bool {
        const this: *ILicenseSatisfactionInfo = @ptrCast(self);
        return try this.getSatisfiedByInstallMedia();
    }
    pub fn getSatisfiedBySignedInUser(self: *@This()) core.HResult!bool {
        const this: *ILicenseSatisfactionInfo = @ptrCast(self);
        return try this.getSatisfiedBySignedInUser();
    }
    pub fn getIsSatisfied(self: *@This()) core.HResult!bool {
        const this: *ILicenseSatisfactionInfo = @ptrCast(self);
        return try this.getIsSatisfied();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILicenseSatisfactionInfo.GUID;
    pub const IID: Guid = ILicenseSatisfactionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILicenseSatisfactionInfo.SIGNATURE);
};
pub const LicenseSatisfactionResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLicenseSatisfactionInfos(self: *@This()) core.HResult!*IMapView(HSTRING,LicenseSatisfactionInfo) {
        const this: *ILicenseSatisfactionResult = @ptrCast(self);
        return try this.getLicenseSatisfactionInfos();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *ILicenseSatisfactionResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.LicenseManagement.LicenseSatisfactionResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILicenseSatisfactionResult.GUID;
    pub const IID: Guid = ILicenseSatisfactionResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILicenseSatisfactionResult.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const HResult = @import("../../Foundation.zig").HResult;
const HSTRING = @import("../../root.zig").HSTRING;
