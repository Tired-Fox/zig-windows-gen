pub const CurrentApp = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn ReportConsumableFulfillmentAsync(productId: HSTRING, transactionId: *Guid) core.HResult!*IAsyncOperation(FulfillmentResult) {
        const _f = @This().ICurrentAppWithConsumablesCache.get();
        return try _f.ReportConsumableFulfillmentAsync(productId, transactionId);
    }
    pub fn RequestProductPurchaseAsync(productId: HSTRING) core.HResult!*IAsyncOperation(PurchaseResults) {
        const _f = @This().ICurrentAppWithConsumablesCache.get();
        return try _f.RequestProductPurchaseAsync(productId);
    }
    pub fn RequestProductPurchaseAsyncWithOfferIdAndDisplayProperties(productId: HSTRING, offerId: HSTRING, displayProperties: *ProductPurchaseDisplayProperties) core.HResult!*IAsyncOperation(PurchaseResults) {
        const _f = @This().ICurrentAppWithConsumablesCache.get();
        return try _f.RequestProductPurchaseAsyncWithOfferIdAndDisplayProperties(productId, offerId, displayProperties);
    }
    pub fn GetUnfulfilledConsumablesAsync() core.HResult!*IAsyncOperation(IVectorView(UnfulfilledConsumable)) {
        const _f = @This().ICurrentAppWithConsumablesCache.get();
        return try _f.GetUnfulfilledConsumablesAsync();
    }
    pub fn getLicenseInformation() core.HResult!*LicenseInformation {
        const _f = @This().ICurrentAppCache.get();
        return try _f.getLicenseInformation();
    }
    pub fn getLinkUri() core.HResult!*Uri {
        const _f = @This().ICurrentAppCache.get();
        return try _f.getLinkUri();
    }
    pub fn getAppId() core.HResult!*Guid {
        const _f = @This().ICurrentAppCache.get();
        return try _f.getAppId();
    }
    pub fn RequestAppPurchaseAsync(includeReceipt: bool) core.HResult!*IAsyncOperation(HSTRING) {
        const _f = @This().ICurrentAppCache.get();
        return try _f.RequestAppPurchaseAsync(includeReceipt);
    }
    pub fn RequestProductPurchaseAsyncWithIncludeReceipt(productId: HSTRING, includeReceipt: bool) core.HResult!*IAsyncOperation(HSTRING) {
        const _f = @This().ICurrentAppCache.get();
        return try _f.RequestProductPurchaseAsync(productId, includeReceipt);
    }
    pub fn LoadListingInformationAsync() core.HResult!*IAsyncOperation(ListingInformation) {
        const _f = @This().ICurrentAppCache.get();
        return try _f.LoadListingInformationAsync();
    }
    pub fn GetAppReceiptAsync() core.HResult!*IAsyncOperation(HSTRING) {
        const _f = @This().ICurrentAppCache.get();
        return try _f.GetAppReceiptAsync();
    }
    pub fn GetProductReceiptAsync(productId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        const _f = @This().ICurrentAppCache.get();
        return try _f.GetProductReceiptAsync(productId);
    }
    pub fn GetCustomerPurchaseIdAsync(serviceTicket: HSTRING, publisherUserId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        const _f = @This().ICurrentApp2StaticsCache.get();
        return try _f.GetCustomerPurchaseIdAsync(serviceTicket, publisherUserId);
    }
    pub fn GetCustomerCollectionsIdAsync(serviceTicket: HSTRING, publisherUserId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        const _f = @This().ICurrentApp2StaticsCache.get();
        return try _f.GetCustomerCollectionsIdAsync(serviceTicket, publisherUserId);
    }
    pub fn GetAppPurchaseCampaignIdAsync() core.HResult!*IAsyncOperation(HSTRING) {
        const _f = @This().ICurrentAppWithCampaignIdCache.get();
        return try _f.GetAppPurchaseCampaignIdAsync();
    }
    pub fn LoadListingInformationByProductIdsAsync(productIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ListingInformation) {
        const _f = @This().ICurrentAppStaticsWithFilteringCache.get();
        return try _f.LoadListingInformationByProductIdsAsync(productIds);
    }
    pub fn LoadListingInformationByKeywordsAsync(keywords: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ListingInformation) {
        const _f = @This().ICurrentAppStaticsWithFilteringCache.get();
        return try _f.LoadListingInformationByKeywordsAsync(keywords);
    }
    pub fn ReportProductFulfillment(productId: HSTRING) core.HResult!void {
        const _f = @This().ICurrentAppStaticsWithFilteringCache.get();
        return try _f.ReportProductFulfillment(productId);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.CurrentApp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICurrentAppWithConsumablesCache: FactoryCache(ICurrentAppWithConsumables, RUNTIME_NAME) = .{};
    var _ICurrentAppCache: FactoryCache(ICurrentApp, RUNTIME_NAME) = .{};
    var _ICurrentApp2StaticsCache: FactoryCache(ICurrentApp2Statics, RUNTIME_NAME) = .{};
    var _ICurrentAppWithCampaignIdCache: FactoryCache(ICurrentAppWithCampaignId, RUNTIME_NAME) = .{};
    var _ICurrentAppStaticsWithFilteringCache: FactoryCache(ICurrentAppStaticsWithFiltering, RUNTIME_NAME) = .{};
};
pub const CurrentAppSimulator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn LoadListingInformationByProductIdsAsync(productIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ListingInformation) {
        const _f = @This().ICurrentAppSimulatorStaticsWithFilteringCache.get();
        return try _f.LoadListingInformationByProductIdsAsync(productIds);
    }
    pub fn LoadListingInformationByKeywordsAsync(keywords: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ListingInformation) {
        const _f = @This().ICurrentAppSimulatorStaticsWithFilteringCache.get();
        return try _f.LoadListingInformationByKeywordsAsync(keywords);
    }
    pub fn GetAppPurchaseCampaignIdAsync() core.HResult!*IAsyncOperation(HSTRING) {
        const _f = @This().ICurrentAppSimulatorWithCampaignIdCache.get();
        return try _f.GetAppPurchaseCampaignIdAsync();
    }
    pub fn ReportConsumableFulfillmentAsync(productId: HSTRING, transactionId: *Guid) core.HResult!*IAsyncOperation(FulfillmentResult) {
        const _f = @This().ICurrentAppSimulatorWithConsumablesCache.get();
        return try _f.ReportConsumableFulfillmentAsync(productId, transactionId);
    }
    pub fn RequestProductPurchaseAsync(productId: HSTRING) core.HResult!*IAsyncOperation(PurchaseResults) {
        const _f = @This().ICurrentAppSimulatorWithConsumablesCache.get();
        return try _f.RequestProductPurchaseAsync(productId);
    }
    pub fn RequestProductPurchaseAsyncWithOfferIdAndDisplayProperties(productId: HSTRING, offerId: HSTRING, displayProperties: *ProductPurchaseDisplayProperties) core.HResult!*IAsyncOperation(PurchaseResults) {
        const _f = @This().ICurrentAppSimulatorWithConsumablesCache.get();
        return try _f.RequestProductPurchaseAsyncWithOfferIdAndDisplayProperties(productId, offerId, displayProperties);
    }
    pub fn GetUnfulfilledConsumablesAsync() core.HResult!*IAsyncOperation(IVectorView(UnfulfilledConsumable)) {
        const _f = @This().ICurrentAppSimulatorWithConsumablesCache.get();
        return try _f.GetUnfulfilledConsumablesAsync();
    }
    pub fn getLicenseInformation() core.HResult!*LicenseInformation {
        const _f = @This().ICurrentAppSimulatorCache.get();
        return try _f.getLicenseInformation();
    }
    pub fn getLinkUri() core.HResult!*Uri {
        const _f = @This().ICurrentAppSimulatorCache.get();
        return try _f.getLinkUri();
    }
    pub fn getAppId() core.HResult!*Guid {
        const _f = @This().ICurrentAppSimulatorCache.get();
        return try _f.getAppId();
    }
    pub fn RequestAppPurchaseAsync(includeReceipt: bool) core.HResult!*IAsyncOperation(HSTRING) {
        const _f = @This().ICurrentAppSimulatorCache.get();
        return try _f.RequestAppPurchaseAsync(includeReceipt);
    }
    pub fn RequestProductPurchaseAsyncWithIncludeReceipt(productId: HSTRING, includeReceipt: bool) core.HResult!*IAsyncOperation(HSTRING) {
        const _f = @This().ICurrentAppSimulatorCache.get();
        return try _f.RequestProductPurchaseAsync(productId, includeReceipt);
    }
    pub fn LoadListingInformationAsync() core.HResult!*IAsyncOperation(ListingInformation) {
        const _f = @This().ICurrentAppSimulatorCache.get();
        return try _f.LoadListingInformationAsync();
    }
    pub fn GetAppReceiptAsync() core.HResult!*IAsyncOperation(HSTRING) {
        const _f = @This().ICurrentAppSimulatorCache.get();
        return try _f.GetAppReceiptAsync();
    }
    pub fn GetProductReceiptAsync(productId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        const _f = @This().ICurrentAppSimulatorCache.get();
        return try _f.GetProductReceiptAsync(productId);
    }
    pub fn ReloadSimulatorAsync(simulatorSettingsFile: *StorageFile) core.HResult!*IAsyncAction {
        const _f = @This().ICurrentAppSimulatorCache.get();
        return try _f.ReloadSimulatorAsync(simulatorSettingsFile);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.CurrentAppSimulator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICurrentAppSimulatorStaticsWithFilteringCache: FactoryCache(ICurrentAppSimulatorStaticsWithFiltering, RUNTIME_NAME) = .{};
    var _ICurrentAppSimulatorWithCampaignIdCache: FactoryCache(ICurrentAppSimulatorWithCampaignId, RUNTIME_NAME) = .{};
    var _ICurrentAppSimulatorWithConsumablesCache: FactoryCache(ICurrentAppSimulatorWithConsumables, RUNTIME_NAME) = .{};
    var _ICurrentAppSimulatorCache: FactoryCache(ICurrentAppSimulator, RUNTIME_NAME) = .{};
};
pub const FulfillmentResult = enum(i32) {
    Succeeded = 0,
    NothingToFulfill = 1,
    PurchasePending = 2,
    PurchaseReverted = 3,
    ServerError = 4,
};
pub const ICurrentApp = extern struct {
    vtable: *const VTable,
    pub fn getLicenseInformation(self: *@This()) core.HResult!*LicenseInformation {
        var _r: *LicenseInformation = undefined;
        const _c = self.vtable.get_LicenseInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLinkUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_LinkUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_AppId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAppPurchaseAsync(self: *@This(), includeReceipt: bool) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.RequestAppPurchaseAsync(@ptrCast(self), includeReceipt, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestProductPurchaseAsync(self: *@This(), productId: HSTRING, includeReceipt: bool) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.RequestProductPurchaseAsync(@ptrCast(self), productId, includeReceipt, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadListingInformationAsync(self: *@This()) core.HResult!*IAsyncOperation(ListingInformation) {
        var _r: *IAsyncOperation(ListingInformation) = undefined;
        const _c = self.vtable.LoadListingInformationAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppReceiptAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetAppReceiptAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetProductReceiptAsync(self: *@This(), productId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetProductReceiptAsync(@ptrCast(self), productId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ICurrentApp";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d52dc065-da3f-4685-995e-9b482eb5e603";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LicenseInformation: *const fn(self: *anyopaque, _r: **LicenseInformation) callconv(.winapi) HRESULT,
        get_LinkUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_AppId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        RequestAppPurchaseAsync: *const fn(self: *anyopaque, includeReceipt: bool, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        RequestProductPurchaseAsync: *const fn(self: *anyopaque, productId: HSTRING, includeReceipt: bool, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        LoadListingInformationAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ListingInformation)) callconv(.winapi) HRESULT,
        GetAppReceiptAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetProductReceiptAsync: *const fn(self: *anyopaque, productId: HSTRING, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const ICurrentApp2Statics = extern struct {
    vtable: *const VTable,
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ICurrentApp2Statics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df4e6e2d-3171-4ad3-8614-2c61244373cb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCustomerPurchaseIdAsync: *const fn(self: *anyopaque, serviceTicket: HSTRING, publisherUserId: HSTRING, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetCustomerCollectionsIdAsync: *const fn(self: *anyopaque, serviceTicket: HSTRING, publisherUserId: HSTRING, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const ICurrentAppSimulator = extern struct {
    vtable: *const VTable,
    pub fn getLicenseInformation(self: *@This()) core.HResult!*LicenseInformation {
        var _r: *LicenseInformation = undefined;
        const _c = self.vtable.get_LicenseInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLinkUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_LinkUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_AppId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestAppPurchaseAsync(self: *@This(), includeReceipt: bool) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.RequestAppPurchaseAsync(@ptrCast(self), includeReceipt, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestProductPurchaseAsync(self: *@This(), productId: HSTRING, includeReceipt: bool) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.RequestProductPurchaseAsync(@ptrCast(self), productId, includeReceipt, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadListingInformationAsync(self: *@This()) core.HResult!*IAsyncOperation(ListingInformation) {
        var _r: *IAsyncOperation(ListingInformation) = undefined;
        const _c = self.vtable.LoadListingInformationAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAppReceiptAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetAppReceiptAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetProductReceiptAsync(self: *@This(), productId: HSTRING) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetProductReceiptAsync(@ptrCast(self), productId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReloadSimulatorAsync(self: *@This(), simulatorSettingsFile: *StorageFile) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReloadSimulatorAsync(@ptrCast(self), simulatorSettingsFile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ICurrentAppSimulator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f17f9db1-74cd-4787-9787-19866e9a5559";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LicenseInformation: *const fn(self: *anyopaque, _r: **LicenseInformation) callconv(.winapi) HRESULT,
        get_LinkUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_AppId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        RequestAppPurchaseAsync: *const fn(self: *anyopaque, includeReceipt: bool, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        RequestProductPurchaseAsync: *const fn(self: *anyopaque, productId: HSTRING, includeReceipt: bool, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        LoadListingInformationAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ListingInformation)) callconv(.winapi) HRESULT,
        GetAppReceiptAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetProductReceiptAsync: *const fn(self: *anyopaque, productId: HSTRING, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ReloadSimulatorAsync: *const fn(self: *anyopaque, simulatorSettingsFile: *StorageFile, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ICurrentAppSimulatorStaticsWithFiltering = extern struct {
    vtable: *const VTable,
    pub fn LoadListingInformationByProductIdsAsync(self: *@This(), productIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ListingInformation) {
        var _r: *IAsyncOperation(ListingInformation) = undefined;
        const _c = self.vtable.LoadListingInformationByProductIdsAsync(@ptrCast(self), productIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadListingInformationByKeywordsAsync(self: *@This(), keywords: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ListingInformation) {
        var _r: *IAsyncOperation(ListingInformation) = undefined;
        const _c = self.vtable.LoadListingInformationByKeywordsAsync(@ptrCast(self), keywords, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ICurrentAppSimulatorStaticsWithFiltering";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "617e70e2-f86f-4b54-9666-dde285092c68";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadListingInformationByProductIdsAsync: *const fn(self: *anyopaque, productIds: *IIterable(HSTRING), _r: **IAsyncOperation(ListingInformation)) callconv(.winapi) HRESULT,
        LoadListingInformationByKeywordsAsync: *const fn(self: *anyopaque, keywords: *IIterable(HSTRING), _r: **IAsyncOperation(ListingInformation)) callconv(.winapi) HRESULT,
    };
};
pub const ICurrentAppSimulatorWithCampaignId = extern struct {
    vtable: *const VTable,
    pub fn GetAppPurchaseCampaignIdAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetAppPurchaseCampaignIdAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ICurrentAppSimulatorWithCampaignId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "84678a43-df00-4672-a43f-b25b1441cfcf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAppPurchaseCampaignIdAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const ICurrentAppSimulatorWithConsumables = extern struct {
    vtable: *const VTable,
    pub fn ReportConsumableFulfillmentAsync(self: *@This(), productId: HSTRING, transactionId: *Guid) core.HResult!*IAsyncOperation(FulfillmentResult) {
        var _r: *IAsyncOperation(FulfillmentResult) = undefined;
        const _c = self.vtable.ReportConsumableFulfillmentAsync(@ptrCast(self), productId, transactionId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestProductPurchaseAsync(self: *@This(), productId: HSTRING) core.HResult!*IAsyncOperation(PurchaseResults) {
        var _r: *IAsyncOperation(PurchaseResults) = undefined;
        const _c = self.vtable.RequestProductPurchaseAsync(@ptrCast(self), productId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestProductPurchaseAsyncWithOfferIdAndDisplayProperties(self: *@This(), productId: HSTRING, offerId: HSTRING, displayProperties: *ProductPurchaseDisplayProperties) core.HResult!*IAsyncOperation(PurchaseResults) {
        var _r: *IAsyncOperation(PurchaseResults) = undefined;
        const _c = self.vtable.RequestProductPurchaseAsyncWithOfferIdAndDisplayProperties(@ptrCast(self), productId, offerId, displayProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUnfulfilledConsumablesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(UnfulfilledConsumable)) {
        var _r: *IAsyncOperation(IVectorView(UnfulfilledConsumable)) = undefined;
        const _c = self.vtable.GetUnfulfilledConsumablesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ICurrentAppSimulatorWithConsumables";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e51f0ab-20e7-4412-9b85-59bb78388667";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportConsumableFulfillmentAsync: *const fn(self: *anyopaque, productId: HSTRING, transactionId: *Guid, _r: **IAsyncOperation(FulfillmentResult)) callconv(.winapi) HRESULT,
        RequestProductPurchaseAsync: *const fn(self: *anyopaque, productId: HSTRING, _r: **IAsyncOperation(PurchaseResults)) callconv(.winapi) HRESULT,
        RequestProductPurchaseAsyncWithOfferIdAndDisplayProperties: *const fn(self: *anyopaque, productId: HSTRING, offerId: HSTRING, displayProperties: *ProductPurchaseDisplayProperties, _r: **IAsyncOperation(PurchaseResults)) callconv(.winapi) HRESULT,
        GetUnfulfilledConsumablesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(UnfulfilledConsumable))) callconv(.winapi) HRESULT,
    };
};
pub const ICurrentAppStaticsWithFiltering = extern struct {
    vtable: *const VTable,
    pub fn LoadListingInformationByProductIdsAsync(self: *@This(), productIds: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ListingInformation) {
        var _r: *IAsyncOperation(ListingInformation) = undefined;
        const _c = self.vtable.LoadListingInformationByProductIdsAsync(@ptrCast(self), productIds, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadListingInformationByKeywordsAsync(self: *@This(), keywords: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(ListingInformation) {
        var _r: *IAsyncOperation(ListingInformation) = undefined;
        const _c = self.vtable.LoadListingInformationByKeywordsAsync(@ptrCast(self), keywords, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportProductFulfillment(self: *@This(), productId: HSTRING) core.HResult!void {
        const _c = self.vtable.ReportProductFulfillment(@ptrCast(self), productId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ICurrentAppStaticsWithFiltering";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d36d6542-9085-438e-97ba-a25c976be2fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LoadListingInformationByProductIdsAsync: *const fn(self: *anyopaque, productIds: *IIterable(HSTRING), _r: **IAsyncOperation(ListingInformation)) callconv(.winapi) HRESULT,
        LoadListingInformationByKeywordsAsync: *const fn(self: *anyopaque, keywords: *IIterable(HSTRING), _r: **IAsyncOperation(ListingInformation)) callconv(.winapi) HRESULT,
        ReportProductFulfillment: *const fn(self: *anyopaque, productId: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICurrentAppWithCampaignId = extern struct {
    vtable: *const VTable,
    pub fn GetAppPurchaseCampaignIdAsync(self: *@This()) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetAppPurchaseCampaignIdAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ICurrentAppWithCampaignId";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "312f4cd0-36c1-44a6-b32b-432d608e4dd6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAppPurchaseCampaignIdAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
    };
};
pub const ICurrentAppWithConsumables = extern struct {
    vtable: *const VTable,
    pub fn ReportConsumableFulfillmentAsync(self: *@This(), productId: HSTRING, transactionId: *Guid) core.HResult!*IAsyncOperation(FulfillmentResult) {
        var _r: *IAsyncOperation(FulfillmentResult) = undefined;
        const _c = self.vtable.ReportConsumableFulfillmentAsync(@ptrCast(self), productId, transactionId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestProductPurchaseAsync(self: *@This(), productId: HSTRING) core.HResult!*IAsyncOperation(PurchaseResults) {
        var _r: *IAsyncOperation(PurchaseResults) = undefined;
        const _c = self.vtable.RequestProductPurchaseAsync(@ptrCast(self), productId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestProductPurchaseAsyncWithOfferIdAndDisplayProperties(self: *@This(), productId: HSTRING, offerId: HSTRING, displayProperties: *ProductPurchaseDisplayProperties) core.HResult!*IAsyncOperation(PurchaseResults) {
        var _r: *IAsyncOperation(PurchaseResults) = undefined;
        const _c = self.vtable.RequestProductPurchaseAsyncWithOfferIdAndDisplayProperties(@ptrCast(self), productId, offerId, displayProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetUnfulfilledConsumablesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(UnfulfilledConsumable)) {
        var _r: *IAsyncOperation(IVectorView(UnfulfilledConsumable)) = undefined;
        const _c = self.vtable.GetUnfulfilledConsumablesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ICurrentAppWithConsumables";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "844e0071-9e4f-4f79-995a-5f91172e6cef";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportConsumableFulfillmentAsync: *const fn(self: *anyopaque, productId: HSTRING, transactionId: *Guid, _r: **IAsyncOperation(FulfillmentResult)) callconv(.winapi) HRESULT,
        RequestProductPurchaseAsync: *const fn(self: *anyopaque, productId: HSTRING, _r: **IAsyncOperation(PurchaseResults)) callconv(.winapi) HRESULT,
        RequestProductPurchaseAsyncWithOfferIdAndDisplayProperties: *const fn(self: *anyopaque, productId: HSTRING, offerId: HSTRING, displayProperties: *ProductPurchaseDisplayProperties, _r: **IAsyncOperation(PurchaseResults)) callconv(.winapi) HRESULT,
        GetUnfulfilledConsumablesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(UnfulfilledConsumable))) callconv(.winapi) HRESULT,
    };
};
pub const ILicenseInformation = extern struct {
    vtable: *const VTable,
    pub fn getProductLicenses(self: *@This()) core.HResult!*IMapView(HSTRING,ProductLicense) {
        var _r: *IMapView(HSTRING,ProductLicense) = undefined;
        const _c = self.vtable.get_ProductLicenses(@ptrCast(self), &_r);
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
    pub fn addLicenseChanged(self: *@This(), handler: *LicenseChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LicenseChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLicenseChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LicenseChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ILicenseInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8eb7dc30-f170-4ed5-8e21-1516da3fd367";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProductLicenses: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,ProductLicense)) callconv(.winapi) HRESULT,
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsTrial: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExpirationDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        add_LicenseChanged: *const fn(self: *anyopaque, handler: *LicenseChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LicenseChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IListingInformation = extern struct {
    vtable: *const VTable,
    pub fn getCurrentMarket(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CurrentMarket(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProductListings(self: *@This()) core.HResult!*IMapView(HSTRING,ProductListing) {
        var _r: *IMapView(HSTRING,ProductListing) = undefined;
        const _c = self.vtable.get_ProductListings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFormattedPrice(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FormattedPrice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAgeRating(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AgeRating(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.IListingInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "588b4abf-bc74-4383-b78c-99606323dece";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentMarket: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProductListings: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,ProductListing)) callconv(.winapi) HRESULT,
        get_FormattedPrice: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AgeRating: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IListingInformation2 = extern struct {
    vtable: *const VTable,
    pub fn getFormattedBasePrice(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FormattedBasePrice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSaleEndDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_SaleEndDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOnSale(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOnSale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrencyCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CurrencyCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.IListingInformation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0fd2c1d-b30e-4384-84ea-72fefa82223e";
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
        get_SaleEndDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_IsOnSale: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CurrencyCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IProductLicense = extern struct {
    vtable: *const VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProductId(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.IProductLicense";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "363308c7-2bcf-4c0e-8f2f-e808aaa8f99d";
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
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExpirationDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
    };
};
pub const IProductLicenseWithFulfillment = extern struct {
    vtable: *const VTable,
    pub fn getIsConsumable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConsumable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.IProductLicenseWithFulfillment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc535c8a-f667-40f3-ba3c-045a63abb3ac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsConsumable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IProductListing = extern struct {
    vtable: *const VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFormattedPrice(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FormattedPrice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.IProductListing";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45a7d6ad-c750-4d9c-947c-b00dcbf9e9c2";
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
        get_FormattedPrice: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IProductListing2 = extern struct {
    vtable: *const VTable,
    pub fn getFormattedBasePrice(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FormattedBasePrice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSaleEndDate(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_SaleEndDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOnSale(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOnSale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrencyCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CurrencyCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.IProductListing2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f89e290f-73fe-494d-a939-08a9b2495abe";
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
        get_SaleEndDate: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_IsOnSale: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CurrencyCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IProductListingWithConsumables = extern struct {
    vtable: *const VTable,
    pub fn getProductType(self: *@This()) core.HResult!ProductType {
        var _r: ProductType = undefined;
        const _c = self.vtable.get_ProductType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.IProductListingWithConsumables";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb9e9790-8f6b-481f-93a7-5c3a63068149";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProductType: *const fn(self: *anyopaque, _r: *ProductType) callconv(.winapi) HRESULT,
    };
};
pub const IProductListingWithMetadata = extern struct {
    vtable: *const VTable,
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeywords(self: *@This()) core.HResult!*IIterable(HSTRING) {
        var _r: *IIterable(HSTRING) = undefined;
        const _c = self.vtable.get_Keywords(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProductType(self: *@This()) core.HResult!ProductType {
        var _r: ProductType = undefined;
        const _c = self.vtable.get_ProductType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Tag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImageUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ImageUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.IProductListingWithMetadata";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "124da567-23f8-423e-9532-189943c40ace";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Keywords: *const fn(self: *anyopaque, _r: **IIterable(HSTRING)) callconv(.winapi) HRESULT,
        get_ProductType: *const fn(self: *anyopaque, _r: *ProductType) callconv(.winapi) HRESULT,
        get_Tag: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ImageUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IProductPurchaseDisplayProperties = extern struct {
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
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getImage(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Image(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putImage(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_Image(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.IProductPurchaseDisplayProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d70b7420-bc92-401b-a809-c9b2e5dbbdaf";
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
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Image: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Image: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const IProductPurchaseDisplayPropertiesFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateProductPurchaseDisplayProperties(self: *@This(), name: HSTRING) core.HResult!*ProductPurchaseDisplayProperties {
        var _r: *ProductPurchaseDisplayProperties = undefined;
        const _c = self.vtable.CreateProductPurchaseDisplayProperties(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.IProductPurchaseDisplayPropertiesFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f491df4-32d6-4b40-b474-b83038a4d9cf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateProductPurchaseDisplayProperties: *const fn(self: *anyopaque, name: HSTRING, _r: **ProductPurchaseDisplayProperties) callconv(.winapi) HRESULT,
    };
};
pub const IPurchaseResults = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!ProductPurchaseStatus {
        var _r: ProductPurchaseStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransactionId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TransactionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReceiptXml(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ReceiptXml(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOfferId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OfferId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.IPurchaseResults";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed50b37e-8656-4f65-b8c8-ac7e0cb1a1c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *ProductPurchaseStatus) callconv(.winapi) HRESULT,
        get_TransactionId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_ReceiptXml: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_OfferId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IUnfulfilledConsumable = extern struct {
    vtable: *const VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ProductId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransactionId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_TransactionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOfferId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OfferId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.IUnfulfilledConsumable";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2df7fbbb-1cdd-4cb8-a014-7b9cf8986927";
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
        get_TransactionId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
        get_OfferId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const LicenseChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque) callconv(.winapi) void,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
        };
        return _r;
    }
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn initWithState(
        cb: *const fn(?*anyopaque) callconv(.winapi) void,
        context: anytype,
    ) !*@This() {
        const _r = try @import("std").heap.c_allocator.create(@This());
        _r.* = .{
            .vtable = &VTABLE,
            ._cb = cb,
            ._refs = .init(1),
            ._context = @ptrCast(context),
        };
        return _r;
    }
    /// This calls Release and voids the returned ref count. If ref count is 0 the memory is released,
    /// Otherwise the memory stays until all references are released, including all references Windows holds.
    ///
    /// The caller *MUST* always call deinit/Release at least once for every AddRef and init called.
    pub fn deinit(self: *@This()) void {
        _ = Release(@ptrCast(self));
    }
    fn QueryInterface(self: *anyopaque, riid: *const Guid, out: *?*anyopaque) callconv(.c) HRESULT {
        const me: *@This() = @ptrCast(@alignCast(self));
        // TODO: Handle IMarshal
        if (core.wiredGuidEql(riid, &IID) or
            core.wiredGuidEql(riid, &IUnknown.IID) or
            core.wiredGuidEql(riid, &IAgileObject.IID))
        {
            out.* = @as(?*anyopaque, @ptrCast(me));
            _ = AddRef(self);
            return 0;
        }
        out.* = null;
        return -2147467262; // E_NOINTERFACE
    }
    fn AddRef(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        return this._refs.fetchAdd(1, .monotonic) + 1;
    }
    fn Release(self: *anyopaque) callconv(.c) u32 {
        const this: *@This() = @ptrCast(@alignCast(self));
        const left = this._refs.fetchSub(1, .acq_rel) - 1;
        if (left == 0) @import("std").heap.c_allocator.destroy(this);
        return left;
    }
    pub fn Invoke(self: *anyopaque) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.LicenseChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4a50255-1369-4c36-832f-6f2d88e3659b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const LicenseInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProductLicenses(self: *@This()) core.HResult!*IMapView(HSTRING,ProductLicense) {
        const this: *ILicenseInformation = @ptrCast(self);
        return try this.getProductLicenses();
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *ILicenseInformation = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn getIsTrial(self: *@This()) core.HResult!bool {
        const this: *ILicenseInformation = @ptrCast(self);
        return try this.getIsTrial();
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!DateTime {
        const this: *ILicenseInformation = @ptrCast(self);
        return try this.getExpirationDate();
    }
    pub fn addLicenseChanged(self: *@This(), handler: *LicenseChangedEventHandler) core.HResult!EventRegistrationToken {
        const this: *ILicenseInformation = @ptrCast(self);
        return try this.addLicenseChanged(handler);
    }
    pub fn removeLicenseChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *ILicenseInformation = @ptrCast(self);
        return try this.removeLicenseChanged(cookie);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.LicenseInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILicenseInformation.GUID;
    pub const IID: Guid = ILicenseInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILicenseInformation.SIGNATURE);
};
pub const ListingInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCurrentMarket(self: *@This()) core.HResult!HSTRING {
        const this: *IListingInformation = @ptrCast(self);
        return try this.getCurrentMarket();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IListingInformation = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn getProductListings(self: *@This()) core.HResult!*IMapView(HSTRING,ProductListing) {
        const this: *IListingInformation = @ptrCast(self);
        return try this.getProductListings();
    }
    pub fn getFormattedPrice(self: *@This()) core.HResult!HSTRING {
        const this: *IListingInformation = @ptrCast(self);
        return try this.getFormattedPrice();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IListingInformation = @ptrCast(self);
        return try this.getName();
    }
    pub fn getAgeRating(self: *@This()) core.HResult!u32 {
        const this: *IListingInformation = @ptrCast(self);
        return try this.getAgeRating();
    }
    pub fn getFormattedBasePrice(self: *@This()) core.HResult!HSTRING {
        var this: ?*IListingInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListingInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFormattedBasePrice();
    }
    pub fn getSaleEndDate(self: *@This()) core.HResult!DateTime {
        var this: ?*IListingInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListingInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSaleEndDate();
    }
    pub fn getIsOnSale(self: *@This()) core.HResult!bool {
        var this: ?*IListingInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListingInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsOnSale();
    }
    pub fn getCurrencyCode(self: *@This()) core.HResult!HSTRING {
        var this: ?*IListingInformation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListingInformation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrencyCode();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ListingInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IListingInformation.GUID;
    pub const IID: Guid = IListingInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IListingInformation.SIGNATURE);
};
pub const ProductLicense = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        const this: *IProductLicense = @ptrCast(self);
        return try this.getProductId();
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *IProductLicense = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!DateTime {
        const this: *IProductLicense = @ptrCast(self);
        return try this.getExpirationDate();
    }
    pub fn getIsConsumable(self: *@This()) core.HResult!bool {
        var this: ?*IProductLicenseWithFulfillment = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProductLicenseWithFulfillment.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsConsumable();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ProductLicense";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProductLicense.GUID;
    pub const IID: Guid = IProductLicense.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProductLicense.SIGNATURE);
};
pub const ProductListing = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        const this: *IProductListing = @ptrCast(self);
        return try this.getProductId();
    }
    pub fn getFormattedPrice(self: *@This()) core.HResult!HSTRING {
        const this: *IProductListing = @ptrCast(self);
        return try this.getFormattedPrice();
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IProductListing = @ptrCast(self);
        return try this.getName();
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IProductListingWithMetadata = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProductListingWithMetadata.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDescription();
    }
    pub fn getKeywords(self: *@This()) core.HResult!*IIterable(HSTRING) {
        var this: ?*IProductListingWithMetadata = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProductListingWithMetadata.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeywords();
    }
    pub fn getProductType(self: *@This()) core.HResult!ProductType {
        var this: ?*IProductListingWithMetadata = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProductListingWithMetadata.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProductType();
    }
    pub fn getTag(self: *@This()) core.HResult!HSTRING {
        var this: ?*IProductListingWithMetadata = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProductListingWithMetadata.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTag();
    }
    pub fn getImageUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IProductListingWithMetadata = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProductListingWithMetadata.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getImageUri();
    }
    pub fn getFormattedBasePrice(self: *@This()) core.HResult!HSTRING {
        var this: ?*IProductListing2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProductListing2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFormattedBasePrice();
    }
    pub fn getSaleEndDate(self: *@This()) core.HResult!DateTime {
        var this: ?*IProductListing2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProductListing2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSaleEndDate();
    }
    pub fn getIsOnSale(self: *@This()) core.HResult!bool {
        var this: ?*IProductListing2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProductListing2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsOnSale();
    }
    pub fn getCurrencyCode(self: *@This()) core.HResult!HSTRING {
        var this: ?*IProductListing2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IProductListing2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCurrencyCode();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ProductListing";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProductListing.GUID;
    pub const IID: Guid = IProductListing.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProductListing.SIGNATURE);
};
pub const ProductPurchaseDisplayProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IProductPurchaseDisplayProperties = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IProductPurchaseDisplayProperties = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IProductPurchaseDisplayProperties = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IProductPurchaseDisplayProperties = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn getImage(self: *@This()) core.HResult!*Uri {
        const this: *IProductPurchaseDisplayProperties = @ptrCast(self);
        return try this.getImage();
    }
    pub fn putImage(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IProductPurchaseDisplayProperties = @ptrCast(self);
        return try this.putImage(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IProductPurchaseDisplayProperties.IID)));
    }
    pub fn CreateProductPurchaseDisplayProperties(name: HSTRING) core.HResult!*ProductPurchaseDisplayProperties {
        const _f = @This().IProductPurchaseDisplayPropertiesFactoryCache.get();
        return try _f.CreateProductPurchaseDisplayProperties(name);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.ProductPurchaseDisplayProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProductPurchaseDisplayProperties.GUID;
    pub const IID: Guid = IProductPurchaseDisplayProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProductPurchaseDisplayProperties.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IProductPurchaseDisplayPropertiesFactoryCache: FactoryCache(IProductPurchaseDisplayPropertiesFactory, RUNTIME_NAME) = .{};
};
pub const ProductPurchaseStatus = enum(i32) {
    Succeeded = 0,
    AlreadyPurchased = 1,
    NotFulfilled = 2,
    NotPurchased = 3,
};
pub const ProductType = enum(i32) {
    Unknown = 0,
    Durable = 1,
    Consumable = 2,
};
pub const PurchaseResults = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!ProductPurchaseStatus {
        const this: *IPurchaseResults = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getTransactionId(self: *@This()) core.HResult!*Guid {
        const this: *IPurchaseResults = @ptrCast(self);
        return try this.getTransactionId();
    }
    pub fn getReceiptXml(self: *@This()) core.HResult!HSTRING {
        const this: *IPurchaseResults = @ptrCast(self);
        return try this.getReceiptXml();
    }
    pub fn getOfferId(self: *@This()) core.HResult!HSTRING {
        const this: *IPurchaseResults = @ptrCast(self);
        return try this.getOfferId();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.PurchaseResults";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPurchaseResults.GUID;
    pub const IID: Guid = IPurchaseResults.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPurchaseResults.SIGNATURE);
};
pub const UnfulfilledConsumable = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProductId(self: *@This()) core.HResult!HSTRING {
        const this: *IUnfulfilledConsumable = @ptrCast(self);
        return try this.getProductId();
    }
    pub fn getTransactionId(self: *@This()) core.HResult!*Guid {
        const this: *IUnfulfilledConsumable = @ptrCast(self);
        return try this.getTransactionId();
    }
    pub fn getOfferId(self: *@This()) core.HResult!HSTRING {
        const this: *IUnfulfilledConsumable = @ptrCast(self);
        return try this.getOfferId();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Store.UnfulfilledConsumable";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUnfulfilledConsumable.GUID;
    pub const IID: Guid = IUnfulfilledConsumable.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUnfulfilledConsumable.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IAgileObject = @import("../root.zig").IAgileObject;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Uri = @import("../Foundation.zig").Uri;
const DateTime = @import("../Foundation.zig").DateTime;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const StorageFile = @import("../Storage.zig").StorageFile;
const HSTRING = @import("../root.zig").HSTRING;
pub const LicenseManagement = @import("./Store/LicenseManagement.zig");
pub const Preview = @import("./Store/Preview.zig");
