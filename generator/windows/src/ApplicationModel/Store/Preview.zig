pub const DeliveryOptimizationDownloadMode = enum(i32) {
    Simple = 0,
    HttpOnly = 1,
    Lan = 2,
    Group = 3,
    Internet = 4,
    Bypass = 5,
};
pub const DeliveryOptimizationDownloadModeSource = enum(i32) {
    Default = 0,
    Policy = 1,
};
pub const DeliveryOptimizationSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDownloadMode(self: *@This()) core.HResult!DeliveryOptimizationDownloadMode {
        const this: *IDeliveryOptimizationSettings = @ptrCast(self);
        return try this.getDownloadMode();
    }
    pub fn getDownloadModeSource(self: *@This()) core.HResult!DeliveryOptimizationDownloadModeSource {
        const this: *IDeliveryOptimizationSettings = @ptrCast(self);
        return try this.getDownloadModeSource();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetCurrentSettings() core.HResult!*DeliveryOptimizationSettings {
        const factory = @This().IDeliveryOptimizationSettingsStaticsCache.get();
        return try factory.GetCurrentSettings();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.DeliveryOptimizationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDeliveryOptimizationSettings.GUID;
    pub const IID: Guid = IDeliveryOptimizationSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDeliveryOptimizationSettings.SIGNATURE);
    var _IDeliveryOptimizationSettingsStaticsCache: FactoryCache(IDeliveryOptimizationSettingsStatics, RUNTIME_NAME) = .{};
};
pub const IDeliveryOptimizationSettings = extern struct {
    vtable: *const VTable,
    pub fn getDownloadMode(self: *@This()) core.HResult!DeliveryOptimizationDownloadMode {
        var _r: DeliveryOptimizationDownloadMode = undefined;
        const _c = self.vtable.get_DownloadMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDownloadModeSource(self: *@This()) core.HResult!DeliveryOptimizationDownloadModeSource {
        var _r: DeliveryOptimizationDownloadModeSource = undefined;
        const _c = self.vtable.get_DownloadModeSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.IDeliveryOptimizationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1810fda0-e853-565e-b874-7a8a7b9a0e0f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DownloadMode: *const fn(self: *anyopaque, _r: *DeliveryOptimizationDownloadMode) callconv(.winapi) HRESULT,
        get_DownloadModeSource: *const fn(self: *anyopaque, _r: *DeliveryOptimizationDownloadModeSource) callconv(.winapi) HRESULT,
    };
};
pub const IDeliveryOptimizationSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentSettings(self: *@This()) core.HResult!*DeliveryOptimizationSettings {
        var _r: *DeliveryOptimizationSettings = undefined;
        const _c = self.vtable.GetCurrentSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.IDeliveryOptimizationSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c817caf-aed5-5999-b4c9-8c60898bc4f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentSettings: *const fn(self: *anyopaque, _r: **DeliveryOptimizationSettings) callconv(.winapi) HRESULT,
    };
};
pub const IStoreConfigurationStatics = extern struct {
    vtable: *const VTable,
    pub fn SetSystemConfiguration(self: *@This(), catalogHardwareManufacturerId: HSTRING, catalogStoreContentModifierId: HSTRING, systemConfigurationExpiration: DateTime, catalogHardwareDescriptor: HSTRING) core.HResult!void {
        const _c = self.vtable.SetSystemConfiguration(@ptrCast(self), catalogHardwareManufacturerId, catalogStoreContentModifierId, systemConfigurationExpiration, catalogHardwareDescriptor);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetMobileOperatorConfiguration(self: *@This(), mobileOperatorId: HSTRING, appDownloadLimitInMegabytes: u32, updateDownloadLimitInMegabytes: u32) core.HResult!void {
        const _c = self.vtable.SetMobileOperatorConfiguration(@ptrCast(self), mobileOperatorId, appDownloadLimitInMegabytes, updateDownloadLimitInMegabytes);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetStoreWebAccountId(self: *@This(), webAccountId: HSTRING) core.HResult!void {
        const _c = self.vtable.SetStoreWebAccountId(@ptrCast(self), webAccountId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsStoreWebAccountId(self: *@This(), webAccountId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsStoreWebAccountId(@ptrCast(self), webAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHardwareManufacturerInfo(self: *@This()) core.HResult!*StoreHardwareManufacturerInfo {
        var _r: *StoreHardwareManufacturerInfo = undefined;
        const _c = self.vtable.get_HardwareManufacturerInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FilterUnsupportedSystemFeaturesAsync(self: *@This(), systemFeatures: *IIterable(StoreSystemFeature)) core.HResult!*IAsyncOperation(IVectorView(StoreSystemFeature)) {
        var _r: *IAsyncOperation(IVectorView(StoreSystemFeature)) = undefined;
        const _c = self.vtable.FilterUnsupportedSystemFeaturesAsync(@ptrCast(self), systemFeatures, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.IStoreConfigurationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "728f7fc0-8628-42ec-84a2-07780eb44d8b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetSystemConfiguration: *const fn(self: *anyopaque, catalogHardwareManufacturerId: HSTRING, catalogStoreContentModifierId: HSTRING, systemConfigurationExpiration: DateTime, catalogHardwareDescriptor: HSTRING) callconv(.winapi) HRESULT,
        SetMobileOperatorConfiguration: *const fn(self: *anyopaque, mobileOperatorId: HSTRING, appDownloadLimitInMegabytes: u32, updateDownloadLimitInMegabytes: u32) callconv(.winapi) HRESULT,
        SetStoreWebAccountId: *const fn(self: *anyopaque, webAccountId: HSTRING) callconv(.winapi) HRESULT,
        IsStoreWebAccountId: *const fn(self: *anyopaque, webAccountId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        get_HardwareManufacturerInfo: *const fn(self: *anyopaque, _r: **StoreHardwareManufacturerInfo) callconv(.winapi) HRESULT,
        FilterUnsupportedSystemFeaturesAsync: *const fn(self: *anyopaque, systemFeatures: *IIterable(StoreSystemFeature), _r: **IAsyncOperation(IVectorView(StoreSystemFeature))) callconv(.winapi) HRESULT,
    };
};
pub const IStoreConfigurationStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getPurchasePromptingPolicy(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_PurchasePromptingPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPurchasePromptingPolicy(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_PurchasePromptingPolicy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.IStoreConfigurationStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "657c4595-c8b7-4fe9-9f4c-4d71027d347e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PurchasePromptingPolicy: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_PurchasePromptingPolicy: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IStoreConfigurationStatics3 = extern struct {
    vtable: *const VTable,
    pub fn HasStoreWebAccount(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.HasStoreWebAccount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn HasStoreWebAccountForUser(self: *@This(), user: *User) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.HasStoreWebAccountForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStoreLogDataAsync(self: *@This(), options: StoreLogOptions) core.HResult!*IAsyncOperation(IRandomAccessStreamReference) {
        var _r: *IAsyncOperation(IRandomAccessStreamReference) = undefined;
        const _c = self.vtable.GetStoreLogDataAsync(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStoreWebAccountIdForUser(self: *@This(), user: *User, webAccountId: HSTRING) core.HResult!void {
        const _c = self.vtable.SetStoreWebAccountIdForUser(@ptrCast(self), user, webAccountId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn IsStoreWebAccountIdForUser(self: *@This(), user: *User, webAccountId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsStoreWebAccountIdForUser(@ptrCast(self), user, webAccountId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPurchasePromptingPolicyForUser(self: *@This(), user: *User) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.GetPurchasePromptingPolicyForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPurchasePromptingPolicyForUser(self: *@This(), user: *User, value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.SetPurchasePromptingPolicyForUser(@ptrCast(self), user, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.IStoreConfigurationStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d45f57c-f144-4cb5-9d3f-4eb05e30b6d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        HasStoreWebAccount: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        HasStoreWebAccountForUser: *const fn(self: *anyopaque, user: *User, _r: *bool) callconv(.winapi) HRESULT,
        GetStoreLogDataAsync: *const fn(self: *anyopaque, options: StoreLogOptions, _r: **IAsyncOperation(IRandomAccessStreamReference)) callconv(.winapi) HRESULT,
        SetStoreWebAccountIdForUser: *const fn(self: *anyopaque, user: *User, webAccountId: HSTRING) callconv(.winapi) HRESULT,
        IsStoreWebAccountIdForUser: *const fn(self: *anyopaque, user: *User, webAccountId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        GetPurchasePromptingPolicyForUser: *const fn(self: *anyopaque, user: *User, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        SetPurchasePromptingPolicyForUser: *const fn(self: *anyopaque, user: *User, value: *IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IStoreConfigurationStatics4 = extern struct {
    vtable: *const VTable,
    pub fn GetStoreWebAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetStoreWebAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStoreWebAccountIdForUser(self: *@This(), user: *User) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetStoreWebAccountIdForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetEnterpriseStoreWebAccountId(self: *@This(), webAccountId: HSTRING) core.HResult!void {
        const _c = self.vtable.SetEnterpriseStoreWebAccountId(@ptrCast(self), webAccountId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetEnterpriseStoreWebAccountIdForUser(self: *@This(), user: *User, webAccountId: HSTRING) core.HResult!void {
        const _c = self.vtable.SetEnterpriseStoreWebAccountIdForUser(@ptrCast(self), user, webAccountId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetEnterpriseStoreWebAccountId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetEnterpriseStoreWebAccountId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetEnterpriseStoreWebAccountIdForUser(self: *@This(), user: *User) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetEnterpriseStoreWebAccountIdForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShouldRestrictToEnterpriseStoreOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ShouldRestrictToEnterpriseStoreOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShouldRestrictToEnterpriseStoreOnlyForUser(self: *@This(), user: *User) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ShouldRestrictToEnterpriseStoreOnlyForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.IStoreConfigurationStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20ff56d2-4ee3-4cf0-9b12-552c03310f75";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStoreWebAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetStoreWebAccountIdForUser: *const fn(self: *anyopaque, user: *User, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetEnterpriseStoreWebAccountId: *const fn(self: *anyopaque, webAccountId: HSTRING) callconv(.winapi) HRESULT,
        SetEnterpriseStoreWebAccountIdForUser: *const fn(self: *anyopaque, user: *User, webAccountId: HSTRING) callconv(.winapi) HRESULT,
        GetEnterpriseStoreWebAccountId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetEnterpriseStoreWebAccountIdForUser: *const fn(self: *anyopaque, user: *User, _r: *HSTRING) callconv(.winapi) HRESULT,
        ShouldRestrictToEnterpriseStoreOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ShouldRestrictToEnterpriseStoreOnlyForUser: *const fn(self: *anyopaque, user: *User, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IStoreConfigurationStatics5 = extern struct {
    vtable: *const VTable,
    pub fn IsPinToDesktopSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPinToDesktopSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsPinToTaskbarSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPinToTaskbarSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsPinToStartSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPinToStartSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PinToDesktop(self: *@This(), appPackageFamilyName: HSTRING) core.HResult!void {
        const _c = self.vtable.PinToDesktop(@ptrCast(self), appPackageFamilyName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PinToDesktopForUser(self: *@This(), user: *User, appPackageFamilyName: HSTRING) core.HResult!void {
        const _c = self.vtable.PinToDesktopForUser(@ptrCast(self), user, appPackageFamilyName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.IStoreConfigurationStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7613191-8fa9-49db-822b-0160e7e4e5c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsPinToDesktopSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsPinToTaskbarSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsPinToStartSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        PinToDesktop: *const fn(self: *anyopaque, appPackageFamilyName: HSTRING) callconv(.winapi) HRESULT,
        PinToDesktopForUser: *const fn(self: *anyopaque, user: *User, appPackageFamilyName: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStoreHardwareManufacturerInfo = extern struct {
    vtable: *const VTable,
    pub fn getHardwareManufacturerId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HardwareManufacturerId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStoreContentModifierId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StoreContentModifierId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModelName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ModelName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManufacturerName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ManufacturerName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.IStoreHardwareManufacturerInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f292dc08-c654-43ac-a21f-34801c9d3388";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HardwareManufacturerId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_StoreContentModifierId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ModelName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ManufacturerName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStorePreview = extern struct {
    vtable: *const VTable,
    pub fn RequestProductPurchaseByProductIdAndSkuIdAsync(self: *@This(), productId: HSTRING, skuId: HSTRING) core.HResult!*IAsyncOperation(StorePreviewPurchaseResults) {
        var _r: *IAsyncOperation(StorePreviewPurchaseResults) = undefined;
        const _c = self.vtable.RequestProductPurchaseByProductIdAndSkuIdAsync(@ptrCast(self), productId, skuId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadAddOnProductInfosAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorePreviewProductInfo)) {
        var _r: *IAsyncOperation(IVectorView(StorePreviewProductInfo)) = undefined;
        const _c = self.vtable.LoadAddOnProductInfosAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.IStorePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a157241-840e-49a9-bc01-5d5b01fbc8e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestProductPurchaseByProductIdAndSkuIdAsync: *const fn(self: *anyopaque, productId: HSTRING, skuId: HSTRING, _r: **IAsyncOperation(StorePreviewPurchaseResults)) callconv(.winapi) HRESULT,
        LoadAddOnProductInfosAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(StorePreviewProductInfo))) callconv(.winapi) HRESULT,
    };
};
pub const IStorePreviewProductInfo = extern struct {
    vtable: *const VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProductType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProductType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSkuInfoList(self: *@This()) core.HResult!*IVectorView(StorePreviewSkuInfo) {
        var _r: *IVectorView(StorePreviewSkuInfo) = undefined;
        const _c = self.vtable.get_SkuInfoList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.IStorePreviewProductInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1937dbb3-6c01-4c9d-85cd-5babaac2b351";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProductId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProductType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SkuInfoList: *const fn(self: *anyopaque, _r: **IVectorView(StorePreviewSkuInfo)) callconv(.winapi) HRESULT,
    };
};
pub const IStorePreviewPurchaseResults = extern struct {
    vtable: *const VTable,
    pub fn getProductPurchaseStatus(self: *@This()) core.HResult!StorePreviewProductPurchaseStatus {
        var _r: StorePreviewProductPurchaseStatus = undefined;
        const _c = self.vtable.get_ProductPurchaseStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.IStorePreviewPurchaseResults";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0daaed1-d6c5-4e53-a043-fba0d8e61231";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProductPurchaseStatus: *const fn(self: *anyopaque, _r: *StorePreviewProductPurchaseStatus) callconv(.winapi) HRESULT,
    };
};
pub const IStorePreviewSkuInfo = extern struct {
    vtable: *const VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSkuId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SkuId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSkuType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SkuType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomDeveloperData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CustomDeveloperData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrencyCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CurrencyCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFormattedListPrice(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FormattedListPrice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExtendedData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.IStorePreviewSkuInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81fd76e2-0b26-48d9-98ce-27461c669d6c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProductId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SkuId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SkuType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CustomDeveloperData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CurrencyCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FormattedListPrice: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ExtendedData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWebAuthenticationCoreManagerHelper = extern struct {
    vtable: *const VTable,
    pub fn RequestTokenWithUIElementHostingAsync(self: *@This(), request: *WebTokenRequest, uiElement: *UIElement) core.HResult!*IAsyncOperation(WebTokenRequestResult) {
        var _r: *IAsyncOperation(WebTokenRequestResult) = undefined;
        const _c = self.vtable.RequestTokenWithUIElementHostingAsync(@ptrCast(self), request, uiElement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestTokenWithUIElementHostingAsyncWithWebAccountWithUiElement(self: *@This(), request: *WebTokenRequest, webAccount: *WebAccount, uiElement: *UIElement) core.HResult!*IAsyncOperation(WebTokenRequestResult) {
        var _r: *IAsyncOperation(WebTokenRequestResult) = undefined;
        const _c = self.vtable.RequestTokenWithUIElementHostingAsyncWithWebAccountWithUiElement(@ptrCast(self), request, webAccount, uiElement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.IWebAuthenticationCoreManagerHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "06a50525-e715-4123-9276-9d6f865ba55f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestTokenWithUIElementHostingAsync: *const fn(self: *anyopaque, request: *WebTokenRequest, uiElement: *UIElement, _r: **IAsyncOperation(WebTokenRequestResult)) callconv(.winapi) HRESULT,
        RequestTokenWithUIElementHostingAsyncWithWebAccountWithUiElement: *const fn(self: *anyopaque, request: *WebTokenRequest, webAccount: *WebAccount, uiElement: *UIElement, _r: **IAsyncOperation(WebTokenRequestResult)) callconv(.winapi) HRESULT,
    };
};
pub const StoreConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn IsPinToDesktopSupported() core.HResult!bool {
        const factory = @This().IStoreConfigurationStatics5Cache.get();
        return try factory.IsPinToDesktopSupported();
    }
    pub fn IsPinToTaskbarSupported() core.HResult!bool {
        const factory = @This().IStoreConfigurationStatics5Cache.get();
        return try factory.IsPinToTaskbarSupported();
    }
    pub fn IsPinToStartSupported() core.HResult!bool {
        const factory = @This().IStoreConfigurationStatics5Cache.get();
        return try factory.IsPinToStartSupported();
    }
    pub fn PinToDesktop(appPackageFamilyName: HSTRING) core.HResult!void {
        const factory = @This().IStoreConfigurationStatics5Cache.get();
        return try factory.PinToDesktop(appPackageFamilyName);
    }
    pub fn PinToDesktopForUser(user: *User, appPackageFamilyName: HSTRING) core.HResult!void {
        const factory = @This().IStoreConfigurationStatics5Cache.get();
        return try factory.PinToDesktopForUser(user, appPackageFamilyName);
    }
    pub fn GetStoreWebAccountId() core.HResult!HSTRING {
        const factory = @This().IStoreConfigurationStatics4Cache.get();
        return try factory.GetStoreWebAccountId();
    }
    pub fn GetStoreWebAccountIdForUser(user: *User) core.HResult!HSTRING {
        const factory = @This().IStoreConfigurationStatics4Cache.get();
        return try factory.GetStoreWebAccountIdForUser(user);
    }
    pub fn SetEnterpriseStoreWebAccountId(webAccountId: HSTRING) core.HResult!void {
        const factory = @This().IStoreConfigurationStatics4Cache.get();
        return try factory.SetEnterpriseStoreWebAccountId(webAccountId);
    }
    pub fn SetEnterpriseStoreWebAccountIdForUser(user: *User, webAccountId: HSTRING) core.HResult!void {
        const factory = @This().IStoreConfigurationStatics4Cache.get();
        return try factory.SetEnterpriseStoreWebAccountIdForUser(user, webAccountId);
    }
    pub fn GetEnterpriseStoreWebAccountId() core.HResult!HSTRING {
        const factory = @This().IStoreConfigurationStatics4Cache.get();
        return try factory.GetEnterpriseStoreWebAccountId();
    }
    pub fn GetEnterpriseStoreWebAccountIdForUser(user: *User) core.HResult!HSTRING {
        const factory = @This().IStoreConfigurationStatics4Cache.get();
        return try factory.GetEnterpriseStoreWebAccountIdForUser(user);
    }
    pub fn ShouldRestrictToEnterpriseStoreOnly() core.HResult!bool {
        const factory = @This().IStoreConfigurationStatics4Cache.get();
        return try factory.ShouldRestrictToEnterpriseStoreOnly();
    }
    pub fn ShouldRestrictToEnterpriseStoreOnlyForUser(user: *User) core.HResult!bool {
        const factory = @This().IStoreConfigurationStatics4Cache.get();
        return try factory.ShouldRestrictToEnterpriseStoreOnlyForUser(user);
    }
    pub fn HasStoreWebAccount() core.HResult!bool {
        const factory = @This().IStoreConfigurationStatics3Cache.get();
        return try factory.HasStoreWebAccount();
    }
    pub fn HasStoreWebAccountForUser(user: *User) core.HResult!bool {
        const factory = @This().IStoreConfigurationStatics3Cache.get();
        return try factory.HasStoreWebAccountForUser(user);
    }
    pub fn GetStoreLogDataAsync(options: StoreLogOptions) core.HResult!*IAsyncOperation(IRandomAccessStreamReference) {
        const factory = @This().IStoreConfigurationStatics3Cache.get();
        return try factory.GetStoreLogDataAsync(options);
    }
    pub fn SetStoreWebAccountIdForUser(user: *User, webAccountId: HSTRING) core.HResult!void {
        const factory = @This().IStoreConfigurationStatics3Cache.get();
        return try factory.SetStoreWebAccountIdForUser(user, webAccountId);
    }
    pub fn IsStoreWebAccountIdForUser(user: *User, webAccountId: HSTRING) core.HResult!bool {
        const factory = @This().IStoreConfigurationStatics3Cache.get();
        return try factory.IsStoreWebAccountIdForUser(user, webAccountId);
    }
    pub fn GetPurchasePromptingPolicyForUser(user: *User) core.HResult!*IReference(u32) {
        const factory = @This().IStoreConfigurationStatics3Cache.get();
        return try factory.GetPurchasePromptingPolicyForUser(user);
    }
    pub fn SetPurchasePromptingPolicyForUser(user: *User, value: *IReference(u32)) core.HResult!void {
        const factory = @This().IStoreConfigurationStatics3Cache.get();
        return try factory.SetPurchasePromptingPolicyForUser(user, value);
    }
    pub fn getPurchasePromptingPolicy() core.HResult!*IReference(u32) {
        const factory = @This().IStoreConfigurationStatics2Cache.get();
        return try factory.getPurchasePromptingPolicy();
    }
    pub fn putPurchasePromptingPolicy(value: *IReference(u32)) core.HResult!void {
        const factory = @This().IStoreConfigurationStatics2Cache.get();
        return try factory.putPurchasePromptingPolicy(value);
    }
    pub fn SetSystemConfiguration(catalogHardwareManufacturerId: HSTRING, catalogStoreContentModifierId: HSTRING, systemConfigurationExpiration: DateTime, catalogHardwareDescriptor: HSTRING) core.HResult!void {
        const factory = @This().IStoreConfigurationStaticsCache.get();
        return try factory.SetSystemConfiguration(catalogHardwareManufacturerId, catalogStoreContentModifierId, systemConfigurationExpiration, catalogHardwareDescriptor);
    }
    pub fn SetMobileOperatorConfiguration(mobileOperatorId: HSTRING, appDownloadLimitInMegabytes: u32, updateDownloadLimitInMegabytes: u32) core.HResult!void {
        const factory = @This().IStoreConfigurationStaticsCache.get();
        return try factory.SetMobileOperatorConfiguration(mobileOperatorId, appDownloadLimitInMegabytes, updateDownloadLimitInMegabytes);
    }
    pub fn SetStoreWebAccountId(webAccountId: HSTRING) core.HResult!void {
        const factory = @This().IStoreConfigurationStaticsCache.get();
        return try factory.SetStoreWebAccountId(webAccountId);
    }
    pub fn IsStoreWebAccountId(webAccountId: HSTRING) core.HResult!bool {
        const factory = @This().IStoreConfigurationStaticsCache.get();
        return try factory.IsStoreWebAccountId(webAccountId);
    }
    pub fn getHardwareManufacturerInfo() core.HResult!*StoreHardwareManufacturerInfo {
        const factory = @This().IStoreConfigurationStaticsCache.get();
        return try factory.getHardwareManufacturerInfo();
    }
    pub fn FilterUnsupportedSystemFeaturesAsync(systemFeatures: *IIterable(StoreSystemFeature)) core.HResult!*IAsyncOperation(IVectorView(StoreSystemFeature)) {
        const factory = @This().IStoreConfigurationStaticsCache.get();
        return try factory.FilterUnsupportedSystemFeaturesAsync(systemFeatures);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.StoreConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IStoreConfigurationStatics5Cache: FactoryCache(IStoreConfigurationStatics5, RUNTIME_NAME) = .{};
    var _IStoreConfigurationStatics4Cache: FactoryCache(IStoreConfigurationStatics4, RUNTIME_NAME) = .{};
    var _IStoreConfigurationStatics3Cache: FactoryCache(IStoreConfigurationStatics3, RUNTIME_NAME) = .{};
    var _IStoreConfigurationStatics2Cache: FactoryCache(IStoreConfigurationStatics2, RUNTIME_NAME) = .{};
    var _IStoreConfigurationStaticsCache: FactoryCache(IStoreConfigurationStatics, RUNTIME_NAME) = .{};
};
pub const StoreHardwareManufacturerInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHardwareManufacturerId(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreHardwareManufacturerInfo = @ptrCast(self);
        return try this.getHardwareManufacturerId();
    }
    pub fn getStoreContentModifierId(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreHardwareManufacturerInfo = @ptrCast(self);
        return try this.getStoreContentModifierId();
    }
    pub fn getModelName(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreHardwareManufacturerInfo = @ptrCast(self);
        return try this.getModelName();
    }
    pub fn getManufacturerName(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreHardwareManufacturerInfo = @ptrCast(self);
        return try this.getManufacturerName();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.StoreHardwareManufacturerInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreHardwareManufacturerInfo.GUID;
    pub const IID: Guid = IStoreHardwareManufacturerInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreHardwareManufacturerInfo.SIGNATURE);
};
pub const StoreLogOptions = enum(i32) {
    None = 0,
    TryElevate = 1,
};
pub const StorePreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestProductPurchaseByProductIdAndSkuIdAsync(productId: HSTRING, skuId: HSTRING) core.HResult!*IAsyncOperation(StorePreviewPurchaseResults) {
        const factory = @This().IStorePreviewCache.get();
        return try factory.RequestProductPurchaseByProductIdAndSkuIdAsync(productId, skuId);
    }
    pub fn LoadAddOnProductInfosAsync() core.HResult!*IAsyncOperation(IVectorView(StorePreviewProductInfo)) {
        const factory = @This().IStorePreviewCache.get();
        return try factory.LoadAddOnProductInfosAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.StorePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IStorePreviewCache: FactoryCache(IStorePreview, RUNTIME_NAME) = .{};
};
pub const StorePreviewProductInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePreviewProductInfo = @ptrCast(self);
        return try this.getProductId();
    }
    pub fn getProductType(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePreviewProductInfo = @ptrCast(self);
        return try this.getProductType();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePreviewProductInfo = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePreviewProductInfo = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getSkuInfoList(self: *@This()) core.HResult!*IVectorView(StorePreviewSkuInfo) {
        const this: *IStorePreviewProductInfo = @ptrCast(self);
        return try this.getSkuInfoList();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.StorePreviewProductInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorePreviewProductInfo.GUID;
    pub const IID: Guid = IStorePreviewProductInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorePreviewProductInfo.SIGNATURE);
};
pub const StorePreviewProductPurchaseStatus = enum(i32) {
    Succeeded = 0,
    AlreadyPurchased = 1,
    NotFulfilled = 2,
    NotPurchased = 3,
};
pub const StorePreviewPurchaseResults = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProductPurchaseStatus(self: *@This()) core.HResult!StorePreviewProductPurchaseStatus {
        const this: *IStorePreviewPurchaseResults = @ptrCast(self);
        return try this.getProductPurchaseStatus();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.StorePreviewPurchaseResults";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorePreviewPurchaseResults.GUID;
    pub const IID: Guid = IStorePreviewPurchaseResults.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorePreviewPurchaseResults.SIGNATURE);
};
pub const StorePreviewSkuInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePreviewSkuInfo = @ptrCast(self);
        return try this.getProductId();
    }
    pub fn getSkuId(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePreviewSkuInfo = @ptrCast(self);
        return try this.getSkuId();
    }
    pub fn getSkuType(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePreviewSkuInfo = @ptrCast(self);
        return try this.getSkuType();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePreviewSkuInfo = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePreviewSkuInfo = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getCustomDeveloperData(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePreviewSkuInfo = @ptrCast(self);
        return try this.getCustomDeveloperData();
    }
    pub fn getCurrencyCode(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePreviewSkuInfo = @ptrCast(self);
        return try this.getCurrencyCode();
    }
    pub fn getFormattedListPrice(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePreviewSkuInfo = @ptrCast(self);
        return try this.getFormattedListPrice();
    }
    pub fn getExtendedData(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePreviewSkuInfo = @ptrCast(self);
        return try this.getExtendedData();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.StorePreviewSkuInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorePreviewSkuInfo.GUID;
    pub const IID: Guid = IStorePreviewSkuInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorePreviewSkuInfo.SIGNATURE);
};
pub const StoreSystemFeature = enum(i32) {
    ArchitectureX86 = 0,
    ArchitectureX64 = 1,
    ArchitectureArm = 2,
    DirectX9 = 3,
    DirectX10 = 4,
    DirectX11 = 5,
    D3D12HardwareFL11 = 6,
    D3D12HardwareFL12 = 7,
    Memory300MB = 8,
    Memory750MB = 9,
    Memory1GB = 10,
    Memory2GB = 11,
    CameraFront = 12,
    CameraRear = 13,
    Gyroscope = 14,
    Hover = 15,
    Magnetometer = 16,
    Nfc = 17,
    Resolution720P = 18,
    ResolutionWvga = 19,
    ResolutionWvgaOr720P = 20,
    ResolutionWxga = 21,
    ResolutionWvgaOrWxga = 22,
    ResolutionWxgaOr720P = 23,
    Memory4GB = 24,
    Memory6GB = 25,
    Memory8GB = 26,
    Memory12GB = 27,
    Memory16GB = 28,
    Memory20GB = 29,
    VideoMemory2GB = 30,
    VideoMemory4GB = 31,
    VideoMemory6GB = 32,
    VideoMemory1GB = 33,
    ArchitectureArm64 = 34,
};
pub const WebAuthenticationCoreManagerHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestTokenWithUIElementHostingAsync(request: *WebTokenRequest, uiElement: *UIElement) core.HResult!*IAsyncOperation(WebTokenRequestResult) {
        const factory = @This().IWebAuthenticationCoreManagerHelperCache.get();
        return try factory.RequestTokenWithUIElementHostingAsync(request, uiElement);
    }
    pub fn RequestTokenWithUIElementHostingAsyncWithWebAccountWithUiElement(request: *WebTokenRequest, webAccount: *WebAccount, uiElement: *UIElement) core.HResult!*IAsyncOperation(WebTokenRequestResult) {
        const factory = @This().IWebAuthenticationCoreManagerHelperCache.get();
        return try factory.RequestTokenWithUIElementHostingAsyncWithWebAccountWithUiElement(request, webAccount, uiElement);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.Preview.WebAuthenticationCoreManagerHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IWebAuthenticationCoreManagerHelperCache: FactoryCache(IWebAuthenticationCoreManagerHelper, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const WebTokenRequest = @import("../../Security/Authentication/Web/Core.zig").WebTokenRequest;
const IReference = @import("../../Foundation.zig").IReference;
const WebTokenRequestResult = @import("../../Security/Authentication/Web/Core.zig").WebTokenRequestResult;
const UIElement = @import("../../UI/Xaml.zig").UIElement;
const DateTime = @import("../../Foundation.zig").DateTime;
const WebAccount = @import("../../Security/Credentials.zig").WebAccount;
const IRandomAccessStreamReference = @import("../../Storage/Streams.zig").IRandomAccessStreamReference;
const HRESULT = @import("../../root.zig").HRESULT;
const FactoryCache = @import("../../core.zig").FactoryCache;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const TrustLevel = @import("../../root.zig").TrustLevel;
const User = @import("../../System.zig").User;
const HSTRING = @import("../../root.zig").HSTRING;
pub const InstallControl = @import("./Preview/InstallControl.zig");
