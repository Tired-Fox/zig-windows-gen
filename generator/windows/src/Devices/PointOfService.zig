pub const BarcodeScanner = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IBarcodeScanner = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getCapabilities(self: *@This()) core.HResult!*BarcodeScannerCapabilities {
        const this: *IBarcodeScanner = @ptrCast(self);
        return try this.getCapabilities();
    }
    pub fn ClaimScannerAsync(self: *@This()) core.HResult!*IAsyncOperation(ClaimedBarcodeScanner) {
        const this: *IBarcodeScanner = @ptrCast(self);
        return try this.ClaimScannerAsync();
    }
    pub fn CheckHealthAsync(self: *@This(), level: UnifiedPosHealthCheckLevel) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IBarcodeScanner = @ptrCast(self);
        return try this.CheckHealthAsync(level);
    }
    pub fn GetSupportedSymbologiesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(u32)) {
        const this: *IBarcodeScanner = @ptrCast(self);
        return try this.GetSupportedSymbologiesAsync();
    }
    pub fn IsSymbologySupportedAsync(self: *@This(), barcodeSymbology: u32) core.HResult!*IAsyncOperation(bool) {
        const this: *IBarcodeScanner = @ptrCast(self);
        return try this.IsSymbologySupportedAsync(barcodeSymbology);
    }
    pub fn RetrieveStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IBuffer) {
        const this: *IBarcodeScanner = @ptrCast(self);
        return try this.RetrieveStatisticsAsync(statisticsCategories);
    }
    pub fn GetSupportedProfiles(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IBarcodeScanner = @ptrCast(self);
        return try this.GetSupportedProfiles();
    }
    pub fn IsProfileSupported(self: *@This(), profile: HSTRING) core.HResult!bool {
        const this: *IBarcodeScanner = @ptrCast(self);
        return try this.IsProfileSupported(profile);
    }
    pub fn addStatusUpdated(self: *@This(), handler: *TypedEventHandler(BarcodeScanner,BarcodeScannerStatusUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBarcodeScanner = @ptrCast(self);
        return try this.addStatusUpdated(handler);
    }
    pub fn removeStatusUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBarcodeScanner = @ptrCast(self);
        return try this.removeStatusUpdated(token);
    }
    pub fn getVideoDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IBarcodeScanner2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScanner2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVideoDeviceId();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(BarcodeScanner) {
        const factory = @This().IBarcodeScannerStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(BarcodeScanner) {
        const factory = @This().IBarcodeScannerStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IBarcodeScannerStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetDeviceSelectorWithConnectionTypes(connectionTypes: PosConnectionTypes) core.HResult!HSTRING {
        const factory = @This().IBarcodeScannerStatics2Cache.get();
        return try factory.GetDeviceSelector(connectionTypes);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.BarcodeScanner";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScanner.GUID;
    pub const IID: Guid = IBarcodeScanner.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScanner.SIGNATURE);
    var _IBarcodeScannerStaticsCache: FactoryCache(IBarcodeScannerStatics, RUNTIME_NAME) = .{};
    var _IBarcodeScannerStatics2Cache: FactoryCache(IBarcodeScannerStatics2, RUNTIME_NAME) = .{};
};
pub const BarcodeScannerCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPowerReportingType(self: *@This()) core.HResult!UnifiedPosPowerReportingType {
        const this: *IBarcodeScannerCapabilities = @ptrCast(self);
        return try this.getPowerReportingType();
    }
    pub fn getIsStatisticsReportingSupported(self: *@This()) core.HResult!bool {
        const this: *IBarcodeScannerCapabilities = @ptrCast(self);
        return try this.getIsStatisticsReportingSupported();
    }
    pub fn getIsStatisticsUpdatingSupported(self: *@This()) core.HResult!bool {
        const this: *IBarcodeScannerCapabilities = @ptrCast(self);
        return try this.getIsStatisticsUpdatingSupported();
    }
    pub fn getIsImagePreviewSupported(self: *@This()) core.HResult!bool {
        const this: *IBarcodeScannerCapabilities = @ptrCast(self);
        return try this.getIsImagePreviewSupported();
    }
    pub fn getIsSoftwareTriggerSupported(self: *@This()) core.HResult!bool {
        var this: ?*IBarcodeScannerCapabilities1 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerCapabilities1.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSoftwareTriggerSupported();
    }
    pub fn getIsVideoPreviewSupported(self: *@This()) core.HResult!bool {
        var this: ?*IBarcodeScannerCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsVideoPreviewSupported();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.BarcodeScannerCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerCapabilities.GUID;
    pub const IID: Guid = IBarcodeScannerCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerCapabilities.SIGNATURE);
};
pub const BarcodeScannerDataReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReport(self: *@This()) core.HResult!*BarcodeScannerReport {
        const this: *IBarcodeScannerDataReceivedEventArgs = @ptrCast(self);
        return try this.getReport();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.BarcodeScannerDataReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerDataReceivedEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerDataReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerDataReceivedEventArgs.SIGNATURE);
};
pub const BarcodeScannerErrorOccurredEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPartialInputData(self: *@This()) core.HResult!*BarcodeScannerReport {
        const this: *IBarcodeScannerErrorOccurredEventArgs = @ptrCast(self);
        return try this.getPartialInputData();
    }
    pub fn getIsRetriable(self: *@This()) core.HResult!bool {
        const this: *IBarcodeScannerErrorOccurredEventArgs = @ptrCast(self);
        return try this.getIsRetriable();
    }
    pub fn getErrorData(self: *@This()) core.HResult!*UnifiedPosErrorData {
        const this: *IBarcodeScannerErrorOccurredEventArgs = @ptrCast(self);
        return try this.getErrorData();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.BarcodeScannerErrorOccurredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerErrorOccurredEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerErrorOccurredEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerErrorOccurredEventArgs.SIGNATURE);
};
pub const BarcodeScannerImagePreviewReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPreview(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        const this: *IBarcodeScannerImagePreviewReceivedEventArgs = @ptrCast(self);
        return try this.getPreview();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.BarcodeScannerImagePreviewReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerImagePreviewReceivedEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerImagePreviewReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerImagePreviewReceivedEventArgs.SIGNATURE);
};
pub const BarcodeScannerReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getScanDataType(self: *@This()) core.HResult!u32 {
        const this: *IBarcodeScannerReport = @ptrCast(self);
        return try this.getScanDataType();
    }
    pub fn getScanData(self: *@This()) core.HResult!*IBuffer {
        const this: *IBarcodeScannerReport = @ptrCast(self);
        return try this.getScanData();
    }
    pub fn getScanDataLabel(self: *@This()) core.HResult!*IBuffer {
        const this: *IBarcodeScannerReport = @ptrCast(self);
        return try this.getScanDataLabel();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(scanDataType: u32, scanData: *IBuffer, scanDataLabel: *IBuffer) core.HResult!*BarcodeScannerReport {
        const factory = @This().IBarcodeScannerReportFactoryCache.get();
        return try factory.CreateInstance(scanDataType, scanData, scanDataLabel);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.BarcodeScannerReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerReport.GUID;
    pub const IID: Guid = IBarcodeScannerReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerReport.SIGNATURE);
    var _IBarcodeScannerReportFactoryCache: FactoryCache(IBarcodeScannerReportFactory, RUNTIME_NAME) = .{};
};
pub const BarcodeScannerStatus = enum(i32) {
    Online = 0,
    Off = 1,
    Offline = 2,
    OffOrOffline = 3,
    Extended = 4,
};
pub const BarcodeScannerStatusUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!BarcodeScannerStatus {
        const this: *IBarcodeScannerStatusUpdatedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedStatus(self: *@This()) core.HResult!u32 {
        const this: *IBarcodeScannerStatusUpdatedEventArgs = @ptrCast(self);
        return try this.getExtendedStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.BarcodeScannerStatusUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerStatusUpdatedEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerStatusUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerStatusUpdatedEventArgs.SIGNATURE);
};
pub const BarcodeSymbologies = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Unknown() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUnknown();
    }
    pub fn get_Ean8() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getEan8();
    }
    pub fn get_Ean8Add2() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getEan8Add2();
    }
    pub fn get_Ean8Add5() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getEan8Add5();
    }
    pub fn get_Eanv() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getEanv();
    }
    pub fn get_EanvAdd2() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getEanvAdd2();
    }
    pub fn get_EanvAdd5() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getEanvAdd5();
    }
    pub fn get_Ean13() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getEan13();
    }
    pub fn get_Ean13Add2() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getEan13Add2();
    }
    pub fn get_Ean13Add5() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getEan13Add5();
    }
    pub fn get_Isbn() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getIsbn();
    }
    pub fn get_IsbnAdd5() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getIsbnAdd5();
    }
    pub fn get_Ismn() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getIsmn();
    }
    pub fn get_IsmnAdd2() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getIsmnAdd2();
    }
    pub fn get_IsmnAdd5() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getIsmnAdd5();
    }
    pub fn get_Issn() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getIssn();
    }
    pub fn get_IssnAdd2() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getIssnAdd2();
    }
    pub fn get_IssnAdd5() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getIssnAdd5();
    }
    pub fn get_Ean99() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getEan99();
    }
    pub fn get_Ean99Add2() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getEan99Add2();
    }
    pub fn get_Ean99Add5() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getEan99Add5();
    }
    pub fn get_Upca() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUpca();
    }
    pub fn get_UpcaAdd2() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUpcaAdd2();
    }
    pub fn get_UpcaAdd5() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUpcaAdd5();
    }
    pub fn get_Upce() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUpce();
    }
    pub fn get_UpceAdd2() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUpceAdd2();
    }
    pub fn get_UpceAdd5() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUpceAdd5();
    }
    pub fn get_UpcCoupon() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUpcCoupon();
    }
    pub fn get_TfStd() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getTfStd();
    }
    pub fn get_TfDis() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getTfDis();
    }
    pub fn get_TfInt() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getTfInt();
    }
    pub fn get_TfInd() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getTfInd();
    }
    pub fn get_TfMat() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getTfMat();
    }
    pub fn get_TfIata() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getTfIata();
    }
    pub fn get_Gs1DatabarType1() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getGs1DatabarType1();
    }
    pub fn get_Gs1DatabarType2() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getGs1DatabarType2();
    }
    pub fn get_Gs1DatabarType3() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getGs1DatabarType3();
    }
    pub fn get_Code39() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCode39();
    }
    pub fn get_Code39Ex() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCode39Ex();
    }
    pub fn get_Trioptic39() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getTrioptic39();
    }
    pub fn get_Code32() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCode32();
    }
    pub fn get_Pzn() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getPzn();
    }
    pub fn get_Code93() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCode93();
    }
    pub fn get_Code93Ex() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCode93Ex();
    }
    pub fn get_Code128() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCode128();
    }
    pub fn get_Gs1128() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getGs1128();
    }
    pub fn get_Gs1128Coupon() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getGs1128Coupon();
    }
    pub fn get_UccEan128() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUccEan128();
    }
    pub fn get_Sisac() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getSisac();
    }
    pub fn get_Isbt() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getIsbt();
    }
    pub fn get_Codabar() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCodabar();
    }
    pub fn get_Code11() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCode11();
    }
    pub fn get_Msi() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getMsi();
    }
    pub fn get_Plessey() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getPlessey();
    }
    pub fn get_Telepen() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getTelepen();
    }
    pub fn get_Code16k() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCode16k();
    }
    pub fn get_CodablockA() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCodablockA();
    }
    pub fn get_CodablockF() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCodablockF();
    }
    pub fn get_Codablock128() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCodablock128();
    }
    pub fn get_Code49() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCode49();
    }
    pub fn get_Aztec() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getAztec();
    }
    pub fn get_DataCode() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getDataCode();
    }
    pub fn get_DataMatrix() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getDataMatrix();
    }
    pub fn get_HanXin() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getHanXin();
    }
    pub fn get_Maxicode() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getMaxicode();
    }
    pub fn get_MicroPdf417() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getMicroPdf417();
    }
    pub fn get_MicroQr() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getMicroQr();
    }
    pub fn get_Pdf417() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getPdf417();
    }
    pub fn get_Qr() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getQr();
    }
    pub fn get_MsTag() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getMsTag();
    }
    pub fn get_Ccab() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCcab();
    }
    pub fn get_Ccc() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCcc();
    }
    pub fn get_Tlc39() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getTlc39();
    }
    pub fn get_AusPost() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getAusPost();
    }
    pub fn get_CanPost() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getCanPost();
    }
    pub fn get_ChinaPost() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getChinaPost();
    }
    pub fn get_DutchKix() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getDutchKix();
    }
    pub fn get_InfoMail() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getInfoMail();
    }
    pub fn get_ItalianPost25() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getItalianPost25();
    }
    pub fn get_ItalianPost39() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getItalianPost39();
    }
    pub fn get_JapanPost() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getJapanPost();
    }
    pub fn get_KoreanPost() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getKoreanPost();
    }
    pub fn get_SwedenPost() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getSwedenPost();
    }
    pub fn get_UkPost() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUkPost();
    }
    pub fn get_UsIntelligent() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUsIntelligent();
    }
    pub fn get_UsIntelligentPkg() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUsIntelligentPkg();
    }
    pub fn get_UsPlanet() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUsPlanet();
    }
    pub fn get_UsPostNet() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUsPostNet();
    }
    pub fn get_Us4StateFics() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getUs4StateFics();
    }
    pub fn get_OcrA() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getOcrA();
    }
    pub fn get_OcrB() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getOcrB();
    }
    pub fn get_Micr() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getMicr();
    }
    pub fn get_ExtendedBase() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.getExtendedBase();
    }
    pub fn GetName(scanDataType: u32) core.HResult!HSTRING {
        const factory = @This().IBarcodeSymbologiesStaticsCache.get();
        return try factory.GetName(scanDataType);
    }
    pub fn get_Gs1DWCode() core.HResult!u32 {
        const factory = @This().IBarcodeSymbologiesStatics2Cache.get();
        return try factory.getGs1DWCode();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.BarcodeSymbologies";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IBarcodeSymbologiesStaticsCache: FactoryCache(IBarcodeSymbologiesStatics, RUNTIME_NAME) = .{};
    var _IBarcodeSymbologiesStatics2Cache: FactoryCache(IBarcodeSymbologiesStatics2, RUNTIME_NAME) = .{};
};
pub const BarcodeSymbologyAttributes = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsCheckDigitValidationEnabled(self: *@This()) core.HResult!bool {
        const this: *IBarcodeSymbologyAttributes = @ptrCast(self);
        return try this.getIsCheckDigitValidationEnabled();
    }
    pub fn putIsCheckDigitValidationEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IBarcodeSymbologyAttributes = @ptrCast(self);
        return try this.putIsCheckDigitValidationEnabled(value);
    }
    pub fn getIsCheckDigitValidationSupported(self: *@This()) core.HResult!bool {
        const this: *IBarcodeSymbologyAttributes = @ptrCast(self);
        return try this.getIsCheckDigitValidationSupported();
    }
    pub fn getIsCheckDigitTransmissionEnabled(self: *@This()) core.HResult!bool {
        const this: *IBarcodeSymbologyAttributes = @ptrCast(self);
        return try this.getIsCheckDigitTransmissionEnabled();
    }
    pub fn putIsCheckDigitTransmissionEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IBarcodeSymbologyAttributes = @ptrCast(self);
        return try this.putIsCheckDigitTransmissionEnabled(value);
    }
    pub fn getIsCheckDigitTransmissionSupported(self: *@This()) core.HResult!bool {
        const this: *IBarcodeSymbologyAttributes = @ptrCast(self);
        return try this.getIsCheckDigitTransmissionSupported();
    }
    pub fn getDecodeLength1(self: *@This()) core.HResult!u32 {
        const this: *IBarcodeSymbologyAttributes = @ptrCast(self);
        return try this.getDecodeLength1();
    }
    pub fn putDecodeLength1(self: *@This(), value: u32) core.HResult!void {
        const this: *IBarcodeSymbologyAttributes = @ptrCast(self);
        return try this.putDecodeLength1(value);
    }
    pub fn getDecodeLength2(self: *@This()) core.HResult!u32 {
        const this: *IBarcodeSymbologyAttributes = @ptrCast(self);
        return try this.getDecodeLength2();
    }
    pub fn putDecodeLength2(self: *@This(), value: u32) core.HResult!void {
        const this: *IBarcodeSymbologyAttributes = @ptrCast(self);
        return try this.putDecodeLength2(value);
    }
    pub fn getDecodeLengthKind(self: *@This()) core.HResult!BarcodeSymbologyDecodeLengthKind {
        const this: *IBarcodeSymbologyAttributes = @ptrCast(self);
        return try this.getDecodeLengthKind();
    }
    pub fn putDecodeLengthKind(self: *@This(), value: BarcodeSymbologyDecodeLengthKind) core.HResult!void {
        const this: *IBarcodeSymbologyAttributes = @ptrCast(self);
        return try this.putDecodeLengthKind(value);
    }
    pub fn getIsDecodeLengthSupported(self: *@This()) core.HResult!bool {
        const this: *IBarcodeSymbologyAttributes = @ptrCast(self);
        return try this.getIsDecodeLengthSupported();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.BarcodeSymbologyAttributes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeSymbologyAttributes.GUID;
    pub const IID: Guid = IBarcodeSymbologyAttributes.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeSymbologyAttributes.SIGNATURE);
};
pub const BarcodeSymbologyDecodeLengthKind = enum(i32) {
    AnyLength = 0,
    Discrete = 1,
    Range = 2,
};
pub const CashDrawer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ICashDrawer = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getCapabilities(self: *@This()) core.HResult!*CashDrawerCapabilities {
        const this: *ICashDrawer = @ptrCast(self);
        return try this.getCapabilities();
    }
    pub fn getStatus(self: *@This()) core.HResult!*CashDrawerStatus {
        const this: *ICashDrawer = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getIsDrawerOpen(self: *@This()) core.HResult!bool {
        const this: *ICashDrawer = @ptrCast(self);
        return try this.getIsDrawerOpen();
    }
    pub fn getDrawerEventSource(self: *@This()) core.HResult!*CashDrawerEventSource {
        const this: *ICashDrawer = @ptrCast(self);
        return try this.getDrawerEventSource();
    }
    pub fn ClaimDrawerAsync(self: *@This()) core.HResult!*IAsyncOperation(ClaimedCashDrawer) {
        const this: *ICashDrawer = @ptrCast(self);
        return try this.ClaimDrawerAsync();
    }
    pub fn CheckHealthAsync(self: *@This(), level: UnifiedPosHealthCheckLevel) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *ICashDrawer = @ptrCast(self);
        return try this.CheckHealthAsync(level);
    }
    pub fn GetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *ICashDrawer = @ptrCast(self);
        return try this.GetStatisticsAsync(statisticsCategories);
    }
    pub fn addStatusUpdated(self: *@This(), handler: *TypedEventHandler(CashDrawer,CashDrawerStatusUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICashDrawer = @ptrCast(self);
        return try this.addStatusUpdated(handler);
    }
    pub fn removeStatusUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICashDrawer = @ptrCast(self);
        return try this.removeStatusUpdated(token);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(CashDrawer) {
        const factory = @This().ICashDrawerStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(CashDrawer) {
        const factory = @This().ICashDrawerStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().ICashDrawerStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetDeviceSelectorWithConnectionTypes(connectionTypes: PosConnectionTypes) core.HResult!HSTRING {
        const factory = @This().ICashDrawerStatics2Cache.get();
        return try factory.GetDeviceSelector(connectionTypes);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.CashDrawer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICashDrawer.GUID;
    pub const IID: Guid = ICashDrawer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICashDrawer.SIGNATURE);
    var _ICashDrawerStaticsCache: FactoryCache(ICashDrawerStatics, RUNTIME_NAME) = .{};
    var _ICashDrawerStatics2Cache: FactoryCache(ICashDrawerStatics2, RUNTIME_NAME) = .{};
};
pub const CashDrawerCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPowerReportingType(self: *@This()) core.HResult!UnifiedPosPowerReportingType {
        const this: *ICashDrawerCapabilities = @ptrCast(self);
        return try this.getPowerReportingType();
    }
    pub fn getIsStatisticsReportingSupported(self: *@This()) core.HResult!bool {
        const this: *ICashDrawerCapabilities = @ptrCast(self);
        return try this.getIsStatisticsReportingSupported();
    }
    pub fn getIsStatisticsUpdatingSupported(self: *@This()) core.HResult!bool {
        const this: *ICashDrawerCapabilities = @ptrCast(self);
        return try this.getIsStatisticsUpdatingSupported();
    }
    pub fn getIsStatusReportingSupported(self: *@This()) core.HResult!bool {
        const this: *ICashDrawerCapabilities = @ptrCast(self);
        return try this.getIsStatusReportingSupported();
    }
    pub fn getIsStatusMultiDrawerDetectSupported(self: *@This()) core.HResult!bool {
        const this: *ICashDrawerCapabilities = @ptrCast(self);
        return try this.getIsStatusMultiDrawerDetectSupported();
    }
    pub fn getIsDrawerOpenSensorAvailable(self: *@This()) core.HResult!bool {
        const this: *ICashDrawerCapabilities = @ptrCast(self);
        return try this.getIsDrawerOpenSensorAvailable();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.CashDrawerCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICashDrawerCapabilities.GUID;
    pub const IID: Guid = ICashDrawerCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICashDrawerCapabilities.SIGNATURE);
};
pub const CashDrawerCloseAlarm = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putAlarmTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ICashDrawerCloseAlarm = @ptrCast(self);
        return try this.putAlarmTimeout(value);
    }
    pub fn getAlarmTimeout(self: *@This()) core.HResult!TimeSpan {
        const this: *ICashDrawerCloseAlarm = @ptrCast(self);
        return try this.getAlarmTimeout();
    }
    pub fn putBeepFrequency(self: *@This(), value: u32) core.HResult!void {
        const this: *ICashDrawerCloseAlarm = @ptrCast(self);
        return try this.putBeepFrequency(value);
    }
    pub fn getBeepFrequency(self: *@This()) core.HResult!u32 {
        const this: *ICashDrawerCloseAlarm = @ptrCast(self);
        return try this.getBeepFrequency();
    }
    pub fn putBeepDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ICashDrawerCloseAlarm = @ptrCast(self);
        return try this.putBeepDuration(value);
    }
    pub fn getBeepDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *ICashDrawerCloseAlarm = @ptrCast(self);
        return try this.getBeepDuration();
    }
    pub fn putBeepDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ICashDrawerCloseAlarm = @ptrCast(self);
        return try this.putBeepDelay(value);
    }
    pub fn getBeepDelay(self: *@This()) core.HResult!TimeSpan {
        const this: *ICashDrawerCloseAlarm = @ptrCast(self);
        return try this.getBeepDelay();
    }
    pub fn addAlarmTimeoutExpired(self: *@This(), handler: *TypedEventHandler(CashDrawerCloseAlarm,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ICashDrawerCloseAlarm = @ptrCast(self);
        return try this.addAlarmTimeoutExpired(handler);
    }
    pub fn removeAlarmTimeoutExpired(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICashDrawerCloseAlarm = @ptrCast(self);
        return try this.removeAlarmTimeoutExpired(token);
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *ICashDrawerCloseAlarm = @ptrCast(self);
        return try this.StartAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.CashDrawerCloseAlarm";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICashDrawerCloseAlarm.GUID;
    pub const IID: Guid = ICashDrawerCloseAlarm.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICashDrawerCloseAlarm.SIGNATURE);
};
pub const CashDrawerClosedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCashDrawer(self: *@This()) core.HResult!*CashDrawer {
        const this: *ICashDrawerEventSourceEventArgs = @ptrCast(self);
        return try this.getCashDrawer();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.CashDrawerClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICashDrawerEventSourceEventArgs.GUID;
    pub const IID: Guid = ICashDrawerEventSourceEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICashDrawerEventSourceEventArgs.SIGNATURE);
};
pub const CashDrawerEventSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addDrawerClosed(self: *@This(), handler: *TypedEventHandler(CashDrawerEventSource,CashDrawerClosedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICashDrawerEventSource = @ptrCast(self);
        return try this.addDrawerClosed(handler);
    }
    pub fn removeDrawerClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICashDrawerEventSource = @ptrCast(self);
        return try this.removeDrawerClosed(token);
    }
    pub fn addDrawerOpened(self: *@This(), handler: *TypedEventHandler(CashDrawerEventSource,CashDrawerOpenedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICashDrawerEventSource = @ptrCast(self);
        return try this.addDrawerOpened(handler);
    }
    pub fn removeDrawerOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICashDrawerEventSource = @ptrCast(self);
        return try this.removeDrawerOpened(token);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.CashDrawerEventSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICashDrawerEventSource.GUID;
    pub const IID: Guid = ICashDrawerEventSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICashDrawerEventSource.SIGNATURE);
};
pub const CashDrawerOpenedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCashDrawer(self: *@This()) core.HResult!*CashDrawer {
        const this: *ICashDrawerEventSourceEventArgs = @ptrCast(self);
        return try this.getCashDrawer();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.CashDrawerOpenedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICashDrawerEventSourceEventArgs.GUID;
    pub const IID: Guid = ICashDrawerEventSourceEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICashDrawerEventSourceEventArgs.SIGNATURE);
};
pub const CashDrawerStatus = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatusKind(self: *@This()) core.HResult!CashDrawerStatusKind {
        const this: *ICashDrawerStatus = @ptrCast(self);
        return try this.getStatusKind();
    }
    pub fn getExtendedStatus(self: *@This()) core.HResult!u32 {
        const this: *ICashDrawerStatus = @ptrCast(self);
        return try this.getExtendedStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.CashDrawerStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICashDrawerStatus.GUID;
    pub const IID: Guid = ICashDrawerStatus.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICashDrawerStatus.SIGNATURE);
};
pub const CashDrawerStatusKind = enum(i32) {
    Online = 0,
    Off = 1,
    Offline = 2,
    OffOrOffline = 3,
    Extended = 4,
};
pub const CashDrawerStatusUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!*CashDrawerStatus {
        const this: *ICashDrawerStatusUpdatedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.CashDrawerStatusUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICashDrawerStatusUpdatedEventArgs.GUID;
    pub const IID: Guid = ICashDrawerStatusUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICashDrawerStatusUpdatedEventArgs.SIGNATURE);
};
pub const ClaimedBarcodeScanner = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsDisabledOnDataReceived(self: *@This(), value: bool) core.HResult!void {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.putIsDisabledOnDataReceived(value);
    }
    pub fn getIsDisabledOnDataReceived(self: *@This()) core.HResult!bool {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.getIsDisabledOnDataReceived();
    }
    pub fn putIsDecodeDataEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.putIsDecodeDataEnabled(value);
    }
    pub fn getIsDecodeDataEnabled(self: *@This()) core.HResult!bool {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.getIsDecodeDataEnabled();
    }
    pub fn EnableAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.EnableAsync();
    }
    pub fn DisableAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.DisableAsync();
    }
    pub fn RetainDevice(self: *@This()) core.HResult!void {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.RetainDevice();
    }
    pub fn SetActiveSymbologiesAsync(self: *@This(), symbologies: *IIterable(u32)) core.HResult!*IAsyncAction {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.SetActiveSymbologiesAsync(symbologies);
    }
    pub fn ResetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.ResetStatisticsAsync(statisticsCategories);
    }
    pub fn UpdateStatisticsAsync(self: *@This(), statistics: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*IAsyncAction {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.UpdateStatisticsAsync(statistics);
    }
    pub fn SetActiveProfileAsync(self: *@This(), profile: HSTRING) core.HResult!*IAsyncAction {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.SetActiveProfileAsync(profile);
    }
    pub fn addDataReceived(self: *@This(), handler: *TypedEventHandler(ClaimedBarcodeScanner,BarcodeScannerDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.addDataReceived(handler);
    }
    pub fn removeDataReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.removeDataReceived(token);
    }
    pub fn addTriggerPressed(self: *@This(), handler: *EventHandler(ClaimedBarcodeScanner)) core.HResult!EventRegistrationToken {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.addTriggerPressed(handler);
    }
    pub fn removeTriggerPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.removeTriggerPressed(token);
    }
    pub fn addTriggerReleased(self: *@This(), handler: *EventHandler(ClaimedBarcodeScanner)) core.HResult!EventRegistrationToken {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.addTriggerReleased(handler);
    }
    pub fn removeTriggerReleased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.removeTriggerReleased(token);
    }
    pub fn addReleaseDeviceRequested(self: *@This(), handler: *EventHandler(ClaimedBarcodeScanner)) core.HResult!EventRegistrationToken {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.addReleaseDeviceRequested(handler);
    }
    pub fn removeReleaseDeviceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.removeReleaseDeviceRequested(token);
    }
    pub fn addImagePreviewReceived(self: *@This(), handler: *TypedEventHandler(ClaimedBarcodeScanner,BarcodeScannerImagePreviewReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.addImagePreviewReceived(handler);
    }
    pub fn removeImagePreviewReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.removeImagePreviewReceived(token);
    }
    pub fn addErrorOccurred(self: *@This(), handler: *TypedEventHandler(ClaimedBarcodeScanner,BarcodeScannerErrorOccurredEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.addErrorOccurred(handler);
    }
    pub fn removeErrorOccurred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedBarcodeScanner = @ptrCast(self);
        return try this.removeErrorOccurred(token);
    }
    pub fn StartSoftwareTriggerAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IClaimedBarcodeScanner1 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedBarcodeScanner1.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartSoftwareTriggerAsync();
    }
    pub fn StopSoftwareTriggerAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IClaimedBarcodeScanner1 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedBarcodeScanner1.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopSoftwareTriggerAsync();
    }
    pub fn GetSymbologyAttributesAsync(self: *@This(), barcodeSymbology: u32) core.HResult!*IAsyncOperation(BarcodeSymbologyAttributes) {
        var this: ?*IClaimedBarcodeScanner2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedBarcodeScanner2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSymbologyAttributesAsync(barcodeSymbology);
    }
    pub fn SetSymbologyAttributesAsync(self: *@This(), barcodeSymbology: u32, attributes: *BarcodeSymbologyAttributes) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IClaimedBarcodeScanner2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedBarcodeScanner2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetSymbologyAttributesAsync(barcodeSymbology, attributes);
    }
    pub fn ShowVideoPreviewAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IClaimedBarcodeScanner3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedBarcodeScanner3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShowVideoPreviewAsync();
    }
    pub fn HideVideoPreview(self: *@This()) core.HResult!void {
        var this: ?*IClaimedBarcodeScanner3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedBarcodeScanner3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HideVideoPreview();
    }
    pub fn putIsVideoPreviewShownOnEnable(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IClaimedBarcodeScanner3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedBarcodeScanner3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsVideoPreviewShownOnEnable(value);
    }
    pub fn getIsVideoPreviewShownOnEnable(self: *@This()) core.HResult!bool {
        var this: ?*IClaimedBarcodeScanner3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedBarcodeScanner3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsVideoPreviewShownOnEnable();
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(ClaimedBarcodeScanner,ClaimedBarcodeScannerClosedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IClaimedBarcodeScanner4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedBarcodeScanner4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IClaimedBarcodeScanner4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedBarcodeScanner4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeClosed(token);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ClaimedBarcodeScanner";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClaimedBarcodeScanner.GUID;
    pub const IID: Guid = IClaimedBarcodeScanner.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClaimedBarcodeScanner.SIGNATURE);
};
pub const ClaimedBarcodeScannerClosedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ClaimedBarcodeScannerClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClaimedBarcodeScannerClosedEventArgs.GUID;
    pub const IID: Guid = IClaimedBarcodeScannerClosedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClaimedBarcodeScannerClosedEventArgs.SIGNATURE);
};
pub const ClaimedCashDrawer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IClaimedCashDrawer = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IClaimedCashDrawer = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn getIsDrawerOpen(self: *@This()) core.HResult!bool {
        const this: *IClaimedCashDrawer = @ptrCast(self);
        return try this.getIsDrawerOpen();
    }
    pub fn getCloseAlarm(self: *@This()) core.HResult!*CashDrawerCloseAlarm {
        const this: *IClaimedCashDrawer = @ptrCast(self);
        return try this.getCloseAlarm();
    }
    pub fn OpenDrawerAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IClaimedCashDrawer = @ptrCast(self);
        return try this.OpenDrawerAsync();
    }
    pub fn EnableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IClaimedCashDrawer = @ptrCast(self);
        return try this.EnableAsync();
    }
    pub fn DisableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IClaimedCashDrawer = @ptrCast(self);
        return try this.DisableAsync();
    }
    pub fn RetainDeviceAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IClaimedCashDrawer = @ptrCast(self);
        return try this.RetainDeviceAsync();
    }
    pub fn ResetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(bool) {
        const this: *IClaimedCashDrawer = @ptrCast(self);
        return try this.ResetStatisticsAsync(statisticsCategories);
    }
    pub fn UpdateStatisticsAsync(self: *@This(), statistics: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*IAsyncOperation(bool) {
        const this: *IClaimedCashDrawer = @ptrCast(self);
        return try this.UpdateStatisticsAsync(statistics);
    }
    pub fn addReleaseDeviceRequested(self: *@This(), handler: *TypedEventHandler(ClaimedCashDrawer,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IClaimedCashDrawer = @ptrCast(self);
        return try this.addReleaseDeviceRequested(handler);
    }
    pub fn removeReleaseDeviceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedCashDrawer = @ptrCast(self);
        return try this.removeReleaseDeviceRequested(token);
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(ClaimedCashDrawer,ClaimedCashDrawerClosedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IClaimedCashDrawer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedCashDrawer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IClaimedCashDrawer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedCashDrawer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeClosed(token);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ClaimedCashDrawer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClaimedCashDrawer.GUID;
    pub const IID: Guid = IClaimedCashDrawer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClaimedCashDrawer.SIGNATURE);
};
pub const ClaimedCashDrawerClosedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ClaimedCashDrawerClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClaimedCashDrawerClosedEventArgs.GUID;
    pub const IID: Guid = IClaimedCashDrawerClosedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClaimedCashDrawerClosedEventArgs.SIGNATURE);
};
pub const ClaimedJournalPrinter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateJob(self: *@This()) core.HResult!*JournalPrintJob {
        const this: *IClaimedJournalPrinter = @ptrCast(self);
        return try this.CreateJob();
    }
    pub fn putCharactersPerLine(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCharactersPerLine(value);
    }
    pub fn getCharactersPerLine(self: *@This()) core.HResult!u32 {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCharactersPerLine();
    }
    pub fn putLineHeight(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLineHeight(value);
    }
    pub fn getLineHeight(self: *@This()) core.HResult!u32 {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLineHeight();
    }
    pub fn putLineSpacing(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLineSpacing(value);
    }
    pub fn getLineSpacing(self: *@This()) core.HResult!u32 {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLineSpacing();
    }
    pub fn getLineWidth(self: *@This()) core.HResult!u32 {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLineWidth();
    }
    pub fn putIsLetterQuality(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsLetterQuality(value);
    }
    pub fn getIsLetterQuality(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsLetterQuality();
    }
    pub fn getIsPaperNearEnd(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPaperNearEnd();
    }
    pub fn putColorCartridge(self: *@This(), value: PosPrinterColorCartridge) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putColorCartridge(value);
    }
    pub fn getColorCartridge(self: *@This()) core.HResult!PosPrinterColorCartridge {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getColorCartridge();
    }
    pub fn getIsCoverOpen(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCoverOpen();
    }
    pub fn getIsCartridgeRemoved(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCartridgeRemoved();
    }
    pub fn getIsCartridgeEmpty(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCartridgeEmpty();
    }
    pub fn getIsHeadCleaning(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsHeadCleaning();
    }
    pub fn getIsPaperEmpty(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPaperEmpty();
    }
    pub fn getIsReadyToPrint(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReadyToPrint();
    }
    pub fn ValidateData(self: *@This(), data: HSTRING) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ValidateData(data);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ClaimedJournalPrinter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClaimedJournalPrinter.GUID;
    pub const IID: Guid = IClaimedJournalPrinter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClaimedJournalPrinter.SIGNATURE);
};
pub const ClaimedLineDisplay = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IClaimedLineDisplay = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getCapabilities(self: *@This()) core.HResult!*LineDisplayCapabilities {
        const this: *IClaimedLineDisplay = @ptrCast(self);
        return try this.getCapabilities();
    }
    pub fn getPhysicalDeviceName(self: *@This()) core.HResult!HSTRING {
        const this: *IClaimedLineDisplay = @ptrCast(self);
        return try this.getPhysicalDeviceName();
    }
    pub fn getPhysicalDeviceDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IClaimedLineDisplay = @ptrCast(self);
        return try this.getPhysicalDeviceDescription();
    }
    pub fn getDeviceControlDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IClaimedLineDisplay = @ptrCast(self);
        return try this.getDeviceControlDescription();
    }
    pub fn getDeviceControlVersion(self: *@This()) core.HResult!HSTRING {
        const this: *IClaimedLineDisplay = @ptrCast(self);
        return try this.getDeviceControlVersion();
    }
    pub fn getDeviceServiceVersion(self: *@This()) core.HResult!HSTRING {
        const this: *IClaimedLineDisplay = @ptrCast(self);
        return try this.getDeviceServiceVersion();
    }
    pub fn getDefaultWindow(self: *@This()) core.HResult!*LineDisplayWindow {
        const this: *IClaimedLineDisplay = @ptrCast(self);
        return try this.getDefaultWindow();
    }
    pub fn RetainDevice(self: *@This()) core.HResult!void {
        const this: *IClaimedLineDisplay = @ptrCast(self);
        return try this.RetainDevice();
    }
    pub fn addReleaseDeviceRequested(self: *@This(), handler: *TypedEventHandler(ClaimedLineDisplay,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IClaimedLineDisplay = @ptrCast(self);
        return try this.addReleaseDeviceRequested(handler);
    }
    pub fn removeReleaseDeviceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedLineDisplay = @ptrCast(self);
        return try this.removeReleaseDeviceRequested(token);
    }
    pub fn GetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(HSTRING) {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetStatisticsAsync(statisticsCategories);
    }
    pub fn CheckHealthAsync(self: *@This(), level: UnifiedPosHealthCheckLevel) core.HResult!*IAsyncOperation(HSTRING) {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CheckHealthAsync(level);
    }
    pub fn CheckPowerStatusAsync(self: *@This()) core.HResult!*IAsyncOperation(LineDisplayPowerStatus) {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CheckPowerStatusAsync();
    }
    pub fn addStatusUpdated(self: *@This(), handler: *TypedEventHandler(ClaimedLineDisplay,LineDisplayStatusUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addStatusUpdated(handler);
    }
    pub fn removeStatusUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeStatusUpdated(token);
    }
    pub fn getSupportedScreenSizesInCharacters(self: *@This()) core.HResult!*IVectorView(Size) {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedScreenSizesInCharacters();
    }
    pub fn getMaxBitmapSizeInPixels(self: *@This()) core.HResult!Size {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxBitmapSizeInPixels();
    }
    pub fn getSupportedCharacterSets(self: *@This()) core.HResult!*IVectorView(i32) {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedCharacterSets();
    }
    pub fn getCustomGlyphs(self: *@This()) core.HResult!*LineDisplayCustomGlyphs {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCustomGlyphs();
    }
    pub fn GetAttributes(self: *@This()) core.HResult!*LineDisplayAttributes {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAttributes();
    }
    pub fn TryUpdateAttributesAsync(self: *@This(), attributes: *LineDisplayAttributes) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryUpdateAttributesAsync(attributes);
    }
    pub fn TrySetDescriptorAsync(self: *@This(), descriptor: u32, descriptorState: LineDisplayDescriptorState) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TrySetDescriptorAsync(descriptor, descriptorState);
    }
    pub fn TryClearDescriptorsAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryClearDescriptorsAsync();
    }
    pub fn TryCreateWindowAsync(self: *@This(), viewport: Rect, windowSize: Size) core.HResult!*IAsyncOperation(LineDisplayWindow) {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryCreateWindowAsync(viewport, windowSize);
    }
    pub fn TryStoreStorageFileBitmapAsync(self: *@This(), bitmap: *StorageFile) core.HResult!*IAsyncOperation(LineDisplayStoredBitmap) {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryStoreStorageFileBitmapAsync(bitmap);
    }
    pub fn TryStoreStorageFileBitmapAsyncWithHorizontalAlignmentWithVerticalAlignment(self: *@This(), bitmap: *StorageFile, horizontalAlignment: LineDisplayHorizontalAlignment, verticalAlignment: LineDisplayVerticalAlignment) core.HResult!*IAsyncOperation(LineDisplayStoredBitmap) {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryStoreStorageFileBitmapAsyncWithHorizontalAlignmentWithVerticalAlignment(bitmap, horizontalAlignment, verticalAlignment);
    }
    pub fn TryStoreStorageFileBitmapAsyncWithHorizontalAlignmentWithVerticalAlignmentWithWidthInPixels(self: *@This(), bitmap: *StorageFile, horizontalAlignment: LineDisplayHorizontalAlignment, verticalAlignment: LineDisplayVerticalAlignment, widthInPixels: i32) core.HResult!*IAsyncOperation(LineDisplayStoredBitmap) {
        var this: ?*IClaimedLineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryStoreStorageFileBitmapAsyncWithHorizontalAlignmentWithVerticalAlignmentWithWidthInPixels(bitmap, horizontalAlignment, verticalAlignment, widthInPixels);
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(ClaimedLineDisplay,ClaimedLineDisplayClosedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IClaimedLineDisplay3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IClaimedLineDisplay3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedLineDisplay3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeClosed(token);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(ClaimedLineDisplay) {
        const factory = @This().IClaimedLineDisplayStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IClaimedLineDisplayStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetDeviceSelectorWithConnectionTypes(connectionTypes: PosConnectionTypes) core.HResult!HSTRING {
        const factory = @This().IClaimedLineDisplayStaticsCache.get();
        return try factory.GetDeviceSelectorWithConnectionTypes(connectionTypes);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ClaimedLineDisplay";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClaimedLineDisplay.GUID;
    pub const IID: Guid = IClaimedLineDisplay.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClaimedLineDisplay.SIGNATURE);
    var _IClaimedLineDisplayStaticsCache: FactoryCache(IClaimedLineDisplayStatics, RUNTIME_NAME) = .{};
};
pub const ClaimedLineDisplayClosedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ClaimedLineDisplayClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClaimedLineDisplayClosedEventArgs.GUID;
    pub const IID: Guid = IClaimedLineDisplayClosedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClaimedLineDisplayClosedEventArgs.SIGNATURE);
};
pub const ClaimedMagneticStripeReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsDisabledOnDataReceived(self: *@This(), value: bool) core.HResult!void {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.putIsDisabledOnDataReceived(value);
    }
    pub fn getIsDisabledOnDataReceived(self: *@This()) core.HResult!bool {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.getIsDisabledOnDataReceived();
    }
    pub fn putIsDecodeDataEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.putIsDecodeDataEnabled(value);
    }
    pub fn getIsDecodeDataEnabled(self: *@This()) core.HResult!bool {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.getIsDecodeDataEnabled();
    }
    pub fn getIsDeviceAuthenticated(self: *@This()) core.HResult!bool {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.getIsDeviceAuthenticated();
    }
    pub fn putDataEncryptionAlgorithm(self: *@This(), value: u32) core.HResult!void {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.putDataEncryptionAlgorithm(value);
    }
    pub fn getDataEncryptionAlgorithm(self: *@This()) core.HResult!u32 {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.getDataEncryptionAlgorithm();
    }
    pub fn putTracksToRead(self: *@This(), value: MagneticStripeReaderTrackIds) core.HResult!void {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.putTracksToRead(value);
    }
    pub fn getTracksToRead(self: *@This()) core.HResult!MagneticStripeReaderTrackIds {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.getTracksToRead();
    }
    pub fn putIsTransmitSentinelsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.putIsTransmitSentinelsEnabled(value);
    }
    pub fn getIsTransmitSentinelsEnabled(self: *@This()) core.HResult!bool {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.getIsTransmitSentinelsEnabled();
    }
    pub fn EnableAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.EnableAsync();
    }
    pub fn DisableAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.DisableAsync();
    }
    pub fn RetainDevice(self: *@This()) core.HResult!void {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.RetainDevice();
    }
    pub fn SetErrorReportingType(self: *@This(), value: MagneticStripeReaderErrorReportingType) core.HResult!void {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.SetErrorReportingType(value);
    }
    pub fn RetrieveDeviceAuthenticationDataAsync(self: *@This()) core.HResult!*IAsyncOperation(IBuffer) {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.RetrieveDeviceAuthenticationDataAsync();
    }
    pub fn AuthenticateDeviceAsync(self: *@This(), responseToken: [*]u8) core.HResult!*IAsyncAction {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.AuthenticateDeviceAsync(responseToken);
    }
    pub fn DeAuthenticateDeviceAsync(self: *@This(), responseToken: [*]u8) core.HResult!*IAsyncAction {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.DeAuthenticateDeviceAsync(responseToken);
    }
    pub fn UpdateKeyAsync(self: *@This(), key: HSTRING, keyName: HSTRING) core.HResult!*IAsyncAction {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.UpdateKeyAsync(key, keyName);
    }
    pub fn ResetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.ResetStatisticsAsync(statisticsCategories);
    }
    pub fn UpdateStatisticsAsync(self: *@This(), statistics: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*IAsyncAction {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.UpdateStatisticsAsync(statistics);
    }
    pub fn addBankCardDataReceived(self: *@This(), handler: *TypedEventHandler(ClaimedMagneticStripeReader,MagneticStripeReaderBankCardDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.addBankCardDataReceived(handler);
    }
    pub fn removeBankCardDataReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.removeBankCardDataReceived(token);
    }
    pub fn addAamvaCardDataReceived(self: *@This(), handler: *TypedEventHandler(ClaimedMagneticStripeReader,MagneticStripeReaderAamvaCardDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.addAamvaCardDataReceived(handler);
    }
    pub fn removeAamvaCardDataReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.removeAamvaCardDataReceived(token);
    }
    pub fn addVendorSpecificDataReceived(self: *@This(), handler: *TypedEventHandler(ClaimedMagneticStripeReader,MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.addVendorSpecificDataReceived(handler);
    }
    pub fn removeVendorSpecificDataReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.removeVendorSpecificDataReceived(token);
    }
    pub fn addReleaseDeviceRequested(self: *@This(), handler: *EventHandler(ClaimedMagneticStripeReader)) core.HResult!EventRegistrationToken {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.addReleaseDeviceRequested(handler);
    }
    pub fn removeReleaseDeviceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.removeReleaseDeviceRequested(token);
    }
    pub fn addErrorOccurred(self: *@This(), handler: *TypedEventHandler(ClaimedMagneticStripeReader,MagneticStripeReaderErrorOccurredEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.addErrorOccurred(handler);
    }
    pub fn removeErrorOccurred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedMagneticStripeReader = @ptrCast(self);
        return try this.removeErrorOccurred(token);
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(ClaimedMagneticStripeReader,ClaimedMagneticStripeReaderClosedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IClaimedMagneticStripeReader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedMagneticStripeReader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IClaimedMagneticStripeReader2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedMagneticStripeReader2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeClosed(token);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ClaimedMagneticStripeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClaimedMagneticStripeReader.GUID;
    pub const IID: Guid = IClaimedMagneticStripeReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClaimedMagneticStripeReader.SIGNATURE);
};
pub const ClaimedMagneticStripeReaderClosedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ClaimedMagneticStripeReaderClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClaimedMagneticStripeReaderClosedEventArgs.GUID;
    pub const IID: Guid = IClaimedMagneticStripeReaderClosedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClaimedMagneticStripeReaderClosedEventArgs.SIGNATURE);
};
pub const ClaimedPosPrinter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putCharacterSet(self: *@This(), value: u32) core.HResult!void {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.putCharacterSet(value);
    }
    pub fn getCharacterSet(self: *@This()) core.HResult!u32 {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.getCharacterSet();
    }
    pub fn getIsCoverOpen(self: *@This()) core.HResult!bool {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.getIsCoverOpen();
    }
    pub fn putIsCharacterSetMappingEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.putIsCharacterSetMappingEnabled(value);
    }
    pub fn getIsCharacterSetMappingEnabled(self: *@This()) core.HResult!bool {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.getIsCharacterSetMappingEnabled();
    }
    pub fn putMapMode(self: *@This(), value: PosPrinterMapMode) core.HResult!void {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.putMapMode(value);
    }
    pub fn getMapMode(self: *@This()) core.HResult!PosPrinterMapMode {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.getMapMode();
    }
    pub fn getReceipt(self: *@This()) core.HResult!*ClaimedReceiptPrinter {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.getReceipt();
    }
    pub fn getSlip(self: *@This()) core.HResult!*ClaimedSlipPrinter {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.getSlip();
    }
    pub fn getJournal(self: *@This()) core.HResult!*ClaimedJournalPrinter {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.getJournal();
    }
    pub fn EnableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.EnableAsync();
    }
    pub fn DisableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.DisableAsync();
    }
    pub fn RetainDeviceAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.RetainDeviceAsync();
    }
    pub fn ResetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(bool) {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.ResetStatisticsAsync(statisticsCategories);
    }
    pub fn UpdateStatisticsAsync(self: *@This(), statistics: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*IAsyncOperation(bool) {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.UpdateStatisticsAsync(statistics);
    }
    pub fn addReleaseDeviceRequested(self: *@This(), handler: *TypedEventHandler(ClaimedPosPrinter,PosPrinterReleaseDeviceRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.addReleaseDeviceRequested(handler);
    }
    pub fn removeReleaseDeviceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IClaimedPosPrinter = @ptrCast(self);
        return try this.removeReleaseDeviceRequested(token);
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(ClaimedPosPrinter,ClaimedPosPrinterClosedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IClaimedPosPrinter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedPosPrinter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IClaimedPosPrinter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClaimedPosPrinter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeClosed(token);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ClaimedPosPrinter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClaimedPosPrinter.GUID;
    pub const IID: Guid = IClaimedPosPrinter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClaimedPosPrinter.SIGNATURE);
};
pub const ClaimedPosPrinterClosedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ClaimedPosPrinterClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClaimedPosPrinterClosedEventArgs.GUID;
    pub const IID: Guid = IClaimedPosPrinterClosedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClaimedPosPrinterClosedEventArgs.SIGNATURE);
};
pub const ClaimedReceiptPrinter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSidewaysMaxLines(self: *@This()) core.HResult!u32 {
        const this: *IClaimedReceiptPrinter = @ptrCast(self);
        return try this.getSidewaysMaxLines();
    }
    pub fn getSidewaysMaxChars(self: *@This()) core.HResult!u32 {
        const this: *IClaimedReceiptPrinter = @ptrCast(self);
        return try this.getSidewaysMaxChars();
    }
    pub fn getLinesToPaperCut(self: *@This()) core.HResult!u32 {
        const this: *IClaimedReceiptPrinter = @ptrCast(self);
        return try this.getLinesToPaperCut();
    }
    pub fn getPageSize(self: *@This()) core.HResult!Size {
        const this: *IClaimedReceiptPrinter = @ptrCast(self);
        return try this.getPageSize();
    }
    pub fn getPrintArea(self: *@This()) core.HResult!Rect {
        const this: *IClaimedReceiptPrinter = @ptrCast(self);
        return try this.getPrintArea();
    }
    pub fn CreateJob(self: *@This()) core.HResult!*ReceiptPrintJob {
        const this: *IClaimedReceiptPrinter = @ptrCast(self);
        return try this.CreateJob();
    }
    pub fn putCharactersPerLine(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCharactersPerLine(value);
    }
    pub fn getCharactersPerLine(self: *@This()) core.HResult!u32 {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCharactersPerLine();
    }
    pub fn putLineHeight(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLineHeight(value);
    }
    pub fn getLineHeight(self: *@This()) core.HResult!u32 {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLineHeight();
    }
    pub fn putLineSpacing(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLineSpacing(value);
    }
    pub fn getLineSpacing(self: *@This()) core.HResult!u32 {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLineSpacing();
    }
    pub fn getLineWidth(self: *@This()) core.HResult!u32 {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLineWidth();
    }
    pub fn putIsLetterQuality(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsLetterQuality(value);
    }
    pub fn getIsLetterQuality(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsLetterQuality();
    }
    pub fn getIsPaperNearEnd(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPaperNearEnd();
    }
    pub fn putColorCartridge(self: *@This(), value: PosPrinterColorCartridge) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putColorCartridge(value);
    }
    pub fn getColorCartridge(self: *@This()) core.HResult!PosPrinterColorCartridge {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getColorCartridge();
    }
    pub fn getIsCoverOpen(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCoverOpen();
    }
    pub fn getIsCartridgeRemoved(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCartridgeRemoved();
    }
    pub fn getIsCartridgeEmpty(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCartridgeEmpty();
    }
    pub fn getIsHeadCleaning(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsHeadCleaning();
    }
    pub fn getIsPaperEmpty(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPaperEmpty();
    }
    pub fn getIsReadyToPrint(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReadyToPrint();
    }
    pub fn ValidateData(self: *@This(), data: HSTRING) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ValidateData(data);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ClaimedReceiptPrinter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClaimedReceiptPrinter.GUID;
    pub const IID: Guid = IClaimedReceiptPrinter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClaimedReceiptPrinter.SIGNATURE);
};
pub const ClaimedSlipPrinter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSidewaysMaxLines(self: *@This()) core.HResult!u32 {
        const this: *IClaimedSlipPrinter = @ptrCast(self);
        return try this.getSidewaysMaxLines();
    }
    pub fn getSidewaysMaxChars(self: *@This()) core.HResult!u32 {
        const this: *IClaimedSlipPrinter = @ptrCast(self);
        return try this.getSidewaysMaxChars();
    }
    pub fn getMaxLines(self: *@This()) core.HResult!u32 {
        const this: *IClaimedSlipPrinter = @ptrCast(self);
        return try this.getMaxLines();
    }
    pub fn getLinesNearEndToEnd(self: *@This()) core.HResult!u32 {
        const this: *IClaimedSlipPrinter = @ptrCast(self);
        return try this.getLinesNearEndToEnd();
    }
    pub fn getPrintSide(self: *@This()) core.HResult!PosPrinterPrintSide {
        const this: *IClaimedSlipPrinter = @ptrCast(self);
        return try this.getPrintSide();
    }
    pub fn getPageSize(self: *@This()) core.HResult!Size {
        const this: *IClaimedSlipPrinter = @ptrCast(self);
        return try this.getPageSize();
    }
    pub fn getPrintArea(self: *@This()) core.HResult!Rect {
        const this: *IClaimedSlipPrinter = @ptrCast(self);
        return try this.getPrintArea();
    }
    pub fn OpenJaws(self: *@This()) core.HResult!void {
        const this: *IClaimedSlipPrinter = @ptrCast(self);
        return try this.OpenJaws();
    }
    pub fn CloseJaws(self: *@This()) core.HResult!void {
        const this: *IClaimedSlipPrinter = @ptrCast(self);
        return try this.CloseJaws();
    }
    pub fn InsertSlipAsync(self: *@This(), timeout: TimeSpan) core.HResult!*IAsyncOperation(bool) {
        const this: *IClaimedSlipPrinter = @ptrCast(self);
        return try this.InsertSlipAsync(timeout);
    }
    pub fn RemoveSlipAsync(self: *@This(), timeout: TimeSpan) core.HResult!*IAsyncOperation(bool) {
        const this: *IClaimedSlipPrinter = @ptrCast(self);
        return try this.RemoveSlipAsync(timeout);
    }
    pub fn ChangePrintSide(self: *@This(), printSide: PosPrinterPrintSide) core.HResult!void {
        const this: *IClaimedSlipPrinter = @ptrCast(self);
        return try this.ChangePrintSide(printSide);
    }
    pub fn CreateJob(self: *@This()) core.HResult!*SlipPrintJob {
        const this: *IClaimedSlipPrinter = @ptrCast(self);
        return try this.CreateJob();
    }
    pub fn putCharactersPerLine(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCharactersPerLine(value);
    }
    pub fn getCharactersPerLine(self: *@This()) core.HResult!u32 {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCharactersPerLine();
    }
    pub fn putLineHeight(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLineHeight(value);
    }
    pub fn getLineHeight(self: *@This()) core.HResult!u32 {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLineHeight();
    }
    pub fn putLineSpacing(self: *@This(), value: u32) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLineSpacing(value);
    }
    pub fn getLineSpacing(self: *@This()) core.HResult!u32 {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLineSpacing();
    }
    pub fn getLineWidth(self: *@This()) core.HResult!u32 {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLineWidth();
    }
    pub fn putIsLetterQuality(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsLetterQuality(value);
    }
    pub fn getIsLetterQuality(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsLetterQuality();
    }
    pub fn getIsPaperNearEnd(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPaperNearEnd();
    }
    pub fn putColorCartridge(self: *@This(), value: PosPrinterColorCartridge) core.HResult!void {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putColorCartridge(value);
    }
    pub fn getColorCartridge(self: *@This()) core.HResult!PosPrinterColorCartridge {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getColorCartridge();
    }
    pub fn getIsCoverOpen(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCoverOpen();
    }
    pub fn getIsCartridgeRemoved(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCartridgeRemoved();
    }
    pub fn getIsCartridgeEmpty(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCartridgeEmpty();
    }
    pub fn getIsHeadCleaning(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsHeadCleaning();
    }
    pub fn getIsPaperEmpty(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPaperEmpty();
    }
    pub fn getIsReadyToPrint(self: *@This()) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReadyToPrint();
    }
    pub fn ValidateData(self: *@This(), data: HSTRING) core.HResult!bool {
        var this: ?*ICommonClaimedPosPrinterStation = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonClaimedPosPrinterStation.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ValidateData(data);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ClaimedSlipPrinter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IClaimedSlipPrinter.GUID;
    pub const IID: Guid = IClaimedSlipPrinter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IClaimedSlipPrinter.SIGNATURE);
};
pub const IBarcodeScanner = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapabilities(self: *@This()) core.HResult!*BarcodeScannerCapabilities {
        var _r: *BarcodeScannerCapabilities = undefined;
        const _c = self.vtable.get_Capabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClaimScannerAsync(self: *@This()) core.HResult!*IAsyncOperation(ClaimedBarcodeScanner) {
        var _r: *IAsyncOperation(ClaimedBarcodeScanner) = undefined;
        const _c = self.vtable.ClaimScannerAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CheckHealthAsync(self: *@This(), level: UnifiedPosHealthCheckLevel) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.CheckHealthAsync(@ptrCast(self), level, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportedSymbologiesAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(u32)) {
        var _r: *IAsyncOperation(IVectorView(u32)) = undefined;
        const _c = self.vtable.GetSupportedSymbologiesAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsSymbologySupportedAsync(self: *@This(), barcodeSymbology: u32) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.IsSymbologySupportedAsync(@ptrCast(self), barcodeSymbology, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetrieveStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.RetrieveStatisticsAsync(@ptrCast(self), statisticsCategories, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSupportedProfiles(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.GetSupportedProfiles(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsProfileSupported(self: *@This(), profile: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsProfileSupported(@ptrCast(self), profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStatusUpdated(self: *@This(), handler: *TypedEventHandler(BarcodeScanner,BarcodeScannerStatusUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeScanner";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bea33e06-b264-4f03-a9c1-45b20f01134f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Capabilities: *const fn(self: *anyopaque, _r: **BarcodeScannerCapabilities) callconv(.winapi) HRESULT,
        ClaimScannerAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ClaimedBarcodeScanner)) callconv(.winapi) HRESULT,
        CheckHealthAsync: *const fn(self: *anyopaque, level: UnifiedPosHealthCheckLevel, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetSupportedSymbologiesAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(u32))) callconv(.winapi) HRESULT,
        IsSymbologySupportedAsync: *const fn(self: *anyopaque, barcodeSymbology: u32, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RetrieveStatisticsAsync: *const fn(self: *anyopaque, statisticsCategories: *IIterable(HSTRING), _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
        GetSupportedProfiles: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        IsProfileSupported: *const fn(self: *anyopaque, profile: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        add_StatusUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(BarcodeScanner,BarcodeScannerStatusUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScanner2 = extern struct {
    vtable: *const VTable,
    pub fn getVideoDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeScanner2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "89215167-8cee-436d-89ab-8dfb43bb4286";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getPowerReportingType(self: *@This()) core.HResult!UnifiedPosPowerReportingType {
        var _r: UnifiedPosPowerReportingType = undefined;
        const _c = self.vtable.get_PowerReportingType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStatisticsReportingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStatisticsReportingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStatisticsUpdatingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStatisticsUpdatingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsImagePreviewSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsImagePreviewSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeScannerCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c60691e4-f2c8-4420-a307-b12ef6622857";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PowerReportingType: *const fn(self: *anyopaque, _r: *UnifiedPosPowerReportingType) callconv(.winapi) HRESULT,
        get_IsStatisticsReportingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStatisticsUpdatingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsImagePreviewSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerCapabilities1 = extern struct {
    vtable: *const VTable,
    pub fn getIsSoftwareTriggerSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSoftwareTriggerSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeScannerCapabilities1";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e5ab3e9-0e2c-472f-a1cc-ee8054b6a684";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSoftwareTriggerSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerCapabilities2 = extern struct {
    vtable: *const VTable,
    pub fn getIsVideoPreviewSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVideoPreviewSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeScannerCapabilities2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f211cfec-e1a1-4ea8-9abc-92b1596270ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsVideoPreviewSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerDataReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReport(self: *@This()) core.HResult!*BarcodeScannerReport {
        var _r: *BarcodeScannerReport = undefined;
        const _c = self.vtable.get_Report(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeScannerDataReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4234a7e2-ed97-467d-ad2b-01e44313a929";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Report: *const fn(self: *anyopaque, _r: **BarcodeScannerReport) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerErrorOccurredEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPartialInputData(self: *@This()) core.HResult!*BarcodeScannerReport {
        var _r: *BarcodeScannerReport = undefined;
        const _c = self.vtable.get_PartialInputData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRetriable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRetriable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorData(self: *@This()) core.HResult!*UnifiedPosErrorData {
        var _r: *UnifiedPosErrorData = undefined;
        const _c = self.vtable.get_ErrorData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeScannerErrorOccurredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2cd2602f-cf3a-4002-a75a-c5ec468f0a20";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PartialInputData: *const fn(self: *anyopaque, _r: **BarcodeScannerReport) callconv(.winapi) HRESULT,
        get_IsRetriable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ErrorData: *const fn(self: *anyopaque, _r: **UnifiedPosErrorData) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerImagePreviewReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPreview(self: *@This()) core.HResult!*IRandomAccessStreamWithContentType {
        var _r: *IRandomAccessStreamWithContentType = undefined;
        const _c = self.vtable.get_Preview(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeScannerImagePreviewReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3b7de85-6e8b-434e-9f58-06ef26bc4baf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Preview: *const fn(self: *anyopaque, _r: **IRandomAccessStreamWithContentType) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerReport = extern struct {
    vtable: *const VTable,
    pub fn getScanDataType(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ScanDataType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScanData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_ScanData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScanDataLabel(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_ScanDataLabel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeScannerReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ce4d8b0-a489-4b96-86c4-f0bf8a37753d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ScanDataType: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ScanData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_ScanDataLabel: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerReportFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), scanDataType: u32, scanData: *IBuffer, scanDataLabel: *IBuffer) core.HResult!*BarcodeScannerReport {
        var _r: *BarcodeScannerReport = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), scanDataType, scanData, scanDataLabel, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeScannerReportFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a2547326-2013-457c-8963-49c15dca78ce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, scanDataType: u32, scanData: *IBuffer, scanDataLabel: *IBuffer, _r: **BarcodeScannerReport) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(BarcodeScanner) {
        var _r: *IAsyncOperation(BarcodeScanner) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(BarcodeScanner) {
        var _r: *IAsyncOperation(BarcodeScanner) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeScannerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d115f6f-da49-41e8-8c8c-f0cb62a9c4fc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(BarcodeScanner)) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(BarcodeScanner)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This(), connectionTypes: PosConnectionTypes) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), connectionTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeScannerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8652473-a36f-4007-b1d0-279ebe92a656";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, connectionTypes: PosConnectionTypes, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerStatusUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!BarcodeScannerStatus {
        var _r: BarcodeScannerStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedStatus(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExtendedStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeScannerStatusUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "355d8586-9c43-462b-a91a-816dc97f452c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *BarcodeScannerStatus) callconv(.winapi) HRESULT,
        get_ExtendedStatus: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeSymbologiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getUnknown(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Unknown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEan8(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ean8(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEan8Add2(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ean8Add2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEan8Add5(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ean8Add5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEanv(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Eanv(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEanvAdd2(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_EanvAdd2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEanvAdd5(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_EanvAdd5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEan13(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ean13(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEan13Add2(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ean13Add2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEan13Add5(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ean13Add5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsbn(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Isbn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsbnAdd5(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_IsbnAdd5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsmn(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ismn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsmnAdd2(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_IsmnAdd2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsmnAdd5(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_IsmnAdd5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIssn(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Issn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIssnAdd2(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_IssnAdd2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIssnAdd5(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_IssnAdd5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEan99(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ean99(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEan99Add2(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ean99Add2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEan99Add5(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ean99Add5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpca(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Upca(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpcaAdd2(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UpcaAdd2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpcaAdd5(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UpcaAdd5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpce(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Upce(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpceAdd2(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UpceAdd2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpceAdd5(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UpceAdd5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUpcCoupon(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UpcCoupon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTfStd(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TfStd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTfDis(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TfDis(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTfInt(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TfInt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTfInd(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TfInd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTfMat(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TfMat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTfIata(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TfIata(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGs1DatabarType1(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Gs1DatabarType1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGs1DatabarType2(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Gs1DatabarType2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGs1DatabarType3(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Gs1DatabarType3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCode39(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Code39(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCode39Ex(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Code39Ex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrioptic39(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Trioptic39(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCode32(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Code32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPzn(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Pzn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCode93(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Code93(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCode93Ex(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Code93Ex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCode128(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Code128(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGs1128(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Gs1128(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGs1128Coupon(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Gs1128Coupon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUccEan128(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UccEan128(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSisac(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Sisac(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsbt(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Isbt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCodabar(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Codabar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCode11(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Code11(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMsi(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Msi(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlessey(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Plessey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTelepen(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Telepen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCode16k(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Code16k(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCodablockA(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CodablockA(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCodablockF(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CodablockF(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCodablock128(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Codablock128(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCode49(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Code49(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAztec(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Aztec(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDataCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DataCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDataMatrix(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DataMatrix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHanXin(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_HanXin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxicode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Maxicode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMicroPdf417(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MicroPdf417(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMicroQr(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MicroQr(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPdf417(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Pdf417(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQr(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Qr(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMsTag(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MsTag(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCcab(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ccab(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCcc(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ccc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTlc39(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Tlc39(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAusPost(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AusPost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanPost(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CanPost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChinaPost(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ChinaPost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDutchKix(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DutchKix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInfoMail(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_InfoMail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItalianPost25(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ItalianPost25(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItalianPost39(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ItalianPost39(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJapanPost(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_JapanPost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKoreanPost(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_KoreanPost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSwedenPost(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SwedenPost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUkPost(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UkPost(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsIntelligent(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UsIntelligent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsIntelligentPkg(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UsIntelligentPkg(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsPlanet(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UsPlanet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsPostNet(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_UsPostNet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUs4StateFics(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Us4StateFics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOcrA(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_OcrA(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOcrB(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_OcrB(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMicr(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Micr(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedBase(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExtendedBase(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetName(self: *@This(), scanDataType: u32) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetName(@ptrCast(self), scanDataType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeSymbologiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca8549bb-06d2-43f4-a44b-c620679fd8d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Unknown: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ean8: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ean8Add2: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ean8Add5: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Eanv: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_EanvAdd2: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_EanvAdd5: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ean13: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ean13Add2: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ean13Add5: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Isbn: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_IsbnAdd5: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ismn: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_IsmnAdd2: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_IsmnAdd5: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Issn: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_IssnAdd2: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_IssnAdd5: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ean99: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ean99Add2: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ean99Add5: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Upca: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UpcaAdd2: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UpcaAdd5: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Upce: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UpceAdd2: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UpceAdd5: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UpcCoupon: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TfStd: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TfDis: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TfInt: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TfInd: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TfMat: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TfIata: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Gs1DatabarType1: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Gs1DatabarType2: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Gs1DatabarType3: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Code39: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Code39Ex: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Trioptic39: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Code32: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Pzn: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Code93: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Code93Ex: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Code128: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Gs1128: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Gs1128Coupon: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UccEan128: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Sisac: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Isbt: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Codabar: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Code11: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Msi: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Plessey: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Telepen: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Code16k: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_CodablockA: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_CodablockF: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Codablock128: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Code49: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Aztec: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_DataCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_DataMatrix: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_HanXin: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Maxicode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MicroPdf417: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MicroQr: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Pdf417: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Qr: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MsTag: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ccab: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ccc: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Tlc39: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AusPost: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_CanPost: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ChinaPost: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_DutchKix: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_InfoMail: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ItalianPost25: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ItalianPost39: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_JapanPost: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_KoreanPost: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SwedenPost: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UkPost: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UsIntelligent: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UsIntelligentPkg: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UsPlanet: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_UsPostNet: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Us4StateFics: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_OcrA: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_OcrB: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Micr: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ExtendedBase: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        GetName: *const fn(self: *anyopaque, scanDataType: u32, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeSymbologiesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getGs1DWCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Gs1DWCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeSymbologiesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8b7518f4-99d0-40bf-9424-b91d6dd4c6e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Gs1DWCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeSymbologyAttributes = extern struct {
    vtable: *const VTable,
    pub fn getIsCheckDigitValidationEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCheckDigitValidationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCheckDigitValidationEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCheckDigitValidationEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCheckDigitValidationSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCheckDigitValidationSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCheckDigitTransmissionEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCheckDigitTransmissionEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCheckDigitTransmissionEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCheckDigitTransmissionEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCheckDigitTransmissionSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCheckDigitTransmissionSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDecodeLength1(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DecodeLength1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDecodeLength1(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_DecodeLength1(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDecodeLength2(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DecodeLength2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDecodeLength2(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_DecodeLength2(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDecodeLengthKind(self: *@This()) core.HResult!BarcodeSymbologyDecodeLengthKind {
        var _r: BarcodeSymbologyDecodeLengthKind = undefined;
        const _c = self.vtable.get_DecodeLengthKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDecodeLengthKind(self: *@This(), value: BarcodeSymbologyDecodeLengthKind) core.HResult!void {
        const _c = self.vtable.put_DecodeLengthKind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDecodeLengthSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDecodeLengthSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IBarcodeSymbologyAttributes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66413a78-ab7a-4ada-8ece-936014b2ead7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCheckDigitValidationEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCheckDigitValidationEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsCheckDigitValidationSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCheckDigitTransmissionEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCheckDigitTransmissionEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsCheckDigitTransmissionSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DecodeLength1: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_DecodeLength1: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_DecodeLength2: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_DecodeLength2: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_DecodeLengthKind: *const fn(self: *anyopaque, _r: *BarcodeSymbologyDecodeLengthKind) callconv(.winapi) HRESULT,
        put_DecodeLengthKind: *const fn(self: *anyopaque, value: BarcodeSymbologyDecodeLengthKind) callconv(.winapi) HRESULT,
        get_IsDecodeLengthSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICashDrawer = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapabilities(self: *@This()) core.HResult!*CashDrawerCapabilities {
        var _r: *CashDrawerCapabilities = undefined;
        const _c = self.vtable.get_Capabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!*CashDrawerStatus {
        var _r: *CashDrawerStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDrawerOpen(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDrawerOpen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDrawerEventSource(self: *@This()) core.HResult!*CashDrawerEventSource {
        var _r: *CashDrawerEventSource = undefined;
        const _c = self.vtable.get_DrawerEventSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClaimDrawerAsync(self: *@This()) core.HResult!*IAsyncOperation(ClaimedCashDrawer) {
        var _r: *IAsyncOperation(ClaimedCashDrawer) = undefined;
        const _c = self.vtable.ClaimDrawerAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CheckHealthAsync(self: *@This(), level: UnifiedPosHealthCheckLevel) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.CheckHealthAsync(@ptrCast(self), level, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetStatisticsAsync(@ptrCast(self), statisticsCategories, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStatusUpdated(self: *@This(), handler: *TypedEventHandler(CashDrawer,CashDrawerStatusUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ICashDrawer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f88f5c8-de54-4aee-a890-920bcbfe30fc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Capabilities: *const fn(self: *anyopaque, _r: **CashDrawerCapabilities) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: **CashDrawerStatus) callconv(.winapi) HRESULT,
        get_IsDrawerOpen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DrawerEventSource: *const fn(self: *anyopaque, _r: **CashDrawerEventSource) callconv(.winapi) HRESULT,
        ClaimDrawerAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ClaimedCashDrawer)) callconv(.winapi) HRESULT,
        CheckHealthAsync: *const fn(self: *anyopaque, level: UnifiedPosHealthCheckLevel, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetStatisticsAsync: *const fn(self: *anyopaque, statisticsCategories: *IIterable(HSTRING), _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        add_StatusUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(CashDrawer,CashDrawerStatusUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICashDrawerCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getPowerReportingType(self: *@This()) core.HResult!UnifiedPosPowerReportingType {
        var _r: UnifiedPosPowerReportingType = undefined;
        const _c = self.vtable.get_PowerReportingType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStatisticsReportingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStatisticsReportingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStatisticsUpdatingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStatisticsUpdatingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStatusReportingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStatusReportingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStatusMultiDrawerDetectSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStatusMultiDrawerDetectSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDrawerOpenSensorAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDrawerOpenSensorAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ICashDrawerCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0bc6de0b-e8e7-4b1f-b1d1-3e501ad08247";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PowerReportingType: *const fn(self: *anyopaque, _r: *UnifiedPosPowerReportingType) callconv(.winapi) HRESULT,
        get_IsStatisticsReportingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStatisticsUpdatingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStatusReportingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStatusMultiDrawerDetectSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDrawerOpenSensorAvailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICashDrawerCloseAlarm = extern struct {
    vtable: *const VTable,
    pub fn putAlarmTimeout(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_AlarmTimeout(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlarmTimeout(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_AlarmTimeout(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBeepFrequency(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_BeepFrequency(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBeepFrequency(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_BeepFrequency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBeepDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_BeepDuration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBeepDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_BeepDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBeepDelay(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_BeepDelay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBeepDelay(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_BeepDelay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAlarmTimeoutExpired(self: *@This(), handler: *TypedEventHandler(CashDrawerCloseAlarm,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AlarmTimeoutExpired(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAlarmTimeoutExpired(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AlarmTimeoutExpired(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ICashDrawerCloseAlarm";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6bf88cc7-6f63-430e-ab3b-95d75ffbe87f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_AlarmTimeout: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_AlarmTimeout: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_BeepFrequency: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_BeepFrequency: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_BeepDuration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_BeepDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_BeepDelay: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_BeepDelay: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        add_AlarmTimeoutExpired: *const fn(self: *anyopaque, handler: *TypedEventHandler(CashDrawerCloseAlarm,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AlarmTimeoutExpired: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ICashDrawerEventSource = extern struct {
    vtable: *const VTable,
    pub fn addDrawerClosed(self: *@This(), handler: *TypedEventHandler(CashDrawerEventSource,CashDrawerClosedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DrawerClosed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDrawerClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DrawerClosed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDrawerOpened(self: *@This(), handler: *TypedEventHandler(CashDrawerEventSource,CashDrawerOpenedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DrawerOpened(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDrawerOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DrawerOpened(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ICashDrawerEventSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e006e46c-f2f9-442f-8dd6-06c10a4227ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_DrawerClosed: *const fn(self: *anyopaque, handler: *TypedEventHandler(CashDrawerEventSource,CashDrawerClosedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DrawerClosed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DrawerOpened: *const fn(self: *anyopaque, handler: *TypedEventHandler(CashDrawerEventSource,CashDrawerOpenedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DrawerOpened: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICashDrawerEventSourceEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCashDrawer(self: *@This()) core.HResult!*CashDrawer {
        var _r: *CashDrawer = undefined;
        const _c = self.vtable.get_CashDrawer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ICashDrawerEventSourceEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69cb3bc1-147f-421c-9c23-090123bb786c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CashDrawer: *const fn(self: *anyopaque, _r: **CashDrawer) callconv(.winapi) HRESULT,
    };
};
pub const ICashDrawerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(CashDrawer) {
        var _r: *IAsyncOperation(CashDrawer) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(CashDrawer) {
        var _r: *IAsyncOperation(CashDrawer) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ICashDrawerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dfa0955a-d437-4fff-b547-dda969a4f883";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(CashDrawer)) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(CashDrawer)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICashDrawerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This(), connectionTypes: PosConnectionTypes) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), connectionTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ICashDrawerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e818121-8c42-40e8-9c0e-40297048104c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, connectionTypes: PosConnectionTypes, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICashDrawerStatus = extern struct {
    vtable: *const VTable,
    pub fn getStatusKind(self: *@This()) core.HResult!CashDrawerStatusKind {
        var _r: CashDrawerStatusKind = undefined;
        const _c = self.vtable.get_StatusKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedStatus(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExtendedStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ICashDrawerStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6bbd78bf-dca1-4e06-99eb-5af6a5aec108";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StatusKind: *const fn(self: *anyopaque, _r: *CashDrawerStatusKind) callconv(.winapi) HRESULT,
        get_ExtendedStatus: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ICashDrawerStatusUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!*CashDrawerStatus {
        var _r: *CashDrawerStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ICashDrawerStatusUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30aae98a-0d70-459c-9553-87e124c52488";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: **CashDrawerStatus) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedBarcodeScanner = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDisabledOnDataReceived(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDisabledOnDataReceived(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDisabledOnDataReceived(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisabledOnDataReceived(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDecodeDataEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDecodeDataEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDecodeDataEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDecodeDataEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnableAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.EnableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisableAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DisableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetainDevice(self: *@This()) core.HResult!void {
        const _c = self.vtable.RetainDevice(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetActiveSymbologiesAsync(self: *@This(), symbologies: *IIterable(u32)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetActiveSymbologiesAsync(@ptrCast(self), symbologies, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ResetStatisticsAsync(@ptrCast(self), statisticsCategories, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateStatisticsAsync(self: *@This(), statistics: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UpdateStatisticsAsync(@ptrCast(self), statistics, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetActiveProfileAsync(self: *@This(), profile: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetActiveProfileAsync(@ptrCast(self), profile, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDataReceived(self: *@This(), handler: *TypedEventHandler(ClaimedBarcodeScanner,BarcodeScannerDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DataReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDataReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DataReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTriggerPressed(self: *@This(), handler: *EventHandler(ClaimedBarcodeScanner)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TriggerPressed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTriggerPressed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TriggerPressed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addTriggerReleased(self: *@This(), handler: *EventHandler(ClaimedBarcodeScanner)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TriggerReleased(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTriggerReleased(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TriggerReleased(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addReleaseDeviceRequested(self: *@This(), handler: *EventHandler(ClaimedBarcodeScanner)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReleaseDeviceRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReleaseDeviceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReleaseDeviceRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addImagePreviewReceived(self: *@This(), handler: *TypedEventHandler(ClaimedBarcodeScanner,BarcodeScannerImagePreviewReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ImagePreviewReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeImagePreviewReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ImagePreviewReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addErrorOccurred(self: *@This(), handler: *TypedEventHandler(ClaimedBarcodeScanner,BarcodeScannerErrorOccurredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ErrorOccurred(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeErrorOccurred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ErrorOccurred(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedBarcodeScanner";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a63b49c-8fa4-4332-bb26-945d11d81e0f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDisabledOnDataReceived: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsDisabledOnDataReceived: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDecodeDataEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsDecodeDataEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        EnableAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DisableAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RetainDevice: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetActiveSymbologiesAsync: *const fn(self: *anyopaque, symbologies: *IIterable(u32), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ResetStatisticsAsync: *const fn(self: *anyopaque, statisticsCategories: *IIterable(HSTRING), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        UpdateStatisticsAsync: *const fn(self: *anyopaque, statistics: *IIterable(IKeyValuePair(HSTRING,HSTRING)), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetActiveProfileAsync: *const fn(self: *anyopaque, profile: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_DataReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedBarcodeScanner,BarcodeScannerDataReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DataReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TriggerPressed: *const fn(self: *anyopaque, handler: *EventHandler(ClaimedBarcodeScanner), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TriggerPressed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_TriggerReleased: *const fn(self: *anyopaque, handler: *EventHandler(ClaimedBarcodeScanner), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TriggerReleased: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ReleaseDeviceRequested: *const fn(self: *anyopaque, handler: *EventHandler(ClaimedBarcodeScanner), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReleaseDeviceRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ImagePreviewReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedBarcodeScanner,BarcodeScannerImagePreviewReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ImagePreviewReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ErrorOccurred: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedBarcodeScanner,BarcodeScannerErrorOccurredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ErrorOccurred: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedBarcodeScanner1 = extern struct {
    vtable: *const VTable,
    pub fn StartSoftwareTriggerAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartSoftwareTriggerAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopSoftwareTriggerAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StopSoftwareTriggerAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedBarcodeScanner1";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f61aad0c-8551-42b4-998c-970c20210a22";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartSoftwareTriggerAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StopSoftwareTriggerAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedBarcodeScanner2 = extern struct {
    vtable: *const VTable,
    pub fn GetSymbologyAttributesAsync(self: *@This(), barcodeSymbology: u32) core.HResult!*IAsyncOperation(BarcodeSymbologyAttributes) {
        var _r: *IAsyncOperation(BarcodeSymbologyAttributes) = undefined;
        const _c = self.vtable.GetSymbologyAttributesAsync(@ptrCast(self), barcodeSymbology, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSymbologyAttributesAsync(self: *@This(), barcodeSymbology: u32, attributes: *BarcodeSymbologyAttributes) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.SetSymbologyAttributesAsync(@ptrCast(self), barcodeSymbology, attributes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedBarcodeScanner2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3b59e8c-2d8b-4f70-8af3-3448bedd5fe2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetSymbologyAttributesAsync: *const fn(self: *anyopaque, barcodeSymbology: u32, _r: **IAsyncOperation(BarcodeSymbologyAttributes)) callconv(.winapi) HRESULT,
        SetSymbologyAttributesAsync: *const fn(self: *anyopaque, barcodeSymbology: u32, attributes: *BarcodeSymbologyAttributes, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedBarcodeScanner3 = extern struct {
    vtable: *const VTable,
    pub fn ShowVideoPreviewAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ShowVideoPreviewAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn HideVideoPreview(self: *@This()) core.HResult!void {
        const _c = self.vtable.HideVideoPreview(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putIsVideoPreviewShownOnEnable(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsVideoPreviewShownOnEnable(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsVideoPreviewShownOnEnable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVideoPreviewShownOnEnable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedBarcodeScanner3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6ceb430-712e-45fc-8b86-cd55f5aef79d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowVideoPreviewAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        HideVideoPreview: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        put_IsVideoPreviewShownOnEnable: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsVideoPreviewShownOnEnable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedBarcodeScanner4 = extern struct {
    vtable: *const VTable,
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(ClaimedBarcodeScanner,ClaimedBarcodeScannerClosedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedBarcodeScanner4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d501f97-376a-41a8-a230-2f37c1949dde";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedBarcodeScanner,ClaimedBarcodeScannerClosedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedBarcodeScannerClosedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedBarcodeScannerClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf7d5489-a22c-4c65-a901-88d77d833954";
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
pub const IClaimedCashDrawer = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDrawerOpen(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDrawerOpen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCloseAlarm(self: *@This()) core.HResult!*CashDrawerCloseAlarm {
        var _r: *CashDrawerCloseAlarm = undefined;
        const _c = self.vtable.get_CloseAlarm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenDrawerAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.OpenDrawerAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.EnableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.DisableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetainDeviceAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RetainDeviceAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ResetStatisticsAsync(@ptrCast(self), statisticsCategories, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateStatisticsAsync(self: *@This(), statistics: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.UpdateStatisticsAsync(@ptrCast(self), statistics, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReleaseDeviceRequested(self: *@This(), handler: *TypedEventHandler(ClaimedCashDrawer,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReleaseDeviceRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReleaseDeviceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReleaseDeviceRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedCashDrawer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca3f99af-abb8-42c1-8a84-5c66512f5a75";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDrawerOpen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CloseAlarm: *const fn(self: *anyopaque, _r: **CashDrawerCloseAlarm) callconv(.winapi) HRESULT,
        OpenDrawerAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        EnableAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        DisableAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RetainDeviceAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ResetStatisticsAsync: *const fn(self: *anyopaque, statisticsCategories: *IIterable(HSTRING), _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        UpdateStatisticsAsync: *const fn(self: *anyopaque, statistics: *IIterable(IKeyValuePair(HSTRING,HSTRING)), _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_ReleaseDeviceRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedCashDrawer,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReleaseDeviceRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedCashDrawer2 = extern struct {
    vtable: *const VTable,
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(ClaimedCashDrawer,ClaimedCashDrawerClosedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedCashDrawer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9cbab5a2-de42-4d5b-b0c1-9b57a2ba89c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedCashDrawer,ClaimedCashDrawerClosedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedCashDrawerClosedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedCashDrawerClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cc573f33-3f34-4c5c-baae-deadf16cd7fa";
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
pub const IClaimedJournalPrinter = extern struct {
    vtable: *const VTable,
    pub fn CreateJob(self: *@This()) core.HResult!*JournalPrintJob {
        var _r: *JournalPrintJob = undefined;
        const _c = self.vtable.CreateJob(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedJournalPrinter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67ea0630-517d-487f-9fdf-d2e0a0a264a5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateJob: *const fn(self: *anyopaque, _r: **JournalPrintJob) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedLineDisplay = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapabilities(self: *@This()) core.HResult!*LineDisplayCapabilities {
        var _r: *LineDisplayCapabilities = undefined;
        const _c = self.vtable.get_Capabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysicalDeviceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhysicalDeviceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysicalDeviceDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhysicalDeviceDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceControlDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceControlDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceControlVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceControlVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceServiceVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceServiceVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultWindow(self: *@This()) core.HResult!*LineDisplayWindow {
        var _r: *LineDisplayWindow = undefined;
        const _c = self.vtable.get_DefaultWindow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetainDevice(self: *@This()) core.HResult!void {
        const _c = self.vtable.RetainDevice(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addReleaseDeviceRequested(self: *@This(), handler: *TypedEventHandler(ClaimedLineDisplay,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReleaseDeviceRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReleaseDeviceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReleaseDeviceRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedLineDisplay";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "120ac970-9a75-4acf-aae7-09972bcf8794";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Capabilities: *const fn(self: *anyopaque, _r: **LineDisplayCapabilities) callconv(.winapi) HRESULT,
        get_PhysicalDeviceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PhysicalDeviceDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceControlDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceControlVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceServiceVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DefaultWindow: *const fn(self: *anyopaque, _r: **LineDisplayWindow) callconv(.winapi) HRESULT,
        RetainDevice: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_ReleaseDeviceRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedLineDisplay,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReleaseDeviceRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedLineDisplay2 = extern struct {
    vtable: *const VTable,
    pub fn GetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetStatisticsAsync(@ptrCast(self), statisticsCategories, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CheckHealthAsync(self: *@This(), level: UnifiedPosHealthCheckLevel) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.CheckHealthAsync(@ptrCast(self), level, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CheckPowerStatusAsync(self: *@This()) core.HResult!*IAsyncOperation(LineDisplayPowerStatus) {
        var _r: *IAsyncOperation(LineDisplayPowerStatus) = undefined;
        const _c = self.vtable.CheckPowerStatusAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStatusUpdated(self: *@This(), handler: *TypedEventHandler(ClaimedLineDisplay,LineDisplayStatusUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSupportedScreenSizesInCharacters(self: *@This()) core.HResult!*IVectorView(Size) {
        var _r: *IVectorView(Size) = undefined;
        const _c = self.vtable.get_SupportedScreenSizesInCharacters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxBitmapSizeInPixels(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_MaxBitmapSizeInPixels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedCharacterSets(self: *@This()) core.HResult!*IVectorView(i32) {
        var _r: *IVectorView(i32) = undefined;
        const _c = self.vtable.get_SupportedCharacterSets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCustomGlyphs(self: *@This()) core.HResult!*LineDisplayCustomGlyphs {
        var _r: *LineDisplayCustomGlyphs = undefined;
        const _c = self.vtable.get_CustomGlyphs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAttributes(self: *@This()) core.HResult!*LineDisplayAttributes {
        var _r: *LineDisplayAttributes = undefined;
        const _c = self.vtable.GetAttributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUpdateAttributesAsync(self: *@This(), attributes: *LineDisplayAttributes) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryUpdateAttributesAsync(@ptrCast(self), attributes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetDescriptorAsync(self: *@This(), descriptor: u32, descriptorState: LineDisplayDescriptorState) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TrySetDescriptorAsync(@ptrCast(self), descriptor, descriptorState, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryClearDescriptorsAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryClearDescriptorsAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryCreateWindowAsync(self: *@This(), viewport: Rect, windowSize: Size) core.HResult!*IAsyncOperation(LineDisplayWindow) {
        var _r: *IAsyncOperation(LineDisplayWindow) = undefined;
        const _c = self.vtable.TryCreateWindowAsync(@ptrCast(self), viewport, windowSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryStoreStorageFileBitmapAsync(self: *@This(), bitmap: *StorageFile) core.HResult!*IAsyncOperation(LineDisplayStoredBitmap) {
        var _r: *IAsyncOperation(LineDisplayStoredBitmap) = undefined;
        const _c = self.vtable.TryStoreStorageFileBitmapAsync(@ptrCast(self), bitmap, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryStoreStorageFileBitmapAsyncWithVerticalAlignment(self: *@This(), bitmap: *StorageFile, horizontalAlignment: LineDisplayHorizontalAlignment, verticalAlignment: LineDisplayVerticalAlignment) core.HResult!*IAsyncOperation(LineDisplayStoredBitmap) {
        var _r: *IAsyncOperation(LineDisplayStoredBitmap) = undefined;
        const _c = self.vtable.TryStoreStorageFileBitmapAsyncWithVerticalAlignment(@ptrCast(self), bitmap, horizontalAlignment, verticalAlignment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryStoreStorageFileBitmapAsyncWithWidthInPixels(self: *@This(), bitmap: *StorageFile, horizontalAlignment: LineDisplayHorizontalAlignment, verticalAlignment: LineDisplayVerticalAlignment, widthInPixels: i32) core.HResult!*IAsyncOperation(LineDisplayStoredBitmap) {
        var _r: *IAsyncOperation(LineDisplayStoredBitmap) = undefined;
        const _c = self.vtable.TryStoreStorageFileBitmapAsyncWithWidthInPixels(@ptrCast(self), bitmap, horizontalAlignment, verticalAlignment, widthInPixels, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedLineDisplay2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a31c75ed-41f5-4e76-a074-795e47a46e97";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStatisticsAsync: *const fn(self: *anyopaque, statisticsCategories: *IIterable(HSTRING), _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        CheckHealthAsync: *const fn(self: *anyopaque, level: UnifiedPosHealthCheckLevel, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        CheckPowerStatusAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(LineDisplayPowerStatus)) callconv(.winapi) HRESULT,
        add_StatusUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedLineDisplay,LineDisplayStatusUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_SupportedScreenSizesInCharacters: *const fn(self: *anyopaque, _r: **IVectorView(Size)) callconv(.winapi) HRESULT,
        get_MaxBitmapSizeInPixels: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_SupportedCharacterSets: *const fn(self: *anyopaque, _r: **IVectorView(i32)) callconv(.winapi) HRESULT,
        get_CustomGlyphs: *const fn(self: *anyopaque, _r: **LineDisplayCustomGlyphs) callconv(.winapi) HRESULT,
        GetAttributes: *const fn(self: *anyopaque, _r: **LineDisplayAttributes) callconv(.winapi) HRESULT,
        TryUpdateAttributesAsync: *const fn(self: *anyopaque, attributes: *LineDisplayAttributes, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TrySetDescriptorAsync: *const fn(self: *anyopaque, descriptor: u32, descriptorState: LineDisplayDescriptorState, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryClearDescriptorsAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryCreateWindowAsync: *const fn(self: *anyopaque, viewport: Rect, windowSize: Size, _r: **IAsyncOperation(LineDisplayWindow)) callconv(.winapi) HRESULT,
        TryStoreStorageFileBitmapAsync: *const fn(self: *anyopaque, bitmap: *StorageFile, _r: **IAsyncOperation(LineDisplayStoredBitmap)) callconv(.winapi) HRESULT,
        TryStoreStorageFileBitmapAsyncWithVerticalAlignment: *const fn(self: *anyopaque, bitmap: *StorageFile, horizontalAlignment: LineDisplayHorizontalAlignment, verticalAlignment: LineDisplayVerticalAlignment, _r: **IAsyncOperation(LineDisplayStoredBitmap)) callconv(.winapi) HRESULT,
        TryStoreStorageFileBitmapAsyncWithWidthInPixels: *const fn(self: *anyopaque, bitmap: *StorageFile, horizontalAlignment: LineDisplayHorizontalAlignment, verticalAlignment: LineDisplayVerticalAlignment, widthInPixels: i32, _r: **IAsyncOperation(LineDisplayStoredBitmap)) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedLineDisplay3 = extern struct {
    vtable: *const VTable,
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(ClaimedLineDisplay,ClaimedLineDisplayClosedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedLineDisplay3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "642ecd92-e9d4-4ecc-af75-329c274cd18f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedLineDisplay,ClaimedLineDisplayClosedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedLineDisplayClosedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedLineDisplayClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f915f364-d3d5-4f10-b511-90939edfacd8";
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
pub const IClaimedLineDisplayStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(ClaimedLineDisplay) {
        var _r: *IAsyncOperation(ClaimedLineDisplay) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This(), connectionTypes: PosConnectionTypes) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), connectionTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedLineDisplayStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "78ca98fb-8b6b-4973-86f0-3e570c351825";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(ClaimedLineDisplay)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, connectionTypes: PosConnectionTypes, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedMagneticStripeReader = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDisabledOnDataReceived(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDisabledOnDataReceived(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDisabledOnDataReceived(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisabledOnDataReceived(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDecodeDataEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDecodeDataEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDecodeDataEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDecodeDataEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDeviceAuthenticated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDeviceAuthenticated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDataEncryptionAlgorithm(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_DataEncryptionAlgorithm(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDataEncryptionAlgorithm(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DataEncryptionAlgorithm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTracksToRead(self: *@This(), value: MagneticStripeReaderTrackIds) core.HResult!void {
        const _c = self.vtable.put_TracksToRead(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTracksToRead(self: *@This()) core.HResult!MagneticStripeReaderTrackIds {
        var _r: MagneticStripeReaderTrackIds = undefined;
        const _c = self.vtable.get_TracksToRead(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsTransmitSentinelsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsTransmitSentinelsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsTransmitSentinelsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTransmitSentinelsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnableAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.EnableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisableAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DisableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetainDevice(self: *@This()) core.HResult!void {
        const _c = self.vtable.RetainDevice(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetErrorReportingType(self: *@This(), value: MagneticStripeReaderErrorReportingType) core.HResult!void {
        const _c = self.vtable.SetErrorReportingType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RetrieveDeviceAuthenticationDataAsync(self: *@This()) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.RetrieveDeviceAuthenticationDataAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AuthenticateDeviceAsync(self: *@This(), responseToken: [*]u8) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AuthenticateDeviceAsync(@ptrCast(self), responseToken, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DeAuthenticateDeviceAsync(self: *@This(), responseToken: [*]u8) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.DeAuthenticateDeviceAsync(@ptrCast(self), responseToken, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateKeyAsync(self: *@This(), key: HSTRING, keyName: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UpdateKeyAsync(@ptrCast(self), key, keyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ResetStatisticsAsync(@ptrCast(self), statisticsCategories, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateStatisticsAsync(self: *@This(), statistics: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UpdateStatisticsAsync(@ptrCast(self), statistics, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addBankCardDataReceived(self: *@This(), handler: *TypedEventHandler(ClaimedMagneticStripeReader,MagneticStripeReaderBankCardDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BankCardDataReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBankCardDataReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BankCardDataReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAamvaCardDataReceived(self: *@This(), handler: *TypedEventHandler(ClaimedMagneticStripeReader,MagneticStripeReaderAamvaCardDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AamvaCardDataReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAamvaCardDataReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AamvaCardDataReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVendorSpecificDataReceived(self: *@This(), handler: *TypedEventHandler(ClaimedMagneticStripeReader,MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VendorSpecificDataReceived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVendorSpecificDataReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VendorSpecificDataReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addReleaseDeviceRequested(self: *@This(), handler: *EventHandler(ClaimedMagneticStripeReader)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReleaseDeviceRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReleaseDeviceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReleaseDeviceRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addErrorOccurred(self: *@This(), handler: *TypedEventHandler(ClaimedMagneticStripeReader,MagneticStripeReaderErrorOccurredEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ErrorOccurred(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeErrorOccurred(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ErrorOccurred(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedMagneticStripeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "475ca8f3-9417-48bc-b9d7-4163a7844c02";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDisabledOnDataReceived: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsDisabledOnDataReceived: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDecodeDataEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsDecodeDataEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDeviceAuthenticated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DataEncryptionAlgorithm: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_DataEncryptionAlgorithm: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_TracksToRead: *const fn(self: *anyopaque, value: MagneticStripeReaderTrackIds) callconv(.winapi) HRESULT,
        get_TracksToRead: *const fn(self: *anyopaque, _r: *MagneticStripeReaderTrackIds) callconv(.winapi) HRESULT,
        put_IsTransmitSentinelsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsTransmitSentinelsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        EnableAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DisableAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RetainDevice: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetErrorReportingType: *const fn(self: *anyopaque, value: MagneticStripeReaderErrorReportingType) callconv(.winapi) HRESULT,
        RetrieveDeviceAuthenticationDataAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
        AuthenticateDeviceAsync: *const fn(self: *anyopaque, responseToken: [*]u8, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        DeAuthenticateDeviceAsync: *const fn(self: *anyopaque, responseToken: [*]u8, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        UpdateKeyAsync: *const fn(self: *anyopaque, key: HSTRING, keyName: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ResetStatisticsAsync: *const fn(self: *anyopaque, statisticsCategories: *IIterable(HSTRING), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        UpdateStatisticsAsync: *const fn(self: *anyopaque, statistics: *IIterable(IKeyValuePair(HSTRING,HSTRING)), _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_BankCardDataReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedMagneticStripeReader,MagneticStripeReaderBankCardDataReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BankCardDataReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AamvaCardDataReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedMagneticStripeReader,MagneticStripeReaderAamvaCardDataReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AamvaCardDataReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_VendorSpecificDataReceived: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedMagneticStripeReader,MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VendorSpecificDataReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ReleaseDeviceRequested: *const fn(self: *anyopaque, handler: *EventHandler(ClaimedMagneticStripeReader), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReleaseDeviceRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ErrorOccurred: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedMagneticStripeReader,MagneticStripeReaderErrorOccurredEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ErrorOccurred: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedMagneticStripeReader2 = extern struct {
    vtable: *const VTable,
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(ClaimedMagneticStripeReader,ClaimedMagneticStripeReaderClosedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedMagneticStripeReader2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "236fafdf-e2dc-4d7d-9c78-060df2bf2928";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedMagneticStripeReader,ClaimedMagneticStripeReaderClosedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedMagneticStripeReaderClosedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedMagneticStripeReaderClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14ada93a-adcd-4c80-acda-c3eaed2647e1";
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
pub const IClaimedPosPrinter = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCharacterSet(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CharacterSet(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCharacterSet(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CharacterSet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCoverOpen(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCoverOpen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCharacterSetMappingEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCharacterSetMappingEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCharacterSetMappingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCharacterSetMappingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMapMode(self: *@This(), value: PosPrinterMapMode) core.HResult!void {
        const _c = self.vtable.put_MapMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMapMode(self: *@This()) core.HResult!PosPrinterMapMode {
        var _r: PosPrinterMapMode = undefined;
        const _c = self.vtable.get_MapMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReceipt(self: *@This()) core.HResult!*ClaimedReceiptPrinter {
        var _r: *ClaimedReceiptPrinter = undefined;
        const _c = self.vtable.get_Receipt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSlip(self: *@This()) core.HResult!*ClaimedSlipPrinter {
        var _r: *ClaimedSlipPrinter = undefined;
        const _c = self.vtable.get_Slip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJournal(self: *@This()) core.HResult!*ClaimedJournalPrinter {
        var _r: *ClaimedJournalPrinter = undefined;
        const _c = self.vtable.get_Journal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.EnableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisableAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.DisableAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetainDeviceAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RetainDeviceAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ResetStatisticsAsync(@ptrCast(self), statisticsCategories, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateStatisticsAsync(self: *@This(), statistics: *IIterable(IKeyValuePair(HSTRING,HSTRING))) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.UpdateStatisticsAsync(@ptrCast(self), statistics, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addReleaseDeviceRequested(self: *@This(), handler: *TypedEventHandler(ClaimedPosPrinter,PosPrinterReleaseDeviceRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ReleaseDeviceRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeReleaseDeviceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ReleaseDeviceRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedPosPrinter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d64ce0c-e03e-4b14-a38e-c28c34b86353";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CharacterSet: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_CharacterSet: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_IsCoverOpen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCharacterSetMappingEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsCharacterSetMappingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_MapMode: *const fn(self: *anyopaque, value: PosPrinterMapMode) callconv(.winapi) HRESULT,
        get_MapMode: *const fn(self: *anyopaque, _r: *PosPrinterMapMode) callconv(.winapi) HRESULT,
        get_Receipt: *const fn(self: *anyopaque, _r: **ClaimedReceiptPrinter) callconv(.winapi) HRESULT,
        get_Slip: *const fn(self: *anyopaque, _r: **ClaimedSlipPrinter) callconv(.winapi) HRESULT,
        get_Journal: *const fn(self: *anyopaque, _r: **ClaimedJournalPrinter) callconv(.winapi) HRESULT,
        EnableAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        DisableAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RetainDeviceAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ResetStatisticsAsync: *const fn(self: *anyopaque, statisticsCategories: *IIterable(HSTRING), _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        UpdateStatisticsAsync: *const fn(self: *anyopaque, statistics: *IIterable(IKeyValuePair(HSTRING,HSTRING)), _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_ReleaseDeviceRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedPosPrinter,PosPrinterReleaseDeviceRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ReleaseDeviceRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedPosPrinter2 = extern struct {
    vtable: *const VTable,
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(ClaimedPosPrinter,ClaimedPosPrinterClosedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedPosPrinter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bf7a3d5-5198-437a-82df-589993fa77e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(ClaimedPosPrinter,ClaimedPosPrinterClosedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedPosPrinterClosedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedPosPrinterClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e2b7a27b-4d40-471d-92ed-63375b18c788";
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
pub const IClaimedReceiptPrinter = extern struct {
    vtable: *const VTable,
    pub fn getSidewaysMaxLines(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SidewaysMaxLines(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSidewaysMaxChars(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SidewaysMaxChars(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLinesToPaperCut(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_LinesToPaperCut(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_PageSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrintArea(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_PrintArea(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateJob(self: *@This()) core.HResult!*ReceiptPrintJob {
        var _r: *ReceiptPrintJob = undefined;
        const _c = self.vtable.CreateJob(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedReceiptPrinter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ad27a74-dd61-4ee2-9837-5b5d72d538b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SidewaysMaxLines: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SidewaysMaxChars: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_LinesToPaperCut: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PageSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_PrintArea: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        CreateJob: *const fn(self: *anyopaque, _r: **ReceiptPrintJob) callconv(.winapi) HRESULT,
    };
};
pub const IClaimedSlipPrinter = extern struct {
    vtable: *const VTable,
    pub fn getSidewaysMaxLines(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SidewaysMaxLines(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSidewaysMaxChars(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SidewaysMaxChars(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxLines(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxLines(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLinesNearEndToEnd(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_LinesNearEndToEnd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrintSide(self: *@This()) core.HResult!PosPrinterPrintSide {
        var _r: PosPrinterPrintSide = undefined;
        const _c = self.vtable.get_PrintSide(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPageSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_PageSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrintArea(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_PrintArea(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OpenJaws(self: *@This()) core.HResult!void {
        const _c = self.vtable.OpenJaws(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CloseJaws(self: *@This()) core.HResult!void {
        const _c = self.vtable.CloseJaws(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertSlipAsync(self: *@This(), timeout: TimeSpan) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.InsertSlipAsync(@ptrCast(self), timeout, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveSlipAsync(self: *@This(), timeout: TimeSpan) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RemoveSlipAsync(@ptrCast(self), timeout, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ChangePrintSide(self: *@This(), printSide: PosPrinterPrintSide) core.HResult!void {
        const _c = self.vtable.ChangePrintSide(@ptrCast(self), printSide);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateJob(self: *@This()) core.HResult!*SlipPrintJob {
        var _r: *SlipPrintJob = undefined;
        const _c = self.vtable.CreateJob(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IClaimedSlipPrinter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd5deff2-af90-4e8a-b77b-e3ae9ca63a7f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SidewaysMaxLines: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SidewaysMaxChars: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MaxLines: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_LinesNearEndToEnd: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PrintSide: *const fn(self: *anyopaque, _r: *PosPrinterPrintSide) callconv(.winapi) HRESULT,
        get_PageSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_PrintArea: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        OpenJaws: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        CloseJaws: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        InsertSlipAsync: *const fn(self: *anyopaque, timeout: TimeSpan, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RemoveSlipAsync: *const fn(self: *anyopaque, timeout: TimeSpan, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        ChangePrintSide: *const fn(self: *anyopaque, printSide: PosPrinterPrintSide) callconv(.winapi) HRESULT,
        CreateJob: *const fn(self: *anyopaque, _r: **SlipPrintJob) callconv(.winapi) HRESULT,
    };
};
pub const ICommonClaimedPosPrinterStation = extern struct {
    vtable: *const VTable,
    pub fn putCharactersPerLine(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CharactersPerLine(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCharactersPerLine(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CharactersPerLine(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLineHeight(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_LineHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLineHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_LineHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLineSpacing(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_LineSpacing(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLineSpacing(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_LineSpacing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLineWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_LineWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsLetterQuality(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsLetterQuality(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsLetterQuality(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLetterQuality(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPaperNearEnd(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPaperNearEnd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColorCartridge(self: *@This(), value: PosPrinterColorCartridge) core.HResult!void {
        const _c = self.vtable.put_ColorCartridge(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getColorCartridge(self: *@This()) core.HResult!PosPrinterColorCartridge {
        var _r: PosPrinterColorCartridge = undefined;
        const _c = self.vtable.get_ColorCartridge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCoverOpen(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCoverOpen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCartridgeRemoved(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCartridgeRemoved(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCartridgeEmpty(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCartridgeEmpty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHeadCleaning(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHeadCleaning(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPaperEmpty(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPaperEmpty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReadyToPrint(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReadyToPrint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ValidateData(self: *@This(), data: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ValidateData(@ptrCast(self), data, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ICommonClaimedPosPrinterStation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b7eb66a8-fe8a-4cfb-8b42-e35b280cb27c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_CharactersPerLine: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_CharactersPerLine: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_LineHeight: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_LineHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_LineSpacing: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_LineSpacing: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_LineWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_IsLetterQuality: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsLetterQuality: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPaperNearEnd: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ColorCartridge: *const fn(self: *anyopaque, value: PosPrinterColorCartridge) callconv(.winapi) HRESULT,
        get_ColorCartridge: *const fn(self: *anyopaque, _r: *PosPrinterColorCartridge) callconv(.winapi) HRESULT,
        get_IsCoverOpen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCartridgeRemoved: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCartridgeEmpty: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsHeadCleaning: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPaperEmpty: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsReadyToPrint: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ValidateData: *const fn(self: *anyopaque, data: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICommonPosPrintStationCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getIsPrinterPresent(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPrinterPresent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDualColorSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDualColorSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColorCartridgeCapabilities(self: *@This()) core.HResult!PosPrinterColorCapabilities {
        var _r: PosPrinterColorCapabilities = undefined;
        const _c = self.vtable.get_ColorCartridgeCapabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCartridgeSensors(self: *@This()) core.HResult!PosPrinterCartridgeSensors {
        var _r: PosPrinterCartridgeSensors = undefined;
        const _c = self.vtable.get_CartridgeSensors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsBoldSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBoldSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsItalicSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsItalicSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsUnderlineSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUnderlineSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDoubleHighPrintSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDoubleHighPrintSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDoubleWidePrintSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDoubleWidePrintSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDoubleHighDoubleWidePrintSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDoubleHighDoubleWidePrintSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPaperEmptySensorSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPaperEmptySensorSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPaperNearEndSensorSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPaperNearEndSensorSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedCharactersPerLine(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_SupportedCharactersPerLine(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ICommonPosPrintStationCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de5b52ca-e02e-40e9-9e5e-1b488e6aacfc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPrinterPresent: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDualColorSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ColorCartridgeCapabilities: *const fn(self: *anyopaque, _r: *PosPrinterColorCapabilities) callconv(.winapi) HRESULT,
        get_CartridgeSensors: *const fn(self: *anyopaque, _r: *PosPrinterCartridgeSensors) callconv(.winapi) HRESULT,
        get_IsBoldSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsItalicSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsUnderlineSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDoubleHighPrintSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDoubleWidePrintSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDoubleHighDoubleWidePrintSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPaperEmptySensorSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPaperNearEndSensorSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedCharactersPerLine: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
    };
};
pub const ICommonReceiptSlipCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getIsBarcodeSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBarcodeSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsBitmapSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBitmapSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsLeft90RotationSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLeft90RotationSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRight90RotationSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsRight90RotationSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIs180RotationSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Is180RotationSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPrintAreaSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPrintAreaSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRuledLineCapabilities(self: *@This()) core.HResult!PosPrinterRuledLineCapabilities {
        var _r: PosPrinterRuledLineCapabilities = undefined;
        const _c = self.vtable.get_RuledLineCapabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedBarcodeRotations(self: *@This()) core.HResult!*IVectorView(PosPrinterRotation) {
        var _r: *IVectorView(PosPrinterRotation) = undefined;
        const _c = self.vtable.get_SupportedBarcodeRotations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedBitmapRotations(self: *@This()) core.HResult!*IVectorView(PosPrinterRotation) {
        var _r: *IVectorView(PosPrinterRotation) = undefined;
        const _c = self.vtable.get_SupportedBitmapRotations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ICommonReceiptSlipCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09286b8b-9873-4d05-bfbe-4727a6038f69";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsBarcodeSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsBitmapSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsLeft90RotationSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsRight90RotationSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Is180RotationSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPrintAreaSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_RuledLineCapabilities: *const fn(self: *anyopaque, _r: *PosPrinterRuledLineCapabilities) callconv(.winapi) HRESULT,
        get_SupportedBarcodeRotations: *const fn(self: *anyopaque, _r: **IVectorView(PosPrinterRotation)) callconv(.winapi) HRESULT,
        get_SupportedBitmapRotations: *const fn(self: *anyopaque, _r: **IVectorView(PosPrinterRotation)) callconv(.winapi) HRESULT,
    };
};
pub const IJournalPrintJob = extern struct {
    vtable: *const VTable,
    pub fn Print(self: *@This(), data: HSTRING, printOptions: *PosPrinterPrintOptions) core.HResult!void {
        const _c = self.vtable.Print(@ptrCast(self), data, printOptions);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FeedPaperByLine(self: *@This(), lineCount: i32) core.HResult!void {
        const _c = self.vtable.FeedPaperByLine(@ptrCast(self), lineCount);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FeedPaperByMapModeUnit(self: *@This(), distance: i32) core.HResult!void {
        const _c = self.vtable.FeedPaperByMapModeUnit(@ptrCast(self), distance);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IJournalPrintJob";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f4f2864-f3f0-55d0-8c39-74cc91783eed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Print: *const fn(self: *anyopaque, data: HSTRING, printOptions: *PosPrinterPrintOptions) callconv(.winapi) HRESULT,
        FeedPaperByLine: *const fn(self: *anyopaque, lineCount: i32) callconv(.winapi) HRESULT,
        FeedPaperByMapModeUnit: *const fn(self: *anyopaque, distance: i32) callconv(.winapi) HRESULT,
    };
};
pub const IJournalPrinterCapabilities = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IJournalPrinterCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b5ccc43-e047-4463-bb58-17b5ba1d8056";
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
pub const IJournalPrinterCapabilities2 = extern struct {
    vtable: *const VTable,
    pub fn getIsReverseVideoSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReverseVideoSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStrikethroughSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStrikethroughSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSuperscriptSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSuperscriptSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSubscriptSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSubscriptSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReversePaperFeedByLineSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReversePaperFeedByLineSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReversePaperFeedByMapModeUnitSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReversePaperFeedByMapModeUnitSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IJournalPrinterCapabilities2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03b0b645-33b8-533b-baaa-a4389283ab0a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsReverseVideoSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStrikethroughSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSuperscriptSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSubscriptSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsReversePaperFeedByLineSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsReversePaperFeedByMapModeUnitSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplay = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapabilities(self: *@This()) core.HResult!*LineDisplayCapabilities {
        var _r: *LineDisplayCapabilities = undefined;
        const _c = self.vtable.get_Capabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysicalDeviceName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhysicalDeviceName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhysicalDeviceDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PhysicalDeviceDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceControlDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceControlDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceControlVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceControlVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceServiceVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceServiceVersion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClaimAsync(self: *@This()) core.HResult!*IAsyncOperation(ClaimedLineDisplay) {
        var _r: *IAsyncOperation(ClaimedLineDisplay) = undefined;
        const _c = self.vtable.ClaimAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplay";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24f5df4e-3c99-44e2-b73f-e51be3637a8c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Capabilities: *const fn(self: *anyopaque, _r: **LineDisplayCapabilities) callconv(.winapi) HRESULT,
        get_PhysicalDeviceName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PhysicalDeviceDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceControlDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceControlVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DeviceServiceVersion: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        ClaimAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ClaimedLineDisplay)) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplay2 = extern struct {
    vtable: *const VTable,
    pub fn CheckPowerStatusAsync(self: *@This()) core.HResult!*IAsyncOperation(LineDisplayPowerStatus) {
        var _r: *IAsyncOperation(LineDisplayPowerStatus) = undefined;
        const _c = self.vtable.CheckPowerStatusAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplay2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c296a628-ef44-40f3-bd1c-b04c6a5cdc7d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CheckPowerStatusAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(LineDisplayPowerStatus)) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplayAttributes = extern struct {
    vtable: *const VTable,
    pub fn getIsPowerNotifyEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPowerNotifyEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPowerNotifyEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPowerNotifyEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBrightness(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Brightness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBrightness(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Brightness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBlinkRate(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_BlinkRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBlinkRate(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_BlinkRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScreenSizeInCharacters(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_ScreenSizeInCharacters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScreenSizeInCharacters(self: *@This(), value: Size) core.HResult!void {
        const _c = self.vtable.put_ScreenSizeInCharacters(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCharacterSet(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_CharacterSet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCharacterSet(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_CharacterSet(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCharacterSetMappingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCharacterSetMappingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCharacterSetMappingEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCharacterSetMappingEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCurrentWindow(self: *@This()) core.HResult!*LineDisplayWindow {
        var _r: *LineDisplayWindow = undefined;
        const _c = self.vtable.get_CurrentWindow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCurrentWindow(self: *@This(), value: *LineDisplayWindow) core.HResult!void {
        const _c = self.vtable.put_CurrentWindow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplayAttributes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c17de99c-229a-4c14-a6f1-b4e4b1fead92";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPowerNotifyEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPowerNotifyEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Brightness: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Brightness: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_BlinkRate: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_BlinkRate: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_ScreenSizeInCharacters: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        put_ScreenSizeInCharacters: *const fn(self: *anyopaque, value: Size) callconv(.winapi) HRESULT,
        get_CharacterSet: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_CharacterSet: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_IsCharacterSetMappingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCharacterSetMappingEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CurrentWindow: *const fn(self: *anyopaque, _r: **LineDisplayWindow) callconv(.winapi) HRESULT,
        put_CurrentWindow: *const fn(self: *anyopaque, value: *LineDisplayWindow) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplayCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getIsStatisticsReportingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStatisticsReportingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStatisticsUpdatingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStatisticsUpdatingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPowerReportingType(self: *@This()) core.HResult!UnifiedPosPowerReportingType {
        var _r: UnifiedPosPowerReportingType = undefined;
        const _c = self.vtable.get_PowerReportingType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanChangeScreenSize(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanChangeScreenSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanDisplayBitmaps(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanDisplayBitmaps(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanReadCharacterAtCursor(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanReadCharacterAtCursor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanMapCharacterSets(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanMapCharacterSets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanDisplayCustomGlyphs(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanDisplayCustomGlyphs(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanReverse(self: *@This()) core.HResult!LineDisplayTextAttributeGranularity {
        var _r: LineDisplayTextAttributeGranularity = undefined;
        const _c = self.vtable.get_CanReverse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanBlink(self: *@This()) core.HResult!LineDisplayTextAttributeGranularity {
        var _r: LineDisplayTextAttributeGranularity = undefined;
        const _c = self.vtable.get_CanBlink(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanChangeBlinkRate(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanChangeBlinkRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsBrightnessSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBrightnessSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCursorSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCursorSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHorizontalMarqueeSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHorizontalMarqueeSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsVerticalMarqueeSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVerticalMarqueeSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInterCharacterWaitSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInterCharacterWaitSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedDescriptors(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SupportedDescriptors(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedWindows(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SupportedWindows(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplayCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a15b5d1-8dc5-4b9c-9172-303e47b70c55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsStatisticsReportingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStatisticsUpdatingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PowerReportingType: *const fn(self: *anyopaque, _r: *UnifiedPosPowerReportingType) callconv(.winapi) HRESULT,
        get_CanChangeScreenSize: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanDisplayBitmaps: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanReadCharacterAtCursor: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanMapCharacterSets: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanDisplayCustomGlyphs: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanReverse: *const fn(self: *anyopaque, _r: *LineDisplayTextAttributeGranularity) callconv(.winapi) HRESULT,
        get_CanBlink: *const fn(self: *anyopaque, _r: *LineDisplayTextAttributeGranularity) callconv(.winapi) HRESULT,
        get_CanChangeBlinkRate: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsBrightnessSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCursorSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsHorizontalMarqueeSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsVerticalMarqueeSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsInterCharacterWaitSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SupportedDescriptors: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SupportedWindows: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplayCursor = extern struct {
    vtable: *const VTable,
    pub fn getCanCustomize(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanCustomize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsBlinkSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBlinkSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsBlockSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBlockSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHalfBlockSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHalfBlockSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsUnderlineSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUnderlineSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReverseSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReverseSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOtherSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOtherSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAttributes(self: *@This()) core.HResult!*LineDisplayCursorAttributes {
        var _r: *LineDisplayCursorAttributes = undefined;
        const _c = self.vtable.GetAttributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUpdateAttributesAsync(self: *@This(), attributes: *LineDisplayCursorAttributes) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryUpdateAttributesAsync(@ptrCast(self), attributes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplayCursor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ecdffc45-754a-4e3b-ab2b-151181085605";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanCustomize: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsBlinkSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsBlockSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsHalfBlockSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsUnderlineSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsReverseSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsOtherSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetAttributes: *const fn(self: *anyopaque, _r: **LineDisplayCursorAttributes) callconv(.winapi) HRESULT,
        TryUpdateAttributesAsync: *const fn(self: *anyopaque, attributes: *LineDisplayCursorAttributes, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplayCursorAttributes = extern struct {
    vtable: *const VTable,
    pub fn getIsBlinkEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBlinkEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsBlinkEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsBlinkEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCursorType(self: *@This()) core.HResult!LineDisplayCursorType {
        var _r: LineDisplayCursorType = undefined;
        const _c = self.vtable.get_CursorType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCursorType(self: *@This(), value: LineDisplayCursorType) core.HResult!void {
        const _c = self.vtable.put_CursorType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAutoAdvanceEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAutoAdvanceEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAutoAdvanceEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAutoAdvanceEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPosition(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_Position(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplayCursorAttributes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e2d54fe-4ffd-4190-aae1-ce285f20c896";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsBlinkEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsBlinkEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CursorType: *const fn(self: *anyopaque, _r: *LineDisplayCursorType) callconv(.winapi) HRESULT,
        put_CursorType: *const fn(self: *anyopaque, value: LineDisplayCursorType) callconv(.winapi) HRESULT,
        get_IsAutoAdvanceEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAutoAdvanceEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_Position: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplayCustomGlyphs = extern struct {
    vtable: *const VTable,
    pub fn getSizeInPixels(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_SizeInPixels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedGlyphCodes(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_SupportedGlyphCodes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryRedefineAsync(self: *@This(), glyphCode: u32, glyphData: *IBuffer) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryRedefineAsync(@ptrCast(self), glyphCode, glyphData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplayCustomGlyphs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2257f63c-f263-44f1-a1a0-e750a6a0ec54";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SizeInPixels: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_SupportedGlyphCodes: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        TryRedefineAsync: *const fn(self: *anyopaque, glyphCode: u32, glyphData: *IBuffer, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplayMarquee = extern struct {
    vtable: *const VTable,
    pub fn getFormat(self: *@This()) core.HResult!LineDisplayMarqueeFormat {
        var _r: LineDisplayMarqueeFormat = undefined;
        const _c = self.vtable.get_Format(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFormat(self: *@This(), value: LineDisplayMarqueeFormat) core.HResult!void {
        const _c = self.vtable.put_Format(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRepeatWaitInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RepeatWaitInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRepeatWaitInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_RepeatWaitInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScrollWaitInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_ScrollWaitInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScrollWaitInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_ScrollWaitInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryStartScrollingAsync(self: *@This(), direction: LineDisplayScrollDirection) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryStartScrollingAsync(@ptrCast(self), direction, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryStopScrollingAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryStopScrollingAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplayMarquee";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a3d33e3e-f46a-4b7a-bc21-53eb3b57f8b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Format: *const fn(self: *anyopaque, _r: *LineDisplayMarqueeFormat) callconv(.winapi) HRESULT,
        put_Format: *const fn(self: *anyopaque, value: LineDisplayMarqueeFormat) callconv(.winapi) HRESULT,
        get_RepeatWaitInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_RepeatWaitInterval: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_ScrollWaitInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_ScrollWaitInterval: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        TryStartScrollingAsync: *const fn(self: *anyopaque, direction: LineDisplayScrollDirection, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryStopScrollingAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplayStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(LineDisplay) {
        var _r: *IAsyncOperation(LineDisplay) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(LineDisplay) {
        var _r: *IAsyncOperation(LineDisplay) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This(), connectionTypes: PosConnectionTypes) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), connectionTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplayStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "022dc0b6-11b0-4690-9547-0b39c5af2114";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(LineDisplay)) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(LineDisplay)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, connectionTypes: PosConnectionTypes, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplayStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getStatisticsCategorySelector(self: *@This()) core.HResult!*LineDisplayStatisticsCategorySelector {
        var _r: *LineDisplayStatisticsCategorySelector = undefined;
        const _c = self.vtable.get_StatisticsCategorySelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplayStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "600c3f1c-77ab-4968-a7de-c02ff169f2cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StatisticsCategorySelector: *const fn(self: *anyopaque, _r: **LineDisplayStatisticsCategorySelector) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplayStatisticsCategorySelector = extern struct {
    vtable: *const VTable,
    pub fn getAllStatistics(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AllStatistics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUnifiedPosStatistics(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UnifiedPosStatistics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getManufacturerStatistics(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ManufacturerStatistics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplayStatisticsCategorySelector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b521c46b-9274-4d24-94f3-b6017b832444";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllStatistics: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_UnifiedPosStatistics: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ManufacturerStatistics: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplayStatusUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!LineDisplayPowerStatus {
        var _r: LineDisplayPowerStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplayStatusUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ddd57c1a-86fb-4eba-93d1-6f5eda52b752";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *LineDisplayPowerStatus) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplayStoredBitmap = extern struct {
    vtable: *const VTable,
    pub fn getEscapeSequence(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EscapeSequence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDeleteAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryDeleteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplayStoredBitmap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f621515b-d81e-43ba-bf1b-bcfa3c785ba0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EscapeSequence: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        TryDeleteAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplayWindow = extern struct {
    vtable: *const VTable,
    pub fn getSizeInCharacters(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_SizeInCharacters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInterCharacterWaitInterval(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_InterCharacterWaitInterval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInterCharacterWaitInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_InterCharacterWaitInterval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryRefreshAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryRefreshAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDisplayTextAsyncWithDisplayAttribute(self: *@This(), text: HSTRING, displayAttribute: LineDisplayTextAttribute) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryDisplayTextAsyncWithDisplayAttribute(@ptrCast(self), text, displayAttribute, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDisplayTextAsyncWithStartPosition(self: *@This(), text: HSTRING, displayAttribute: LineDisplayTextAttribute, startPosition: Point) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryDisplayTextAsyncWithStartPosition(@ptrCast(self), text, displayAttribute, startPosition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDisplayTextAsync(self: *@This(), text: HSTRING) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryDisplayTextAsync(@ptrCast(self), text, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryScrollTextAsync(self: *@This(), direction: LineDisplayScrollDirection, numberOfColumnsOrRows: u32) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryScrollTextAsync(@ptrCast(self), direction, numberOfColumnsOrRows, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryClearTextAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryClearTextAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplayWindow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d21feef4-2364-4be5-bee1-851680af4964";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SizeInCharacters: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_InterCharacterWaitInterval: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_InterCharacterWaitInterval: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        TryRefreshAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryDisplayTextAsyncWithDisplayAttribute: *const fn(self: *anyopaque, text: HSTRING, displayAttribute: LineDisplayTextAttribute, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryDisplayTextAsyncWithStartPosition: *const fn(self: *anyopaque, text: HSTRING, displayAttribute: LineDisplayTextAttribute, startPosition: Point, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryDisplayTextAsync: *const fn(self: *anyopaque, text: HSTRING, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryScrollTextAsync: *const fn(self: *anyopaque, direction: LineDisplayScrollDirection, numberOfColumnsOrRows: u32, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryClearTextAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const ILineDisplayWindow2 = extern struct {
    vtable: *const VTable,
    pub fn getCursor(self: *@This()) core.HResult!*LineDisplayCursor {
        var _r: *LineDisplayCursor = undefined;
        const _c = self.vtable.get_Cursor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMarquee(self: *@This()) core.HResult!*LineDisplayMarquee {
        var _r: *LineDisplayMarquee = undefined;
        const _c = self.vtable.get_Marquee(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReadCharacterAtCursorAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.ReadCharacterAtCursorAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDisplayStoredBitmapAtCursorAsync(self: *@This(), bitmap: *LineDisplayStoredBitmap) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryDisplayStoredBitmapAtCursorAsync(@ptrCast(self), bitmap, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDisplayStorageFileBitmapAtCursorAsync(self: *@This(), bitmap: *StorageFile) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryDisplayStorageFileBitmapAtCursorAsync(@ptrCast(self), bitmap, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDisplayStorageFileBitmapAtCursorAsyncWithVerticalAlignment(self: *@This(), bitmap: *StorageFile, horizontalAlignment: LineDisplayHorizontalAlignment, verticalAlignment: LineDisplayVerticalAlignment) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryDisplayStorageFileBitmapAtCursorAsyncWithVerticalAlignment(@ptrCast(self), bitmap, horizontalAlignment, verticalAlignment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDisplayStorageFileBitmapAtCursorAsyncWithWidthInPixels(self: *@This(), bitmap: *StorageFile, horizontalAlignment: LineDisplayHorizontalAlignment, verticalAlignment: LineDisplayVerticalAlignment, widthInPixels: i32) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryDisplayStorageFileBitmapAtCursorAsyncWithWidthInPixels(@ptrCast(self), bitmap, horizontalAlignment, verticalAlignment, widthInPixels, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDisplayStorageFileBitmapAtPointAsync(self: *@This(), bitmap: *StorageFile, offsetInPixels: Point) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryDisplayStorageFileBitmapAtPointAsync(@ptrCast(self), bitmap, offsetInPixels, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryDisplayStorageFileBitmapAtPointAsyncWithOffsetInPixelsWithWidthInPixels(self: *@This(), bitmap: *StorageFile, offsetInPixels: Point, widthInPixels: i32) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryDisplayStorageFileBitmapAtPointAsyncWithOffsetInPixelsWithWidthInPixels(@ptrCast(self), bitmap, offsetInPixels, widthInPixels, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ILineDisplayWindow2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a95ce2e6-bdd8-4365-8e11-de94de8dff02";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Cursor: *const fn(self: *anyopaque, _r: **LineDisplayCursor) callconv(.winapi) HRESULT,
        get_Marquee: *const fn(self: *anyopaque, _r: **LineDisplayMarquee) callconv(.winapi) HRESULT,
        ReadCharacterAtCursorAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
        TryDisplayStoredBitmapAtCursorAsync: *const fn(self: *anyopaque, bitmap: *LineDisplayStoredBitmap, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryDisplayStorageFileBitmapAtCursorAsync: *const fn(self: *anyopaque, bitmap: *StorageFile, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryDisplayStorageFileBitmapAtCursorAsyncWithVerticalAlignment: *const fn(self: *anyopaque, bitmap: *StorageFile, horizontalAlignment: LineDisplayHorizontalAlignment, verticalAlignment: LineDisplayVerticalAlignment, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryDisplayStorageFileBitmapAtCursorAsyncWithWidthInPixels: *const fn(self: *anyopaque, bitmap: *StorageFile, horizontalAlignment: LineDisplayHorizontalAlignment, verticalAlignment: LineDisplayVerticalAlignment, widthInPixels: i32, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryDisplayStorageFileBitmapAtPointAsync: *const fn(self: *anyopaque, bitmap: *StorageFile, offsetInPixels: Point, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryDisplayStorageFileBitmapAtPointAsyncWithOffsetInPixelsWithWidthInPixels: *const fn(self: *anyopaque, bitmap: *StorageFile, offsetInPixels: Point, widthInPixels: i32, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IMagneticStripeReader = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapabilities(self: *@This()) core.HResult!*MagneticStripeReaderCapabilities {
        var _r: *MagneticStripeReaderCapabilities = undefined;
        const _c = self.vtable.get_Capabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedCardTypes(self: *@This()) core.HResult![*]u32 {
        var _r: [*]u32 = undefined;
        const _c = self.vtable.get_SupportedCardTypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceAuthenticationProtocol(self: *@This()) core.HResult!MagneticStripeReaderAuthenticationProtocol {
        var _r: MagneticStripeReaderAuthenticationProtocol = undefined;
        const _c = self.vtable.get_DeviceAuthenticationProtocol(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CheckHealthAsync(self: *@This(), level: UnifiedPosHealthCheckLevel) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.CheckHealthAsync(@ptrCast(self), level, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClaimReaderAsync(self: *@This()) core.HResult!*IAsyncOperation(ClaimedMagneticStripeReader) {
        var _r: *IAsyncOperation(ClaimedMagneticStripeReader) = undefined;
        const _c = self.vtable.ClaimReaderAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RetrieveStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IBuffer) {
        var _r: *IAsyncOperation(IBuffer) = undefined;
        const _c = self.vtable.RetrieveStatisticsAsync(@ptrCast(self), statisticsCategories, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetErrorReportingType(self: *@This()) core.HResult!MagneticStripeReaderErrorReportingType {
        var _r: MagneticStripeReaderErrorReportingType = undefined;
        const _c = self.vtable.GetErrorReportingType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStatusUpdated(self: *@This(), handler: *TypedEventHandler(MagneticStripeReader,MagneticStripeReaderStatusUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IMagneticStripeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a92b015-47c3-468a-9333-0c6517574883";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Capabilities: *const fn(self: *anyopaque, _r: **MagneticStripeReaderCapabilities) callconv(.winapi) HRESULT,
        get_SupportedCardTypes: *const fn(self: *anyopaque, _r: *[*]u32) callconv(.winapi) HRESULT,
        get_DeviceAuthenticationProtocol: *const fn(self: *anyopaque, _r: *MagneticStripeReaderAuthenticationProtocol) callconv(.winapi) HRESULT,
        CheckHealthAsync: *const fn(self: *anyopaque, level: UnifiedPosHealthCheckLevel, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        ClaimReaderAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ClaimedMagneticStripeReader)) callconv(.winapi) HRESULT,
        RetrieveStatisticsAsync: *const fn(self: *anyopaque, statisticsCategories: *IIterable(HSTRING), _r: **IAsyncOperation(IBuffer)) callconv(.winapi) HRESULT,
        GetErrorReportingType: *const fn(self: *anyopaque, _r: *MagneticStripeReaderErrorReportingType) callconv(.winapi) HRESULT,
        add_StatusUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(MagneticStripeReader,MagneticStripeReaderStatusUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMagneticStripeReaderAamvaCardDataReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReport(self: *@This()) core.HResult!*MagneticStripeReaderReport {
        var _r: *MagneticStripeReaderReport = undefined;
        const _c = self.vtable.get_Report(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLicenseNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_LicenseNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExpirationDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRestrictions(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Restrictions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClass(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Class(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndorsements(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Endorsements(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBirthDate(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BirthDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirstName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FirstName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSurname(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Surname(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSuffix(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Suffix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGender(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Gender(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHairColor(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HairColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEyeColor(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EyeColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeight(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Height(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWeight(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Weight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAddress(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Address(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCity(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_City(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPostalCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PostalCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IMagneticStripeReaderAamvaCardDataReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a4bbd51-c316-4910-87f3-7a62ba862d31";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Report: *const fn(self: *anyopaque, _r: **MagneticStripeReaderReport) callconv(.winapi) HRESULT,
        get_LicenseNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ExpirationDate: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Restrictions: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Class: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Endorsements: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BirthDate: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FirstName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Surname: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Suffix: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Gender: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HairColor: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_EyeColor: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Weight: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Address: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_City: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_PostalCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMagneticStripeReaderBankCardDataReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReport(self: *@This()) core.HResult!*MagneticStripeReaderReport {
        var _r: *MagneticStripeReaderReport = undefined;
        const _c = self.vtable.get_Report(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccountNumber(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AccountNumber(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExpirationDate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getServiceCode(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ServiceCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFirstName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_FirstName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMiddleInitial(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MiddleInitial(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSurname(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Surname(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSuffix(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Suffix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IMagneticStripeReaderBankCardDataReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e958823-a31a-4763-882c-23725e39b08e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Report: *const fn(self: *anyopaque, _r: **MagneticStripeReaderReport) callconv(.winapi) HRESULT,
        get_AccountNumber: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ExpirationDate: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ServiceCode: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_FirstName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_MiddleInitial: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Surname: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Suffix: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMagneticStripeReaderCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getCardAuthentication(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CardAuthentication(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedEncryptionAlgorithms(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SupportedEncryptionAlgorithms(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthenticationLevel(self: *@This()) core.HResult!MagneticStripeReaderAuthenticationLevel {
        var _r: MagneticStripeReaderAuthenticationLevel = undefined;
        const _c = self.vtable.get_AuthenticationLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsIsoSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIsoSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsJisOneSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsJisOneSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsJisTwoSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsJisTwoSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPowerReportingType(self: *@This()) core.HResult!UnifiedPosPowerReportingType {
        var _r: UnifiedPosPowerReportingType = undefined;
        const _c = self.vtable.get_PowerReportingType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStatisticsReportingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStatisticsReportingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStatisticsUpdatingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStatisticsUpdatingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTrackDataMaskingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTrackDataMaskingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTransmitSentinelsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTransmitSentinelsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IMagneticStripeReaderCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7128809c-c440-44a2-a467-469175d02896";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CardAuthentication: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SupportedEncryptionAlgorithms: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AuthenticationLevel: *const fn(self: *anyopaque, _r: *MagneticStripeReaderAuthenticationLevel) callconv(.winapi) HRESULT,
        get_IsIsoSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsJisOneSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsJisTwoSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PowerReportingType: *const fn(self: *anyopaque, _r: *UnifiedPosPowerReportingType) callconv(.winapi) HRESULT,
        get_IsStatisticsReportingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStatisticsUpdatingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsTrackDataMaskingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsTransmitSentinelsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMagneticStripeReaderCardTypesStatics = extern struct {
    vtable: *const VTable,
    pub fn getUnknown(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Unknown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBank(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Bank(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAamva(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Aamva(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedBase(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExtendedBase(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IMagneticStripeReaderCardTypesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "528f2c5d-2986-474f-8454-7ccd05928d5f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Unknown: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Bank: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Aamva: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ExtendedBase: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IMagneticStripeReaderEncryptionAlgorithmsStatics = extern struct {
    vtable: *const VTable,
    pub fn getNone(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_None(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTripleDesDukpt(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TripleDesDukpt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedBase(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExtendedBase(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IMagneticStripeReaderEncryptionAlgorithmsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53b57350-c3db-4754-9c00-41392374a109";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_None: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_TripleDesDukpt: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ExtendedBase: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IMagneticStripeReaderErrorOccurredEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getTrack1Status(self: *@This()) core.HResult!MagneticStripeReaderTrackErrorType {
        var _r: MagneticStripeReaderTrackErrorType = undefined;
        const _c = self.vtable.get_Track1Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrack2Status(self: *@This()) core.HResult!MagneticStripeReaderTrackErrorType {
        var _r: MagneticStripeReaderTrackErrorType = undefined;
        const _c = self.vtable.get_Track2Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrack3Status(self: *@This()) core.HResult!MagneticStripeReaderTrackErrorType {
        var _r: MagneticStripeReaderTrackErrorType = undefined;
        const _c = self.vtable.get_Track3Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrack4Status(self: *@This()) core.HResult!MagneticStripeReaderTrackErrorType {
        var _r: MagneticStripeReaderTrackErrorType = undefined;
        const _c = self.vtable.get_Track4Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorData(self: *@This()) core.HResult!*UnifiedPosErrorData {
        var _r: *UnifiedPosErrorData = undefined;
        const _c = self.vtable.get_ErrorData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPartialInputData(self: *@This()) core.HResult!*MagneticStripeReaderReport {
        var _r: *MagneticStripeReaderReport = undefined;
        const _c = self.vtable.get_PartialInputData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IMagneticStripeReaderErrorOccurredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1fedf95d-2c84-41ad-b778-f2356a789ab1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Track1Status: *const fn(self: *anyopaque, _r: *MagneticStripeReaderTrackErrorType) callconv(.winapi) HRESULT,
        get_Track2Status: *const fn(self: *anyopaque, _r: *MagneticStripeReaderTrackErrorType) callconv(.winapi) HRESULT,
        get_Track3Status: *const fn(self: *anyopaque, _r: *MagneticStripeReaderTrackErrorType) callconv(.winapi) HRESULT,
        get_Track4Status: *const fn(self: *anyopaque, _r: *MagneticStripeReaderTrackErrorType) callconv(.winapi) HRESULT,
        get_ErrorData: *const fn(self: *anyopaque, _r: **UnifiedPosErrorData) callconv(.winapi) HRESULT,
        get_PartialInputData: *const fn(self: *anyopaque, _r: **MagneticStripeReaderReport) callconv(.winapi) HRESULT,
    };
};
pub const IMagneticStripeReaderReport = extern struct {
    vtable: *const VTable,
    pub fn getCardType(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CardType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrack1(self: *@This()) core.HResult!*MagneticStripeReaderTrackData {
        var _r: *MagneticStripeReaderTrackData = undefined;
        const _c = self.vtable.get_Track1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrack2(self: *@This()) core.HResult!*MagneticStripeReaderTrackData {
        var _r: *MagneticStripeReaderTrackData = undefined;
        const _c = self.vtable.get_Track2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrack3(self: *@This()) core.HResult!*MagneticStripeReaderTrackData {
        var _r: *MagneticStripeReaderTrackData = undefined;
        const _c = self.vtable.get_Track3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTrack4(self: *@This()) core.HResult!*MagneticStripeReaderTrackData {
        var _r: *MagneticStripeReaderTrackData = undefined;
        const _c = self.vtable.get_Track4(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        var _r: *IMapView(HSTRING,HSTRING) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCardAuthenticationData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_CardAuthenticationData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCardAuthenticationDataLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CardAuthenticationDataLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdditionalSecurityInformation(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_AdditionalSecurityInformation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IMagneticStripeReaderReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a5b6047-99b0-4188-bef1-eddf79f78fe6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CardType: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Track1: *const fn(self: *anyopaque, _r: **MagneticStripeReaderTrackData) callconv(.winapi) HRESULT,
        get_Track2: *const fn(self: *anyopaque, _r: **MagneticStripeReaderTrackData) callconv(.winapi) HRESULT,
        get_Track3: *const fn(self: *anyopaque, _r: **MagneticStripeReaderTrackData) callconv(.winapi) HRESULT,
        get_Track4: *const fn(self: *anyopaque, _r: **MagneticStripeReaderTrackData) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,HSTRING)) callconv(.winapi) HRESULT,
        get_CardAuthenticationData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_CardAuthenticationDataLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AdditionalSecurityInformation: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IMagneticStripeReaderStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(MagneticStripeReader) {
        var _r: *IAsyncOperation(MagneticStripeReader) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(MagneticStripeReader) {
        var _r: *IAsyncOperation(MagneticStripeReader) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IMagneticStripeReaderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c45fab4a-efd7-4760-a5ce-15b0e47e94eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MagneticStripeReader)) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(MagneticStripeReader)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMagneticStripeReaderStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This(), connectionTypes: PosConnectionTypes) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), connectionTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IMagneticStripeReaderStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8cadc362-d667-48fa-86bc-f5ae1189262b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, connectionTypes: PosConnectionTypes, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IMagneticStripeReaderStatusUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!MagneticStripeReaderStatus {
        var _r: MagneticStripeReaderStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedStatus(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExtendedStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IMagneticStripeReaderStatusUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09cc6bb0-3262-401d-9e8a-e80d6358906b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *MagneticStripeReaderStatus) callconv(.winapi) HRESULT,
        get_ExtendedStatus: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IMagneticStripeReaderTrackData = extern struct {
    vtable: *const VTable,
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Data(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDiscretionaryData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_DiscretionaryData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEncryptedData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_EncryptedData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IMagneticStripeReaderTrackData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "104cf671-4a9d-446e-abc5-20402307ba36";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Data: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_DiscretionaryData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_EncryptedData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IMagneticStripeReaderVendorSpecificCardDataReceivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReport(self: *@This()) core.HResult!*MagneticStripeReaderReport {
        var _r: *MagneticStripeReaderReport = undefined;
        const _c = self.vtable.get_Report(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IMagneticStripeReaderVendorSpecificCardDataReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af0a5514-59cc-4a60-99e8-99a53dace5aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Report: *const fn(self: *anyopaque, _r: **MagneticStripeReaderReport) callconv(.winapi) HRESULT,
    };
};
pub const IPosPrinter = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCapabilities(self: *@This()) core.HResult!*PosPrinterCapabilities {
        var _r: *PosPrinterCapabilities = undefined;
        const _c = self.vtable.get_Capabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedCharacterSets(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_SupportedCharacterSets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedTypeFaces(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_SupportedTypeFaces(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!*PosPrinterStatus {
        var _r: *PosPrinterStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClaimPrinterAsync(self: *@This()) core.HResult!*IAsyncOperation(ClaimedPosPrinter) {
        var _r: *IAsyncOperation(ClaimedPosPrinter) = undefined;
        const _c = self.vtable.ClaimPrinterAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CheckHealthAsync(self: *@This(), level: UnifiedPosHealthCheckLevel) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.CheckHealthAsync(@ptrCast(self), level, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.GetStatisticsAsync(@ptrCast(self), statisticsCategories, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStatusUpdated(self: *@This(), handler: *TypedEventHandler(PosPrinter,PosPrinterStatusUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusUpdated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusUpdated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IPosPrinter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a03c10e-9a19-4a01-994f-12dfad6adcbf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Capabilities: *const fn(self: *anyopaque, _r: **PosPrinterCapabilities) callconv(.winapi) HRESULT,
        get_SupportedCharacterSets: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_SupportedTypeFaces: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: **PosPrinterStatus) callconv(.winapi) HRESULT,
        ClaimPrinterAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(ClaimedPosPrinter)) callconv(.winapi) HRESULT,
        CheckHealthAsync: *const fn(self: *anyopaque, level: UnifiedPosHealthCheckLevel, _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        GetStatisticsAsync: *const fn(self: *anyopaque, statisticsCategories: *IIterable(HSTRING), _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        add_StatusUpdated: *const fn(self: *anyopaque, handler: *TypedEventHandler(PosPrinter,PosPrinterStatusUpdatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusUpdated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPosPrinter2 = extern struct {
    vtable: *const VTable,
    pub fn getSupportedBarcodeSymbologies(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_SupportedBarcodeSymbologies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFontProperty(self: *@This(), typeface: HSTRING) core.HResult!*PosPrinterFontProperty {
        var _r: *PosPrinterFontProperty = undefined;
        const _c = self.vtable.GetFontProperty(@ptrCast(self), typeface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IPosPrinter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "248475e8-8b98-5517-8e48-760e86f68987";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedBarcodeSymbologies: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        GetFontProperty: *const fn(self: *anyopaque, typeface: HSTRING, _r: **PosPrinterFontProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPosPrinterCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getPowerReportingType(self: *@This()) core.HResult!UnifiedPosPowerReportingType {
        var _r: UnifiedPosPowerReportingType = undefined;
        const _c = self.vtable.get_PowerReportingType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStatisticsReportingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStatisticsReportingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStatisticsUpdatingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStatisticsUpdatingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultCharacterSet(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DefaultCharacterSet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasCoverSensor(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasCoverSensor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanMapCharacterSet(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanMapCharacterSet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTransactionSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTransactionSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReceipt(self: *@This()) core.HResult!*ReceiptPrinterCapabilities {
        var _r: *ReceiptPrinterCapabilities = undefined;
        const _c = self.vtable.get_Receipt(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSlip(self: *@This()) core.HResult!*SlipPrinterCapabilities {
        var _r: *SlipPrinterCapabilities = undefined;
        const _c = self.vtable.get_Slip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getJournal(self: *@This()) core.HResult!*JournalPrinterCapabilities {
        var _r: *JournalPrinterCapabilities = undefined;
        const _c = self.vtable.get_Journal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IPosPrinterCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cde95721-4380-4985-adc5-39db30cd93bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PowerReportingType: *const fn(self: *anyopaque, _r: *UnifiedPosPowerReportingType) callconv(.winapi) HRESULT,
        get_IsStatisticsReportingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStatisticsUpdatingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DefaultCharacterSet: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_HasCoverSensor: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanMapCharacterSet: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsTransactionSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Receipt: *const fn(self: *anyopaque, _r: **ReceiptPrinterCapabilities) callconv(.winapi) HRESULT,
        get_Slip: *const fn(self: *anyopaque, _r: **SlipPrinterCapabilities) callconv(.winapi) HRESULT,
        get_Journal: *const fn(self: *anyopaque, _r: **JournalPrinterCapabilities) callconv(.winapi) HRESULT,
    };
};
pub const IPosPrinterCharacterSetIdsStatics = extern struct {
    vtable: *const VTable,
    pub fn getUtf16LE(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Utf16LE(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAscii(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ascii(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAnsi(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Ansi(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IPosPrinterCharacterSetIdsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c709eff-709a-4fe7-b215-06a748a38b39";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Utf16LE: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ascii: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Ansi: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IPosPrinterFontProperty = extern struct {
    vtable: *const VTable,
    pub fn getTypeFace(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TypeFace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsScalableToAnySize(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsScalableToAnySize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCharacterSizes(self: *@This()) core.HResult!*IVectorView(SizeUInt32) {
        var _r: *IVectorView(SizeUInt32) = undefined;
        const _c = self.vtable.get_CharacterSizes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IPosPrinterFontProperty";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7f4e93a-f8ac-5f04-84d2-29b16d8a633c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TypeFace: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsScalableToAnySize: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CharacterSizes: *const fn(self: *anyopaque, _r: **IVectorView(SizeUInt32)) callconv(.winapi) HRESULT,
    };
};
pub const IPosPrinterJob = extern struct {
    vtable: *const VTable,
    pub fn Print(self: *@This(), data: HSTRING) core.HResult!void {
        const _c = self.vtable.Print(@ptrCast(self), data);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PrintLine(self: *@This(), data: HSTRING) core.HResult!void {
        const _c = self.vtable.PrintLine(@ptrCast(self), data);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PrintLine(self: *@This()) core.HResult!void {
        const _c = self.vtable.PrintLine(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ExecuteAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.ExecuteAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IPosPrinterJob";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a94005c-0615-4591-a58f-30f87edfe2e4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Print: *const fn(self: *anyopaque, data: HSTRING) callconv(.winapi) HRESULT,
        PrintLine: *const fn(self: *anyopaque, data: HSTRING) callconv(.winapi) HRESULT,
        PrintLine: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ExecuteAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IPosPrinterPrintOptions = extern struct {
    vtable: *const VTable,
    pub fn getTypeFace(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TypeFace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTypeFace(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TypeFace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCharacterHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CharacterHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCharacterHeight(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CharacterHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBold(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Bold(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBold(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Bold(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getItalic(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Italic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putItalic(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Italic(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUnderline(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Underline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUnderline(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Underline(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReverseVideo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ReverseVideo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReverseVideo(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ReverseVideo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrikethrough(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Strikethrough(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrikethrough(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Strikethrough(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSuperscript(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Superscript(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuperscript(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Superscript(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSubscript(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Subscript(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSubscript(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Subscript(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDoubleWide(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DoubleWide(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDoubleWide(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DoubleWide(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDoubleHigh(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DoubleHigh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDoubleHigh(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_DoubleHigh(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlignment(self: *@This()) core.HResult!PosPrinterAlignment {
        var _r: PosPrinterAlignment = undefined;
        const _c = self.vtable.get_Alignment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlignment(self: *@This(), value: PosPrinterAlignment) core.HResult!void {
        const _c = self.vtable.put_Alignment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCharacterSet(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CharacterSet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCharacterSet(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CharacterSet(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IPosPrinterPrintOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a2e16fd-1d02-5a58-9d59-bfcde76fde86";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TypeFace: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TypeFace: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_CharacterHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_CharacterHeight: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_Bold: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Bold: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Italic: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Italic: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Underline: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Underline: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ReverseVideo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ReverseVideo: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Strikethrough: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Strikethrough: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Superscript: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Superscript: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Subscript: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Subscript: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DoubleWide: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DoubleWide: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DoubleHigh: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DoubleHigh: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Alignment: *const fn(self: *anyopaque, _r: *PosPrinterAlignment) callconv(.winapi) HRESULT,
        put_Alignment: *const fn(self: *anyopaque, value: PosPrinterAlignment) callconv(.winapi) HRESULT,
        get_CharacterSet: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_CharacterSet: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const IPosPrinterReleaseDeviceRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IPosPrinterReleaseDeviceRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2bcba359-1cef-40b2-9ecb-f927f856ae3c";
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
pub const IPosPrinterStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(PosPrinter) {
        var _r: *IAsyncOperation(PosPrinter) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(PosPrinter) {
        var _r: *IAsyncOperation(PosPrinter) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IPosPrinterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8ce0d4ea-132f-4cdf-a64a-2d0d7c96a85b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(PosPrinter)) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(PosPrinter)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPosPrinterStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This(), connectionTypes: PosConnectionTypes) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), connectionTypes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IPosPrinterStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eecd2c1c-b0d0-42e7-b137-b89b16244d41";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, connectionTypes: PosConnectionTypes, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPosPrinterStatus = extern struct {
    vtable: *const VTable,
    pub fn getStatusKind(self: *@This()) core.HResult!PosPrinterStatusKind {
        var _r: PosPrinterStatusKind = undefined;
        const _c = self.vtable.get_StatusKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedStatus(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExtendedStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IPosPrinterStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1f0c730-da40-4328-bf76-5156fa33b747";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StatusKind: *const fn(self: *anyopaque, _r: *PosPrinterStatusKind) callconv(.winapi) HRESULT,
        get_ExtendedStatus: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IPosPrinterStatusUpdatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!*PosPrinterStatus {
        var _r: *PosPrinterStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IPosPrinterStatusUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2edb87df-13a6-428d-ba81-b0e7c3e5a3cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: **PosPrinterStatus) callconv(.winapi) HRESULT,
    };
};
pub const IReceiptOrSlipJob = extern struct {
    vtable: *const VTable,
    pub fn SetBarcodeRotation(self: *@This(), value: PosPrinterRotation) core.HResult!void {
        const _c = self.vtable.SetBarcodeRotation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPrintRotation(self: *@This(), value: PosPrinterRotation, includeBitmaps: bool) core.HResult!void {
        const _c = self.vtable.SetPrintRotation(@ptrCast(self), value, includeBitmaps);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPrintArea(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.SetPrintArea(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetBitmap(self: *@This(), bitmapNumber: u32, bitmap: *BitmapFrame, alignment: PosPrinterAlignment) core.HResult!void {
        const _c = self.vtable.SetBitmap(@ptrCast(self), bitmapNumber, bitmap, alignment);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetBitmapWithBitmapWithAlignmentWithWidth(self: *@This(), bitmapNumber: u32, bitmap: *BitmapFrame, alignment: PosPrinterAlignment, width: u32) core.HResult!void {
        const _c = self.vtable.SetBitmapWithBitmapWithAlignmentWithWidth(@ptrCast(self), bitmapNumber, bitmap, alignment, width);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetCustomAlignedBitmap(self: *@This(), bitmapNumber: u32, bitmap: *BitmapFrame, alignmentDistance: u32) core.HResult!void {
        const _c = self.vtable.SetCustomAlignedBitmap(@ptrCast(self), bitmapNumber, bitmap, alignmentDistance);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetCustomAlignedBitmapWithBitmapWithAlignmentDistanceWithWidth(self: *@This(), bitmapNumber: u32, bitmap: *BitmapFrame, alignmentDistance: u32, width: u32) core.HResult!void {
        const _c = self.vtable.SetCustomAlignedBitmapWithBitmapWithAlignmentDistanceWithWidth(@ptrCast(self), bitmapNumber, bitmap, alignmentDistance, width);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PrintSavedBitmap(self: *@This(), bitmapNumber: u32) core.HResult!void {
        const _c = self.vtable.PrintSavedBitmap(@ptrCast(self), bitmapNumber);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DrawRuledLine(self: *@This(), positionList: HSTRING, lineDirection: PosPrinterLineDirection, lineWidth: u32, lineStyle: PosPrinterLineStyle, lineColor: u32) core.HResult!void {
        const _c = self.vtable.DrawRuledLine(@ptrCast(self), positionList, lineDirection, lineWidth, lineStyle, lineColor);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PrintBarcode(self: *@This(), data: HSTRING, symbology: u32, height: u32, width: u32, textPosition: PosPrinterBarcodeTextPosition, alignment: PosPrinterAlignment) core.HResult!void {
        const _c = self.vtable.PrintBarcode(@ptrCast(self), data, symbology, height, width, textPosition, alignment);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PrintBarcodeCustomAlign(self: *@This(), data: HSTRING, symbology: u32, height: u32, width: u32, textPosition: PosPrinterBarcodeTextPosition, alignmentDistance: u32) core.HResult!void {
        const _c = self.vtable.PrintBarcodeCustomAlign(@ptrCast(self), data, symbology, height, width, textPosition, alignmentDistance);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PrintBitmap(self: *@This(), bitmap: *BitmapFrame, alignment: PosPrinterAlignment) core.HResult!void {
        const _c = self.vtable.PrintBitmap(@ptrCast(self), bitmap, alignment);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PrintBitmapWithAlignmentWithWidth(self: *@This(), bitmap: *BitmapFrame, alignment: PosPrinterAlignment, width: u32) core.HResult!void {
        const _c = self.vtable.PrintBitmapWithAlignmentWithWidth(@ptrCast(self), bitmap, alignment, width);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PrintCustomAlignedBitmap(self: *@This(), bitmap: *BitmapFrame, alignmentDistance: u32) core.HResult!void {
        const _c = self.vtable.PrintCustomAlignedBitmap(@ptrCast(self), bitmap, alignmentDistance);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PrintCustomAlignedBitmapWithAlignmentDistanceWithWidth(self: *@This(), bitmap: *BitmapFrame, alignmentDistance: u32, width: u32) core.HResult!void {
        const _c = self.vtable.PrintCustomAlignedBitmapWithAlignmentDistanceWithWidth(@ptrCast(self), bitmap, alignmentDistance, width);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IReceiptOrSlipJob";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "532199be-c8c3-4dc2-89e9-5c4a37b34ddc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetBarcodeRotation: *const fn(self: *anyopaque, value: PosPrinterRotation) callconv(.winapi) HRESULT,
        SetPrintRotation: *const fn(self: *anyopaque, value: PosPrinterRotation, includeBitmaps: bool) callconv(.winapi) HRESULT,
        SetPrintArea: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
        SetBitmap: *const fn(self: *anyopaque, bitmapNumber: u32, bitmap: *BitmapFrame, alignment: PosPrinterAlignment) callconv(.winapi) HRESULT,
        SetBitmapWithBitmapWithAlignmentWithWidth: *const fn(self: *anyopaque, bitmapNumber: u32, bitmap: *BitmapFrame, alignment: PosPrinterAlignment, width: u32) callconv(.winapi) HRESULT,
        SetCustomAlignedBitmap: *const fn(self: *anyopaque, bitmapNumber: u32, bitmap: *BitmapFrame, alignmentDistance: u32) callconv(.winapi) HRESULT,
        SetCustomAlignedBitmapWithBitmapWithAlignmentDistanceWithWidth: *const fn(self: *anyopaque, bitmapNumber: u32, bitmap: *BitmapFrame, alignmentDistance: u32, width: u32) callconv(.winapi) HRESULT,
        PrintSavedBitmap: *const fn(self: *anyopaque, bitmapNumber: u32) callconv(.winapi) HRESULT,
        DrawRuledLine: *const fn(self: *anyopaque, positionList: HSTRING, lineDirection: PosPrinterLineDirection, lineWidth: u32, lineStyle: PosPrinterLineStyle, lineColor: u32) callconv(.winapi) HRESULT,
        PrintBarcode: *const fn(self: *anyopaque, data: HSTRING, symbology: u32, height: u32, width: u32, textPosition: PosPrinterBarcodeTextPosition, alignment: PosPrinterAlignment) callconv(.winapi) HRESULT,
        PrintBarcodeCustomAlign: *const fn(self: *anyopaque, data: HSTRING, symbology: u32, height: u32, width: u32, textPosition: PosPrinterBarcodeTextPosition, alignmentDistance: u32) callconv(.winapi) HRESULT,
        PrintBitmap: *const fn(self: *anyopaque, bitmap: *BitmapFrame, alignment: PosPrinterAlignment) callconv(.winapi) HRESULT,
        PrintBitmapWithAlignmentWithWidth: *const fn(self: *anyopaque, bitmap: *BitmapFrame, alignment: PosPrinterAlignment, width: u32) callconv(.winapi) HRESULT,
        PrintCustomAlignedBitmap: *const fn(self: *anyopaque, bitmap: *BitmapFrame, alignmentDistance: u32) callconv(.winapi) HRESULT,
        PrintCustomAlignedBitmapWithAlignmentDistanceWithWidth: *const fn(self: *anyopaque, bitmap: *BitmapFrame, alignmentDistance: u32, width: u32) callconv(.winapi) HRESULT,
    };
};
pub const IReceiptPrintJob = extern struct {
    vtable: *const VTable,
    pub fn MarkFeed(self: *@This(), kind: PosPrinterMarkFeedKind) core.HResult!void {
        const _c = self.vtable.MarkFeed(@ptrCast(self), kind);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CutPaper(self: *@This(), percentage: f64) core.HResult!void {
        const _c = self.vtable.CutPaper(@ptrCast(self), percentage);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CutPaper(self: *@This()) core.HResult!void {
        const _c = self.vtable.CutPaper(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IReceiptPrintJob";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa96066e-acad-4b79-9d0f-c0cfc08dc77b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        MarkFeed: *const fn(self: *anyopaque, kind: PosPrinterMarkFeedKind) callconv(.winapi) HRESULT,
        CutPaper: *const fn(self: *anyopaque, percentage: f64) callconv(.winapi) HRESULT,
        CutPaper: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IReceiptPrintJob2 = extern struct {
    vtable: *const VTable,
    pub fn StampPaper(self: *@This()) core.HResult!void {
        const _c = self.vtable.StampPaper(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Print(self: *@This(), data: HSTRING, printOptions: *PosPrinterPrintOptions) core.HResult!void {
        const _c = self.vtable.Print(@ptrCast(self), data, printOptions);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FeedPaperByLine(self: *@This(), lineCount: i32) core.HResult!void {
        const _c = self.vtable.FeedPaperByLine(@ptrCast(self), lineCount);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FeedPaperByMapModeUnit(self: *@This(), distance: i32) core.HResult!void {
        const _c = self.vtable.FeedPaperByMapModeUnit(@ptrCast(self), distance);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IReceiptPrintJob2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0cbc12e3-9e29-5179-bcd8-1811d3b9a10e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StampPaper: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Print: *const fn(self: *anyopaque, data: HSTRING, printOptions: *PosPrinterPrintOptions) callconv(.winapi) HRESULT,
        FeedPaperByLine: *const fn(self: *anyopaque, lineCount: i32) callconv(.winapi) HRESULT,
        FeedPaperByMapModeUnit: *const fn(self: *anyopaque, distance: i32) callconv(.winapi) HRESULT,
    };
};
pub const IReceiptPrinterCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getCanCutPaper(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanCutPaper(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStampSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStampSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMarkFeedCapabilities(self: *@This()) core.HResult!PosPrinterMarkFeedCapabilities {
        var _r: PosPrinterMarkFeedCapabilities = undefined;
        const _c = self.vtable.get_MarkFeedCapabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IReceiptPrinterCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8f0b58f-51a8-43fc-9bd5-8de272a6415b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanCutPaper: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStampSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MarkFeedCapabilities: *const fn(self: *anyopaque, _r: *PosPrinterMarkFeedCapabilities) callconv(.winapi) HRESULT,
    };
};
pub const IReceiptPrinterCapabilities2 = extern struct {
    vtable: *const VTable,
    pub fn getIsReverseVideoSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReverseVideoSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStrikethroughSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStrikethroughSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSuperscriptSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSuperscriptSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSubscriptSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSubscriptSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReversePaperFeedByLineSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReversePaperFeedByLineSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReversePaperFeedByMapModeUnitSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReversePaperFeedByMapModeUnitSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IReceiptPrinterCapabilities2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20030638-8a2c-55ac-9a7b-7576d8869e99";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsReverseVideoSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStrikethroughSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSuperscriptSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSubscriptSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsReversePaperFeedByLineSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsReversePaperFeedByMapModeUnitSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISlipPrintJob = extern struct {
    vtable: *const VTable,
    pub fn Print(self: *@This(), data: HSTRING, printOptions: *PosPrinterPrintOptions) core.HResult!void {
        const _c = self.vtable.Print(@ptrCast(self), data, printOptions);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FeedPaperByLine(self: *@This(), lineCount: i32) core.HResult!void {
        const _c = self.vtable.FeedPaperByLine(@ptrCast(self), lineCount);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FeedPaperByMapModeUnit(self: *@This(), distance: i32) core.HResult!void {
        const _c = self.vtable.FeedPaperByMapModeUnit(@ptrCast(self), distance);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ISlipPrintJob";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d88f95d-6131-5a4b-b7d5-8ef2da7b4165";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Print: *const fn(self: *anyopaque, data: HSTRING, printOptions: *PosPrinterPrintOptions) callconv(.winapi) HRESULT,
        FeedPaperByLine: *const fn(self: *anyopaque, lineCount: i32) callconv(.winapi) HRESULT,
        FeedPaperByMapModeUnit: *const fn(self: *anyopaque, distance: i32) callconv(.winapi) HRESULT,
    };
};
pub const ISlipPrinterCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getIsFullLengthSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFullLengthSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsBothSidesPrintingSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBothSidesPrintingSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ISlipPrinterCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "99b16399-488c-4157-8ac2-9f57f708d3db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsFullLengthSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsBothSidesPrintingSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISlipPrinterCapabilities2 = extern struct {
    vtable: *const VTable,
    pub fn getIsReverseVideoSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReverseVideoSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStrikethroughSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStrikethroughSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSuperscriptSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSuperscriptSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSubscriptSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSubscriptSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReversePaperFeedByLineSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReversePaperFeedByLineSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReversePaperFeedByMapModeUnitSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReversePaperFeedByMapModeUnitSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ISlipPrinterCapabilities2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6ff89671-2d1a-5000-87c2-b0851bfdf07e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsReverseVideoSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStrikethroughSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSuperscriptSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsSubscriptSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsReversePaperFeedByLineSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsReversePaperFeedByMapModeUnitSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IUnifiedPosErrorData = extern struct {
    vtable: *const VTable,
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSeverity(self: *@This()) core.HResult!UnifiedPosErrorSeverity {
        var _r: UnifiedPosErrorSeverity = undefined;
        const _c = self.vtable.get_Severity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReason(self: *@This()) core.HResult!UnifiedPosErrorReason {
        var _r: UnifiedPosErrorReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedReason(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExtendedReason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IUnifiedPosErrorData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b998c3a-555c-4889-8ed8-c599bb3a712a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Message: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Severity: *const fn(self: *anyopaque, _r: *UnifiedPosErrorSeverity) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *UnifiedPosErrorReason) callconv(.winapi) HRESULT,
        get_ExtendedReason: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IUnifiedPosErrorDataFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), message: HSTRING, severity: UnifiedPosErrorSeverity, reason: UnifiedPosErrorReason, extendedReason: u32) core.HResult!*UnifiedPosErrorData {
        var _r: *UnifiedPosErrorData = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), message, severity, reason, extendedReason, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.IUnifiedPosErrorDataFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b982551-1ffe-451b-a368-63e0ce465f5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, message: HSTRING, severity: UnifiedPosErrorSeverity, reason: UnifiedPosErrorReason, extendedReason: u32, _r: **UnifiedPosErrorData) callconv(.winapi) HRESULT,
    };
};
pub const JournalPrintJob = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn PrintWithPrintOptions(self: *@This(), data: HSTRING, printOptions: *PosPrinterPrintOptions) core.HResult!void {
        var this: ?*IJournalPrintJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJournalPrintJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintWithPrintOptions(data, printOptions);
    }
    pub fn FeedPaperByLine(self: *@This(), lineCount: i32) core.HResult!void {
        var this: ?*IJournalPrintJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJournalPrintJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FeedPaperByLine(lineCount);
    }
    pub fn FeedPaperByMapModeUnit(self: *@This(), distance: i32) core.HResult!void {
        var this: ?*IJournalPrintJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJournalPrintJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FeedPaperByMapModeUnit(distance);
    }
    pub fn Print(self: *@This(), data: HSTRING) core.HResult!void {
        const this: *IPosPrinterJob = @ptrCast(self);
        return try this.Print(data);
    }
    pub fn PrintLineWithData(self: *@This(), data: HSTRING) core.HResult!void {
        const this: *IPosPrinterJob = @ptrCast(self);
        return try this.PrintLineWithData(data);
    }
    pub fn PrintLine(self: *@This()) core.HResult!void {
        const this: *IPosPrinterJob = @ptrCast(self);
        return try this.PrintLine();
    }
    pub fn ExecuteAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IPosPrinterJob = @ptrCast(self);
        return try this.ExecuteAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.JournalPrintJob";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPosPrinterJob.GUID;
    pub const IID: Guid = IPosPrinterJob.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPosPrinterJob.SIGNATURE);
};
pub const JournalPrinterCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsReverseVideoSupported(self: *@This()) core.HResult!bool {
        var this: ?*IJournalPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJournalPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReverseVideoSupported();
    }
    pub fn getIsStrikethroughSupported(self: *@This()) core.HResult!bool {
        var this: ?*IJournalPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJournalPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsStrikethroughSupported();
    }
    pub fn getIsSuperscriptSupported(self: *@This()) core.HResult!bool {
        var this: ?*IJournalPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJournalPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSuperscriptSupported();
    }
    pub fn getIsSubscriptSupported(self: *@This()) core.HResult!bool {
        var this: ?*IJournalPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJournalPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSubscriptSupported();
    }
    pub fn getIsReversePaperFeedByLineSupported(self: *@This()) core.HResult!bool {
        var this: ?*IJournalPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJournalPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReversePaperFeedByLineSupported();
    }
    pub fn getIsReversePaperFeedByMapModeUnitSupported(self: *@This()) core.HResult!bool {
        var this: ?*IJournalPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IJournalPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReversePaperFeedByMapModeUnitSupported();
    }
    pub fn getIsPrinterPresent(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPrinterPresent();
    }
    pub fn getIsDualColorSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDualColorSupported();
    }
    pub fn getColorCartridgeCapabilities(self: *@This()) core.HResult!PosPrinterColorCapabilities {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getColorCartridgeCapabilities();
    }
    pub fn getCartridgeSensors(self: *@This()) core.HResult!PosPrinterCartridgeSensors {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCartridgeSensors();
    }
    pub fn getIsBoldSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsBoldSupported();
    }
    pub fn getIsItalicSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsItalicSupported();
    }
    pub fn getIsUnderlineSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsUnderlineSupported();
    }
    pub fn getIsDoubleHighPrintSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDoubleHighPrintSupported();
    }
    pub fn getIsDoubleWidePrintSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDoubleWidePrintSupported();
    }
    pub fn getIsDoubleHighDoubleWidePrintSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDoubleHighDoubleWidePrintSupported();
    }
    pub fn getIsPaperEmptySensorSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPaperEmptySensorSupported();
    }
    pub fn getIsPaperNearEndSensorSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPaperNearEndSensorSupported();
    }
    pub fn getSupportedCharactersPerLine(self: *@This()) core.HResult!*IVectorView(u32) {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedCharactersPerLine();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.JournalPrinterCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IJournalPrinterCapabilities.GUID;
    pub const IID: Guid = IJournalPrinterCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IJournalPrinterCapabilities.SIGNATURE);
};
pub const LineDisplay = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *ILineDisplay = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getCapabilities(self: *@This()) core.HResult!*LineDisplayCapabilities {
        const this: *ILineDisplay = @ptrCast(self);
        return try this.getCapabilities();
    }
    pub fn getPhysicalDeviceName(self: *@This()) core.HResult!HSTRING {
        const this: *ILineDisplay = @ptrCast(self);
        return try this.getPhysicalDeviceName();
    }
    pub fn getPhysicalDeviceDescription(self: *@This()) core.HResult!HSTRING {
        const this: *ILineDisplay = @ptrCast(self);
        return try this.getPhysicalDeviceDescription();
    }
    pub fn getDeviceControlDescription(self: *@This()) core.HResult!HSTRING {
        const this: *ILineDisplay = @ptrCast(self);
        return try this.getDeviceControlDescription();
    }
    pub fn getDeviceControlVersion(self: *@This()) core.HResult!HSTRING {
        const this: *ILineDisplay = @ptrCast(self);
        return try this.getDeviceControlVersion();
    }
    pub fn getDeviceServiceVersion(self: *@This()) core.HResult!HSTRING {
        const this: *ILineDisplay = @ptrCast(self);
        return try this.getDeviceServiceVersion();
    }
    pub fn ClaimAsync(self: *@This()) core.HResult!*IAsyncOperation(ClaimedLineDisplay) {
        const this: *ILineDisplay = @ptrCast(self);
        return try this.ClaimAsync();
    }
    pub fn CheckPowerStatusAsync(self: *@This()) core.HResult!*IAsyncOperation(LineDisplayPowerStatus) {
        var this: ?*ILineDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILineDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CheckPowerStatusAsync();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_StatisticsCategorySelector() core.HResult!*LineDisplayStatisticsCategorySelector {
        const factory = @This().ILineDisplayStatics2Cache.get();
        return try factory.getStatisticsCategorySelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(LineDisplay) {
        const factory = @This().ILineDisplayStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(LineDisplay) {
        const factory = @This().ILineDisplayStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().ILineDisplayStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetDeviceSelectorWithConnectionTypes(connectionTypes: PosConnectionTypes) core.HResult!HSTRING {
        const factory = @This().ILineDisplayStaticsCache.get();
        return try factory.GetDeviceSelectorWithConnectionTypes(connectionTypes);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.LineDisplay";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineDisplay.GUID;
    pub const IID: Guid = ILineDisplay.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineDisplay.SIGNATURE);
    var _ILineDisplayStatics2Cache: FactoryCache(ILineDisplayStatics2, RUNTIME_NAME) = .{};
    var _ILineDisplayStaticsCache: FactoryCache(ILineDisplayStatics, RUNTIME_NAME) = .{};
};
pub const LineDisplayAttributes = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsPowerNotifyEnabled(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.getIsPowerNotifyEnabled();
    }
    pub fn putIsPowerNotifyEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.putIsPowerNotifyEnabled(value);
    }
    pub fn getBrightness(self: *@This()) core.HResult!i32 {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.getBrightness();
    }
    pub fn putBrightness(self: *@This(), value: i32) core.HResult!void {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.putBrightness(value);
    }
    pub fn getBlinkRate(self: *@This()) core.HResult!TimeSpan {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.getBlinkRate();
    }
    pub fn putBlinkRate(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.putBlinkRate(value);
    }
    pub fn getScreenSizeInCharacters(self: *@This()) core.HResult!Size {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.getScreenSizeInCharacters();
    }
    pub fn putScreenSizeInCharacters(self: *@This(), value: Size) core.HResult!void {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.putScreenSizeInCharacters(value);
    }
    pub fn getCharacterSet(self: *@This()) core.HResult!i32 {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.getCharacterSet();
    }
    pub fn putCharacterSet(self: *@This(), value: i32) core.HResult!void {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.putCharacterSet(value);
    }
    pub fn getIsCharacterSetMappingEnabled(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.getIsCharacterSetMappingEnabled();
    }
    pub fn putIsCharacterSetMappingEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.putIsCharacterSetMappingEnabled(value);
    }
    pub fn getCurrentWindow(self: *@This()) core.HResult!*LineDisplayWindow {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.getCurrentWindow();
    }
    pub fn putCurrentWindow(self: *@This(), value: *LineDisplayWindow) core.HResult!void {
        const this: *ILineDisplayAttributes = @ptrCast(self);
        return try this.putCurrentWindow(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.LineDisplayAttributes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineDisplayAttributes.GUID;
    pub const IID: Guid = ILineDisplayAttributes.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineDisplayAttributes.SIGNATURE);
};
pub const LineDisplayCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsStatisticsReportingSupported(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getIsStatisticsReportingSupported();
    }
    pub fn getIsStatisticsUpdatingSupported(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getIsStatisticsUpdatingSupported();
    }
    pub fn getPowerReportingType(self: *@This()) core.HResult!UnifiedPosPowerReportingType {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getPowerReportingType();
    }
    pub fn getCanChangeScreenSize(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getCanChangeScreenSize();
    }
    pub fn getCanDisplayBitmaps(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getCanDisplayBitmaps();
    }
    pub fn getCanReadCharacterAtCursor(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getCanReadCharacterAtCursor();
    }
    pub fn getCanMapCharacterSets(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getCanMapCharacterSets();
    }
    pub fn getCanDisplayCustomGlyphs(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getCanDisplayCustomGlyphs();
    }
    pub fn getCanReverse(self: *@This()) core.HResult!LineDisplayTextAttributeGranularity {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getCanReverse();
    }
    pub fn getCanBlink(self: *@This()) core.HResult!LineDisplayTextAttributeGranularity {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getCanBlink();
    }
    pub fn getCanChangeBlinkRate(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getCanChangeBlinkRate();
    }
    pub fn getIsBrightnessSupported(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getIsBrightnessSupported();
    }
    pub fn getIsCursorSupported(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getIsCursorSupported();
    }
    pub fn getIsHorizontalMarqueeSupported(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getIsHorizontalMarqueeSupported();
    }
    pub fn getIsVerticalMarqueeSupported(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getIsVerticalMarqueeSupported();
    }
    pub fn getIsInterCharacterWaitSupported(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getIsInterCharacterWaitSupported();
    }
    pub fn getSupportedDescriptors(self: *@This()) core.HResult!u32 {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getSupportedDescriptors();
    }
    pub fn getSupportedWindows(self: *@This()) core.HResult!u32 {
        const this: *ILineDisplayCapabilities = @ptrCast(self);
        return try this.getSupportedWindows();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.LineDisplayCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineDisplayCapabilities.GUID;
    pub const IID: Guid = ILineDisplayCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineDisplayCapabilities.SIGNATURE);
};
pub const LineDisplayCursor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanCustomize(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCursor = @ptrCast(self);
        return try this.getCanCustomize();
    }
    pub fn getIsBlinkSupported(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCursor = @ptrCast(self);
        return try this.getIsBlinkSupported();
    }
    pub fn getIsBlockSupported(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCursor = @ptrCast(self);
        return try this.getIsBlockSupported();
    }
    pub fn getIsHalfBlockSupported(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCursor = @ptrCast(self);
        return try this.getIsHalfBlockSupported();
    }
    pub fn getIsUnderlineSupported(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCursor = @ptrCast(self);
        return try this.getIsUnderlineSupported();
    }
    pub fn getIsReverseSupported(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCursor = @ptrCast(self);
        return try this.getIsReverseSupported();
    }
    pub fn getIsOtherSupported(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCursor = @ptrCast(self);
        return try this.getIsOtherSupported();
    }
    pub fn GetAttributes(self: *@This()) core.HResult!*LineDisplayCursorAttributes {
        const this: *ILineDisplayCursor = @ptrCast(self);
        return try this.GetAttributes();
    }
    pub fn TryUpdateAttributesAsync(self: *@This(), attributes: *LineDisplayCursorAttributes) core.HResult!*IAsyncOperation(bool) {
        const this: *ILineDisplayCursor = @ptrCast(self);
        return try this.TryUpdateAttributesAsync(attributes);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.LineDisplayCursor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineDisplayCursor.GUID;
    pub const IID: Guid = ILineDisplayCursor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineDisplayCursor.SIGNATURE);
};
pub const LineDisplayCursorAttributes = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsBlinkEnabled(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCursorAttributes = @ptrCast(self);
        return try this.getIsBlinkEnabled();
    }
    pub fn putIsBlinkEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ILineDisplayCursorAttributes = @ptrCast(self);
        return try this.putIsBlinkEnabled(value);
    }
    pub fn getCursorType(self: *@This()) core.HResult!LineDisplayCursorType {
        const this: *ILineDisplayCursorAttributes = @ptrCast(self);
        return try this.getCursorType();
    }
    pub fn putCursorType(self: *@This(), value: LineDisplayCursorType) core.HResult!void {
        const this: *ILineDisplayCursorAttributes = @ptrCast(self);
        return try this.putCursorType(value);
    }
    pub fn getIsAutoAdvanceEnabled(self: *@This()) core.HResult!bool {
        const this: *ILineDisplayCursorAttributes = @ptrCast(self);
        return try this.getIsAutoAdvanceEnabled();
    }
    pub fn putIsAutoAdvanceEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ILineDisplayCursorAttributes = @ptrCast(self);
        return try this.putIsAutoAdvanceEnabled(value);
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *ILineDisplayCursorAttributes = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: Point) core.HResult!void {
        const this: *ILineDisplayCursorAttributes = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.LineDisplayCursorAttributes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineDisplayCursorAttributes.GUID;
    pub const IID: Guid = ILineDisplayCursorAttributes.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineDisplayCursorAttributes.SIGNATURE);
};
pub const LineDisplayCursorType = enum(i32) {
    None = 0,
    Block = 1,
    HalfBlock = 2,
    Underline = 3,
    Reverse = 4,
    Other = 5,
};
pub const LineDisplayCustomGlyphs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSizeInPixels(self: *@This()) core.HResult!Size {
        const this: *ILineDisplayCustomGlyphs = @ptrCast(self);
        return try this.getSizeInPixels();
    }
    pub fn getSupportedGlyphCodes(self: *@This()) core.HResult!*IVectorView(u32) {
        const this: *ILineDisplayCustomGlyphs = @ptrCast(self);
        return try this.getSupportedGlyphCodes();
    }
    pub fn TryRedefineAsync(self: *@This(), glyphCode: u32, glyphData: *IBuffer) core.HResult!*IAsyncOperation(bool) {
        const this: *ILineDisplayCustomGlyphs = @ptrCast(self);
        return try this.TryRedefineAsync(glyphCode, glyphData);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.LineDisplayCustomGlyphs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineDisplayCustomGlyphs.GUID;
    pub const IID: Guid = ILineDisplayCustomGlyphs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineDisplayCustomGlyphs.SIGNATURE);
};
pub const LineDisplayDescriptorState = enum(i32) {
    Off = 0,
    On = 1,
    Blink = 2,
};
pub const LineDisplayHorizontalAlignment = enum(i32) {
    Left = 0,
    Center = 1,
    Right = 2,
};
pub const LineDisplayMarquee = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFormat(self: *@This()) core.HResult!LineDisplayMarqueeFormat {
        const this: *ILineDisplayMarquee = @ptrCast(self);
        return try this.getFormat();
    }
    pub fn putFormat(self: *@This(), value: LineDisplayMarqueeFormat) core.HResult!void {
        const this: *ILineDisplayMarquee = @ptrCast(self);
        return try this.putFormat(value);
    }
    pub fn getRepeatWaitInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *ILineDisplayMarquee = @ptrCast(self);
        return try this.getRepeatWaitInterval();
    }
    pub fn putRepeatWaitInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILineDisplayMarquee = @ptrCast(self);
        return try this.putRepeatWaitInterval(value);
    }
    pub fn getScrollWaitInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *ILineDisplayMarquee = @ptrCast(self);
        return try this.getScrollWaitInterval();
    }
    pub fn putScrollWaitInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILineDisplayMarquee = @ptrCast(self);
        return try this.putScrollWaitInterval(value);
    }
    pub fn TryStartScrollingAsync(self: *@This(), direction: LineDisplayScrollDirection) core.HResult!*IAsyncOperation(bool) {
        const this: *ILineDisplayMarquee = @ptrCast(self);
        return try this.TryStartScrollingAsync(direction);
    }
    pub fn TryStopScrollingAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *ILineDisplayMarquee = @ptrCast(self);
        return try this.TryStopScrollingAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.LineDisplayMarquee";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineDisplayMarquee.GUID;
    pub const IID: Guid = ILineDisplayMarquee.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineDisplayMarquee.SIGNATURE);
};
pub const LineDisplayMarqueeFormat = enum(i32) {
    None = 0,
    Walk = 1,
    Place = 2,
};
pub const LineDisplayPowerStatus = enum(i32) {
    Unknown = 0,
    Online = 1,
    Off = 2,
    Offline = 3,
    OffOrOffline = 4,
};
pub const LineDisplayScrollDirection = enum(i32) {
    Up = 0,
    Down = 1,
    Left = 2,
    Right = 3,
};
pub const LineDisplayStatisticsCategorySelector = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAllStatistics(self: *@This()) core.HResult!HSTRING {
        const this: *ILineDisplayStatisticsCategorySelector = @ptrCast(self);
        return try this.getAllStatistics();
    }
    pub fn getUnifiedPosStatistics(self: *@This()) core.HResult!HSTRING {
        const this: *ILineDisplayStatisticsCategorySelector = @ptrCast(self);
        return try this.getUnifiedPosStatistics();
    }
    pub fn getManufacturerStatistics(self: *@This()) core.HResult!HSTRING {
        const this: *ILineDisplayStatisticsCategorySelector = @ptrCast(self);
        return try this.getManufacturerStatistics();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.LineDisplayStatisticsCategorySelector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineDisplayStatisticsCategorySelector.GUID;
    pub const IID: Guid = ILineDisplayStatisticsCategorySelector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineDisplayStatisticsCategorySelector.SIGNATURE);
};
pub const LineDisplayStatusUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!LineDisplayPowerStatus {
        const this: *ILineDisplayStatusUpdatedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.LineDisplayStatusUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineDisplayStatusUpdatedEventArgs.GUID;
    pub const IID: Guid = ILineDisplayStatusUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineDisplayStatusUpdatedEventArgs.SIGNATURE);
};
pub const LineDisplayStoredBitmap = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEscapeSequence(self: *@This()) core.HResult!HSTRING {
        const this: *ILineDisplayStoredBitmap = @ptrCast(self);
        return try this.getEscapeSequence();
    }
    pub fn TryDeleteAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *ILineDisplayStoredBitmap = @ptrCast(self);
        return try this.TryDeleteAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.LineDisplayStoredBitmap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineDisplayStoredBitmap.GUID;
    pub const IID: Guid = ILineDisplayStoredBitmap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineDisplayStoredBitmap.SIGNATURE);
};
pub const LineDisplayTextAttribute = enum(i32) {
    Normal = 0,
    Blink = 1,
    Reverse = 2,
    ReverseBlink = 3,
};
pub const LineDisplayTextAttributeGranularity = enum(i32) {
    NotSupported = 0,
    EntireDisplay = 1,
    PerCharacter = 2,
};
pub const LineDisplayVerticalAlignment = enum(i32) {
    Top = 0,
    Center = 1,
    Bottom = 2,
};
pub const LineDisplayWindow = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSizeInCharacters(self: *@This()) core.HResult!Size {
        const this: *ILineDisplayWindow = @ptrCast(self);
        return try this.getSizeInCharacters();
    }
    pub fn getInterCharacterWaitInterval(self: *@This()) core.HResult!TimeSpan {
        const this: *ILineDisplayWindow = @ptrCast(self);
        return try this.getInterCharacterWaitInterval();
    }
    pub fn putInterCharacterWaitInterval(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ILineDisplayWindow = @ptrCast(self);
        return try this.putInterCharacterWaitInterval(value);
    }
    pub fn TryRefreshAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *ILineDisplayWindow = @ptrCast(self);
        return try this.TryRefreshAsync();
    }
    pub fn TryDisplayTextAsyncWithDisplayAttribute(self: *@This(), text: HSTRING, displayAttribute: LineDisplayTextAttribute) core.HResult!*IAsyncOperation(bool) {
        const this: *ILineDisplayWindow = @ptrCast(self);
        return try this.TryDisplayTextAsyncWithDisplayAttribute(text, displayAttribute);
    }
    pub fn TryDisplayTextAsyncWithDisplayAttributeWithStartPosition(self: *@This(), text: HSTRING, displayAttribute: LineDisplayTextAttribute, startPosition: Point) core.HResult!*IAsyncOperation(bool) {
        const this: *ILineDisplayWindow = @ptrCast(self);
        return try this.TryDisplayTextAsyncWithDisplayAttributeWithStartPosition(text, displayAttribute, startPosition);
    }
    pub fn TryDisplayTextAsync(self: *@This(), text: HSTRING) core.HResult!*IAsyncOperation(bool) {
        const this: *ILineDisplayWindow = @ptrCast(self);
        return try this.TryDisplayTextAsync(text);
    }
    pub fn TryScrollTextAsync(self: *@This(), direction: LineDisplayScrollDirection, numberOfColumnsOrRows: u32) core.HResult!*IAsyncOperation(bool) {
        const this: *ILineDisplayWindow = @ptrCast(self);
        return try this.TryScrollTextAsync(direction, numberOfColumnsOrRows);
    }
    pub fn TryClearTextAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *ILineDisplayWindow = @ptrCast(self);
        return try this.TryClearTextAsync();
    }
    pub fn getCursor(self: *@This()) core.HResult!*LineDisplayCursor {
        var this: ?*ILineDisplayWindow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILineDisplayWindow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCursor();
    }
    pub fn getMarquee(self: *@This()) core.HResult!*LineDisplayMarquee {
        var this: ?*ILineDisplayWindow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILineDisplayWindow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMarquee();
    }
    pub fn ReadCharacterAtCursorAsync(self: *@This()) core.HResult!*IAsyncOperation(u32) {
        var this: ?*ILineDisplayWindow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILineDisplayWindow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReadCharacterAtCursorAsync();
    }
    pub fn TryDisplayStoredBitmapAtCursorAsync(self: *@This(), bitmap: *LineDisplayStoredBitmap) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ILineDisplayWindow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILineDisplayWindow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryDisplayStoredBitmapAtCursorAsync(bitmap);
    }
    pub fn TryDisplayStorageFileBitmapAtCursorAsync(self: *@This(), bitmap: *StorageFile) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ILineDisplayWindow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILineDisplayWindow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryDisplayStorageFileBitmapAtCursorAsync(bitmap);
    }
    pub fn TryDisplayStorageFileBitmapAtCursorAsyncWithHorizontalAlignmentWithVerticalAlignment(self: *@This(), bitmap: *StorageFile, horizontalAlignment: LineDisplayHorizontalAlignment, verticalAlignment: LineDisplayVerticalAlignment) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ILineDisplayWindow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILineDisplayWindow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryDisplayStorageFileBitmapAtCursorAsyncWithHorizontalAlignmentWithVerticalAlignment(bitmap, horizontalAlignment, verticalAlignment);
    }
    pub fn TryDisplayStorageFileBitmapAtCursorAsyncWithHorizontalAlignmentWithVerticalAlignmentWithWidthInPixels(self: *@This(), bitmap: *StorageFile, horizontalAlignment: LineDisplayHorizontalAlignment, verticalAlignment: LineDisplayVerticalAlignment, widthInPixels: i32) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ILineDisplayWindow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILineDisplayWindow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryDisplayStorageFileBitmapAtCursorAsyncWithHorizontalAlignmentWithVerticalAlignmentWithWidthInPixels(bitmap, horizontalAlignment, verticalAlignment, widthInPixels);
    }
    pub fn TryDisplayStorageFileBitmapAtPointAsync(self: *@This(), bitmap: *StorageFile, offsetInPixels: Point) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ILineDisplayWindow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILineDisplayWindow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryDisplayStorageFileBitmapAtPointAsync(bitmap, offsetInPixels);
    }
    pub fn TryDisplayStorageFileBitmapAtPointAsyncWithWidthInPixels(self: *@This(), bitmap: *StorageFile, offsetInPixels: Point, widthInPixels: i32) core.HResult!*IAsyncOperation(bool) {
        var this: ?*ILineDisplayWindow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILineDisplayWindow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryDisplayStorageFileBitmapAtPointAsyncWithWidthInPixels(bitmap, offsetInPixels, widthInPixels);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.LineDisplayWindow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineDisplayWindow.GUID;
    pub const IID: Guid = ILineDisplayWindow.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineDisplayWindow.SIGNATURE);
};
pub const MagneticStripeReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReader = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getCapabilities(self: *@This()) core.HResult!*MagneticStripeReaderCapabilities {
        const this: *IMagneticStripeReader = @ptrCast(self);
        return try this.getCapabilities();
    }
    pub fn getSupportedCardTypes(self: *@This()) core.HResult![*]u32 {
        const this: *IMagneticStripeReader = @ptrCast(self);
        return try this.getSupportedCardTypes();
    }
    pub fn getDeviceAuthenticationProtocol(self: *@This()) core.HResult!MagneticStripeReaderAuthenticationProtocol {
        const this: *IMagneticStripeReader = @ptrCast(self);
        return try this.getDeviceAuthenticationProtocol();
    }
    pub fn CheckHealthAsync(self: *@This(), level: UnifiedPosHealthCheckLevel) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IMagneticStripeReader = @ptrCast(self);
        return try this.CheckHealthAsync(level);
    }
    pub fn ClaimReaderAsync(self: *@This()) core.HResult!*IAsyncOperation(ClaimedMagneticStripeReader) {
        const this: *IMagneticStripeReader = @ptrCast(self);
        return try this.ClaimReaderAsync();
    }
    pub fn RetrieveStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(IBuffer) {
        const this: *IMagneticStripeReader = @ptrCast(self);
        return try this.RetrieveStatisticsAsync(statisticsCategories);
    }
    pub fn GetErrorReportingType(self: *@This()) core.HResult!MagneticStripeReaderErrorReportingType {
        const this: *IMagneticStripeReader = @ptrCast(self);
        return try this.GetErrorReportingType();
    }
    pub fn addStatusUpdated(self: *@This(), handler: *TypedEventHandler(MagneticStripeReader,MagneticStripeReaderStatusUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IMagneticStripeReader = @ptrCast(self);
        return try this.addStatusUpdated(handler);
    }
    pub fn removeStatusUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMagneticStripeReader = @ptrCast(self);
        return try this.removeStatusUpdated(token);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(MagneticStripeReader) {
        const factory = @This().IMagneticStripeReaderStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(MagneticStripeReader) {
        const factory = @This().IMagneticStripeReaderStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IMagneticStripeReaderStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn GetDeviceSelectorWithConnectionTypes(connectionTypes: PosConnectionTypes) core.HResult!HSTRING {
        const factory = @This().IMagneticStripeReaderStatics2Cache.get();
        return try factory.GetDeviceSelector(connectionTypes);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.MagneticStripeReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMagneticStripeReader.GUID;
    pub const IID: Guid = IMagneticStripeReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMagneticStripeReader.SIGNATURE);
    var _IMagneticStripeReaderStaticsCache: FactoryCache(IMagneticStripeReaderStatics, RUNTIME_NAME) = .{};
    var _IMagneticStripeReaderStatics2Cache: FactoryCache(IMagneticStripeReaderStatics2, RUNTIME_NAME) = .{};
};
pub const MagneticStripeReaderAamvaCardDataReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReport(self: *@This()) core.HResult!*MagneticStripeReaderReport {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getReport();
    }
    pub fn getLicenseNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getLicenseNumber();
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getExpirationDate();
    }
    pub fn getRestrictions(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getRestrictions();
    }
    pub fn getClass(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getClass();
    }
    pub fn getEndorsements(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getEndorsements();
    }
    pub fn getBirthDate(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getBirthDate();
    }
    pub fn getFirstName(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getFirstName();
    }
    pub fn getSurname(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getSurname();
    }
    pub fn getSuffix(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getSuffix();
    }
    pub fn getGender(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getGender();
    }
    pub fn getHairColor(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getHairColor();
    }
    pub fn getEyeColor(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getEyeColor();
    }
    pub fn getHeight(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getWeight(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getWeight();
    }
    pub fn getAddress(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getAddress();
    }
    pub fn getCity(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getCity();
    }
    pub fn getState(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getState();
    }
    pub fn getPostalCode(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderAamvaCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getPostalCode();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.MagneticStripeReaderAamvaCardDataReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMagneticStripeReaderAamvaCardDataReceivedEventArgs.GUID;
    pub const IID: Guid = IMagneticStripeReaderAamvaCardDataReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMagneticStripeReaderAamvaCardDataReceivedEventArgs.SIGNATURE);
};
pub const MagneticStripeReaderAuthenticationLevel = enum(i32) {
    NotSupported = 0,
    Optional = 1,
    Required = 2,
};
pub const MagneticStripeReaderAuthenticationProtocol = enum(i32) {
    None = 0,
    ChallengeResponse = 1,
};
pub const MagneticStripeReaderBankCardDataReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReport(self: *@This()) core.HResult!*MagneticStripeReaderReport {
        const this: *IMagneticStripeReaderBankCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getReport();
    }
    pub fn getAccountNumber(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderBankCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getAccountNumber();
    }
    pub fn getExpirationDate(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderBankCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getExpirationDate();
    }
    pub fn getServiceCode(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderBankCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getServiceCode();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderBankCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getFirstName(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderBankCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getFirstName();
    }
    pub fn getMiddleInitial(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderBankCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getMiddleInitial();
    }
    pub fn getSurname(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderBankCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getSurname();
    }
    pub fn getSuffix(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderBankCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getSuffix();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.MagneticStripeReaderBankCardDataReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMagneticStripeReaderBankCardDataReceivedEventArgs.GUID;
    pub const IID: Guid = IMagneticStripeReaderBankCardDataReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMagneticStripeReaderBankCardDataReceivedEventArgs.SIGNATURE);
};
pub const MagneticStripeReaderCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCardAuthentication(self: *@This()) core.HResult!HSTRING {
        const this: *IMagneticStripeReaderCapabilities = @ptrCast(self);
        return try this.getCardAuthentication();
    }
    pub fn getSupportedEncryptionAlgorithms(self: *@This()) core.HResult!u32 {
        const this: *IMagneticStripeReaderCapabilities = @ptrCast(self);
        return try this.getSupportedEncryptionAlgorithms();
    }
    pub fn getAuthenticationLevel(self: *@This()) core.HResult!MagneticStripeReaderAuthenticationLevel {
        const this: *IMagneticStripeReaderCapabilities = @ptrCast(self);
        return try this.getAuthenticationLevel();
    }
    pub fn getIsIsoSupported(self: *@This()) core.HResult!bool {
        const this: *IMagneticStripeReaderCapabilities = @ptrCast(self);
        return try this.getIsIsoSupported();
    }
    pub fn getIsJisOneSupported(self: *@This()) core.HResult!bool {
        const this: *IMagneticStripeReaderCapabilities = @ptrCast(self);
        return try this.getIsJisOneSupported();
    }
    pub fn getIsJisTwoSupported(self: *@This()) core.HResult!bool {
        const this: *IMagneticStripeReaderCapabilities = @ptrCast(self);
        return try this.getIsJisTwoSupported();
    }
    pub fn getPowerReportingType(self: *@This()) core.HResult!UnifiedPosPowerReportingType {
        const this: *IMagneticStripeReaderCapabilities = @ptrCast(self);
        return try this.getPowerReportingType();
    }
    pub fn getIsStatisticsReportingSupported(self: *@This()) core.HResult!bool {
        const this: *IMagneticStripeReaderCapabilities = @ptrCast(self);
        return try this.getIsStatisticsReportingSupported();
    }
    pub fn getIsStatisticsUpdatingSupported(self: *@This()) core.HResult!bool {
        const this: *IMagneticStripeReaderCapabilities = @ptrCast(self);
        return try this.getIsStatisticsUpdatingSupported();
    }
    pub fn getIsTrackDataMaskingSupported(self: *@This()) core.HResult!bool {
        const this: *IMagneticStripeReaderCapabilities = @ptrCast(self);
        return try this.getIsTrackDataMaskingSupported();
    }
    pub fn getIsTransmitSentinelsSupported(self: *@This()) core.HResult!bool {
        const this: *IMagneticStripeReaderCapabilities = @ptrCast(self);
        return try this.getIsTransmitSentinelsSupported();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.MagneticStripeReaderCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMagneticStripeReaderCapabilities.GUID;
    pub const IID: Guid = IMagneticStripeReaderCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMagneticStripeReaderCapabilities.SIGNATURE);
};
pub const MagneticStripeReaderCardTypes = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Unknown() core.HResult!u32 {
        const factory = @This().IMagneticStripeReaderCardTypesStaticsCache.get();
        return try factory.getUnknown();
    }
    pub fn get_Bank() core.HResult!u32 {
        const factory = @This().IMagneticStripeReaderCardTypesStaticsCache.get();
        return try factory.getBank();
    }
    pub fn get_Aamva() core.HResult!u32 {
        const factory = @This().IMagneticStripeReaderCardTypesStaticsCache.get();
        return try factory.getAamva();
    }
    pub fn get_ExtendedBase() core.HResult!u32 {
        const factory = @This().IMagneticStripeReaderCardTypesStaticsCache.get();
        return try factory.getExtendedBase();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.MagneticStripeReaderCardTypes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMagneticStripeReaderCardTypesStaticsCache: FactoryCache(IMagneticStripeReaderCardTypesStatics, RUNTIME_NAME) = .{};
};
pub const MagneticStripeReaderEncryptionAlgorithms = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_None() core.HResult!u32 {
        const factory = @This().IMagneticStripeReaderEncryptionAlgorithmsStaticsCache.get();
        return try factory.getNone();
    }
    pub fn get_TripleDesDukpt() core.HResult!u32 {
        const factory = @This().IMagneticStripeReaderEncryptionAlgorithmsStaticsCache.get();
        return try factory.getTripleDesDukpt();
    }
    pub fn get_ExtendedBase() core.HResult!u32 {
        const factory = @This().IMagneticStripeReaderEncryptionAlgorithmsStaticsCache.get();
        return try factory.getExtendedBase();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.MagneticStripeReaderEncryptionAlgorithms";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IMagneticStripeReaderEncryptionAlgorithmsStaticsCache: FactoryCache(IMagneticStripeReaderEncryptionAlgorithmsStatics, RUNTIME_NAME) = .{};
};
pub const MagneticStripeReaderErrorOccurredEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTrack1Status(self: *@This()) core.HResult!MagneticStripeReaderTrackErrorType {
        const this: *IMagneticStripeReaderErrorOccurredEventArgs = @ptrCast(self);
        return try this.getTrack1Status();
    }
    pub fn getTrack2Status(self: *@This()) core.HResult!MagneticStripeReaderTrackErrorType {
        const this: *IMagneticStripeReaderErrorOccurredEventArgs = @ptrCast(self);
        return try this.getTrack2Status();
    }
    pub fn getTrack3Status(self: *@This()) core.HResult!MagneticStripeReaderTrackErrorType {
        const this: *IMagneticStripeReaderErrorOccurredEventArgs = @ptrCast(self);
        return try this.getTrack3Status();
    }
    pub fn getTrack4Status(self: *@This()) core.HResult!MagneticStripeReaderTrackErrorType {
        const this: *IMagneticStripeReaderErrorOccurredEventArgs = @ptrCast(self);
        return try this.getTrack4Status();
    }
    pub fn getErrorData(self: *@This()) core.HResult!*UnifiedPosErrorData {
        const this: *IMagneticStripeReaderErrorOccurredEventArgs = @ptrCast(self);
        return try this.getErrorData();
    }
    pub fn getPartialInputData(self: *@This()) core.HResult!*MagneticStripeReaderReport {
        const this: *IMagneticStripeReaderErrorOccurredEventArgs = @ptrCast(self);
        return try this.getPartialInputData();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.MagneticStripeReaderErrorOccurredEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMagneticStripeReaderErrorOccurredEventArgs.GUID;
    pub const IID: Guid = IMagneticStripeReaderErrorOccurredEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMagneticStripeReaderErrorOccurredEventArgs.SIGNATURE);
};
pub const MagneticStripeReaderErrorReportingType = enum(i32) {
    CardLevel = 0,
    TrackLevel = 1,
};
pub const MagneticStripeReaderReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCardType(self: *@This()) core.HResult!u32 {
        const this: *IMagneticStripeReaderReport = @ptrCast(self);
        return try this.getCardType();
    }
    pub fn getTrack1(self: *@This()) core.HResult!*MagneticStripeReaderTrackData {
        const this: *IMagneticStripeReaderReport = @ptrCast(self);
        return try this.getTrack1();
    }
    pub fn getTrack2(self: *@This()) core.HResult!*MagneticStripeReaderTrackData {
        const this: *IMagneticStripeReaderReport = @ptrCast(self);
        return try this.getTrack2();
    }
    pub fn getTrack3(self: *@This()) core.HResult!*MagneticStripeReaderTrackData {
        const this: *IMagneticStripeReaderReport = @ptrCast(self);
        return try this.getTrack3();
    }
    pub fn getTrack4(self: *@This()) core.HResult!*MagneticStripeReaderTrackData {
        const this: *IMagneticStripeReaderReport = @ptrCast(self);
        return try this.getTrack4();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        const this: *IMagneticStripeReaderReport = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getCardAuthenticationData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMagneticStripeReaderReport = @ptrCast(self);
        return try this.getCardAuthenticationData();
    }
    pub fn getCardAuthenticationDataLength(self: *@This()) core.HResult!u32 {
        const this: *IMagneticStripeReaderReport = @ptrCast(self);
        return try this.getCardAuthenticationDataLength();
    }
    pub fn getAdditionalSecurityInformation(self: *@This()) core.HResult!*IBuffer {
        const this: *IMagneticStripeReaderReport = @ptrCast(self);
        return try this.getAdditionalSecurityInformation();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.MagneticStripeReaderReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMagneticStripeReaderReport.GUID;
    pub const IID: Guid = IMagneticStripeReaderReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMagneticStripeReaderReport.SIGNATURE);
};
pub const MagneticStripeReaderStatus = enum(i32) {
    Unauthenticated = 0,
    Authenticated = 1,
    Extended = 2,
};
pub const MagneticStripeReaderStatusUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!MagneticStripeReaderStatus {
        const this: *IMagneticStripeReaderStatusUpdatedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedStatus(self: *@This()) core.HResult!u32 {
        const this: *IMagneticStripeReaderStatusUpdatedEventArgs = @ptrCast(self);
        return try this.getExtendedStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.MagneticStripeReaderStatusUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMagneticStripeReaderStatusUpdatedEventArgs.GUID;
    pub const IID: Guid = IMagneticStripeReaderStatusUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMagneticStripeReaderStatusUpdatedEventArgs.SIGNATURE);
};
pub const MagneticStripeReaderTrackData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMagneticStripeReaderTrackData = @ptrCast(self);
        return try this.getData();
    }
    pub fn getDiscretionaryData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMagneticStripeReaderTrackData = @ptrCast(self);
        return try this.getDiscretionaryData();
    }
    pub fn getEncryptedData(self: *@This()) core.HResult!*IBuffer {
        const this: *IMagneticStripeReaderTrackData = @ptrCast(self);
        return try this.getEncryptedData();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.MagneticStripeReaderTrackData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMagneticStripeReaderTrackData.GUID;
    pub const IID: Guid = IMagneticStripeReaderTrackData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMagneticStripeReaderTrackData.SIGNATURE);
};
pub const MagneticStripeReaderTrackErrorType = enum(i32) {
    None = 0,
    StartSentinelError = 1,
    EndSentinelError = 2,
    ParityError = 3,
    LrcError = 4,
    Unknown = -1,
};
pub const MagneticStripeReaderTrackIds = enum(i32) {
    None = 0,
    Track1 = 1,
    Track2 = 2,
    Track3 = 4,
    Track4 = 8,
};
pub const MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReport(self: *@This()) core.HResult!*MagneticStripeReaderReport {
        const this: *IMagneticStripeReaderVendorSpecificCardDataReceivedEventArgs = @ptrCast(self);
        return try this.getReport();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.MagneticStripeReaderVendorSpecificCardDataReceivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMagneticStripeReaderVendorSpecificCardDataReceivedEventArgs.GUID;
    pub const IID: Guid = IMagneticStripeReaderVendorSpecificCardDataReceivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMagneticStripeReaderVendorSpecificCardDataReceivedEventArgs.SIGNATURE);
};
pub const PosConnectionTypes = enum(i32) {
    Local = 1,
    IP = 2,
    Bluetooth = 4,
    All = -1,
};
pub const PosPrinter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IPosPrinter = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getCapabilities(self: *@This()) core.HResult!*PosPrinterCapabilities {
        const this: *IPosPrinter = @ptrCast(self);
        return try this.getCapabilities();
    }
    pub fn getSupportedCharacterSets(self: *@This()) core.HResult!*IVectorView(u32) {
        const this: *IPosPrinter = @ptrCast(self);
        return try this.getSupportedCharacterSets();
    }
    pub fn getSupportedTypeFaces(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IPosPrinter = @ptrCast(self);
        return try this.getSupportedTypeFaces();
    }
    pub fn getStatus(self: *@This()) core.HResult!*PosPrinterStatus {
        const this: *IPosPrinter = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn ClaimPrinterAsync(self: *@This()) core.HResult!*IAsyncOperation(ClaimedPosPrinter) {
        const this: *IPosPrinter = @ptrCast(self);
        return try this.ClaimPrinterAsync();
    }
    pub fn CheckHealthAsync(self: *@This(), level: UnifiedPosHealthCheckLevel) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IPosPrinter = @ptrCast(self);
        return try this.CheckHealthAsync(level);
    }
    pub fn GetStatisticsAsync(self: *@This(), statisticsCategories: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(HSTRING) {
        const this: *IPosPrinter = @ptrCast(self);
        return try this.GetStatisticsAsync(statisticsCategories);
    }
    pub fn addStatusUpdated(self: *@This(), handler: *TypedEventHandler(PosPrinter,PosPrinterStatusUpdatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IPosPrinter = @ptrCast(self);
        return try this.addStatusUpdated(handler);
    }
    pub fn removeStatusUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPosPrinter = @ptrCast(self);
        return try this.removeStatusUpdated(token);
    }
    pub fn getSupportedBarcodeSymbologies(self: *@This()) core.HResult!*IVectorView(u32) {
        var this: ?*IPosPrinter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPosPrinter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedBarcodeSymbologies();
    }
    pub fn GetFontProperty(self: *@This(), typeface: HSTRING) core.HResult!*PosPrinterFontProperty {
        var this: ?*IPosPrinter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPosPrinter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFontProperty(typeface);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDeviceSelectorWithConnectionTypes(connectionTypes: PosConnectionTypes) core.HResult!HSTRING {
        const factory = @This().IPosPrinterStatics2Cache.get();
        return try factory.GetDeviceSelector(connectionTypes);
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(PosPrinter) {
        const factory = @This().IPosPrinterStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(PosPrinter) {
        const factory = @This().IPosPrinterStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IPosPrinterStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.PosPrinter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPosPrinter.GUID;
    pub const IID: Guid = IPosPrinter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPosPrinter.SIGNATURE);
    var _IPosPrinterStatics2Cache: FactoryCache(IPosPrinterStatics2, RUNTIME_NAME) = .{};
    var _IPosPrinterStaticsCache: FactoryCache(IPosPrinterStatics, RUNTIME_NAME) = .{};
};
pub const PosPrinterAlignment = enum(i32) {
    Left = 0,
    Center = 1,
    Right = 2,
};
pub const PosPrinterBarcodeTextPosition = enum(i32) {
    None = 0,
    Above = 1,
    Below = 2,
};
pub const PosPrinterCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPowerReportingType(self: *@This()) core.HResult!UnifiedPosPowerReportingType {
        const this: *IPosPrinterCapabilities = @ptrCast(self);
        return try this.getPowerReportingType();
    }
    pub fn getIsStatisticsReportingSupported(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterCapabilities = @ptrCast(self);
        return try this.getIsStatisticsReportingSupported();
    }
    pub fn getIsStatisticsUpdatingSupported(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterCapabilities = @ptrCast(self);
        return try this.getIsStatisticsUpdatingSupported();
    }
    pub fn getDefaultCharacterSet(self: *@This()) core.HResult!u32 {
        const this: *IPosPrinterCapabilities = @ptrCast(self);
        return try this.getDefaultCharacterSet();
    }
    pub fn getHasCoverSensor(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterCapabilities = @ptrCast(self);
        return try this.getHasCoverSensor();
    }
    pub fn getCanMapCharacterSet(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterCapabilities = @ptrCast(self);
        return try this.getCanMapCharacterSet();
    }
    pub fn getIsTransactionSupported(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterCapabilities = @ptrCast(self);
        return try this.getIsTransactionSupported();
    }
    pub fn getReceipt(self: *@This()) core.HResult!*ReceiptPrinterCapabilities {
        const this: *IPosPrinterCapabilities = @ptrCast(self);
        return try this.getReceipt();
    }
    pub fn getSlip(self: *@This()) core.HResult!*SlipPrinterCapabilities {
        const this: *IPosPrinterCapabilities = @ptrCast(self);
        return try this.getSlip();
    }
    pub fn getJournal(self: *@This()) core.HResult!*JournalPrinterCapabilities {
        const this: *IPosPrinterCapabilities = @ptrCast(self);
        return try this.getJournal();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.PosPrinterCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPosPrinterCapabilities.GUID;
    pub const IID: Guid = IPosPrinterCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPosPrinterCapabilities.SIGNATURE);
};
pub const PosPrinterCartridgeSensors = enum(i32) {
    None = 0,
    Removed = 1,
    Empty = 2,
    HeadCleaning = 4,
    NearEnd = 8,
};
pub const PosPrinterCharacterSetIds = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_Utf16LE() core.HResult!u32 {
        const factory = @This().IPosPrinterCharacterSetIdsStaticsCache.get();
        return try factory.getUtf16LE();
    }
    pub fn get_Ascii() core.HResult!u32 {
        const factory = @This().IPosPrinterCharacterSetIdsStaticsCache.get();
        return try factory.getAscii();
    }
    pub fn get_Ansi() core.HResult!u32 {
        const factory = @This().IPosPrinterCharacterSetIdsStaticsCache.get();
        return try factory.getAnsi();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.PosPrinterCharacterSetIds";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IPosPrinterCharacterSetIdsStaticsCache: FactoryCache(IPosPrinterCharacterSetIdsStatics, RUNTIME_NAME) = .{};
};
pub const PosPrinterColorCapabilities = enum(i32) {
    None = 0,
    Primary = 1,
    Custom1 = 2,
    Custom2 = 4,
    Custom3 = 8,
    Custom4 = 16,
    Custom5 = 32,
    Custom6 = 64,
    Cyan = 128,
    Magenta = 256,
    Yellow = 512,
    Full = 1024,
};
pub const PosPrinterColorCartridge = enum(i32) {
    Unknown = 0,
    Primary = 1,
    Custom1 = 2,
    Custom2 = 3,
    Custom3 = 4,
    Custom4 = 5,
    Custom5 = 6,
    Custom6 = 7,
    Cyan = 8,
    Magenta = 9,
    Yellow = 10,
};
pub const PosPrinterFontProperty = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTypeFace(self: *@This()) core.HResult!HSTRING {
        const this: *IPosPrinterFontProperty = @ptrCast(self);
        return try this.getTypeFace();
    }
    pub fn getIsScalableToAnySize(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterFontProperty = @ptrCast(self);
        return try this.getIsScalableToAnySize();
    }
    pub fn getCharacterSizes(self: *@This()) core.HResult!*IVectorView(SizeUInt32) {
        const this: *IPosPrinterFontProperty = @ptrCast(self);
        return try this.getCharacterSizes();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.PosPrinterFontProperty";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPosPrinterFontProperty.GUID;
    pub const IID: Guid = IPosPrinterFontProperty.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPosPrinterFontProperty.SIGNATURE);
};
pub const PosPrinterLineDirection = enum(i32) {
    Horizontal = 0,
    Vertical = 1,
};
pub const PosPrinterLineStyle = enum(i32) {
    SingleSolid = 0,
    DoubleSolid = 1,
    Broken = 2,
    Chain = 3,
};
pub const PosPrinterMapMode = enum(i32) {
    Dots = 0,
    Twips = 1,
    English = 2,
    Metric = 3,
};
pub const PosPrinterMarkFeedCapabilities = enum(i32) {
    None = 0,
    ToTakeUp = 1,
    ToCutter = 2,
    ToCurrentTopOfForm = 4,
    ToNextTopOfForm = 8,
};
pub const PosPrinterMarkFeedKind = enum(i32) {
    ToTakeUp = 0,
    ToCutter = 1,
    ToCurrentTopOfForm = 2,
    ToNextTopOfForm = 3,
};
pub const PosPrinterPrintOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTypeFace(self: *@This()) core.HResult!HSTRING {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.getTypeFace();
    }
    pub fn putTypeFace(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.putTypeFace(value);
    }
    pub fn getCharacterHeight(self: *@This()) core.HResult!u32 {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.getCharacterHeight();
    }
    pub fn putCharacterHeight(self: *@This(), value: u32) core.HResult!void {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.putCharacterHeight(value);
    }
    pub fn getBold(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.getBold();
    }
    pub fn putBold(self: *@This(), value: bool) core.HResult!void {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.putBold(value);
    }
    pub fn getItalic(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.getItalic();
    }
    pub fn putItalic(self: *@This(), value: bool) core.HResult!void {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.putItalic(value);
    }
    pub fn getUnderline(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.getUnderline();
    }
    pub fn putUnderline(self: *@This(), value: bool) core.HResult!void {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.putUnderline(value);
    }
    pub fn getReverseVideo(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.getReverseVideo();
    }
    pub fn putReverseVideo(self: *@This(), value: bool) core.HResult!void {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.putReverseVideo(value);
    }
    pub fn getStrikethrough(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.getStrikethrough();
    }
    pub fn putStrikethrough(self: *@This(), value: bool) core.HResult!void {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.putStrikethrough(value);
    }
    pub fn getSuperscript(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.getSuperscript();
    }
    pub fn putSuperscript(self: *@This(), value: bool) core.HResult!void {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.putSuperscript(value);
    }
    pub fn getSubscript(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.getSubscript();
    }
    pub fn putSubscript(self: *@This(), value: bool) core.HResult!void {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.putSubscript(value);
    }
    pub fn getDoubleWide(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.getDoubleWide();
    }
    pub fn putDoubleWide(self: *@This(), value: bool) core.HResult!void {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.putDoubleWide(value);
    }
    pub fn getDoubleHigh(self: *@This()) core.HResult!bool {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.getDoubleHigh();
    }
    pub fn putDoubleHigh(self: *@This(), value: bool) core.HResult!void {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.putDoubleHigh(value);
    }
    pub fn getAlignment(self: *@This()) core.HResult!PosPrinterAlignment {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.getAlignment();
    }
    pub fn putAlignment(self: *@This(), value: PosPrinterAlignment) core.HResult!void {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.putAlignment(value);
    }
    pub fn getCharacterSet(self: *@This()) core.HResult!u32 {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.getCharacterSet();
    }
    pub fn putCharacterSet(self: *@This(), value: u32) core.HResult!void {
        const this: *IPosPrinterPrintOptions = @ptrCast(self);
        return try this.putCharacterSet(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPosPrinterPrintOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.PosPrinterPrintOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPosPrinterPrintOptions.GUID;
    pub const IID: Guid = IPosPrinterPrintOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPosPrinterPrintOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PosPrinterPrintSide = enum(i32) {
    Unknown = 0,
    Side1 = 1,
    Side2 = 2,
};
pub const PosPrinterReleaseDeviceRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.PosPrinterReleaseDeviceRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPosPrinterReleaseDeviceRequestedEventArgs.GUID;
    pub const IID: Guid = IPosPrinterReleaseDeviceRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPosPrinterReleaseDeviceRequestedEventArgs.SIGNATURE);
};
pub const PosPrinterRotation = enum(i32) {
    Normal = 0,
    Right90 = 1,
    Left90 = 2,
    Rotate180 = 3,
};
pub const PosPrinterRuledLineCapabilities = enum(i32) {
    None = 0,
    Horizontal = 1,
    Vertical = 2,
};
pub const PosPrinterStatus = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatusKind(self: *@This()) core.HResult!PosPrinterStatusKind {
        const this: *IPosPrinterStatus = @ptrCast(self);
        return try this.getStatusKind();
    }
    pub fn getExtendedStatus(self: *@This()) core.HResult!u32 {
        const this: *IPosPrinterStatus = @ptrCast(self);
        return try this.getExtendedStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.PosPrinterStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPosPrinterStatus.GUID;
    pub const IID: Guid = IPosPrinterStatus.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPosPrinterStatus.SIGNATURE);
};
pub const PosPrinterStatusKind = enum(i32) {
    Online = 0,
    Off = 1,
    Offline = 2,
    OffOrOffline = 3,
    Extended = 4,
};
pub const PosPrinterStatusUpdatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!*PosPrinterStatus {
        const this: *IPosPrinterStatusUpdatedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.PosPrinterStatusUpdatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPosPrinterStatusUpdatedEventArgs.GUID;
    pub const IID: Guid = IPosPrinterStatusUpdatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPosPrinterStatusUpdatedEventArgs.SIGNATURE);
};
pub const ReceiptPrintJob = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn MarkFeed(self: *@This(), kind: PosPrinterMarkFeedKind) core.HResult!void {
        const this: *IReceiptPrintJob = @ptrCast(self);
        return try this.MarkFeed(kind);
    }
    pub fn CutPaperWithPercentage(self: *@This(), percentage: f64) core.HResult!void {
        const this: *IReceiptPrintJob = @ptrCast(self);
        return try this.CutPaperWithPercentage(percentage);
    }
    pub fn CutPaper(self: *@This()) core.HResult!void {
        const this: *IReceiptPrintJob = @ptrCast(self);
        return try this.CutPaper();
    }
    pub fn StampPaper(self: *@This()) core.HResult!void {
        var this: ?*IReceiptPrintJob2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptPrintJob2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StampPaper();
    }
    pub fn PrintWithPrintOptions(self: *@This(), data: HSTRING, printOptions: *PosPrinterPrintOptions) core.HResult!void {
        var this: ?*IReceiptPrintJob2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptPrintJob2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintWithPrintOptions(data, printOptions);
    }
    pub fn FeedPaperByLine(self: *@This(), lineCount: i32) core.HResult!void {
        var this: ?*IReceiptPrintJob2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptPrintJob2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FeedPaperByLine(lineCount);
    }
    pub fn FeedPaperByMapModeUnit(self: *@This(), distance: i32) core.HResult!void {
        var this: ?*IReceiptPrintJob2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptPrintJob2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FeedPaperByMapModeUnit(distance);
    }
    pub fn SetBarcodeRotation(self: *@This(), value: PosPrinterRotation) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetBarcodeRotation(value);
    }
    pub fn SetPrintRotation(self: *@This(), value: PosPrinterRotation, includeBitmaps: bool) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPrintRotation(value, includeBitmaps);
    }
    pub fn SetPrintArea(self: *@This(), value: Rect) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPrintArea(value);
    }
    pub fn SetBitmap(self: *@This(), bitmapNumber: u32, bitmap: *BitmapFrame, alignment: PosPrinterAlignment) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetBitmap(bitmapNumber, bitmap, alignment);
    }
    pub fn SetBitmapWithWidth(self: *@This(), bitmapNumber: u32, bitmap: *BitmapFrame, alignment: PosPrinterAlignment, width: u32) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetBitmapWithWidth(bitmapNumber, bitmap, alignment, width);
    }
    pub fn SetCustomAlignedBitmap(self: *@This(), bitmapNumber: u32, bitmap: *BitmapFrame, alignmentDistance: u32) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetCustomAlignedBitmap(bitmapNumber, bitmap, alignmentDistance);
    }
    pub fn SetCustomAlignedBitmapWithWidth(self: *@This(), bitmapNumber: u32, bitmap: *BitmapFrame, alignmentDistance: u32, width: u32) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetCustomAlignedBitmapWithWidth(bitmapNumber, bitmap, alignmentDistance, width);
    }
    pub fn PrintSavedBitmap(self: *@This(), bitmapNumber: u32) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintSavedBitmap(bitmapNumber);
    }
    pub fn DrawRuledLine(self: *@This(), positionList: HSTRING, lineDirection: PosPrinterLineDirection, lineWidth: u32, lineStyle: PosPrinterLineStyle, lineColor: u32) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DrawRuledLine(positionList, lineDirection, lineWidth, lineStyle, lineColor);
    }
    pub fn PrintBarcode(self: *@This(), data: HSTRING, symbology: u32, height: u32, width: u32, textPosition: PosPrinterBarcodeTextPosition, alignment: PosPrinterAlignment) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintBarcode(data, symbology, height, width, textPosition, alignment);
    }
    pub fn PrintBarcodeCustomAlign(self: *@This(), data: HSTRING, symbology: u32, height: u32, width: u32, textPosition: PosPrinterBarcodeTextPosition, alignmentDistance: u32) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintBarcodeCustomAlign(data, symbology, height, width, textPosition, alignmentDistance);
    }
    pub fn PrintBitmap(self: *@This(), bitmap: *BitmapFrame, alignment: PosPrinterAlignment) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintBitmap(bitmap, alignment);
    }
    pub fn PrintBitmapWithWidth(self: *@This(), bitmap: *BitmapFrame, alignment: PosPrinterAlignment, width: u32) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintBitmapWithWidth(bitmap, alignment, width);
    }
    pub fn PrintCustomAlignedBitmap(self: *@This(), bitmap: *BitmapFrame, alignmentDistance: u32) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintCustomAlignedBitmap(bitmap, alignmentDistance);
    }
    pub fn PrintCustomAlignedBitmapWithWidth(self: *@This(), bitmap: *BitmapFrame, alignmentDistance: u32, width: u32) core.HResult!void {
        var this: ?*IReceiptOrSlipJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptOrSlipJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintCustomAlignedBitmapWithWidth(bitmap, alignmentDistance, width);
    }
    pub fn Print(self: *@This(), data: HSTRING) core.HResult!void {
        var this: ?*IPosPrinterJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPosPrinterJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Print(data);
    }
    pub fn PrintLineWithData(self: *@This(), data: HSTRING) core.HResult!void {
        var this: ?*IPosPrinterJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPosPrinterJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintLineWithData(data);
    }
    pub fn PrintLine(self: *@This()) core.HResult!void {
        var this: ?*IPosPrinterJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPosPrinterJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintLine();
    }
    pub fn ExecuteAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IPosPrinterJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPosPrinterJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ExecuteAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ReceiptPrintJob";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IReceiptPrintJob.GUID;
    pub const IID: Guid = IReceiptPrintJob.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IReceiptPrintJob.SIGNATURE);
};
pub const ReceiptPrinterCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanCutPaper(self: *@This()) core.HResult!bool {
        const this: *IReceiptPrinterCapabilities = @ptrCast(self);
        return try this.getCanCutPaper();
    }
    pub fn getIsStampSupported(self: *@This()) core.HResult!bool {
        const this: *IReceiptPrinterCapabilities = @ptrCast(self);
        return try this.getIsStampSupported();
    }
    pub fn getMarkFeedCapabilities(self: *@This()) core.HResult!PosPrinterMarkFeedCapabilities {
        const this: *IReceiptPrinterCapabilities = @ptrCast(self);
        return try this.getMarkFeedCapabilities();
    }
    pub fn getIsReverseVideoSupported(self: *@This()) core.HResult!bool {
        var this: ?*IReceiptPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReverseVideoSupported();
    }
    pub fn getIsStrikethroughSupported(self: *@This()) core.HResult!bool {
        var this: ?*IReceiptPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsStrikethroughSupported();
    }
    pub fn getIsSuperscriptSupported(self: *@This()) core.HResult!bool {
        var this: ?*IReceiptPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSuperscriptSupported();
    }
    pub fn getIsSubscriptSupported(self: *@This()) core.HResult!bool {
        var this: ?*IReceiptPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSubscriptSupported();
    }
    pub fn getIsReversePaperFeedByLineSupported(self: *@This()) core.HResult!bool {
        var this: ?*IReceiptPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReversePaperFeedByLineSupported();
    }
    pub fn getIsReversePaperFeedByMapModeUnitSupported(self: *@This()) core.HResult!bool {
        var this: ?*IReceiptPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IReceiptPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReversePaperFeedByMapModeUnitSupported();
    }
    pub fn getIsBarcodeSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsBarcodeSupported();
    }
    pub fn getIsBitmapSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsBitmapSupported();
    }
    pub fn getIsLeft90RotationSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsLeft90RotationSupported();
    }
    pub fn getIsRight90RotationSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRight90RotationSupported();
    }
    pub fn getIs180RotationSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIs180RotationSupported();
    }
    pub fn getIsPrintAreaSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPrintAreaSupported();
    }
    pub fn getRuledLineCapabilities(self: *@This()) core.HResult!PosPrinterRuledLineCapabilities {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRuledLineCapabilities();
    }
    pub fn getSupportedBarcodeRotations(self: *@This()) core.HResult!*IVectorView(PosPrinterRotation) {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedBarcodeRotations();
    }
    pub fn getSupportedBitmapRotations(self: *@This()) core.HResult!*IVectorView(PosPrinterRotation) {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedBitmapRotations();
    }
    pub fn getIsPrinterPresent(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPrinterPresent();
    }
    pub fn getIsDualColorSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDualColorSupported();
    }
    pub fn getColorCartridgeCapabilities(self: *@This()) core.HResult!PosPrinterColorCapabilities {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getColorCartridgeCapabilities();
    }
    pub fn getCartridgeSensors(self: *@This()) core.HResult!PosPrinterCartridgeSensors {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCartridgeSensors();
    }
    pub fn getIsBoldSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsBoldSupported();
    }
    pub fn getIsItalicSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsItalicSupported();
    }
    pub fn getIsUnderlineSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsUnderlineSupported();
    }
    pub fn getIsDoubleHighPrintSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDoubleHighPrintSupported();
    }
    pub fn getIsDoubleWidePrintSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDoubleWidePrintSupported();
    }
    pub fn getIsDoubleHighDoubleWidePrintSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDoubleHighDoubleWidePrintSupported();
    }
    pub fn getIsPaperEmptySensorSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPaperEmptySensorSupported();
    }
    pub fn getIsPaperNearEndSensorSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPaperNearEndSensorSupported();
    }
    pub fn getSupportedCharactersPerLine(self: *@This()) core.HResult!*IVectorView(u32) {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedCharactersPerLine();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.ReceiptPrinterCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IReceiptPrinterCapabilities.GUID;
    pub const IID: Guid = IReceiptPrinterCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IReceiptPrinterCapabilities.SIGNATURE);
};
pub const SizeUInt32 = extern struct {
    Width: u32,
    Height: u32,
};
pub const SlipPrintJob = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn PrintWithPrintOptions(self: *@This(), data: HSTRING, printOptions: *PosPrinterPrintOptions) core.HResult!void {
        var this: ?*ISlipPrintJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISlipPrintJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintWithPrintOptions(data, printOptions);
    }
    pub fn FeedPaperByLine(self: *@This(), lineCount: i32) core.HResult!void {
        var this: ?*ISlipPrintJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISlipPrintJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FeedPaperByLine(lineCount);
    }
    pub fn FeedPaperByMapModeUnit(self: *@This(), distance: i32) core.HResult!void {
        var this: ?*ISlipPrintJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISlipPrintJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FeedPaperByMapModeUnit(distance);
    }
    pub fn SetBarcodeRotation(self: *@This(), value: PosPrinterRotation) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.SetBarcodeRotation(value);
    }
    pub fn SetPrintRotation(self: *@This(), value: PosPrinterRotation, includeBitmaps: bool) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.SetPrintRotation(value, includeBitmaps);
    }
    pub fn SetPrintArea(self: *@This(), value: Rect) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.SetPrintArea(value);
    }
    pub fn SetBitmap(self: *@This(), bitmapNumber: u32, bitmap: *BitmapFrame, alignment: PosPrinterAlignment) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.SetBitmap(bitmapNumber, bitmap, alignment);
    }
    pub fn SetBitmapWithWidth(self: *@This(), bitmapNumber: u32, bitmap: *BitmapFrame, alignment: PosPrinterAlignment, width: u32) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.SetBitmapWithWidth(bitmapNumber, bitmap, alignment, width);
    }
    pub fn SetCustomAlignedBitmap(self: *@This(), bitmapNumber: u32, bitmap: *BitmapFrame, alignmentDistance: u32) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.SetCustomAlignedBitmap(bitmapNumber, bitmap, alignmentDistance);
    }
    pub fn SetCustomAlignedBitmapWithWidth(self: *@This(), bitmapNumber: u32, bitmap: *BitmapFrame, alignmentDistance: u32, width: u32) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.SetCustomAlignedBitmapWithWidth(bitmapNumber, bitmap, alignmentDistance, width);
    }
    pub fn PrintSavedBitmap(self: *@This(), bitmapNumber: u32) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.PrintSavedBitmap(bitmapNumber);
    }
    pub fn DrawRuledLine(self: *@This(), positionList: HSTRING, lineDirection: PosPrinterLineDirection, lineWidth: u32, lineStyle: PosPrinterLineStyle, lineColor: u32) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.DrawRuledLine(positionList, lineDirection, lineWidth, lineStyle, lineColor);
    }
    pub fn PrintBarcode(self: *@This(), data: HSTRING, symbology: u32, height: u32, width: u32, textPosition: PosPrinterBarcodeTextPosition, alignment: PosPrinterAlignment) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.PrintBarcode(data, symbology, height, width, textPosition, alignment);
    }
    pub fn PrintBarcodeCustomAlign(self: *@This(), data: HSTRING, symbology: u32, height: u32, width: u32, textPosition: PosPrinterBarcodeTextPosition, alignmentDistance: u32) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.PrintBarcodeCustomAlign(data, symbology, height, width, textPosition, alignmentDistance);
    }
    pub fn PrintBitmap(self: *@This(), bitmap: *BitmapFrame, alignment: PosPrinterAlignment) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.PrintBitmap(bitmap, alignment);
    }
    pub fn PrintBitmapWithWidth(self: *@This(), bitmap: *BitmapFrame, alignment: PosPrinterAlignment, width: u32) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.PrintBitmapWithWidth(bitmap, alignment, width);
    }
    pub fn PrintCustomAlignedBitmap(self: *@This(), bitmap: *BitmapFrame, alignmentDistance: u32) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.PrintCustomAlignedBitmap(bitmap, alignmentDistance);
    }
    pub fn PrintCustomAlignedBitmapWithWidth(self: *@This(), bitmap: *BitmapFrame, alignmentDistance: u32, width: u32) core.HResult!void {
        const this: *IReceiptOrSlipJob = @ptrCast(self);
        return try this.PrintCustomAlignedBitmapWithWidth(bitmap, alignmentDistance, width);
    }
    pub fn Print(self: *@This(), data: HSTRING) core.HResult!void {
        var this: ?*IPosPrinterJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPosPrinterJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Print(data);
    }
    pub fn PrintLineWithData(self: *@This(), data: HSTRING) core.HResult!void {
        var this: ?*IPosPrinterJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPosPrinterJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintLineWithData(data);
    }
    pub fn PrintLine(self: *@This()) core.HResult!void {
        var this: ?*IPosPrinterJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPosPrinterJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrintLine();
    }
    pub fn ExecuteAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IPosPrinterJob = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPosPrinterJob.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ExecuteAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.SlipPrintJob";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IReceiptOrSlipJob.GUID;
    pub const IID: Guid = IReceiptOrSlipJob.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IReceiptOrSlipJob.SIGNATURE);
};
pub const SlipPrinterCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsFullLengthSupported(self: *@This()) core.HResult!bool {
        const this: *ISlipPrinterCapabilities = @ptrCast(self);
        return try this.getIsFullLengthSupported();
    }
    pub fn getIsBothSidesPrintingSupported(self: *@This()) core.HResult!bool {
        const this: *ISlipPrinterCapabilities = @ptrCast(self);
        return try this.getIsBothSidesPrintingSupported();
    }
    pub fn getIsReverseVideoSupported(self: *@This()) core.HResult!bool {
        var this: ?*ISlipPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISlipPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReverseVideoSupported();
    }
    pub fn getIsStrikethroughSupported(self: *@This()) core.HResult!bool {
        var this: ?*ISlipPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISlipPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsStrikethroughSupported();
    }
    pub fn getIsSuperscriptSupported(self: *@This()) core.HResult!bool {
        var this: ?*ISlipPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISlipPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSuperscriptSupported();
    }
    pub fn getIsSubscriptSupported(self: *@This()) core.HResult!bool {
        var this: ?*ISlipPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISlipPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSubscriptSupported();
    }
    pub fn getIsReversePaperFeedByLineSupported(self: *@This()) core.HResult!bool {
        var this: ?*ISlipPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISlipPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReversePaperFeedByLineSupported();
    }
    pub fn getIsReversePaperFeedByMapModeUnitSupported(self: *@This()) core.HResult!bool {
        var this: ?*ISlipPrinterCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISlipPrinterCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReversePaperFeedByMapModeUnitSupported();
    }
    pub fn getIsBarcodeSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsBarcodeSupported();
    }
    pub fn getIsBitmapSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsBitmapSupported();
    }
    pub fn getIsLeft90RotationSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsLeft90RotationSupported();
    }
    pub fn getIsRight90RotationSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsRight90RotationSupported();
    }
    pub fn getIs180RotationSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIs180RotationSupported();
    }
    pub fn getIsPrintAreaSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPrintAreaSupported();
    }
    pub fn getRuledLineCapabilities(self: *@This()) core.HResult!PosPrinterRuledLineCapabilities {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRuledLineCapabilities();
    }
    pub fn getSupportedBarcodeRotations(self: *@This()) core.HResult!*IVectorView(PosPrinterRotation) {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedBarcodeRotations();
    }
    pub fn getSupportedBitmapRotations(self: *@This()) core.HResult!*IVectorView(PosPrinterRotation) {
        var this: ?*ICommonReceiptSlipCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonReceiptSlipCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedBitmapRotations();
    }
    pub fn getIsPrinterPresent(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPrinterPresent();
    }
    pub fn getIsDualColorSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDualColorSupported();
    }
    pub fn getColorCartridgeCapabilities(self: *@This()) core.HResult!PosPrinterColorCapabilities {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getColorCartridgeCapabilities();
    }
    pub fn getCartridgeSensors(self: *@This()) core.HResult!PosPrinterCartridgeSensors {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCartridgeSensors();
    }
    pub fn getIsBoldSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsBoldSupported();
    }
    pub fn getIsItalicSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsItalicSupported();
    }
    pub fn getIsUnderlineSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsUnderlineSupported();
    }
    pub fn getIsDoubleHighPrintSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDoubleHighPrintSupported();
    }
    pub fn getIsDoubleWidePrintSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDoubleWidePrintSupported();
    }
    pub fn getIsDoubleHighDoubleWidePrintSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsDoubleHighDoubleWidePrintSupported();
    }
    pub fn getIsPaperEmptySensorSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPaperEmptySensorSupported();
    }
    pub fn getIsPaperNearEndSensorSupported(self: *@This()) core.HResult!bool {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPaperNearEndSensorSupported();
    }
    pub fn getSupportedCharactersPerLine(self: *@This()) core.HResult!*IVectorView(u32) {
        var this: ?*ICommonPosPrintStationCapabilities = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommonPosPrintStationCapabilities.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedCharactersPerLine();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.SlipPrinterCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISlipPrinterCapabilities.GUID;
    pub const IID: Guid = ISlipPrinterCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISlipPrinterCapabilities.SIGNATURE);
};
pub const UnifiedPosErrorData = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IUnifiedPosErrorData = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn getSeverity(self: *@This()) core.HResult!UnifiedPosErrorSeverity {
        const this: *IUnifiedPosErrorData = @ptrCast(self);
        return try this.getSeverity();
    }
    pub fn getReason(self: *@This()) core.HResult!UnifiedPosErrorReason {
        const this: *IUnifiedPosErrorData = @ptrCast(self);
        return try this.getReason();
    }
    pub fn getExtendedReason(self: *@This()) core.HResult!u32 {
        const this: *IUnifiedPosErrorData = @ptrCast(self);
        return try this.getExtendedReason();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(message: HSTRING, severity: UnifiedPosErrorSeverity, reason: UnifiedPosErrorReason, extendedReason: u32) core.HResult!*UnifiedPosErrorData {
        const factory = @This().IUnifiedPosErrorDataFactoryCache.get();
        return try factory.CreateInstance(message, severity, reason, extendedReason);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.UnifiedPosErrorData";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUnifiedPosErrorData.GUID;
    pub const IID: Guid = IUnifiedPosErrorData.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUnifiedPosErrorData.SIGNATURE);
    var _IUnifiedPosErrorDataFactoryCache: FactoryCache(IUnifiedPosErrorDataFactory, RUNTIME_NAME) = .{};
};
pub const UnifiedPosErrorReason = enum(i32) {
    UnknownErrorReason = 0,
    NoService = 1,
    Disabled = 2,
    Illegal = 3,
    NoHardware = 4,
    Closed = 5,
    Offline = 6,
    Failure = 7,
    Timeout = 8,
    Busy = 9,
    Extended = 10,
};
pub const UnifiedPosErrorSeverity = enum(i32) {
    UnknownErrorSeverity = 0,
    Warning = 1,
    Recoverable = 2,
    Unrecoverable = 3,
    AssistanceRequired = 4,
    Fatal = 5,
};
pub const UnifiedPosHealthCheckLevel = enum(i32) {
    UnknownHealthCheckLevel = 0,
    POSInternal = 1,
    External = 2,
    Interactive = 3,
};
pub const UnifiedPosPowerReportingType = enum(i32) {
    UnknownPowerReportingType = 0,
    Standard = 1,
    Advanced = 2,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const Point = @import("../Foundation.zig").Point;
const FactoryCache = @import("../core.zig").FactoryCache;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const BitmapFrame = @import("../Graphics/Imaging.zig").BitmapFrame;
const Guid = @import("../root.zig").Guid;
const Size = @import("../Foundation.zig").Size;
const IClosable = @import("../Foundation.zig").IClosable;
const HRESULT = @import("../root.zig").HRESULT;
const StorageFile = @import("../Storage.zig").StorageFile;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IRandomAccessStreamWithContentType = @import("../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const EventHandler = @import("../Foundation.zig").EventHandler;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
pub const Provider = @import("./PointOfService/Provider.zig");
