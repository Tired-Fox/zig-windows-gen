pub const IStoreAcquireLicenseResult = extern struct {
    vtable: *const VTable,
    pub fn getStorePackageLicense(self: *@This()) core.HResult!*StorePackageLicense {
        var _r: *StorePackageLicense = undefined;
        const _c = self.vtable.get_StorePackageLicense(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreAcquireLicenseResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbd7946d-f040-4cb3-9a39-29bcecdbe22d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StorePackageLicense: *const fn(self: *anyopaque, _r: **StorePackageLicense) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IStoreAppLicense = extern struct {
    vtable: *const VTable,
    pub fn getSkuStoreId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SkuStoreId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTrial(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTrial(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_ExpirationDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExtendedJsonData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAddOnLicenses(self: *@This()) core.HResult!*IMapView(HSTRING,StoreLicense) {
        var _r: *IMapView(HSTRING,StoreLicense) = undefined;
        const _c = self.vtable.get_AddOnLicenses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrialTimeRemaining(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TrialTimeRemaining(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTrialOwnedByThisUser(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTrialOwnedByThisUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrialUniqueId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TrialUniqueId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreAppLicense";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f389f9de-73c0-45ce-9bab-b2fe3e5eafd3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SkuStoreId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsTrial: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExpirationDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_ExtendedJsonData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AddOnLicenses: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,StoreLicense)) callconv(.winapi) HRESULT,
        get_TrialTimeRemaining: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_IsTrialOwnedByThisUser: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_TrialUniqueId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStoreAppLicense2 = extern struct {
    vtable: *const VTable,
    pub fn getIsDiscLicense(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDiscLicense(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreAppLicense2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4666e91-4443-40b3-993f-28904435bdc6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsDiscLicense: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IStoreAvailability = extern struct {
    vtable: *const VTable,
    pub fn getStoreId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StoreId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_EndDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrice(self: *@This()) core.HResult!*StorePrice {
        var _r: *StorePrice = undefined;
        const _c = self.vtable.get_Price(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExtendedJsonData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPurchaseAsync(self: *@This()) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        var _r: *IAsyncOperation(StorePurchaseResult) = undefined;
        const _c = self.vtable.RequestPurchaseAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPurchaseAsync(self: *@This(), storePurchaseProperties: *StorePurchaseProperties) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        var _r: *IAsyncOperation(StorePurchaseResult) = undefined;
        const _c = self.vtable.RequestPurchaseAsync(@ptrCast(self), storePurchaseProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreAvailability";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa060325-0ffd-4493-ad43-f1f9918f69fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StoreId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EndDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_Price: *const fn(self: *anyopaque, _r: **StorePrice) callconv(.winapi) HRESULT,
        get_ExtendedJsonData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        RequestPurchaseAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorePurchaseResult)) callconv(.winapi) HRESULT,
        RequestPurchaseAsync: *const fn(self: *anyopaque, storePurchaseProperties: *StorePurchaseProperties, _r: **IAsyncOperation(StorePurchaseResult)) callconv(.winapi) HRESULT,
    };
};
pub const IStoreCanAcquireLicenseResult = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLicensableSku(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LicensableSku(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!StoreCanLicenseStatus {
        var _r: StoreCanLicenseStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreCanAcquireLicenseResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a693db3-0088-482f-86d5-bd46522663ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_LicensableSku: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *StoreCanLicenseStatus) callconv(.winapi) HRESULT,
    };
};
pub const IStoreCollectionData = extern struct {
    vtable: *const VTable,
    pub fn getIsTrial(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTrial(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCampaignId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CampaignId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeveloperOfferId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeveloperOfferId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAcquiredDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_AcquiredDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStartDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_StartDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_EndDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrialTimeRemaining(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TrialTimeRemaining(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExtendedJsonData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreCollectionData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8aa4c3b3-5bb3-441a-2ab4-4dab73d5ce67";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTrial: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CampaignId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeveloperOfferId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AcquiredDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_StartDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_EndDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_TrialTimeRemaining: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_ExtendedJsonData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStoreConsumableResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!StoreConsumableStatus {
        var _r: StoreConsumableStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrackingId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TrackingId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBalanceRemaining(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_BalanceRemaining(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreConsumableResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea5dab72-6a00-4052-be5b-bfdab4433352";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *StoreConsumableStatus) callconv(.winapi) HRESULT,
        get_TrackingId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_BalanceRemaining: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IStoreContext = extern struct {
    vtable: *const VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        var _r: *User = undefined;
        const _c = self.vtable.get_User(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addOfflineLicensesChanged(self: *@This(), handler: *TypedEventHandler(StoreContext,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OfflineLicensesChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOfflineLicensesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OfflineLicensesChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetCustomerPurchaseIdAsync(self: *@This(), serviceTicket: HSTRING, publisherUserId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetCustomerPurchaseIdAsync(@ptrCast(self), serviceTicket, publisherUserId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCustomerCollectionsIdAsync(self: *@This(), serviceTicket: HSTRING, publisherUserId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetCustomerCollectionsIdAsync(@ptrCast(self), serviceTicket, publisherUserId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppLicenseAsync(self: *@This()) core.HResult!*IAsyncOperation(StoreAppLicense) {
        var _r: *IAsyncOperation(StoreAppLicense) = undefined;
        const _c = self.vtable.GetAppLicenseAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStoreProductForCurrentAppAsync(self: *@This()) core.HResult!*IAsyncOperation(StoreProductResult) {
        var _r: *IAsyncOperation(StoreProductResult) = undefined;
        const _c = self.vtable.GetStoreProductForCurrentAppAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStoreProductsAsync(self: *@This(), productKinds: *IIterable(HSTRING), storeIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(StoreProductQueryResult) {
        var _r: *IAsyncOperation(StoreProductQueryResult) = undefined;
        const _c = self.vtable.GetStoreProductsAsync(@ptrCast(self), productKinds, storeIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAssociatedStoreProductsAsync(self: *@This(), productKinds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(StoreProductQueryResult) {
        var _r: *IAsyncOperation(StoreProductQueryResult) = undefined;
        const _c = self.vtable.GetAssociatedStoreProductsAsync(@ptrCast(self), productKinds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAssociatedStoreProductsWithPagingAsync(self: *@This(), productKinds: *IIterable(HSTRING), maxItemsToRetrievePerPage: u32) core.HResult!*IAsyncOperation(StoreProductPagedQueryResult) {
        var _r: *IAsyncOperation(StoreProductPagedQueryResult) = undefined;
        const _c = self.vtable.GetAssociatedStoreProductsWithPagingAsync(@ptrCast(self), productKinds, maxItemsToRetrievePerPage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUserCollectionAsync(self: *@This(), productKinds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(StoreProductQueryResult) {
        var _r: *IAsyncOperation(StoreProductQueryResult) = undefined;
        const _c = self.vtable.GetUserCollectionAsync(@ptrCast(self), productKinds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUserCollectionWithPagingAsync(self: *@This(), productKinds: *IIterable(HSTRING), maxItemsToRetrievePerPage: u32) core.HResult!*IAsyncOperation(StoreProductPagedQueryResult) {
        var _r: *IAsyncOperation(StoreProductPagedQueryResult) = undefined;
        const _c = self.vtable.GetUserCollectionWithPagingAsync(@ptrCast(self), productKinds, maxItemsToRetrievePerPage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportConsumableFulfillmentAsync(self: *@This(), productStoreId: HSTRING, quantity: u32, trackingId: *Guid) core.HResult!*IAsyncOperation(StoreConsumableResult) {
        var _r: *IAsyncOperation(StoreConsumableResult) = undefined;
        const _c = self.vtable.ReportConsumableFulfillmentAsync(@ptrCast(self), productStoreId, quantity, trackingId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConsumableBalanceRemainingAsync(self: *@This(), productStoreId: HSTRING) core.HResult!*IAsyncOperation(StoreConsumableResult) {
        var _r: *IAsyncOperation(StoreConsumableResult) = undefined;
        const _c = self.vtable.GetConsumableBalanceRemainingAsync(@ptrCast(self), productStoreId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AcquireStoreLicenseForOptionalPackageAsync(self: *@This(), optionalPackage: *Package) core.HResult!*IAsyncOperation(StoreAcquireLicenseResult) {
        var _r: *IAsyncOperation(StoreAcquireLicenseResult) = undefined;
        const _c = self.vtable.AcquireStoreLicenseForOptionalPackageAsync(@ptrCast(self), optionalPackage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPurchaseAsync(self: *@This(), storeId: HSTRING) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        var _r: *IAsyncOperation(StorePurchaseResult) = undefined;
        const _c = self.vtable.RequestPurchaseAsync(@ptrCast(self), storeId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPurchaseAsync(self: *@This(), storeId: HSTRING, storePurchaseProperties: *StorePurchaseProperties) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        var _r: *IAsyncOperation(StorePurchaseResult) = undefined;
        const _c = self.vtable.RequestPurchaseAsync(@ptrCast(self), storeId, storePurchaseProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppAndOptionalStorePackageUpdatesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorePackageUpdate)) {
        var _r: *IAsyncOperation(IVectorView(StorePackageUpdate)) = undefined;
        const _c = self.vtable.GetAppAndOptionalStorePackageUpdatesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestDownloadStorePackageUpdatesAsync(self: *@This(), storePackageUpdates: *IIterable(StorePackageUpdate)) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        var _r: *IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) = undefined;
        const _c = self.vtable.RequestDownloadStorePackageUpdatesAsync(@ptrCast(self), storePackageUpdates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestDownloadAndInstallStorePackageUpdatesAsync(self: *@This(), storePackageUpdates: *IIterable(StorePackageUpdate)) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        var _r: *IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) = undefined;
        const _c = self.vtable.RequestDownloadAndInstallStorePackageUpdatesAsync(@ptrCast(self), storePackageUpdates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestDownloadAndInstallStorePackagesAsync(self: *@This(), storeIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        var _r: *IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) = undefined;
        const _c = self.vtable.RequestDownloadAndInstallStorePackagesAsync(@ptrCast(self), storeIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac98b6be-f4fd-4912-babd-5035e5e8bcab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_User: *const fn(self: *anyopaque, _r: **User) callconv(.winapi) HRESULT,
        add_OfflineLicensesChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(StoreContext,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OfflineLicensesChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetCustomerPurchaseIdAsync: *const fn(self: *anyopaque, serviceTicket: HSTRING, publisherUserId: HSTRING, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetCustomerCollectionsIdAsync: *const fn(self: *anyopaque, serviceTicket: HSTRING, publisherUserId: HSTRING, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetAppLicenseAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StoreAppLicense)) callconv(.winapi) HRESULT,
        GetStoreProductForCurrentAppAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StoreProductResult)) callconv(.winapi) HRESULT,
        GetStoreProductsAsync: *const fn(self: *anyopaque, productKinds: *IIterable(HSTRING), storeIds: *IIterable(HSTRING), _r: **IAsyncOperation(StoreProductQueryResult)) callconv(.winapi) HRESULT,
        GetAssociatedStoreProductsAsync: *const fn(self: *anyopaque, productKinds: *IIterable(HSTRING), _r: **IAsyncOperation(StoreProductQueryResult)) callconv(.winapi) HRESULT,
        GetAssociatedStoreProductsWithPagingAsync: *const fn(self: *anyopaque, productKinds: *IIterable(HSTRING), maxItemsToRetrievePerPage: u32, _r: **IAsyncOperation(StoreProductPagedQueryResult)) callconv(.winapi) HRESULT,
        GetUserCollectionAsync: *const fn(self: *anyopaque, productKinds: *IIterable(HSTRING), _r: **IAsyncOperation(StoreProductQueryResult)) callconv(.winapi) HRESULT,
        GetUserCollectionWithPagingAsync: *const fn(self: *anyopaque, productKinds: *IIterable(HSTRING), maxItemsToRetrievePerPage: u32, _r: **IAsyncOperation(StoreProductPagedQueryResult)) callconv(.winapi) HRESULT,
        ReportConsumableFulfillmentAsync: *const fn(self: *anyopaque, productStoreId: HSTRING, quantity: u32, trackingId: *Guid, _r: **IAsyncOperation(StoreConsumableResult)) callconv(.winapi) HRESULT,
        GetConsumableBalanceRemainingAsync: *const fn(self: *anyopaque, productStoreId: HSTRING, _r: **IAsyncOperation(StoreConsumableResult)) callconv(.winapi) HRESULT,
        AcquireStoreLicenseForOptionalPackageAsync: *const fn(self: *anyopaque, optionalPackage: *Package, _r: **IAsyncOperation(StoreAcquireLicenseResult)) callconv(.winapi) HRESULT,
        RequestPurchaseAsync: *const fn(self: *anyopaque, storeId: HSTRING, _r: **IAsyncOperation(StorePurchaseResult)) callconv(.winapi) HRESULT,
        RequestPurchaseAsync: *const fn(self: *anyopaque, storeId: HSTRING, storePurchaseProperties: *StorePurchaseProperties, _r: **IAsyncOperation(StorePurchaseResult)) callconv(.winapi) HRESULT,
        GetAppAndOptionalStorePackageUpdatesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(StorePackageUpdate))) callconv(.winapi) HRESULT,
        RequestDownloadStorePackageUpdatesAsync: *const fn(self: *anyopaque, storePackageUpdates: *IIterable(StorePackageUpdate), _r: **IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus)) callconv(.winapi) HRESULT,
        RequestDownloadAndInstallStorePackageUpdatesAsync: *const fn(self: *anyopaque, storePackageUpdates: *IIterable(StorePackageUpdate), _r: **IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus)) callconv(.winapi) HRESULT,
        RequestDownloadAndInstallStorePackagesAsync: *const fn(self: *anyopaque, storeIds: *IIterable(HSTRING), _r: **IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IStoreContext2 = extern struct {
    vtable: *const VTable,
    pub fn FindStoreProductForPackageAsync(self: *@This(), productKinds: *IIterable(HSTRING), package: *Package) core.HResult!*IAsyncOperation(StoreProductResult) {
        var _r: *IAsyncOperation(StoreProductResult) = undefined;
        const _c = self.vtable.FindStoreProductForPackageAsync(@ptrCast(self), productKinds, package, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreContext2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "18bc54da-7bd9-452c-9116-3bbd06ffc63a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindStoreProductForPackageAsync: *const fn(self: *anyopaque, productKinds: *IIterable(HSTRING), package: *Package, _r: **IAsyncOperation(StoreProductResult)) callconv(.winapi) HRESULT,
    };
};
pub const IStoreContext3 = extern struct {
    vtable: *const VTable,
    pub fn getCanSilentlyDownloadStorePackageUpdates(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanSilentlyDownloadStorePackageUpdates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySilentDownloadStorePackageUpdatesAsync(self: *@This(), storePackageUpdates: *IIterable(StorePackageUpdate)) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        var _r: *IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) = undefined;
        const _c = self.vtable.TrySilentDownloadStorePackageUpdatesAsync(@ptrCast(self), storePackageUpdates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySilentDownloadAndInstallStorePackageUpdatesAsync(self: *@This(), storePackageUpdates: *IIterable(StorePackageUpdate)) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        var _r: *IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) = undefined;
        const _c = self.vtable.TrySilentDownloadAndInstallStorePackageUpdatesAsync(@ptrCast(self), storePackageUpdates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CanAcquireStoreLicenseForOptionalPackageAsync(self: *@This(), optionalPackage: *Package) core.HResult!*IAsyncOperation(StoreCanAcquireLicenseResult) {
        var _r: *IAsyncOperation(StoreCanAcquireLicenseResult) = undefined;
        const _c = self.vtable.CanAcquireStoreLicenseForOptionalPackageAsync(@ptrCast(self), optionalPackage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CanAcquireStoreLicenseAsync(self: *@This(), productStoreId: HSTRING) core.HResult!*IAsyncOperation(StoreCanAcquireLicenseResult) {
        var _r: *IAsyncOperation(StoreCanAcquireLicenseResult) = undefined;
        const _c = self.vtable.CanAcquireStoreLicenseAsync(@ptrCast(self), productStoreId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStoreProductsAsync(self: *@This(), productKinds: *IIterable(HSTRING), storeIds: *IIterable(HSTRING), storeProductOptions: *StoreProductOptions) core.HResult!*IAsyncOperation(StoreProductQueryResult) {
        var _r: *IAsyncOperation(StoreProductQueryResult) = undefined;
        const _c = self.vtable.GetStoreProductsAsync(@ptrCast(self), productKinds, storeIds, storeProductOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAssociatedStoreQueueItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StoreQueueItem)) {
        var _r: *IAsyncOperation(IVectorView(StoreQueueItem)) = undefined;
        const _c = self.vtable.GetAssociatedStoreQueueItemsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStoreQueueItemsAsync(self: *@This(), storeIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IVectorView(StoreQueueItem)) {
        var _r: *IAsyncOperation(IVectorView(StoreQueueItem)) = undefined;
        const _c = self.vtable.GetStoreQueueItemsAsync(@ptrCast(self), storeIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestDownloadAndInstallStorePackagesAsync(self: *@This(), storeIds: *IIterable(HSTRING), storePackageInstallOptions: *StorePackageInstallOptions) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        var _r: *IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) = undefined;
        const _c = self.vtable.RequestDownloadAndInstallStorePackagesAsync(@ptrCast(self), storeIds, storePackageInstallOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DownloadAndInstallStorePackagesAsync(self: *@This(), storeIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        var _r: *IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) = undefined;
        const _c = self.vtable.DownloadAndInstallStorePackagesAsync(@ptrCast(self), storeIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestUninstallStorePackageAsync(self: *@This(), package: *Package) core.HResult!*IAsyncOperation(StoreUninstallStorePackageResult) {
        var _r: *IAsyncOperation(StoreUninstallStorePackageResult) = undefined;
        const _c = self.vtable.RequestUninstallStorePackageAsync(@ptrCast(self), package, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestUninstallStorePackageByStoreIdAsync(self: *@This(), storeId: HSTRING) core.HResult!*IAsyncOperation(StoreUninstallStorePackageResult) {
        var _r: *IAsyncOperation(StoreUninstallStorePackageResult) = undefined;
        const _c = self.vtable.RequestUninstallStorePackageByStoreIdAsync(@ptrCast(self), storeId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UninstallStorePackageAsync(self: *@This(), package: *Package) core.HResult!*IAsyncOperation(StoreUninstallStorePackageResult) {
        var _r: *IAsyncOperation(StoreUninstallStorePackageResult) = undefined;
        const _c = self.vtable.UninstallStorePackageAsync(@ptrCast(self), package, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UninstallStorePackageByStoreIdAsync(self: *@This(), storeId: HSTRING) core.HResult!*IAsyncOperation(StoreUninstallStorePackageResult) {
        var _r: *IAsyncOperation(StoreUninstallStorePackageResult) = undefined;
        const _c = self.vtable.UninstallStorePackageByStoreIdAsync(@ptrCast(self), storeId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreContext3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e26226ca-1a01-4730-85a6-ecc896e4ae38";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanSilentlyDownloadStorePackageUpdates: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        TrySilentDownloadStorePackageUpdatesAsync: *const fn(self: *anyopaque, storePackageUpdates: *IIterable(StorePackageUpdate), _r: **IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus)) callconv(.winapi) HRESULT,
        TrySilentDownloadAndInstallStorePackageUpdatesAsync: *const fn(self: *anyopaque, storePackageUpdates: *IIterable(StorePackageUpdate), _r: **IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus)) callconv(.winapi) HRESULT,
        CanAcquireStoreLicenseForOptionalPackageAsync: *const fn(self: *anyopaque, optionalPackage: *Package, _r: **IAsyncOperation(StoreCanAcquireLicenseResult)) callconv(.winapi) HRESULT,
        CanAcquireStoreLicenseAsync: *const fn(self: *anyopaque, productStoreId: HSTRING, _r: **IAsyncOperation(StoreCanAcquireLicenseResult)) callconv(.winapi) HRESULT,
        GetStoreProductsAsync: *const fn(self: *anyopaque, productKinds: *IIterable(HSTRING), storeIds: *IIterable(HSTRING), storeProductOptions: *StoreProductOptions, _r: **IAsyncOperation(StoreProductQueryResult)) callconv(.winapi) HRESULT,
        GetAssociatedStoreQueueItemsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(StoreQueueItem))) callconv(.winapi) HRESULT,
        GetStoreQueueItemsAsync: *const fn(self: *anyopaque, storeIds: *IIterable(HSTRING), _r: **IAsyncOperation(IVectorView(StoreQueueItem))) callconv(.winapi) HRESULT,
        RequestDownloadAndInstallStorePackagesAsync: *const fn(self: *anyopaque, storeIds: *IIterable(HSTRING), storePackageInstallOptions: *StorePackageInstallOptions, _r: **IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus)) callconv(.winapi) HRESULT,
        DownloadAndInstallStorePackagesAsync: *const fn(self: *anyopaque, storeIds: *IIterable(HSTRING), _r: **IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus)) callconv(.winapi) HRESULT,
        RequestUninstallStorePackageAsync: *const fn(self: *anyopaque, package: *Package, _r: **IAsyncOperation(StoreUninstallStorePackageResult)) callconv(.winapi) HRESULT,
        RequestUninstallStorePackageByStoreIdAsync: *const fn(self: *anyopaque, storeId: HSTRING, _r: **IAsyncOperation(StoreUninstallStorePackageResult)) callconv(.winapi) HRESULT,
        UninstallStorePackageAsync: *const fn(self: *anyopaque, package: *Package, _r: **IAsyncOperation(StoreUninstallStorePackageResult)) callconv(.winapi) HRESULT,
        UninstallStorePackageByStoreIdAsync: *const fn(self: *anyopaque, storeId: HSTRING, _r: **IAsyncOperation(StoreUninstallStorePackageResult)) callconv(.winapi) HRESULT,
    };
};
pub const IStoreContext4 = extern struct {
    vtable: *const VTable,
    pub fn RequestRateAndReviewAppAsync(self: *@This()) core.HResult!*IAsyncOperation(StoreRateAndReviewResult) {
        var _r: *IAsyncOperation(StoreRateAndReviewResult) = undefined;
        const _c = self.vtable.RequestRateAndReviewAppAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetInstallOrderForAssociatedStoreQueueItemsAsync(self: *@This(), items: *IIterable(StoreQueueItem)) core.HResult!*IAsyncOperation(IVectorView(StoreQueueItem)) {
        var _r: *IAsyncOperation(IVectorView(StoreQueueItem)) = undefined;
        const _c = self.vtable.SetInstallOrderForAssociatedStoreQueueItemsAsync(@ptrCast(self), items, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreContext4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af9c6f69-bea1-4bf4-8e74-ae03e206c6b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestRateAndReviewAppAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StoreRateAndReviewResult)) callconv(.winapi) HRESULT,
        SetInstallOrderForAssociatedStoreQueueItemsAsync: *const fn(self: *anyopaque, items: *IIterable(StoreQueueItem), _r: **IAsyncOperation(IVectorView(StoreQueueItem))) callconv(.winapi) HRESULT,
    };
};
pub const IStoreContext5 = extern struct {
    vtable: *const VTable,
    pub fn GetUserPurchaseHistoryAsync(self: *@This(), productKinds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(StoreProductQueryResult) {
        var _r: *IAsyncOperation(StoreProductQueryResult) = undefined;
        const _c = self.vtable.GetUserPurchaseHistoryAsync(@ptrCast(self), productKinds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAssociatedStoreProductsByInAppOfferTokenAsync(self: *@This(), inAppOfferTokens: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(StoreProductQueryResult) {
        var _r: *IAsyncOperation(StoreProductQueryResult) = undefined;
        const _c = self.vtable.GetAssociatedStoreProductsByInAppOfferTokenAsync(@ptrCast(self), inAppOfferTokens, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPurchaseByInAppOfferTokenAsync(self: *@This(), inAppOfferToken: HSTRING) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        var _r: *IAsyncOperation(StorePurchaseResult) = undefined;
        const _c = self.vtable.RequestPurchaseByInAppOfferTokenAsync(@ptrCast(self), inAppOfferToken, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreContext5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6de6c52b-c43a-5953-b39a-71643c57d96e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetUserPurchaseHistoryAsync: *const fn(self: *anyopaque, productKinds: *IIterable(HSTRING), _r: **IAsyncOperation(StoreProductQueryResult)) callconv(.winapi) HRESULT,
        GetAssociatedStoreProductsByInAppOfferTokenAsync: *const fn(self: *anyopaque, inAppOfferTokens: *IIterable(HSTRING), _r: **IAsyncOperation(StoreProductQueryResult)) callconv(.winapi) HRESULT,
        RequestPurchaseByInAppOfferTokenAsync: *const fn(self: *anyopaque, inAppOfferToken: HSTRING, _r: **IAsyncOperation(StorePurchaseResult)) callconv(.winapi) HRESULT,
    };
};
pub const IStoreContextStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*StoreContext {
        var _r: *StoreContext = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*StoreContext {
        var _r: *StoreContext = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreContextStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c06ee5f-15c0-4e72-9330-d6191cebd19c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **StoreContext) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **StoreContext) callconv(.winapi) HRESULT,
    };
};
pub const IStoreImage = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImagePurposeTag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ImagePurposeTag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Width(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Height(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCaption(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Caption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreImage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "081fd248-adb4-4b64-a993-784789926ed5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_ImagePurposeTag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Caption: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStoreLicense = extern struct {
    vtable: *const VTable,
    pub fn getSkuStoreId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SkuStoreId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_ExpirationDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExtendedJsonData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInAppOfferToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InAppOfferToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreLicense";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "26dc9579-4c4f-4f30-bc89-649f60e36055";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SkuStoreId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExpirationDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_ExtendedJsonData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_InAppOfferToken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStorePackageInstallOptions = extern struct {
    vtable: *const VTable,
    pub fn getAllowForcedAppRestart(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowForcedAppRestart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowForcedAppRestart(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowForcedAppRestart(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStorePackageInstallOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d3d630c-0ccd-44dd-8c59-80810a729973";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowForcedAppRestart: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowForcedAppRestart: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IStorePackageLicense = extern struct {
    vtable: *const VTable,
    pub fn addLicenseLost(self: *@This(), handler: *TypedEventHandler(StorePackageLicense,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LicenseLost(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLicenseLost(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LicenseLost(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsValid(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsValid(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReleaseLicense(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReleaseLicense(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStorePackageLicense";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c465714-14e1-4973-bd14-f77724271e99";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_LicenseLost: *const fn(self: *anyopaque, handler: *TypedEventHandler(StorePackageLicense,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LicenseLost: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_IsValid: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ReleaseLicense: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IStorePackageUpdate = extern struct {
    vtable: *const VTable,
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        var _r: *Package = undefined;
        const _c = self.vtable.get_Package(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMandatory(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Mandatory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStorePackageUpdate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "140fa150-3cbf-4a35-b91f-48271c31b072";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Package: *const fn(self: *anyopaque, _r: **Package) callconv(.winapi) HRESULT,
        get_Mandatory: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IStorePackageUpdateResult = extern struct {
    vtable: *const VTable,
    pub fn getOverallState(self: *@This()) core.HResult!StorePackageUpdateState {
        var _r: StorePackageUpdateState = undefined;
        const _c = self.vtable.get_OverallState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStorePackageUpdateStatuses(self: *@This()) core.HResult!*IVectorView(StorePackageUpdateStatus) {
        var _r: *IVectorView(StorePackageUpdateStatus) = undefined;
        const _c = self.vtable.get_StorePackageUpdateStatuses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStorePackageUpdateResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e79142ed-61f9-4893-b4fe-cf191603af7b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OverallState: *const fn(self: *anyopaque, _r: *StorePackageUpdateState) callconv(.winapi) HRESULT,
        get_StorePackageUpdateStatuses: *const fn(self: *anyopaque, _r: **IVectorView(StorePackageUpdateStatus)) callconv(.winapi) HRESULT,
    };
};
pub const IStorePackageUpdateResult2 = extern struct {
    vtable: *const VTable,
    pub fn getStoreQueueItems(self: *@This()) core.HResult!*IVectorView(StoreQueueItem) {
        var _r: *IVectorView(StoreQueueItem) = undefined;
        const _c = self.vtable.get_StoreQueueItems(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStorePackageUpdateResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "071d012e-bc62-4f2e-87ea-99d801aeaf98";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StoreQueueItems: *const fn(self: *anyopaque, _r: **IVectorView(StoreQueueItem)) callconv(.winapi) HRESULT,
    };
};
pub const IStorePrice = extern struct {
    vtable: *const VTable,
    pub fn getFormattedBasePrice(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FormattedBasePrice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFormattedPrice(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FormattedPrice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOnSale(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOnSale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSaleEndDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_SaleEndDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrencyCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CurrencyCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFormattedRecurrencePrice(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FormattedRecurrencePrice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStorePrice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55ba94c4-15f1-407c-8f06-006380f4df0b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FormattedBasePrice: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FormattedPrice: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsOnSale: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SaleEndDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_CurrencyCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FormattedRecurrencePrice: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStorePrice2 = extern struct {
    vtable: *const VTable,
    pub fn getUnformattedBasePrice(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UnformattedBasePrice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnformattedPrice(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UnformattedPrice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnformattedRecurrencePrice(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UnformattedRecurrencePrice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStorePrice2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f711573c-40e6-5641-b063-f1df42b2b12a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UnformattedBasePrice: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UnformattedPrice: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UnformattedRecurrencePrice: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStoreProduct = extern struct {
    vtable: *const VTable,
    pub fn getStoreId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StoreId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
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
    pub fn getProductKind(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProductKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasDigitalDownload(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasDigitalDownload(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeywords(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_Keywords(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImages(self: *@This()) core.HResult!*IVectorView(StoreImage) {
        var _r: *IVectorView(StoreImage) = undefined;
        const _c = self.vtable.get_Images(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideos(self: *@This()) core.HResult!*IVectorView(StoreVideo) {
        var _r: *IVectorView(StoreVideo) = undefined;
        const _c = self.vtable.get_Videos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSkus(self: *@This()) core.HResult!*IVectorView(StoreSku) {
        var _r: *IVectorView(StoreSku) = undefined;
        const _c = self.vtable.get_Skus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInUserCollection(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInUserCollection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrice(self: *@This()) core.HResult!*StorePrice {
        var _r: *StorePrice = undefined;
        const _c = self.vtable.get_Price(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExtendedJsonData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLinkUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_LinkUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsAnySkuInstalledAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetIsAnySkuInstalledAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPurchaseAsync(self: *@This()) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        var _r: *IAsyncOperation(StorePurchaseResult) = undefined;
        const _c = self.vtable.RequestPurchaseAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPurchaseAsync(self: *@This(), storePurchaseProperties: *StorePurchaseProperties) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        var _r: *IAsyncOperation(StorePurchaseResult) = undefined;
        const _c = self.vtable.RequestPurchaseAsync(@ptrCast(self), storePurchaseProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInAppOfferToken(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_InAppOfferToken(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreProduct";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "320e2c52-d760-450a-a42b-67d1e901ac90";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StoreId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProductKind: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HasDigitalDownload: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Keywords: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Images: *const fn(self: *anyopaque, _r: **IVectorView(StoreImage)) callconv(.winapi) HRESULT,
        get_Videos: *const fn(self: *anyopaque, _r: **IVectorView(StoreVideo)) callconv(.winapi) HRESULT,
        get_Skus: *const fn(self: *anyopaque, _r: **IVectorView(StoreSku)) callconv(.winapi) HRESULT,
        get_IsInUserCollection: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Price: *const fn(self: *anyopaque, _r: **StorePrice) callconv(.winapi) HRESULT,
        get_ExtendedJsonData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_LinkUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        GetIsAnySkuInstalledAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestPurchaseAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorePurchaseResult)) callconv(.winapi) HRESULT,
        RequestPurchaseAsync: *const fn(self: *anyopaque, storePurchaseProperties: *StorePurchaseProperties, _r: **IAsyncOperation(StorePurchaseResult)) callconv(.winapi) HRESULT,
        get_InAppOfferToken: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStoreProductOptions = extern struct {
    vtable: *const VTable,
    pub fn getActionFilters(self: *@This()) core.HResult!*IVector(HSTRING) {
        var _r: *IVector(HSTRING) = undefined;
        const _c = self.vtable.get_ActionFilters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreProductOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b34a0f9-a113-4811-8326-16199c927f31";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ActionFilters: *const fn(self: *anyopaque, _r: **IVector(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const IStoreProductPagedQueryResult = extern struct {
    vtable: *const VTable,
    pub fn getProducts(self: *@This()) core.HResult!*IMapView(HSTRING,StoreProduct) {
        var _r: *IMapView(HSTRING,StoreProduct) = undefined;
        const _c = self.vtable.get_Products(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasMoreResults(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasMoreResults(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNextAsync(self: *@This()) core.HResult!*IAsyncOperation(StoreProductPagedQueryResult) {
        var _r: *IAsyncOperation(StoreProductPagedQueryResult) = undefined;
        const _c = self.vtable.GetNextAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreProductPagedQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c92718c5-4dd5-4869-a462-ecc6872e43c5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Products: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,StoreProduct)) callconv(.winapi) HRESULT,
        get_HasMoreResults: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        GetNextAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StoreProductPagedQueryResult)) callconv(.winapi) HRESULT,
    };
};
pub const IStoreProductQueryResult = extern struct {
    vtable: *const VTable,
    pub fn getProducts(self: *@This()) core.HResult!*IMapView(HSTRING,StoreProduct) {
        var _r: *IMapView(HSTRING,StoreProduct) = undefined;
        const _c = self.vtable.get_Products(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreProductQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d805e6c5-d456-4ff6-8049-9076d5165f73";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Products: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,StoreProduct)) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IStoreProductResult = extern struct {
    vtable: *const VTable,
    pub fn getProduct(self: *@This()) core.HResult!*StoreProduct {
        var _r: *StoreProduct = undefined;
        const _c = self.vtable.get_Product(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreProductResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7674f73-3c87-4ee1-8201-f428359bd3af";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Product: *const fn(self: *anyopaque, _r: **StoreProduct) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IStorePurchaseProperties = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Name(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExtendedJsonData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExtendedJsonData(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ExtendedJsonData(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStorePurchaseProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "836278f3-ff87-4364-a5b4-fd2153ebe43b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ExtendedJsonData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ExtendedJsonData: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IStorePurchasePropertiesFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), name: HSTRING) core.HResult!*StorePurchaseProperties {
        var _r: *StorePurchaseProperties = undefined;
        const _c = self.vtable.Create(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStorePurchasePropertiesFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a768f59e-fefd-489f-9a17-22a593e68b9d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, name: HSTRING, _r: **StorePurchaseProperties) callconv(.winapi) HRESULT,
    };
};
pub const IStorePurchaseResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!StorePurchaseStatus {
        var _r: StorePurchaseStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStorePurchaseResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "add28552-f96a-463d-a7bb-c20b4fca6952";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *StorePurchaseStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IStoreQueueItem = extern struct {
    vtable: *const VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PackageFamilyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInstallKind(self: *@This()) core.HResult!StoreQueueItemKind {
        var _r: StoreQueueItemKind = undefined;
        const _c = self.vtable.get_InstallKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentStatus(self: *@This()) core.HResult!*StoreQueueItemStatus {
        var _r: *StoreQueueItemStatus = undefined;
        const _c = self.vtable.GetCurrentStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCompleted(self: *@This(), handler: *TypedEventHandler(StoreQueueItem,StoreQueueItemCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Completed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Completed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(StoreQueueItem,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreQueueItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56d5c32b-f830-4293-9188-cad2dcde7357";
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
        get_PackageFamilyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_InstallKind: *const fn(self: *anyopaque, _r: *StoreQueueItemKind) callconv(.winapi) HRESULT,
        GetCurrentStatus: *const fn(self: *anyopaque, _r: **StoreQueueItemStatus) callconv(.winapi) HRESULT,
        add_Completed: *const fn(self: *anyopaque, handler: *TypedEventHandler(StoreQueueItem,StoreQueueItemCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Completed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(StoreQueueItem,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IStoreQueueItem2 = extern struct {
    vtable: *const VTable,
    pub fn CancelInstallAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CancelInstallAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PauseInstallAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.PauseInstallAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResumeInstallAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ResumeInstallAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreQueueItem2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69491ca8-1ad4-447c-ad8c-a95035f64d82";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CancelInstallAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        PauseInstallAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ResumeInstallAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IStoreQueueItemCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!*StoreQueueItemStatus {
        var _r: *StoreQueueItemStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreQueueItemCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1247df6c-b44a-439b-bb07-1d3003d005c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: **StoreQueueItemStatus) callconv(.winapi) HRESULT,
    };
};
pub const IStoreQueueItemStatus = extern struct {
    vtable: *const VTable,
    pub fn getPackageInstallState(self: *@This()) core.HResult!StoreQueueItemState {
        var _r: StoreQueueItemState = undefined;
        const _c = self.vtable.get_PackageInstallState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPackageInstallExtendedState(self: *@This()) core.HResult!StoreQueueItemExtendedState {
        var _r: StoreQueueItemExtendedState = undefined;
        const _c = self.vtable.get_PackageInstallExtendedState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpdateStatus(self: *@This()) core.HResult!StorePackageUpdateStatus {
        var _r: StorePackageUpdateStatus = undefined;
        const _c = self.vtable.get_UpdateStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreQueueItemStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9bd6796f-9cc3-4ec3-b2ef-7be433b30174";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PackageInstallState: *const fn(self: *anyopaque, _r: *StoreQueueItemState) callconv(.winapi) HRESULT,
        get_PackageInstallExtendedState: *const fn(self: *anyopaque, _r: *StoreQueueItemExtendedState) callconv(.winapi) HRESULT,
        get_UpdateStatus: *const fn(self: *anyopaque, _r: *StorePackageUpdateStatus) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IStoreRateAndReviewResult = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExtendedJsonData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWasUpdated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_WasUpdated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!StoreRateAndReviewStatus {
        var _r: StoreRateAndReviewStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreRateAndReviewResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d209d56-a6b5-4121-9b61-ee6d0fbdbdbb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_ExtendedJsonData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WasUpdated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *StoreRateAndReviewStatus) callconv(.winapi) HRESULT,
    };
};
pub const IStoreRequestHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn SendRequestAsync(self: *@This(), context: *StoreContext, requestKind: u32, parametersAsJson: HSTRING) core.HResult!*IAsyncOperation(StoreSendRequestResult) {
        var _r: *IAsyncOperation(StoreSendRequestResult) = undefined;
        const _c = self.vtable.SendRequestAsync(@ptrCast(self), context, requestKind, parametersAsJson, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreRequestHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6ce5e5f9-a0c9-4b2c-96a6-a171c630038d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SendRequestAsync: *const fn(self: *anyopaque, context: *StoreContext, requestKind: u32, parametersAsJson: HSTRING, _r: **IAsyncOperation(StoreSendRequestResult)) callconv(.winapi) HRESULT,
    };
};
pub const IStoreSendRequestResult = extern struct {
    vtable: *const VTable,
    pub fn getResponse(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Response(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreSendRequestResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c73abe60-8272-4502-8a69-6e75153a4299";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Response: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IStoreSendRequestResult2 = extern struct {
    vtable: *const VTable,
    pub fn getHttpStatusCode(self: *@This()) core.HResult!HttpStatusCode {
        var _r: HttpStatusCode = undefined;
        const _c = self.vtable.get_HttpStatusCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreSendRequestResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2901296f-c0b0-49d0-8e8d-aa940af9c10b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HttpStatusCode: *const fn(self: *anyopaque, _r: *HttpStatusCode) callconv(.winapi) HRESULT,
    };
};
pub const IStoreSku = extern struct {
    vtable: *const VTable,
    pub fn getStoreId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StoreId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
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
    pub fn getIsTrial(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTrial(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomDeveloperData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CustomDeveloperData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImages(self: *@This()) core.HResult!*IVectorView(StoreImage) {
        var _r: *IVectorView(StoreImage) = undefined;
        const _c = self.vtable.get_Images(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideos(self: *@This()) core.HResult!*IVectorView(StoreVideo) {
        var _r: *IVectorView(StoreVideo) = undefined;
        const _c = self.vtable.get_Videos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailabilities(self: *@This()) core.HResult!*IVectorView(StoreAvailability) {
        var _r: *IVectorView(StoreAvailability) = undefined;
        const _c = self.vtable.get_Availabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrice(self: *@This()) core.HResult!*StorePrice {
        var _r: *StorePrice = undefined;
        const _c = self.vtable.get_Price(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExtendedJsonData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInUserCollection(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInUserCollection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBundledSkus(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_BundledSkus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCollectionData(self: *@This()) core.HResult!*StoreCollectionData {
        var _r: *StoreCollectionData = undefined;
        const _c = self.vtable.get_CollectionData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsInstalledAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.GetIsInstalledAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPurchaseAsync(self: *@This()) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        var _r: *IAsyncOperation(StorePurchaseResult) = undefined;
        const _c = self.vtable.RequestPurchaseAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPurchaseAsync(self: *@This(), storePurchaseProperties: *StorePurchaseProperties) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        var _r: *IAsyncOperation(StorePurchaseResult) = undefined;
        const _c = self.vtable.RequestPurchaseAsync(@ptrCast(self), storePurchaseProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSubscription(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSubscription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSubscriptionInfo(self: *@This()) core.HResult!*StoreSubscriptionInfo {
        var _r: *StoreSubscriptionInfo = undefined;
        const _c = self.vtable.get_SubscriptionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreSku";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "397e6f55-4440-4f03-863c-91f3fec83d79";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StoreId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsTrial: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CustomDeveloperData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Images: *const fn(self: *anyopaque, _r: **IVectorView(StoreImage)) callconv(.winapi) HRESULT,
        get_Videos: *const fn(self: *anyopaque, _r: **IVectorView(StoreVideo)) callconv(.winapi) HRESULT,
        get_Availabilities: *const fn(self: *anyopaque, _r: **IVectorView(StoreAvailability)) callconv(.winapi) HRESULT,
        get_Price: *const fn(self: *anyopaque, _r: **StorePrice) callconv(.winapi) HRESULT,
        get_ExtendedJsonData: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsInUserCollection: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_BundledSkus: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_CollectionData: *const fn(self: *anyopaque, _r: **StoreCollectionData) callconv(.winapi) HRESULT,
        GetIsInstalledAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestPurchaseAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(StorePurchaseResult)) callconv(.winapi) HRESULT,
        RequestPurchaseAsync: *const fn(self: *anyopaque, storePurchaseProperties: *StorePurchaseProperties, _r: **IAsyncOperation(StorePurchaseResult)) callconv(.winapi) HRESULT,
        get_IsSubscription: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SubscriptionInfo: *const fn(self: *anyopaque, _r: **StoreSubscriptionInfo) callconv(.winapi) HRESULT,
    };
};
pub const IStoreSubscriptionInfo = extern struct {
    vtable: *const VTable,
    pub fn getBillingPeriod(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_BillingPeriod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBillingPeriodUnit(self: *@This()) core.HResult!StoreDurationUnit {
        var _r: StoreDurationUnit = undefined;
        const _c = self.vtable.get_BillingPeriodUnit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasTrialPeriod(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasTrialPeriod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrialPeriod(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TrialPeriod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrialPeriodUnit(self: *@This()) core.HResult!StoreDurationUnit {
        var _r: StoreDurationUnit = undefined;
        const _c = self.vtable.get_TrialPeriodUnit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreSubscriptionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4189776a-0559-43ac-a9c6-3ab0011fb8eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BillingPeriod: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_BillingPeriodUnit: *const fn(self: *anyopaque, _r: *StoreDurationUnit) callconv(.winapi) HRESULT,
        get_HasTrialPeriod: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_TrialPeriod: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TrialPeriodUnit: *const fn(self: *anyopaque, _r: *StoreDurationUnit) callconv(.winapi) HRESULT,
    };
};
pub const IStoreUninstallStorePackageResult = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!StoreUninstallStorePackageStatus {
        var _r: StoreUninstallStorePackageStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreUninstallStorePackageResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9fca39fd-126f-4cda-b801-1346b8d0a260";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *StoreUninstallStorePackageStatus) callconv(.winapi) HRESULT,
    };
};
pub const IStoreVideo = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoPurposeTag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoPurposeTag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Width(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Height(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCaption(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Caption(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreviewImage(self: *@This()) core.HResult!*StoreImage {
        var _r: *StoreImage = undefined;
        const _c = self.vtable.get_PreviewImage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Services.Store.IStoreVideo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f26cb184-6f5e-4dc2-886c-3c63083c2f94";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_VideoPurposeTag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Caption: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PreviewImage: *const fn(self: *anyopaque, _r: **StoreImage) callconv(.winapi) HRESULT,
    };
};
pub const StoreAcquireLicenseResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStorePackageLicense(self: *@This()) core.HResult!*StorePackageLicense {
        const this: *IStoreAcquireLicenseResult = @ptrCast(self);
        return try this.getStorePackageLicense();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IStoreAcquireLicenseResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreAcquireLicenseResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreAcquireLicenseResult.GUID;
    pub const IID: Guid = IStoreAcquireLicenseResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreAcquireLicenseResult.SIGNATURE);
};
pub const StoreAppLicense = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSkuStoreId(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreAppLicense = @ptrCast(self);
        return try this.getSkuStoreId();
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *IStoreAppLicense = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn getIsTrial(self: *@This()) core.HResult!bool {
        const this: *IStoreAppLicense = @ptrCast(self);
        return try this.getIsTrial();
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!DateTime {
        const this: *IStoreAppLicense = @ptrCast(self);
        return try this.getExpirationDate();
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreAppLicense = @ptrCast(self);
        return try this.getExtendedJsonData();
    }
    pub fn getAddOnLicenses(self: *@This()) core.HResult!*IMapView(HSTRING,StoreLicense) {
        const this: *IStoreAppLicense = @ptrCast(self);
        return try this.getAddOnLicenses();
    }
    pub fn getTrialTimeRemaining(self: *@This()) core.HResult!TimeSpan {
        const this: *IStoreAppLicense = @ptrCast(self);
        return try this.getTrialTimeRemaining();
    }
    pub fn getIsTrialOwnedByThisUser(self: *@This()) core.HResult!bool {
        const this: *IStoreAppLicense = @ptrCast(self);
        return try this.getIsTrialOwnedByThisUser();
    }
    pub fn getTrialUniqueId(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreAppLicense = @ptrCast(self);
        return try this.getTrialUniqueId();
    }
    pub fn getIsDiscLicense(self: *@This()) core.HResult!bool {
        var this: ?*IStoreAppLicense2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreAppLicense2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDiscLicense();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreAppLicense";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreAppLicense.GUID;
    pub const IID: Guid = IStoreAppLicense.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreAppLicense.SIGNATURE);
};
pub const StoreAvailability = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStoreId(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreAvailability = @ptrCast(self);
        return try this.getStoreId();
    }
    pub fn getEndDate(self: *@This()) core.HResult!DateTime {
        const this: *IStoreAvailability = @ptrCast(self);
        return try this.getEndDate();
    }
    pub fn getPrice(self: *@This()) core.HResult!*StorePrice {
        const this: *IStoreAvailability = @ptrCast(self);
        return try this.getPrice();
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreAvailability = @ptrCast(self);
        return try this.getExtendedJsonData();
    }
    pub fn RequestPurchaseAsync(self: *@This()) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        const this: *IStoreAvailability = @ptrCast(self);
        return try this.RequestPurchaseAsync();
    }
    pub fn RequestPurchaseAsync(self: *@This(), storePurchaseProperties: *StorePurchaseProperties) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        const this: *IStoreAvailability = @ptrCast(self);
        return try this.RequestPurchaseAsync(storePurchaseProperties);
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreAvailability";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreAvailability.GUID;
    pub const IID: Guid = IStoreAvailability.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreAvailability.SIGNATURE);
};
pub const StoreCanAcquireLicenseResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IStoreCanAcquireLicenseResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getLicensableSku(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreCanAcquireLicenseResult = @ptrCast(self);
        return try this.getLicensableSku();
    }
    pub fn getStatus(self: *@This()) core.HResult!StoreCanLicenseStatus {
        const this: *IStoreCanAcquireLicenseResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreCanAcquireLicenseResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreCanAcquireLicenseResult.GUID;
    pub const IID: Guid = IStoreCanAcquireLicenseResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreCanAcquireLicenseResult.SIGNATURE);
};
pub const StoreCanLicenseStatus = enum(i32) {
    NotLicensableToUser = 0,
    Licensable = 1,
    LicenseActionNotApplicableToProduct = 2,
    NetworkError = 3,
    ServerError = 4,
};
pub const StoreCollectionData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsTrial(self: *@This()) core.HResult!bool {
        const this: *IStoreCollectionData = @ptrCast(self);
        return try this.getIsTrial();
    }
    pub fn getCampaignId(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreCollectionData = @ptrCast(self);
        return try this.getCampaignId();
    }
    pub fn getDeveloperOfferId(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreCollectionData = @ptrCast(self);
        return try this.getDeveloperOfferId();
    }
    pub fn getAcquiredDate(self: *@This()) core.HResult!DateTime {
        const this: *IStoreCollectionData = @ptrCast(self);
        return try this.getAcquiredDate();
    }
    pub fn getStartDate(self: *@This()) core.HResult!DateTime {
        const this: *IStoreCollectionData = @ptrCast(self);
        return try this.getStartDate();
    }
    pub fn getEndDate(self: *@This()) core.HResult!DateTime {
        const this: *IStoreCollectionData = @ptrCast(self);
        return try this.getEndDate();
    }
    pub fn getTrialTimeRemaining(self: *@This()) core.HResult!TimeSpan {
        const this: *IStoreCollectionData = @ptrCast(self);
        return try this.getTrialTimeRemaining();
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreCollectionData = @ptrCast(self);
        return try this.getExtendedJsonData();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreCollectionData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreCollectionData.GUID;
    pub const IID: Guid = IStoreCollectionData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreCollectionData.SIGNATURE);
};
pub const StoreConsumableResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!StoreConsumableStatus {
        const this: *IStoreConsumableResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getTrackingId(self: *@This()) core.HResult!*Guid {
        const this: *IStoreConsumableResult = @ptrCast(self);
        return try this.getTrackingId();
    }
    pub fn getBalanceRemaining(self: *@This()) core.HResult!u32 {
        const this: *IStoreConsumableResult = @ptrCast(self);
        return try this.getBalanceRemaining();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IStoreConsumableResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreConsumableResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreConsumableResult.GUID;
    pub const IID: Guid = IStoreConsumableResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreConsumableResult.SIGNATURE);
};
pub const StoreConsumableStatus = enum(i32) {
    Succeeded = 0,
    InsufficentQuantity = 1,
    NetworkError = 2,
    ServerError = 3,
};
pub const StoreContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUser(self: *@This()) core.HResult!*User {
        const this: *IStoreContext = @ptrCast(self);
        return try this.getUser();
    }
    pub fn addOfflineLicensesChanged(self: *@This(), handler: *TypedEventHandler(StoreContext,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IStoreContext = @ptrCast(self);
        return try this.addOfflineLicensesChanged(handler);
    }
    pub fn removeOfflineLicensesChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IStoreContext = @ptrCast(self);
        return try this.removeOfflineLicensesChanged(token);
    }
    pub fn GetCustomerPurchaseIdAsync(self: *@This(), serviceTicket: HSTRING, publisherUserId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.GetCustomerPurchaseIdAsync(serviceTicket, publisherUserId);
    }
    pub fn GetCustomerCollectionsIdAsync(self: *@This(), serviceTicket: HSTRING, publisherUserId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.GetCustomerCollectionsIdAsync(serviceTicket, publisherUserId);
    }
    pub fn GetAppLicenseAsync(self: *@This()) core.HResult!*IAsyncOperation(StoreAppLicense) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.GetAppLicenseAsync();
    }
    pub fn GetStoreProductForCurrentAppAsync(self: *@This()) core.HResult!*IAsyncOperation(StoreProductResult) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.GetStoreProductForCurrentAppAsync();
    }
    pub fn GetStoreProductsAsync(self: *@This(), productKinds: *IIterable(HSTRING), storeIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(StoreProductQueryResult) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStoreProductsAsync(productKinds, storeIds);
    }
    pub fn GetAssociatedStoreProductsAsync(self: *@This(), productKinds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(StoreProductQueryResult) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.GetAssociatedStoreProductsAsync(productKinds);
    }
    pub fn GetAssociatedStoreProductsWithPagingAsync(self: *@This(), productKinds: *IIterable(HSTRING), maxItemsToRetrievePerPage: u32) core.HResult!*IAsyncOperation(StoreProductPagedQueryResult) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.GetAssociatedStoreProductsWithPagingAsync(productKinds, maxItemsToRetrievePerPage);
    }
    pub fn GetUserCollectionAsync(self: *@This(), productKinds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(StoreProductQueryResult) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.GetUserCollectionAsync(productKinds);
    }
    pub fn GetUserCollectionWithPagingAsync(self: *@This(), productKinds: *IIterable(HSTRING), maxItemsToRetrievePerPage: u32) core.HResult!*IAsyncOperation(StoreProductPagedQueryResult) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.GetUserCollectionWithPagingAsync(productKinds, maxItemsToRetrievePerPage);
    }
    pub fn ReportConsumableFulfillmentAsync(self: *@This(), productStoreId: HSTRING, quantity: u32, trackingId: *Guid) core.HResult!*IAsyncOperation(StoreConsumableResult) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.ReportConsumableFulfillmentAsync(productStoreId, quantity, trackingId);
    }
    pub fn GetConsumableBalanceRemainingAsync(self: *@This(), productStoreId: HSTRING) core.HResult!*IAsyncOperation(StoreConsumableResult) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.GetConsumableBalanceRemainingAsync(productStoreId);
    }
    pub fn AcquireStoreLicenseForOptionalPackageAsync(self: *@This(), optionalPackage: *Package) core.HResult!*IAsyncOperation(StoreAcquireLicenseResult) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.AcquireStoreLicenseForOptionalPackageAsync(optionalPackage);
    }
    pub fn RequestPurchaseAsync(self: *@This(), storeId: HSTRING) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.RequestPurchaseAsync(storeId);
    }
    pub fn RequestPurchaseAsync(self: *@This(), storeId: HSTRING, storePurchaseProperties: *StorePurchaseProperties) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.RequestPurchaseAsync(storeId, storePurchaseProperties);
    }
    pub fn GetAppAndOptionalStorePackageUpdatesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StorePackageUpdate)) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.GetAppAndOptionalStorePackageUpdatesAsync();
    }
    pub fn RequestDownloadStorePackageUpdatesAsync(self: *@This(), storePackageUpdates: *IIterable(StorePackageUpdate)) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.RequestDownloadStorePackageUpdatesAsync(storePackageUpdates);
    }
    pub fn RequestDownloadAndInstallStorePackageUpdatesAsync(self: *@This(), storePackageUpdates: *IIterable(StorePackageUpdate)) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        const this: *IStoreContext = @ptrCast(self);
        return try this.RequestDownloadAndInstallStorePackageUpdatesAsync(storePackageUpdates);
    }
    pub fn RequestDownloadAndInstallStorePackagesAsync(self: *@This(), storeIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestDownloadAndInstallStorePackagesAsync(storeIds);
    }
    pub fn FindStoreProductForPackageAsync(self: *@This(), productKinds: *IIterable(HSTRING), package: *Package) core.HResult!*IAsyncOperation(StoreProductResult) {
        var this: ?*IStoreContext2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindStoreProductForPackageAsync(productKinds, package);
    }
    pub fn getCanSilentlyDownloadStorePackageUpdates(self: *@This()) core.HResult!bool {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanSilentlyDownloadStorePackageUpdates();
    }
    pub fn TrySilentDownloadStorePackageUpdatesAsync(self: *@This(), storePackageUpdates: *IIterable(StorePackageUpdate)) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TrySilentDownloadStorePackageUpdatesAsync(storePackageUpdates);
    }
    pub fn TrySilentDownloadAndInstallStorePackageUpdatesAsync(self: *@This(), storePackageUpdates: *IIterable(StorePackageUpdate)) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TrySilentDownloadAndInstallStorePackageUpdatesAsync(storePackageUpdates);
    }
    pub fn CanAcquireStoreLicenseForOptionalPackageAsync(self: *@This(), optionalPackage: *Package) core.HResult!*IAsyncOperation(StoreCanAcquireLicenseResult) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CanAcquireStoreLicenseForOptionalPackageAsync(optionalPackage);
    }
    pub fn CanAcquireStoreLicenseAsync(self: *@This(), productStoreId: HSTRING) core.HResult!*IAsyncOperation(StoreCanAcquireLicenseResult) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CanAcquireStoreLicenseAsync(productStoreId);
    }
    pub fn GetStoreProductsAsync(self: *@This(), productKinds: *IIterable(HSTRING), storeIds: *IIterable(HSTRING), storeProductOptions: *StoreProductOptions) core.HResult!*IAsyncOperation(StoreProductQueryResult) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStoreProductsAsync(productKinds, storeIds, storeProductOptions);
    }
    pub fn GetAssociatedStoreQueueItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(StoreQueueItem)) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAssociatedStoreQueueItemsAsync();
    }
    pub fn GetStoreQueueItemsAsync(self: *@This(), storeIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IVectorView(StoreQueueItem)) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStoreQueueItemsAsync(storeIds);
    }
    pub fn RequestDownloadAndInstallStorePackagesAsync(self: *@This(), storeIds: *IIterable(HSTRING), storePackageInstallOptions: *StorePackageInstallOptions) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestDownloadAndInstallStorePackagesAsync(storeIds, storePackageInstallOptions);
    }
    pub fn DownloadAndInstallStorePackagesAsync(self: *@This(), storeIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperationWithProgress(StorePackageUpdateResult,StorePackageUpdateStatus) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DownloadAndInstallStorePackagesAsync(storeIds);
    }
    pub fn RequestUninstallStorePackageAsync(self: *@This(), package: *Package) core.HResult!*IAsyncOperation(StoreUninstallStorePackageResult) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestUninstallStorePackageAsync(package);
    }
    pub fn RequestUninstallStorePackageByStoreIdAsync(self: *@This(), storeId: HSTRING) core.HResult!*IAsyncOperation(StoreUninstallStorePackageResult) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestUninstallStorePackageByStoreIdAsync(storeId);
    }
    pub fn UninstallStorePackageAsync(self: *@This(), package: *Package) core.HResult!*IAsyncOperation(StoreUninstallStorePackageResult) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UninstallStorePackageAsync(package);
    }
    pub fn UninstallStorePackageByStoreIdAsync(self: *@This(), storeId: HSTRING) core.HResult!*IAsyncOperation(StoreUninstallStorePackageResult) {
        var this: ?*IStoreContext3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UninstallStorePackageByStoreIdAsync(storeId);
    }
    pub fn RequestRateAndReviewAppAsync(self: *@This()) core.HResult!*IAsyncOperation(StoreRateAndReviewResult) {
        var this: ?*IStoreContext4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestRateAndReviewAppAsync();
    }
    pub fn SetInstallOrderForAssociatedStoreQueueItemsAsync(self: *@This(), items: *IIterable(StoreQueueItem)) core.HResult!*IAsyncOperation(IVectorView(StoreQueueItem)) {
        var this: ?*IStoreContext4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetInstallOrderForAssociatedStoreQueueItemsAsync(items);
    }
    pub fn GetUserPurchaseHistoryAsync(self: *@This(), productKinds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(StoreProductQueryResult) {
        var this: ?*IStoreContext5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetUserPurchaseHistoryAsync(productKinds);
    }
    pub fn GetAssociatedStoreProductsByInAppOfferTokenAsync(self: *@This(), inAppOfferTokens: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(StoreProductQueryResult) {
        var this: ?*IStoreContext5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAssociatedStoreProductsByInAppOfferTokenAsync(inAppOfferTokens);
    }
    pub fn RequestPurchaseByInAppOfferTokenAsync(self: *@This(), inAppOfferToken: HSTRING) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        var this: ?*IStoreContext5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreContext5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestPurchaseByInAppOfferTokenAsync(inAppOfferToken);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*StoreContext {
        const factory = @This().IStoreContextStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*StoreContext {
        const factory = @This().IStoreContextStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreContext.GUID;
    pub const IID: Guid = IStoreContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreContext.SIGNATURE);
    var _IStoreContextStaticsCache: FactoryCache(IStoreContextStatics, RUNTIME_NAME) = .{};
};
pub const StoreDurationUnit = enum(i32) {
    Minute = 0,
    Hour = 1,
    Day = 2,
    Week = 3,
    Month = 4,
    Year = 5,
};
pub const StoreImage = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IStoreImage = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getImagePurposeTag(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreImage = @ptrCast(self);
        return try this.getImagePurposeTag();
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *IStoreImage = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *IStoreImage = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getCaption(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreImage = @ptrCast(self);
        return try this.getCaption();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreImage";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreImage.GUID;
    pub const IID: Guid = IStoreImage.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreImage.SIGNATURE);
};
pub const StoreLicense = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSkuStoreId(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreLicense = @ptrCast(self);
        return try this.getSkuStoreId();
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *IStoreLicense = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!DateTime {
        const this: *IStoreLicense = @ptrCast(self);
        return try this.getExpirationDate();
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreLicense = @ptrCast(self);
        return try this.getExtendedJsonData();
    }
    pub fn getInAppOfferToken(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreLicense = @ptrCast(self);
        return try this.getInAppOfferToken();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreLicense";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreLicense.GUID;
    pub const IID: Guid = IStoreLicense.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreLicense.SIGNATURE);
};
pub const StorePackageInstallOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAllowForcedAppRestart(self: *@This()) core.HResult!bool {
        const this: *IStorePackageInstallOptions = @ptrCast(self);
        return try this.getAllowForcedAppRestart();
    }
    pub fn putAllowForcedAppRestart(self: *@This(), value: bool) core.HResult!void {
        const this: *IStorePackageInstallOptions = @ptrCast(self);
        return try this.putAllowForcedAppRestart(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorePackageInstallOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StorePackageInstallOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorePackageInstallOptions.GUID;
    pub const IID: Guid = IStorePackageInstallOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorePackageInstallOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StorePackageLicense = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addLicenseLost(self: *@This(), handler: *TypedEventHandler(StorePackageLicense,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IStorePackageLicense = @ptrCast(self);
        return try this.addLicenseLost(handler);
    }
    pub fn removeLicenseLost(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IStorePackageLicense = @ptrCast(self);
        return try this.removeLicenseLost(token);
    }
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IStorePackageLicense = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getIsValid(self: *@This()) core.HResult!bool {
        const this: *IStorePackageLicense = @ptrCast(self);
        return try this.getIsValid();
    }
    pub fn ReleaseLicense(self: *@This()) core.HResult!void {
        const this: *IStorePackageLicense = @ptrCast(self);
        return try this.ReleaseLicense();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StorePackageLicense";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorePackageLicense.GUID;
    pub const IID: Guid = IStorePackageLicense.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorePackageLicense.SIGNATURE);
};
pub const StorePackageUpdate = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackage(self: *@This()) core.HResult!*Package {
        const this: *IStorePackageUpdate = @ptrCast(self);
        return try this.getPackage();
    }
    pub fn getMandatory(self: *@This()) core.HResult!bool {
        const this: *IStorePackageUpdate = @ptrCast(self);
        return try this.getMandatory();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StorePackageUpdate";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorePackageUpdate.GUID;
    pub const IID: Guid = IStorePackageUpdate.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorePackageUpdate.SIGNATURE);
};
pub const StorePackageUpdateResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOverallState(self: *@This()) core.HResult!StorePackageUpdateState {
        const this: *IStorePackageUpdateResult = @ptrCast(self);
        return try this.getOverallState();
    }
    pub fn getStorePackageUpdateStatuses(self: *@This()) core.HResult!*IVectorView(StorePackageUpdateStatus) {
        const this: *IStorePackageUpdateResult = @ptrCast(self);
        return try this.getStorePackageUpdateStatuses();
    }
    pub fn getStoreQueueItems(self: *@This()) core.HResult!*IVectorView(StoreQueueItem) {
        var this: ?*IStorePackageUpdateResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorePackageUpdateResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStoreQueueItems();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StorePackageUpdateResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorePackageUpdateResult.GUID;
    pub const IID: Guid = IStorePackageUpdateResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorePackageUpdateResult.SIGNATURE);
};
pub const StorePackageUpdateState = enum(i32) {
    Pending = 0,
    Downloading = 1,
    Deploying = 2,
    Completed = 3,
    Canceled = 4,
    OtherError = 5,
    ErrorLowBattery = 6,
    ErrorWiFiRecommended = 7,
    ErrorWiFiRequired = 8,
};
pub const StorePackageUpdateStatus = extern struct {
    PackageFamilyName: HSTRING,
    PackageDownloadSizeInBytes: u64,
    PackageBytesDownloaded: u64,
    PackageDownloadProgress: f64,
    TotalDownloadProgress: f64,
    PackageUpdateState: StorePackageUpdateState,
};
pub const StorePrice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFormattedBasePrice(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePrice = @ptrCast(self);
        return try this.getFormattedBasePrice();
    }
    pub fn getFormattedPrice(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePrice = @ptrCast(self);
        return try this.getFormattedPrice();
    }
    pub fn getIsOnSale(self: *@This()) core.HResult!bool {
        const this: *IStorePrice = @ptrCast(self);
        return try this.getIsOnSale();
    }
    pub fn getSaleEndDate(self: *@This()) core.HResult!DateTime {
        const this: *IStorePrice = @ptrCast(self);
        return try this.getSaleEndDate();
    }
    pub fn getCurrencyCode(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePrice = @ptrCast(self);
        return try this.getCurrencyCode();
    }
    pub fn getFormattedRecurrencePrice(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePrice = @ptrCast(self);
        return try this.getFormattedRecurrencePrice();
    }
    pub fn getUnformattedBasePrice(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorePrice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorePrice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUnformattedBasePrice();
    }
    pub fn getUnformattedPrice(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorePrice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorePrice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUnformattedPrice();
    }
    pub fn getUnformattedRecurrencePrice(self: *@This()) core.HResult!HSTRING {
        var this: ?*IStorePrice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStorePrice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUnformattedRecurrencePrice();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StorePrice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorePrice.GUID;
    pub const IID: Guid = IStorePrice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorePrice.SIGNATURE);
};
pub const StoreProduct = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStoreId(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getStoreId();
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getProductKind(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getProductKind();
    }
    pub fn getHasDigitalDownload(self: *@This()) core.HResult!bool {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getHasDigitalDownload();
    }
    pub fn getKeywords(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getKeywords();
    }
    pub fn getImages(self: *@This()) core.HResult!*IVectorView(StoreImage) {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getImages();
    }
    pub fn getVideos(self: *@This()) core.HResult!*IVectorView(StoreVideo) {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getVideos();
    }
    pub fn getSkus(self: *@This()) core.HResult!*IVectorView(StoreSku) {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getSkus();
    }
    pub fn getIsInUserCollection(self: *@This()) core.HResult!bool {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getIsInUserCollection();
    }
    pub fn getPrice(self: *@This()) core.HResult!*StorePrice {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getPrice();
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getExtendedJsonData();
    }
    pub fn getLinkUri(self: *@This()) core.HResult!*Uri {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getLinkUri();
    }
    pub fn GetIsAnySkuInstalledAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.GetIsAnySkuInstalledAsync();
    }
    pub fn RequestPurchaseAsync(self: *@This()) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.RequestPurchaseAsync();
    }
    pub fn RequestPurchaseAsync(self: *@This(), storePurchaseProperties: *StorePurchaseProperties) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.RequestPurchaseAsync(storePurchaseProperties);
    }
    pub fn getInAppOfferToken(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreProduct = @ptrCast(self);
        return try this.getInAppOfferToken();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreProduct";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreProduct.GUID;
    pub const IID: Guid = IStoreProduct.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreProduct.SIGNATURE);
};
pub const StoreProductOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getActionFilters(self: *@This()) core.HResult!*IVector(HSTRING) {
        const this: *IStoreProductOptions = @ptrCast(self);
        return try this.getActionFilters();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStoreProductOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreProductOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreProductOptions.GUID;
    pub const IID: Guid = IStoreProductOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreProductOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const StoreProductPagedQueryResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProducts(self: *@This()) core.HResult!*IMapView(HSTRING,StoreProduct) {
        const this: *IStoreProductPagedQueryResult = @ptrCast(self);
        return try this.getProducts();
    }
    pub fn getHasMoreResults(self: *@This()) core.HResult!bool {
        const this: *IStoreProductPagedQueryResult = @ptrCast(self);
        return try this.getHasMoreResults();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IStoreProductPagedQueryResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn GetNextAsync(self: *@This()) core.HResult!*IAsyncOperation(StoreProductPagedQueryResult) {
        const this: *IStoreProductPagedQueryResult = @ptrCast(self);
        return try this.GetNextAsync();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreProductPagedQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreProductPagedQueryResult.GUID;
    pub const IID: Guid = IStoreProductPagedQueryResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreProductPagedQueryResult.SIGNATURE);
};
pub const StoreProductQueryResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProducts(self: *@This()) core.HResult!*IMapView(HSTRING,StoreProduct) {
        const this: *IStoreProductQueryResult = @ptrCast(self);
        return try this.getProducts();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IStoreProductQueryResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreProductQueryResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreProductQueryResult.GUID;
    pub const IID: Guid = IStoreProductQueryResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreProductQueryResult.SIGNATURE);
};
pub const StoreProductResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProduct(self: *@This()) core.HResult!*StoreProduct {
        const this: *IStoreProductResult = @ptrCast(self);
        return try this.getProduct();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IStoreProductResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreProductResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreProductResult.GUID;
    pub const IID: Guid = IStoreProductResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreProductResult.SIGNATURE);
};
pub const StorePurchaseProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePurchaseProperties = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorePurchaseProperties = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        const this: *IStorePurchaseProperties = @ptrCast(self);
        return try this.getExtendedJsonData();
    }
    pub fn putExtendedJsonData(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IStorePurchaseProperties = @ptrCast(self);
        return try this.putExtendedJsonData(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStorePurchaseProperties.IID)));
    }
    pub fn Create(name: HSTRING) core.HResult!*StorePurchaseProperties {
        const factory = @This().IStorePurchasePropertiesFactoryCache.get();
        return try factory.Create(name);
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StorePurchaseProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorePurchaseProperties.GUID;
    pub const IID: Guid = IStorePurchaseProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorePurchaseProperties.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IStorePurchasePropertiesFactoryCache: FactoryCache(IStorePurchasePropertiesFactory, RUNTIME_NAME) = .{};
};
pub const StorePurchaseResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!StorePurchaseStatus {
        const this: *IStorePurchaseResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IStorePurchaseResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StorePurchaseResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStorePurchaseResult.GUID;
    pub const IID: Guid = IStorePurchaseResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStorePurchaseResult.SIGNATURE);
};
pub const StorePurchaseStatus = enum(i32) {
    Succeeded = 0,
    AlreadyPurchased = 1,
    NotPurchased = 2,
    NetworkError = 3,
    ServerError = 4,
};
pub const StoreQueueItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreQueueItem = @ptrCast(self);
        return try this.getProductId();
    }
    pub fn getPackageFamilyName(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreQueueItem = @ptrCast(self);
        return try this.getPackageFamilyName();
    }
    pub fn getInstallKind(self: *@This()) core.HResult!StoreQueueItemKind {
        const this: *IStoreQueueItem = @ptrCast(self);
        return try this.getInstallKind();
    }
    pub fn GetCurrentStatus(self: *@This()) core.HResult!*StoreQueueItemStatus {
        const this: *IStoreQueueItem = @ptrCast(self);
        return try this.GetCurrentStatus();
    }
    pub fn addCompleted(self: *@This(), handler: *TypedEventHandler(StoreQueueItem,StoreQueueItemCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IStoreQueueItem = @ptrCast(self);
        return try this.addCompleted(handler);
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IStoreQueueItem = @ptrCast(self);
        return try this.removeCompleted(token);
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(StoreQueueItem,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IStoreQueueItem = @ptrCast(self);
        return try this.addStatusChanged(handler);
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IStoreQueueItem = @ptrCast(self);
        return try this.removeStatusChanged(token);
    }
    pub fn CancelInstallAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IStoreQueueItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreQueueItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CancelInstallAsync();
    }
    pub fn PauseInstallAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IStoreQueueItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreQueueItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PauseInstallAsync();
    }
    pub fn ResumeInstallAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IStoreQueueItem2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreQueueItem2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ResumeInstallAsync();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreQueueItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreQueueItem.GUID;
    pub const IID: Guid = IStoreQueueItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreQueueItem.SIGNATURE);
};
pub const StoreQueueItemCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!*StoreQueueItemStatus {
        const this: *IStoreQueueItemCompletedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreQueueItemCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreQueueItemCompletedEventArgs.GUID;
    pub const IID: Guid = IStoreQueueItemCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreQueueItemCompletedEventArgs.SIGNATURE);
};
pub const StoreQueueItemExtendedState = enum(i32) {
    ActivePending = 0,
    ActiveStarting = 1,
    ActiveAcquiringLicense = 2,
    ActiveDownloading = 3,
    ActiveRestoringData = 4,
    ActiveInstalling = 5,
    Completed = 6,
    Canceled = 7,
    Paused = 8,
    Error = 9,
    PausedPackagesInUse = 10,
    PausedLowBattery = 11,
    PausedWiFiRecommended = 12,
    PausedWiFiRequired = 13,
    PausedReadyToInstall = 14,
};
pub const StoreQueueItemKind = enum(i32) {
    Install = 0,
    Update = 1,
    Repair = 2,
};
pub const StoreQueueItemState = enum(i32) {
    Active = 0,
    Completed = 1,
    Canceled = 2,
    Error = 3,
    Paused = 4,
};
pub const StoreQueueItemStatus = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPackageInstallState(self: *@This()) core.HResult!StoreQueueItemState {
        const this: *IStoreQueueItemStatus = @ptrCast(self);
        return try this.getPackageInstallState();
    }
    pub fn getPackageInstallExtendedState(self: *@This()) core.HResult!StoreQueueItemExtendedState {
        const this: *IStoreQueueItemStatus = @ptrCast(self);
        return try this.getPackageInstallExtendedState();
    }
    pub fn getUpdateStatus(self: *@This()) core.HResult!StorePackageUpdateStatus {
        const this: *IStoreQueueItemStatus = @ptrCast(self);
        return try this.getUpdateStatus();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IStoreQueueItemStatus = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreQueueItemStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreQueueItemStatus.GUID;
    pub const IID: Guid = IStoreQueueItemStatus.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreQueueItemStatus.SIGNATURE);
};
pub const StoreRateAndReviewResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IStoreRateAndReviewResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreRateAndReviewResult = @ptrCast(self);
        return try this.getExtendedJsonData();
    }
    pub fn getWasUpdated(self: *@This()) core.HResult!bool {
        const this: *IStoreRateAndReviewResult = @ptrCast(self);
        return try this.getWasUpdated();
    }
    pub fn getStatus(self: *@This()) core.HResult!StoreRateAndReviewStatus {
        const this: *IStoreRateAndReviewResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreRateAndReviewResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreRateAndReviewResult.GUID;
    pub const IID: Guid = IStoreRateAndReviewResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreRateAndReviewResult.SIGNATURE);
};
pub const StoreRateAndReviewStatus = enum(i32) {
    Succeeded = 0,
    CanceledByUser = 1,
    NetworkError = 2,
    Error = 3,
};
pub const StoreRequestHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn SendRequestAsync(context: *StoreContext, requestKind: u32, parametersAsJson: HSTRING) core.HResult!*IAsyncOperation(StoreSendRequestResult) {
        const factory = @This().IStoreRequestHelperStaticsCache.get();
        return try factory.SendRequestAsync(context, requestKind, parametersAsJson);
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreRequestHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IStoreRequestHelperStaticsCache: FactoryCache(IStoreRequestHelperStatics, RUNTIME_NAME) = .{};
};
pub const StoreSendRequestResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResponse(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreSendRequestResult = @ptrCast(self);
        return try this.getResponse();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IStoreSendRequestResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getHttpStatusCode(self: *@This()) core.HResult!HttpStatusCode {
        var this: ?*IStoreSendRequestResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStoreSendRequestResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHttpStatusCode();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreSendRequestResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreSendRequestResult.GUID;
    pub const IID: Guid = IStoreSendRequestResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreSendRequestResult.SIGNATURE);
};
pub const StoreSku = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStoreId(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getStoreId();
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getIsTrial(self: *@This()) core.HResult!bool {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getIsTrial();
    }
    pub fn getCustomDeveloperData(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getCustomDeveloperData();
    }
    pub fn getImages(self: *@This()) core.HResult!*IVectorView(StoreImage) {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getImages();
    }
    pub fn getVideos(self: *@This()) core.HResult!*IVectorView(StoreVideo) {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getVideos();
    }
    pub fn getAvailabilities(self: *@This()) core.HResult!*IVectorView(StoreAvailability) {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getAvailabilities();
    }
    pub fn getPrice(self: *@This()) core.HResult!*StorePrice {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getPrice();
    }
    pub fn getExtendedJsonData(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getExtendedJsonData();
    }
    pub fn getIsInUserCollection(self: *@This()) core.HResult!bool {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getIsInUserCollection();
    }
    pub fn getBundledSkus(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getBundledSkus();
    }
    pub fn getCollectionData(self: *@This()) core.HResult!*StoreCollectionData {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getCollectionData();
    }
    pub fn GetIsInstalledAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IStoreSku = @ptrCast(self);
        return try this.GetIsInstalledAsync();
    }
    pub fn RequestPurchaseAsync(self: *@This()) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        const this: *IStoreSku = @ptrCast(self);
        return try this.RequestPurchaseAsync();
    }
    pub fn RequestPurchaseAsync(self: *@This(), storePurchaseProperties: *StorePurchaseProperties) core.HResult!*IAsyncOperation(StorePurchaseResult) {
        const this: *IStoreSku = @ptrCast(self);
        return try this.RequestPurchaseAsync(storePurchaseProperties);
    }
    pub fn getIsSubscription(self: *@This()) core.HResult!bool {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getIsSubscription();
    }
    pub fn getSubscriptionInfo(self: *@This()) core.HResult!*StoreSubscriptionInfo {
        const this: *IStoreSku = @ptrCast(self);
        return try this.getSubscriptionInfo();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreSku";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreSku.GUID;
    pub const IID: Guid = IStoreSku.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreSku.SIGNATURE);
};
pub const StoreSubscriptionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBillingPeriod(self: *@This()) core.HResult!u32 {
        const this: *IStoreSubscriptionInfo = @ptrCast(self);
        return try this.getBillingPeriod();
    }
    pub fn getBillingPeriodUnit(self: *@This()) core.HResult!StoreDurationUnit {
        const this: *IStoreSubscriptionInfo = @ptrCast(self);
        return try this.getBillingPeriodUnit();
    }
    pub fn getHasTrialPeriod(self: *@This()) core.HResult!bool {
        const this: *IStoreSubscriptionInfo = @ptrCast(self);
        return try this.getHasTrialPeriod();
    }
    pub fn getTrialPeriod(self: *@This()) core.HResult!u32 {
        const this: *IStoreSubscriptionInfo = @ptrCast(self);
        return try this.getTrialPeriod();
    }
    pub fn getTrialPeriodUnit(self: *@This()) core.HResult!StoreDurationUnit {
        const this: *IStoreSubscriptionInfo = @ptrCast(self);
        return try this.getTrialPeriodUnit();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreSubscriptionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreSubscriptionInfo.GUID;
    pub const IID: Guid = IStoreSubscriptionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreSubscriptionInfo.SIGNATURE);
};
pub const StoreUninstallStorePackageResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IStoreUninstallStorePackageResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getStatus(self: *@This()) core.HResult!StoreUninstallStorePackageStatus {
        const this: *IStoreUninstallStorePackageResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreUninstallStorePackageResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreUninstallStorePackageResult.GUID;
    pub const IID: Guid = IStoreUninstallStorePackageResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreUninstallStorePackageResult.SIGNATURE);
};
pub const StoreUninstallStorePackageStatus = enum(i32) {
    Succeeded = 0,
    CanceledByUser = 1,
    NetworkError = 2,
    UninstallNotApplicable = 3,
    Error = 4,
};
pub const StoreVideo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IStoreVideo = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getVideoPurposeTag(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreVideo = @ptrCast(self);
        return try this.getVideoPurposeTag();
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *IStoreVideo = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *IStoreVideo = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getCaption(self: *@This()) core.HResult!HSTRING {
        const this: *IStoreVideo = @ptrCast(self);
        return try this.getCaption();
    }
    pub fn getPreviewImage(self: *@This()) core.HResult!*StoreImage {
        const this: *IStoreVideo = @ptrCast(self);
        return try this.getPreviewImage();
    }
    pub const NAME: []const u8 = "Windows.Services.Store.StoreVideo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoreVideo.GUID;
    pub const IID: Guid = IStoreVideo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoreVideo.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const IClosable = @import("../Foundation.zig").IClosable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const HttpStatusCode = @import("../Web/Http.zig").HttpStatusCode;
const Uri = @import("../Foundation.zig").Uri;
const HRESULT = @import("../root.zig").HRESULT;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const DateTime = @import("../Foundation.zig").DateTime;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const HResult = @import("../Foundation.zig").HResult;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const Package = @import("../ApplicationModel.zig").Package;
const User = @import("../System.zig").User;
