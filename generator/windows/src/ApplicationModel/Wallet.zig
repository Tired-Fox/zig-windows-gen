pub const WalletActionKind = enum(i32) {
    OpenItem = 0,
    Transaction = 1,
    MoreTransactions = 2,
    Message = 3,
    Verb = 4,
};
pub const IWalletBarcode = extern struct {
    vtable: *const VTable,
    pub fn getSymbology(self: *@This()) core.HResult!WalletBarcodeSymbology {
        var _r: WalletBarcodeSymbology = undefined;
        const _c = self.vtable.get_Symbology(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetImageAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamReference) {
        var _r: *IAsyncOperation(IRandomAccessStreamReference) = undefined;
        const _c = self.vtable.GetImageAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.IWalletBarcode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f857b29-de80-4ea4-a1cd-81cd084dac27";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Symbology: *const fn(self: *anyopaque, _r: *WalletBarcodeSymbology) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetImageAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IRandomAccessStreamReference)) callconv(.winapi) HRESULT,
    };
};
pub const IWalletBarcodeFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWalletBarcode(self: *@This(), symbology: WalletBarcodeSymbology, value: HSTRING) core.HResult!*WalletBarcode {
        var _r: *WalletBarcode = undefined;
        const _c = self.vtable.CreateWalletBarcode(@ptrCast(self), symbology, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCustomWalletBarcode(self: *@This(), streamToBarcodeImage: *IRandomAccessStreamReference) core.HResult!*WalletBarcode {
        var _r: *WalletBarcode = undefined;
        const _c = self.vtable.CreateCustomWalletBarcode(@ptrCast(self), streamToBarcodeImage, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.IWalletBarcodeFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30117161-ed9c-469e-bbfd-306c95ea7108";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWalletBarcode: *const fn(self: *anyopaque, symbology: WalletBarcodeSymbology, value: HSTRING, _r: **WalletBarcode) callconv(.winapi) HRESULT,
        CreateCustomWalletBarcode: *const fn(self: *anyopaque, streamToBarcodeImage: *IRandomAccessStreamReference, _r: **WalletBarcode) callconv(.winapi) HRESULT,
    };
};
pub const IWalletItem = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAcknowledged(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAcknowledged(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAcknowledged(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAcknowledged(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIssuerDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_IssuerDisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIssuerDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_IssuerDisplayName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLastUpdated(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_LastUpdated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLastUpdated(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_LastUpdated(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKind(self: *@This()) core.HResult!WalletItemKind {
        var _r: WalletItemKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBarcode(self: *@This()) core.HResult!*WalletBarcode {
        var _r: *WalletBarcode = undefined;
        const _c = self.vtable.get_Barcode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBarcode(self: *@This(), value: *WalletBarcode) core.HResult!void {
        const _c = self.vtable.put_Barcode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ExpirationDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpirationDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_ExpirationDate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLogo159x159(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Logo159x159(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLogo159x159(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Logo159x159(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLogo336x336(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Logo336x336(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLogo336x336(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Logo336x336(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLogo99x99(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Logo99x99(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLogo99x99(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_Logo99x99(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayMessage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDisplayMessageLaunchable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisplayMessageLaunchable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDisplayMessageLaunchable(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDisplayMessageLaunchable(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLogoText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LogoText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLogoText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_LogoText(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHeaderColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_HeaderColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHeaderColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_HeaderColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBodyColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BodyColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBodyColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_BodyColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHeaderFontColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_HeaderFontColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHeaderFontColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_HeaderFontColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBodyFontColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_BodyFontColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBodyFontColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_BodyFontColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHeaderBackgroundImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_HeaderBackgroundImage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHeaderBackgroundImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_HeaderBackgroundImage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBodyBackgroundImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_BodyBackgroundImage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBodyBackgroundImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_BodyBackgroundImage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLogoImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_LogoImage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLogoImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_LogoImage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPromotionalImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_PromotionalImage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPromotionalImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const _c = self.vtable.put_PromotionalImage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRelevantDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_RelevantDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelevantDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_RelevantDate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRelevantDateDisplayMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_RelevantDateDisplayMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelevantDateDisplayMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_RelevantDateDisplayMessage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransactionHistory(self: *@This()) core.HResult!*IMap(HSTRING,WalletTransaction) {
        var _r: *IMap(HSTRING,WalletTransaction) = undefined;
        const _c = self.vtable.get_TransactionHistory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRelevantLocations(self: *@This()) core.HResult!*IMap(HSTRING,WalletRelevantLocation) {
        var _r: *IMap(HSTRING,WalletRelevantLocation) = undefined;
        const _c = self.vtable.get_RelevantLocations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMoreTransactionHistoryLaunchable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMoreTransactionHistoryLaunchable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsMoreTransactionHistoryLaunchable(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsMoreTransactionHistoryLaunchable(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayProperties(self: *@This()) core.HResult!*IMap(HSTRING,WalletItemCustomProperty) {
        var _r: *IMap(HSTRING,WalletItemCustomProperty) = undefined;
        const _c = self.vtable.get_DisplayProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerbs(self: *@This()) core.HResult!*IMap(HSTRING,WalletVerb) {
        var _r: *IMap(HSTRING,WalletVerb) = undefined;
        const _c = self.vtable.get_Verbs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.IWalletItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20b54be8-118d-4ec4-996c-b963e7bd3e74";
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
        put_DisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsAcknowledged: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAcknowledged: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IssuerDisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_IssuerDisplayName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_LastUpdated: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_LastUpdated: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *WalletItemKind) callconv(.winapi) HRESULT,
        get_Barcode: *const fn(self: *anyopaque, _r: **WalletBarcode) callconv(.winapi) HRESULT,
        put_Barcode: *const fn(self: *anyopaque, value: *WalletBarcode) callconv(.winapi) HRESULT,
        get_ExpirationDate: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_ExpirationDate: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_Logo159x159: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Logo159x159: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_Logo336x336: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Logo336x336: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_Logo99x99: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_Logo99x99: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_DisplayMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayMessage: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsDisplayMessageLaunchable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDisplayMessageLaunchable: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_LogoText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_LogoText: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_HeaderColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_HeaderColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_BodyColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_BodyColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_HeaderFontColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_HeaderFontColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_BodyFontColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_BodyFontColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_HeaderBackgroundImage: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_HeaderBackgroundImage: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_BodyBackgroundImage: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_BodyBackgroundImage: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_LogoImage: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_LogoImage: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_PromotionalImage: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        put_PromotionalImage: *const fn(self: *anyopaque, value: *IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_RelevantDate: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_RelevantDate: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_RelevantDateDisplayMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_RelevantDateDisplayMessage: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TransactionHistory: *const fn(self: *anyopaque, _r: **IMap(HSTRING,WalletTransaction)) callconv(.winapi) HRESULT,
        get_RelevantLocations: *const fn(self: *anyopaque, _r: **IMap(HSTRING,WalletRelevantLocation)) callconv(.winapi) HRESULT,
        get_IsMoreTransactionHistoryLaunchable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsMoreTransactionHistoryLaunchable: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DisplayProperties: *const fn(self: *anyopaque, _r: **IMap(HSTRING,WalletItemCustomProperty)) callconv(.winapi) HRESULT,
        get_Verbs: *const fn(self: *anyopaque, _r: **IMap(HSTRING,WalletVerb)) callconv(.winapi) HRESULT,
    };
};
pub const IWalletItemCustomProperty = extern struct {
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
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutoDetectLinks(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoDetectLinks(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoDetectLinks(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutoDetectLinks(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDetailViewPosition(self: *@This()) core.HResult!WalletDetailViewPosition {
        var _r: WalletDetailViewPosition = undefined;
        const _c = self.vtable.get_DetailViewPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDetailViewPosition(self: *@This(), value: WalletDetailViewPosition) core.HResult!void {
        const _c = self.vtable.put_DetailViewPosition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSummaryViewPosition(self: *@This()) core.HResult!WalletSummaryViewPosition {
        var _r: WalletSummaryViewPosition = undefined;
        const _c = self.vtable.get_SummaryViewPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSummaryViewPosition(self: *@This(), value: WalletSummaryViewPosition) core.HResult!void {
        const _c = self.vtable.put_SummaryViewPosition(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.IWalletItemCustomProperty";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b94b40f3-fa00-40fd-98dc-9de46697f1e7";
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
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AutoDetectLinks: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutoDetectLinks: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DetailViewPosition: *const fn(self: *anyopaque, _r: *WalletDetailViewPosition) callconv(.winapi) HRESULT,
        put_DetailViewPosition: *const fn(self: *anyopaque, value: WalletDetailViewPosition) callconv(.winapi) HRESULT,
        get_SummaryViewPosition: *const fn(self: *anyopaque, _r: *WalletSummaryViewPosition) callconv(.winapi) HRESULT,
        put_SummaryViewPosition: *const fn(self: *anyopaque, value: WalletSummaryViewPosition) callconv(.winapi) HRESULT,
    };
};
pub const IWalletItemCustomPropertyFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWalletItemCustomProperty(self: *@This(), name: HSTRING, value: HSTRING) core.HResult!*WalletItemCustomProperty {
        var _r: *WalletItemCustomProperty = undefined;
        const _c = self.vtable.CreateWalletItemCustomProperty(@ptrCast(self), name, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.IWalletItemCustomPropertyFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0046a44-61a1-41aa-b259-a5610ab5d575";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWalletItemCustomProperty: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, _r: **WalletItemCustomProperty) callconv(.winapi) HRESULT,
    };
};
pub const IWalletItemFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWalletItem(self: *@This(), kind: WalletItemKind, displayName: HSTRING) core.HResult!*WalletItem {
        var _r: *WalletItem = undefined;
        const _c = self.vtable.CreateWalletItem(@ptrCast(self), kind, displayName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.IWalletItemFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53e27470-4f0b-4a3e-99e5-0bbb1eab38d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWalletItem: *const fn(self: *anyopaque, kind: WalletItemKind, displayName: HSTRING, _r: **WalletItem) callconv(.winapi) HRESULT,
    };
};
pub const IWalletItemStore = extern struct {
    vtable: *const VTable,
    pub fn AddAsync(self: *@This(), id: HSTRING, item: *WalletItem) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AddAsync(@ptrCast(self), id, item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetWalletItemAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(WalletItem) {
        var _r: *IAsyncOperation(WalletItem) = undefined;
        const _c = self.vtable.GetWalletItemAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(WalletItem)) {
        var _r: *IAsyncOperation(IVectorView(WalletItem)) = undefined;
        const _c = self.vtable.GetItemsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemsAsync(self: *@This(), kind: WalletItemKind) core.HResult!*IAsyncOperation(IVectorView(WalletItem)) {
        var _r: *IAsyncOperation(IVectorView(WalletItem)) = undefined;
        const _c = self.vtable.GetItemsAsync(@ptrCast(self), kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ImportItemAsync(self: *@This(), stream: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(WalletItem) {
        var _r: *IAsyncOperation(WalletItem) = undefined;
        const _c = self.vtable.ImportItemAsync(@ptrCast(self), stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeleteAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeleteAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAsync(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateAsync(self: *@This(), item: *WalletItem) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UpdateAsync(@ptrCast(self), item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.IWalletItemStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7160484b-6d49-48f8-91a9-40a1d0f13ef4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddAsync: *const fn(self: *anyopaque, id: HSTRING, item: *WalletItem, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ClearAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetWalletItemAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncOperation(WalletItem)) callconv(.winapi) HRESULT,
        GetItemsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(WalletItem))) callconv(.winapi) HRESULT,
        GetItemsAsync: *const fn(self: *anyopaque, kind: WalletItemKind, _r: **IAsyncOperation(IVectorView(WalletItem))) callconv(.winapi) HRESULT,
        ImportItemAsync: *const fn(self: *anyopaque, stream: *IRandomAccessStreamReference, _r: **IAsyncOperation(WalletItem)) callconv(.winapi) HRESULT,
        DeleteAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowAsync: *const fn(self: *anyopaque, id: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        UpdateAsync: *const fn(self: *anyopaque, item: *WalletItem, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IWalletItemStore2 = extern struct {
    vtable: *const VTable,
    pub fn addItemsChanged(self: *@This(), handler: *TypedEventHandler(WalletItemStore,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ItemsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeItemsChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ItemsChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.IWalletItemStore2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "65e682f0-7009-4a15-bd54-4fff379bffe2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_ItemsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(WalletItemStore,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ItemsChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IWalletManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestStoreAsync(self: *@This()) core.HResult!*IAsyncOperation(WalletItemStore) {
        var _r: *IAsyncOperation(WalletItemStore) = undefined;
        const _c = self.vtable.RequestStoreAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.IWalletManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5111d6b8-c9a4-4c64-b4dd-e1e548001c0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestStoreAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(WalletItemStore)) callconv(.winapi) HRESULT,
    };
};
pub const IWalletRelevantLocation = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!BasicGeoposition {
        var _r: BasicGeoposition = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPosition(self: *@This(), value: BasicGeoposition) core.HResult!void {
        const _c = self.vtable.put_Position(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayMessage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.IWalletRelevantLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9fd8782a-e3f9-4de1-bab3-bb192e46b3f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *BasicGeoposition) callconv(.winapi) HRESULT,
        put_Position: *const fn(self: *anyopaque, value: BasicGeoposition) callconv(.winapi) HRESULT,
        get_DisplayMessage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayMessage: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWalletTransaction = extern struct {
    vtable: *const VTable,
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
    pub fn getDisplayAmount(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayAmount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayAmount(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayAmount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIgnoreTimeOfDay(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IgnoreTimeOfDay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIgnoreTimeOfDay(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IgnoreTimeOfDay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisplayLocation(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisplayLocation(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DisplayLocation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransactionDate(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_TransactionDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransactionDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const _c = self.vtable.put_TransactionDate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsLaunchable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLaunchable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsLaunchable(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsLaunchable(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.IWalletTransaction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40e1e940-2606-4519-81cb-bff1c60d1f79";
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
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DisplayAmount: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayAmount: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IgnoreTimeOfDay: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IgnoreTimeOfDay: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DisplayLocation: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_DisplayLocation: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TransactionDate: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
        put_TransactionDate: *const fn(self: *anyopaque, value: *IReference(DateTime)) callconv(.winapi) HRESULT,
        get_IsLaunchable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsLaunchable: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IWalletVerb = extern struct {
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
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.IWalletVerb";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17b826d6-e3c1-4c74-8a94-217aadbc4884";
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
    };
};
pub const IWalletVerbFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateWalletVerb(self: *@This(), name: HSTRING) core.HResult!*WalletVerb {
        var _r: *WalletVerb = undefined;
        const _c = self.vtable.CreateWalletVerb(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.IWalletVerbFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "76012771-be58-4d5e-83ed-58b1669c7ad9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWalletVerb: *const fn(self: *anyopaque, name: HSTRING, _r: **WalletVerb) callconv(.winapi) HRESULT,
    };
};
pub const WalletBarcode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSymbology(self: *@This()) core.HResult!WalletBarcodeSymbology {
        const this: *IWalletBarcode = @ptrCast(self);
        return try this.getSymbology();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletBarcode = @ptrCast(self);
        return try this.getValue();
    }
    pub fn GetImageAsync(self: *@This()) core.HResult!*IAsyncOperation(IRandomAccessStreamReference) {
        const this: *IWalletBarcode = @ptrCast(self);
        return try this.GetImageAsync();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWalletBarcode(symbology: WalletBarcodeSymbology, value: HSTRING) core.HResult!*WalletBarcode {
        const factory = @This().IWalletBarcodeFactoryCache.get();
        return try factory.CreateWalletBarcode(symbology, value);
    }
    pub fn CreateCustomWalletBarcode(streamToBarcodeImage: *IRandomAccessStreamReference) core.HResult!*WalletBarcode {
        const factory = @This().IWalletBarcodeFactoryCache.get();
        return try factory.CreateCustomWalletBarcode(streamToBarcodeImage);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.WalletBarcode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWalletBarcode.GUID;
    pub const IID: Guid = IWalletBarcode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWalletBarcode.SIGNATURE);
    var _IWalletBarcodeFactoryCache: FactoryCache(IWalletBarcodeFactory, RUNTIME_NAME) = .{};
};
pub const WalletBarcodeSymbology = enum(i32) {
    Invalid = 0,
    Upca = 1,
    Upce = 2,
    Ean13 = 3,
    Ean8 = 4,
    Itf = 5,
    Code39 = 6,
    Code128 = 7,
    Qr = 8,
    Pdf417 = 9,
    Aztec = 10,
    Custom = 100000,
};
pub const WalletDetailViewPosition = enum(i32) {
    Hidden = 0,
    HeaderField1 = 1,
    HeaderField2 = 2,
    PrimaryField1 = 3,
    PrimaryField2 = 4,
    SecondaryField1 = 5,
    SecondaryField2 = 6,
    SecondaryField3 = 7,
    SecondaryField4 = 8,
    SecondaryField5 = 9,
    CenterField1 = 10,
    FooterField1 = 11,
    FooterField2 = 12,
    FooterField3 = 13,
    FooterField4 = 14,
};
pub const WalletItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn putDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putDisplayName(value);
    }
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getId();
    }
    pub fn getIsAcknowledged(self: *@This()) core.HResult!bool {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getIsAcknowledged();
    }
    pub fn putIsAcknowledged(self: *@This(), value: bool) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putIsAcknowledged(value);
    }
    pub fn getIssuerDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getIssuerDisplayName();
    }
    pub fn putIssuerDisplayName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putIssuerDisplayName(value);
    }
    pub fn getLastUpdated(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getLastUpdated();
    }
    pub fn putLastUpdated(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putLastUpdated(value);
    }
    pub fn getKind(self: *@This()) core.HResult!WalletItemKind {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getBarcode(self: *@This()) core.HResult!*WalletBarcode {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getBarcode();
    }
    pub fn putBarcode(self: *@This(), value: *WalletBarcode) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putBarcode(value);
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getExpirationDate();
    }
    pub fn putExpirationDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putExpirationDate(value);
    }
    pub fn getLogo159x159(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getLogo159x159();
    }
    pub fn putLogo159x159(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putLogo159x159(value);
    }
    pub fn getLogo336x336(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getLogo336x336();
    }
    pub fn putLogo336x336(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putLogo336x336(value);
    }
    pub fn getLogo99x99(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getLogo99x99();
    }
    pub fn putLogo99x99(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putLogo99x99(value);
    }
    pub fn getDisplayMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getDisplayMessage();
    }
    pub fn putDisplayMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putDisplayMessage(value);
    }
    pub fn getIsDisplayMessageLaunchable(self: *@This()) core.HResult!bool {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getIsDisplayMessageLaunchable();
    }
    pub fn putIsDisplayMessageLaunchable(self: *@This(), value: bool) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putIsDisplayMessageLaunchable(value);
    }
    pub fn getLogoText(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getLogoText();
    }
    pub fn putLogoText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putLogoText(value);
    }
    pub fn getHeaderColor(self: *@This()) core.HResult!Color {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getHeaderColor();
    }
    pub fn putHeaderColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putHeaderColor(value);
    }
    pub fn getBodyColor(self: *@This()) core.HResult!Color {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getBodyColor();
    }
    pub fn putBodyColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putBodyColor(value);
    }
    pub fn getHeaderFontColor(self: *@This()) core.HResult!Color {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getHeaderFontColor();
    }
    pub fn putHeaderFontColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putHeaderFontColor(value);
    }
    pub fn getBodyFontColor(self: *@This()) core.HResult!Color {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getBodyFontColor();
    }
    pub fn putBodyFontColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putBodyFontColor(value);
    }
    pub fn getHeaderBackgroundImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getHeaderBackgroundImage();
    }
    pub fn putHeaderBackgroundImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putHeaderBackgroundImage(value);
    }
    pub fn getBodyBackgroundImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getBodyBackgroundImage();
    }
    pub fn putBodyBackgroundImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putBodyBackgroundImage(value);
    }
    pub fn getLogoImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getLogoImage();
    }
    pub fn putLogoImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putLogoImage(value);
    }
    pub fn getPromotionalImage(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getPromotionalImage();
    }
    pub fn putPromotionalImage(self: *@This(), value: *IRandomAccessStreamReference) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putPromotionalImage(value);
    }
    pub fn getRelevantDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getRelevantDate();
    }
    pub fn putRelevantDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putRelevantDate(value);
    }
    pub fn getRelevantDateDisplayMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getRelevantDateDisplayMessage();
    }
    pub fn putRelevantDateDisplayMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putRelevantDateDisplayMessage(value);
    }
    pub fn getTransactionHistory(self: *@This()) core.HResult!*IMap(HSTRING,WalletTransaction) {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getTransactionHistory();
    }
    pub fn getRelevantLocations(self: *@This()) core.HResult!*IMap(HSTRING,WalletRelevantLocation) {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getRelevantLocations();
    }
    pub fn getIsMoreTransactionHistoryLaunchable(self: *@This()) core.HResult!bool {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getIsMoreTransactionHistoryLaunchable();
    }
    pub fn putIsMoreTransactionHistoryLaunchable(self: *@This(), value: bool) core.HResult!void {
        const this: *IWalletItem = @ptrCast(self);
        return try this.putIsMoreTransactionHistoryLaunchable(value);
    }
    pub fn getDisplayProperties(self: *@This()) core.HResult!*IMap(HSTRING,WalletItemCustomProperty) {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getDisplayProperties();
    }
    pub fn getVerbs(self: *@This()) core.HResult!*IMap(HSTRING,WalletVerb) {
        const this: *IWalletItem = @ptrCast(self);
        return try this.getVerbs();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWalletItem(kind: WalletItemKind, displayName: HSTRING) core.HResult!*WalletItem {
        const factory = @This().IWalletItemFactoryCache.get();
        return try factory.CreateWalletItem(kind, displayName);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.WalletItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWalletItem.GUID;
    pub const IID: Guid = IWalletItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWalletItem.SIGNATURE);
    var _IWalletItemFactoryCache: FactoryCache(IWalletItemFactory, RUNTIME_NAME) = .{};
};
pub const WalletItemCustomProperty = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletItemCustomProperty = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWalletItemCustomProperty = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletItemCustomProperty = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWalletItemCustomProperty = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getAutoDetectLinks(self: *@This()) core.HResult!bool {
        const this: *IWalletItemCustomProperty = @ptrCast(self);
        return try this.getAutoDetectLinks();
    }
    pub fn putAutoDetectLinks(self: *@This(), value: bool) core.HResult!void {
        const this: *IWalletItemCustomProperty = @ptrCast(self);
        return try this.putAutoDetectLinks(value);
    }
    pub fn getDetailViewPosition(self: *@This()) core.HResult!WalletDetailViewPosition {
        const this: *IWalletItemCustomProperty = @ptrCast(self);
        return try this.getDetailViewPosition();
    }
    pub fn putDetailViewPosition(self: *@This(), value: WalletDetailViewPosition) core.HResult!void {
        const this: *IWalletItemCustomProperty = @ptrCast(self);
        return try this.putDetailViewPosition(value);
    }
    pub fn getSummaryViewPosition(self: *@This()) core.HResult!WalletSummaryViewPosition {
        const this: *IWalletItemCustomProperty = @ptrCast(self);
        return try this.getSummaryViewPosition();
    }
    pub fn putSummaryViewPosition(self: *@This(), value: WalletSummaryViewPosition) core.HResult!void {
        const this: *IWalletItemCustomProperty = @ptrCast(self);
        return try this.putSummaryViewPosition(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWalletItemCustomProperty(name: HSTRING, value: HSTRING) core.HResult!*WalletItemCustomProperty {
        const factory = @This().IWalletItemCustomPropertyFactoryCache.get();
        return try factory.CreateWalletItemCustomProperty(name, value);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.WalletItemCustomProperty";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWalletItemCustomProperty.GUID;
    pub const IID: Guid = IWalletItemCustomProperty.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWalletItemCustomProperty.SIGNATURE);
    var _IWalletItemCustomPropertyFactoryCache: FactoryCache(IWalletItemCustomPropertyFactory, RUNTIME_NAME) = .{};
};
pub const WalletItemKind = enum(i32) {
    Invalid = 0,
    Deal = 1,
    General = 2,
    PaymentInstrument = 3,
    Ticket = 4,
    BoardingPass = 5,
    MembershipCard = 6,
};
pub const WalletItemStore = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AddAsync(self: *@This(), id: HSTRING, item: *WalletItem) core.HResult!*IAsyncAction {
        const this: *IWalletItemStore = @ptrCast(self);
        return try this.AddAsync(id, item);
    }
    pub fn ClearAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IWalletItemStore = @ptrCast(self);
        return try this.ClearAsync();
    }
    pub fn GetWalletItemAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncOperation(WalletItem) {
        const this: *IWalletItemStore = @ptrCast(self);
        return try this.GetWalletItemAsync(id);
    }
    pub fn GetItemsAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(WalletItem)) {
        const this: *IWalletItemStore = @ptrCast(self);
        return try this.GetItemsAsync();
    }
    pub fn GetItemsAsyncWithKind(self: *@This(), kind: WalletItemKind) core.HResult!*IAsyncOperation(IVectorView(WalletItem)) {
        const this: *IWalletItemStore = @ptrCast(self);
        return try this.GetItemsAsyncWithKind(kind);
    }
    pub fn ImportItemAsync(self: *@This(), stream: *IRandomAccessStreamReference) core.HResult!*IAsyncOperation(WalletItem) {
        const this: *IWalletItemStore = @ptrCast(self);
        return try this.ImportItemAsync(stream);
    }
    pub fn DeleteAsync(self: *@This(), id: HSTRING) core.HResult!*IAsyncAction {
        const this: *IWalletItemStore = @ptrCast(self);
        return try this.DeleteAsync(id);
    }
    pub fn ShowAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IWalletItemStore = @ptrCast(self);
        return try this.ShowAsync();
    }
    pub fn ShowAsyncWithId(self: *@This(), id: HSTRING) core.HResult!*IAsyncAction {
        const this: *IWalletItemStore = @ptrCast(self);
        return try this.ShowAsyncWithId(id);
    }
    pub fn UpdateAsync(self: *@This(), item: *WalletItem) core.HResult!*IAsyncAction {
        const this: *IWalletItemStore = @ptrCast(self);
        return try this.UpdateAsync(item);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.WalletItemStore";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWalletItemStore.GUID;
    pub const IID: Guid = IWalletItemStore.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWalletItemStore.SIGNATURE);
};
pub const WalletManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestStoreAsync() core.HResult!*IAsyncOperation(WalletItemStore) {
        const factory = @This().IWalletManagerStaticsCache.get();
        return try factory.RequestStoreAsync();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.WalletManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IWalletManagerStaticsCache: FactoryCache(IWalletManagerStatics, RUNTIME_NAME) = .{};
};
pub const WalletRelevantLocation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!BasicGeoposition {
        const this: *IWalletRelevantLocation = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: BasicGeoposition) core.HResult!void {
        const this: *IWalletRelevantLocation = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub fn getDisplayMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletRelevantLocation = @ptrCast(self);
        return try this.getDisplayMessage();
    }
    pub fn putDisplayMessage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWalletRelevantLocation = @ptrCast(self);
        return try this.putDisplayMessage(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IWalletRelevantLocation.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.WalletRelevantLocation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWalletRelevantLocation.GUID;
    pub const IID: Guid = IWalletRelevantLocation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWalletRelevantLocation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const WalletSummaryViewPosition = enum(i32) {
    Hidden = 0,
    Field1 = 1,
    Field2 = 2,
};
pub const WalletTransaction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletTransaction = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWalletTransaction = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn getDisplayAmount(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletTransaction = @ptrCast(self);
        return try this.getDisplayAmount();
    }
    pub fn putDisplayAmount(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWalletTransaction = @ptrCast(self);
        return try this.putDisplayAmount(value);
    }
    pub fn getIgnoreTimeOfDay(self: *@This()) core.HResult!bool {
        const this: *IWalletTransaction = @ptrCast(self);
        return try this.getIgnoreTimeOfDay();
    }
    pub fn putIgnoreTimeOfDay(self: *@This(), value: bool) core.HResult!void {
        const this: *IWalletTransaction = @ptrCast(self);
        return try this.putIgnoreTimeOfDay(value);
    }
    pub fn getDisplayLocation(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletTransaction = @ptrCast(self);
        return try this.getDisplayLocation();
    }
    pub fn putDisplayLocation(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWalletTransaction = @ptrCast(self);
        return try this.putDisplayLocation(value);
    }
    pub fn getTransactionDate(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IWalletTransaction = @ptrCast(self);
        return try this.getTransactionDate();
    }
    pub fn putTransactionDate(self: *@This(), value: *IReference(DateTime)) core.HResult!void {
        const this: *IWalletTransaction = @ptrCast(self);
        return try this.putTransactionDate(value);
    }
    pub fn getIsLaunchable(self: *@This()) core.HResult!bool {
        const this: *IWalletTransaction = @ptrCast(self);
        return try this.getIsLaunchable();
    }
    pub fn putIsLaunchable(self: *@This(), value: bool) core.HResult!void {
        const this: *IWalletTransaction = @ptrCast(self);
        return try this.putIsLaunchable(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IWalletTransaction.IID)));
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.WalletTransaction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWalletTransaction.GUID;
    pub const IID: Guid = IWalletTransaction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWalletTransaction.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const WalletVerb = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IWalletVerb = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IWalletVerb = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateWalletVerb(name: HSTRING) core.HResult!*WalletVerb {
        const factory = @This().IWalletVerbFactoryCache.get();
        return try factory.CreateWalletVerb(name);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Wallet.WalletVerb";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWalletVerb.GUID;
    pub const IID: Guid = IWalletVerb.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWalletVerb.SIGNATURE);
    var _IWalletVerbFactoryCache: FactoryCache(IWalletVerbFactory, RUNTIME_NAME) = .{};
};
const HSTRING = @import("../root.zig").HSTRING;
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const Color = @import("../UI.zig").Color;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IReference = @import("../Foundation.zig").IReference;
const IMap = @import("../Foundation/Collections.zig").IMap;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const BasicGeoposition = @import("../Devices/Geolocation.zig").BasicGeoposition;
const FactoryCache = @import("../core.zig").FactoryCache;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../root.zig").TrustLevel;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
pub const System = @import("./Wallet/System.zig");
