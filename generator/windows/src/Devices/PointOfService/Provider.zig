pub const BarcodeScannerDisableScannerRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerDisableScannerRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerDisableScannerRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub fn ReportFailedAsyncWithReason(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerDisableScannerRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerDisableScannerRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReason(reason);
    }
    pub fn ReportFailedAsyncWithReasonWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerDisableScannerRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerDisableScannerRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReasonWithFailedReasonDescription(reason, failedReasonDescription);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerDisableScannerRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerDisableScannerRequest.GUID;
    pub const IID: Guid = IBarcodeScannerDisableScannerRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerDisableScannerRequest.SIGNATURE);
};
pub const BarcodeScannerDisableScannerRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerDisableScannerRequest {
        const this: *IBarcodeScannerDisableScannerRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IBarcodeScannerDisableScannerRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerDisableScannerRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerDisableScannerRequestEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerDisableScannerRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerDisableScannerRequestEventArgs.SIGNATURE);
};
pub const BarcodeScannerEnableScannerRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerEnableScannerRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerEnableScannerRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub fn ReportFailedAsyncWithReason(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerEnableScannerRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerEnableScannerRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReason(reason);
    }
    pub fn ReportFailedAsyncWithReasonWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerEnableScannerRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerEnableScannerRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReasonWithFailedReasonDescription(reason, failedReasonDescription);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerEnableScannerRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerEnableScannerRequest.GUID;
    pub const IID: Guid = IBarcodeScannerEnableScannerRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerEnableScannerRequest.SIGNATURE);
};
pub const BarcodeScannerEnableScannerRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerEnableScannerRequest {
        const this: *IBarcodeScannerEnableScannerRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IBarcodeScannerEnableScannerRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerEnableScannerRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerEnableScannerRequestEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerEnableScannerRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerEnableScannerRequestEventArgs.SIGNATURE);
};
pub const BarcodeScannerFrameReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IBarcodeScannerFrameReader = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerFrameReader = @ptrCast(self);
        return try this.StopAsync();
    }
    pub fn TryAcquireLatestFrameAsync(self: *@This()) core.HResult!*IAsyncOperation(BarcodeScannerVideoFrame) {
        const this: *IBarcodeScannerFrameReader = @ptrCast(self);
        return try this.TryAcquireLatestFrameAsync();
    }
    pub fn getConnection(self: *@This()) core.HResult!*BarcodeScannerProviderConnection {
        const this: *IBarcodeScannerFrameReader = @ptrCast(self);
        return try this.getConnection();
    }
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(BarcodeScannerFrameReader,BarcodeScannerFrameReaderFrameArrivedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBarcodeScannerFrameReader = @ptrCast(self);
        return try this.addFrameArrived(handler);
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBarcodeScannerFrameReader = @ptrCast(self);
        return try this.removeFrameArrived(token);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerFrameReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerFrameReader.GUID;
    pub const IID: Guid = IBarcodeScannerFrameReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerFrameReader.SIGNATURE);
};
pub const BarcodeScannerFrameReaderFrameArrivedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IBarcodeScannerFrameReaderFrameArrivedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerFrameReaderFrameArrivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerFrameReaderFrameArrivedEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerFrameReaderFrameArrivedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerFrameReaderFrameArrivedEventArgs.SIGNATURE);
};
pub const BarcodeScannerGetSymbologyAttributesRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSymbology(self: *@This()) core.HResult!u32 {
        const this: *IBarcodeScannerGetSymbologyAttributesRequest = @ptrCast(self);
        return try this.getSymbology();
    }
    pub fn ReportCompletedAsync(self: *@This(), attributes: *BarcodeSymbologyAttributes) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerGetSymbologyAttributesRequest = @ptrCast(self);
        return try this.ReportCompletedAsync(attributes);
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerGetSymbologyAttributesRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub fn ReportFailedAsyncWithReason(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerGetSymbologyAttributesRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerGetSymbologyAttributesRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReason(reason);
    }
    pub fn ReportFailedAsyncWithReasonWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerGetSymbologyAttributesRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerGetSymbologyAttributesRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReasonWithFailedReasonDescription(reason, failedReasonDescription);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerGetSymbologyAttributesRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerGetSymbologyAttributesRequest.GUID;
    pub const IID: Guid = IBarcodeScannerGetSymbologyAttributesRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerGetSymbologyAttributesRequest.SIGNATURE);
};
pub const BarcodeScannerGetSymbologyAttributesRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerGetSymbologyAttributesRequest {
        const this: *IBarcodeScannerGetSymbologyAttributesRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IBarcodeScannerGetSymbologyAttributesRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerGetSymbologyAttributesRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerGetSymbologyAttributesRequestEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerGetSymbologyAttributesRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerGetSymbologyAttributesRequestEventArgs.SIGNATURE);
};
pub const BarcodeScannerHideVideoPreviewRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerHideVideoPreviewRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerHideVideoPreviewRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub fn ReportFailedAsyncWithReason(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerHideVideoPreviewRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerHideVideoPreviewRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReason(reason);
    }
    pub fn ReportFailedAsyncWithReasonWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerHideVideoPreviewRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerHideVideoPreviewRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReasonWithFailedReasonDescription(reason, failedReasonDescription);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerHideVideoPreviewRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerHideVideoPreviewRequest.GUID;
    pub const IID: Guid = IBarcodeScannerHideVideoPreviewRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerHideVideoPreviewRequest.SIGNATURE);
};
pub const BarcodeScannerHideVideoPreviewRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerHideVideoPreviewRequest {
        const this: *IBarcodeScannerHideVideoPreviewRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IBarcodeScannerHideVideoPreviewRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerHideVideoPreviewRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerHideVideoPreviewRequestEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerHideVideoPreviewRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerHideVideoPreviewRequestEventArgs.SIGNATURE);
};
pub const BarcodeScannerProviderConnection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.getId();
    }
    pub fn getVideoDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.getVideoDeviceId();
    }
    pub fn getSupportedSymbologies(self: *@This()) core.HResult!*IVector(u32) {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.getSupportedSymbologies();
    }
    pub fn getCompanyName(self: *@This()) core.HResult!HSTRING {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.getCompanyName();
    }
    pub fn putCompanyName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.putCompanyName(value);
    }
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.getName();
    }
    pub fn putName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.putName(value);
    }
    pub fn getVersion(self: *@This()) core.HResult!HSTRING {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.getVersion();
    }
    pub fn putVersion(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.putVersion(value);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.Start();
    }
    pub fn ReportScannedDataAsync(self: *@This(), report: *BarcodeScannerReport) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.ReportScannedDataAsync(report);
    }
    pub fn ReportTriggerStateAsync(self: *@This(), state: BarcodeScannerTriggerState) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.ReportTriggerStateAsync(state);
    }
    pub fn ReportErrorAsync(self: *@This(), errorData: *UnifiedPosErrorData) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.ReportErrorAsync(errorData);
    }
    pub fn ReportErrorAsyncWithIsRetriableWithScanReport(self: *@This(), errorData: *UnifiedPosErrorData, isRetriable: bool, scanReport: *BarcodeScannerReport) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.ReportErrorAsyncWithIsRetriableWithScanReport(errorData, isRetriable, scanReport);
    }
    pub fn addEnableScannerRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerEnableScannerRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.addEnableScannerRequested(handler);
    }
    pub fn removeEnableScannerRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.removeEnableScannerRequested(token);
    }
    pub fn addDisableScannerRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerDisableScannerRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.addDisableScannerRequested(handler);
    }
    pub fn removeDisableScannerRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.removeDisableScannerRequested(token);
    }
    pub fn addSetActiveSymbologiesRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerSetActiveSymbologiesRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.addSetActiveSymbologiesRequested(handler);
    }
    pub fn removeSetActiveSymbologiesRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.removeSetActiveSymbologiesRequested(token);
    }
    pub fn addStartSoftwareTriggerRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerStartSoftwareTriggerRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.addStartSoftwareTriggerRequested(handler);
    }
    pub fn removeStartSoftwareTriggerRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.removeStartSoftwareTriggerRequested(token);
    }
    pub fn addStopSoftwareTriggerRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerStopSoftwareTriggerRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.addStopSoftwareTriggerRequested(handler);
    }
    pub fn removeStopSoftwareTriggerRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.removeStopSoftwareTriggerRequested(token);
    }
    pub fn addGetBarcodeSymbologyAttributesRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerGetSymbologyAttributesRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.addGetBarcodeSymbologyAttributesRequested(handler);
    }
    pub fn removeGetBarcodeSymbologyAttributesRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.removeGetBarcodeSymbologyAttributesRequested(token);
    }
    pub fn addSetBarcodeSymbologyAttributesRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerSetSymbologyAttributesRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.addSetBarcodeSymbologyAttributesRequested(handler);
    }
    pub fn removeSetBarcodeSymbologyAttributesRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.removeSetBarcodeSymbologyAttributesRequested(token);
    }
    pub fn addHideVideoPreviewRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerHideVideoPreviewRequestEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.addHideVideoPreviewRequested(handler);
    }
    pub fn removeHideVideoPreviewRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IBarcodeScannerProviderConnection = @ptrCast(self);
        return try this.removeHideVideoPreviewRequested(token);
    }
    pub fn CreateFrameReaderAsync(self: *@This()) core.HResult!*IAsyncOperation(BarcodeScannerFrameReader) {
        var this: ?*IBarcodeScannerProviderConnection2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerProviderConnection2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFrameReaderAsync();
    }
    pub fn CreateFrameReaderAsyncWithPreferredFormat(self: *@This(), preferredFormat: BitmapPixelFormat) core.HResult!*IAsyncOperation(BarcodeScannerFrameReader) {
        var this: ?*IBarcodeScannerProviderConnection2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerProviderConnection2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFrameReaderAsyncWithPreferredFormat(preferredFormat);
    }
    pub fn CreateFrameReaderAsyncWithPreferredFormatWithPreferredSize(self: *@This(), preferredFormat: BitmapPixelFormat, preferredSize: BitmapSize) core.HResult!*IAsyncOperation(BarcodeScannerFrameReader) {
        var this: ?*IBarcodeScannerProviderConnection2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerProviderConnection2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFrameReaderAsyncWithPreferredFormatWithPreferredSize(preferredFormat, preferredSize);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerProviderConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerProviderConnection.GUID;
    pub const IID: Guid = IBarcodeScannerProviderConnection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerProviderConnection.SIGNATURE);
};
pub const BarcodeScannerProviderTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConnection(self: *@This()) core.HResult!*BarcodeScannerProviderConnection {
        const this: *IBarcodeScannerProviderTriggerDetails = @ptrCast(self);
        return try this.getConnection();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerProviderTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerProviderTriggerDetails.GUID;
    pub const IID: Guid = IBarcodeScannerProviderTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerProviderTriggerDetails.SIGNATURE);
};
pub const BarcodeScannerSetActiveSymbologiesRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSymbologies(self: *@This()) core.HResult!*IVectorView(u32) {
        const this: *IBarcodeScannerSetActiveSymbologiesRequest = @ptrCast(self);
        return try this.getSymbologies();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerSetActiveSymbologiesRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerSetActiveSymbologiesRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub fn ReportFailedAsyncWithReason(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerSetActiveSymbologiesRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerSetActiveSymbologiesRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReason(reason);
    }
    pub fn ReportFailedAsyncWithReasonWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerSetActiveSymbologiesRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerSetActiveSymbologiesRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReasonWithFailedReasonDescription(reason, failedReasonDescription);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerSetActiveSymbologiesRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerSetActiveSymbologiesRequest.GUID;
    pub const IID: Guid = IBarcodeScannerSetActiveSymbologiesRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerSetActiveSymbologiesRequest.SIGNATURE);
};
pub const BarcodeScannerSetActiveSymbologiesRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerSetActiveSymbologiesRequest {
        const this: *IBarcodeScannerSetActiveSymbologiesRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IBarcodeScannerSetActiveSymbologiesRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerSetActiveSymbologiesRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerSetActiveSymbologiesRequestEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerSetActiveSymbologiesRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerSetActiveSymbologiesRequestEventArgs.SIGNATURE);
};
pub const BarcodeScannerSetSymbologyAttributesRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSymbology(self: *@This()) core.HResult!u32 {
        const this: *IBarcodeScannerSetSymbologyAttributesRequest = @ptrCast(self);
        return try this.getSymbology();
    }
    pub fn getAttributes(self: *@This()) core.HResult!*BarcodeSymbologyAttributes {
        const this: *IBarcodeScannerSetSymbologyAttributesRequest = @ptrCast(self);
        return try this.getAttributes();
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerSetSymbologyAttributesRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerSetSymbologyAttributesRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub fn ReportFailedAsyncWithReason(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerSetSymbologyAttributesRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerSetSymbologyAttributesRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReason(reason);
    }
    pub fn ReportFailedAsyncWithReasonWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerSetSymbologyAttributesRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerSetSymbologyAttributesRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReasonWithFailedReasonDescription(reason, failedReasonDescription);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerSetSymbologyAttributesRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerSetSymbologyAttributesRequest.GUID;
    pub const IID: Guid = IBarcodeScannerSetSymbologyAttributesRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerSetSymbologyAttributesRequest.SIGNATURE);
};
pub const BarcodeScannerSetSymbologyAttributesRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerSetSymbologyAttributesRequest {
        const this: *IBarcodeScannerSetSymbologyAttributesRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IBarcodeScannerSetSymbologyAttributesRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerSetSymbologyAttributesRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerSetSymbologyAttributesRequestEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerSetSymbologyAttributesRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerSetSymbologyAttributesRequestEventArgs.SIGNATURE);
};
pub const BarcodeScannerStartSoftwareTriggerRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerStartSoftwareTriggerRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerStartSoftwareTriggerRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub fn ReportFailedAsyncWithReason(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerStartSoftwareTriggerRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerStartSoftwareTriggerRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReason(reason);
    }
    pub fn ReportFailedAsyncWithReasonWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerStartSoftwareTriggerRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerStartSoftwareTriggerRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReasonWithFailedReasonDescription(reason, failedReasonDescription);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerStartSoftwareTriggerRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerStartSoftwareTriggerRequest.GUID;
    pub const IID: Guid = IBarcodeScannerStartSoftwareTriggerRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerStartSoftwareTriggerRequest.SIGNATURE);
};
pub const BarcodeScannerStartSoftwareTriggerRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerStartSoftwareTriggerRequest {
        const this: *IBarcodeScannerStartSoftwareTriggerRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IBarcodeScannerStartSoftwareTriggerRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerStartSoftwareTriggerRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerStartSoftwareTriggerRequestEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerStartSoftwareTriggerRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerStartSoftwareTriggerRequestEventArgs.SIGNATURE);
};
pub const BarcodeScannerStopSoftwareTriggerRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerStopSoftwareTriggerRequest = @ptrCast(self);
        return try this.ReportCompletedAsync();
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IBarcodeScannerStopSoftwareTriggerRequest = @ptrCast(self);
        return try this.ReportFailedAsync();
    }
    pub fn ReportFailedAsyncWithReason(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerStopSoftwareTriggerRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerStopSoftwareTriggerRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReason(reason);
    }
    pub fn ReportFailedAsyncWithReasonWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var this: ?*IBarcodeScannerStopSoftwareTriggerRequest2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBarcodeScannerStopSoftwareTriggerRequest2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportFailedAsyncWithReasonWithFailedReasonDescription(reason, failedReasonDescription);
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerStopSoftwareTriggerRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerStopSoftwareTriggerRequest.GUID;
    pub const IID: Guid = IBarcodeScannerStopSoftwareTriggerRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerStopSoftwareTriggerRequest.SIGNATURE);
};
pub const BarcodeScannerStopSoftwareTriggerRequestEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerStopSoftwareTriggerRequest {
        const this: *IBarcodeScannerStopSoftwareTriggerRequestEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IBarcodeScannerStopSoftwareTriggerRequestEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerStopSoftwareTriggerRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerStopSoftwareTriggerRequestEventArgs.GUID;
    pub const IID: Guid = IBarcodeScannerStopSoftwareTriggerRequestEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerStopSoftwareTriggerRequestEventArgs.SIGNATURE);
};
pub const BarcodeScannerTriggerState = enum(i32) {
    Released = 0,
    Pressed = 1,
};
pub const BarcodeScannerVideoFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFormat(self: *@This()) core.HResult!BitmapPixelFormat {
        const this: *IBarcodeScannerVideoFrame = @ptrCast(self);
        return try this.getFormat();
    }
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *IBarcodeScannerVideoFrame = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *IBarcodeScannerVideoFrame = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getPixelData(self: *@This()) core.HResult!*IBuffer {
        const this: *IBarcodeScannerVideoFrame = @ptrCast(self);
        return try this.getPixelData();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeScannerVideoFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeScannerVideoFrame.GUID;
    pub const IID: Guid = IBarcodeScannerVideoFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeScannerVideoFrame.SIGNATURE);
};
pub const BarcodeSymbologyAttributesBuilder = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsCheckDigitValidationSupported(self: *@This()) core.HResult!bool {
        const this: *IBarcodeSymbologyAttributesBuilder = @ptrCast(self);
        return try this.getIsCheckDigitValidationSupported();
    }
    pub fn putIsCheckDigitValidationSupported(self: *@This(), value: bool) core.HResult!void {
        const this: *IBarcodeSymbologyAttributesBuilder = @ptrCast(self);
        return try this.putIsCheckDigitValidationSupported(value);
    }
    pub fn getIsCheckDigitTransmissionSupported(self: *@This()) core.HResult!bool {
        const this: *IBarcodeSymbologyAttributesBuilder = @ptrCast(self);
        return try this.getIsCheckDigitTransmissionSupported();
    }
    pub fn putIsCheckDigitTransmissionSupported(self: *@This(), value: bool) core.HResult!void {
        const this: *IBarcodeSymbologyAttributesBuilder = @ptrCast(self);
        return try this.putIsCheckDigitTransmissionSupported(value);
    }
    pub fn getIsDecodeLengthSupported(self: *@This()) core.HResult!bool {
        const this: *IBarcodeSymbologyAttributesBuilder = @ptrCast(self);
        return try this.getIsDecodeLengthSupported();
    }
    pub fn putIsDecodeLengthSupported(self: *@This(), value: bool) core.HResult!void {
        const this: *IBarcodeSymbologyAttributesBuilder = @ptrCast(self);
        return try this.putIsDecodeLengthSupported(value);
    }
    pub fn CreateAttributes(self: *@This()) core.HResult!*BarcodeSymbologyAttributes {
        const this: *IBarcodeSymbologyAttributesBuilder = @ptrCast(self);
        return try this.CreateAttributes();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBarcodeSymbologyAttributesBuilder.IID)));
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.BarcodeSymbologyAttributesBuilder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBarcodeSymbologyAttributesBuilder.GUID;
    pub const IID: Guid = IBarcodeSymbologyAttributesBuilder.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBarcodeSymbologyAttributesBuilder.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IBarcodeScannerDisableScannerRequest = extern struct {
    vtable: *const VTable,
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerDisableScannerRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88ecf7c0-37b9-4275-8e77-c8e52ae5a9c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerDisableScannerRequest2 = extern struct {
    vtable: *const VTable,
    pub fn ReportFailedAsync(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), reason, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsyncWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsyncWithFailedReasonDescription(@ptrCast(self), reason, failedReasonDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerDisableScannerRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ccdfe625-65c3-4ccc-b457-f39c7a9ea60d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, reason: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsyncWithFailedReasonDescription: *const fn(self: *anyopaque, reason: i32, failedReasonDescription: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerDisableScannerRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerDisableScannerRequest {
        var _r: *BarcodeScannerDisableScannerRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerDisableScannerRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7006e142-e802-46f5-b604-352a15ce9232";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **BarcodeScannerDisableScannerRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerEnableScannerRequest = extern struct {
    vtable: *const VTable,
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerEnableScannerRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0b3e9ba-816a-452b-bd77-b7e453ec446d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerEnableScannerRequest2 = extern struct {
    vtable: *const VTable,
    pub fn ReportFailedAsync(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), reason, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsyncWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsyncWithFailedReasonDescription(@ptrCast(self), reason, failedReasonDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerEnableScannerRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71a4f2a8-9905-41ac-9121-b645916a84a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, reason: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsyncWithFailedReasonDescription: *const fn(self: *anyopaque, reason: i32, failedReasonDescription: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerEnableScannerRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerEnableScannerRequest {
        var _r: *BarcodeScannerEnableScannerRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerEnableScannerRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "956c9419-7b4e-4451-8c41-8e10cfbc5b41";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **BarcodeScannerEnableScannerRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerFrameReader = extern struct {
    vtable: *const VTable,
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.StartAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StopAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryAcquireLatestFrameAsync(self: *@This()) core.HResult!*IAsyncOperation(BarcodeScannerVideoFrame) {
        var _r: *IAsyncOperation(BarcodeScannerVideoFrame) = undefined;
        const _c = self.vtable.TryAcquireLatestFrameAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConnection(self: *@This()) core.HResult!*BarcodeScannerProviderConnection {
        var _r: *BarcodeScannerProviderConnection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addFrameArrived(self: *@This(), handler: *TypedEventHandler(BarcodeScannerFrameReader,BarcodeScannerFrameReaderFrameArrivedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FrameArrived(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FrameArrived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerFrameReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dbc72b07-64c3-482b-93c8-65fb33c22208";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        StopAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        TryAcquireLatestFrameAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(BarcodeScannerVideoFrame)) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **BarcodeScannerProviderConnection) callconv(.winapi) HRESULT,
        add_FrameArrived: *const fn(self: *anyopaque, handler: *TypedEventHandler(BarcodeScannerFrameReader,BarcodeScannerFrameReaderFrameArrivedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FrameArrived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerFrameReaderFrameArrivedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerFrameReaderFrameArrivedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0bbd604-54fd-436d-8629-712e787223dd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerGetSymbologyAttributesRequest = extern struct {
    vtable: *const VTable,
    pub fn getSymbology(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Symbology(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This(), attributes: *BarcodeSymbologyAttributes) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), attributes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerGetSymbologyAttributesRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9774c46a-58e4-4c5f-b8e9-e41467632700";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Symbology: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, attributes: *BarcodeSymbologyAttributes, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerGetSymbologyAttributesRequest2 = extern struct {
    vtable: *const VTable,
    pub fn ReportFailedAsync(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), reason, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsyncWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsyncWithFailedReasonDescription(@ptrCast(self), reason, failedReasonDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerGetSymbologyAttributesRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a6a2b13-75a8-49fb-b852-bfb93d760af7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, reason: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsyncWithFailedReasonDescription: *const fn(self: *anyopaque, reason: i32, failedReasonDescription: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerGetSymbologyAttributesRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerGetSymbologyAttributesRequest {
        var _r: *BarcodeScannerGetSymbologyAttributesRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerGetSymbologyAttributesRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f89de3e-fb5d-493c-b402-356b24d574a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **BarcodeScannerGetSymbologyAttributesRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerHideVideoPreviewRequest = extern struct {
    vtable: *const VTable,
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerHideVideoPreviewRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa4ebe7f-6670-40e1-b90b-bb10d8d425fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerHideVideoPreviewRequest2 = extern struct {
    vtable: *const VTable,
    pub fn ReportFailedAsync(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), reason, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsyncWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsyncWithFailedReasonDescription(@ptrCast(self), reason, failedReasonDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerHideVideoPreviewRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e28435d-9814-431d-a2f2-d6248c5ad4b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, reason: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsyncWithFailedReasonDescription: *const fn(self: *anyopaque, reason: i32, failedReasonDescription: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerHideVideoPreviewRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerHideVideoPreviewRequest {
        var _r: *BarcodeScannerHideVideoPreviewRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerHideVideoPreviewRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "16a281fc-d6be-4bc7-9df1-33741f3eadea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **BarcodeScannerHideVideoPreviewRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerProviderConnection = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedSymbologies(self: *@This()) core.HResult!*IVector(u32) {
        var _r: *IVector(u32) = undefined;
        const _c = self.vtable.get_SupportedSymbologies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCompanyName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_CompanyName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompanyName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_CompanyName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub fn getVersion(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Version(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVersion(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Version(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ReportScannedDataAsync(self: *@This(), report: *BarcodeScannerReport) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportScannedDataAsync(@ptrCast(self), report, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportTriggerStateAsync(self: *@This(), state: BarcodeScannerTriggerState) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportTriggerStateAsync(@ptrCast(self), state, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportErrorAsync(self: *@This(), errorData: *UnifiedPosErrorData) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportErrorAsync(@ptrCast(self), errorData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportErrorAsyncWithScanReport(self: *@This(), errorData: *UnifiedPosErrorData, isRetriable: bool, scanReport: *BarcodeScannerReport) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportErrorAsyncWithScanReport(@ptrCast(self), errorData, isRetriable, scanReport, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addEnableScannerRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerEnableScannerRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnableScannerRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnableScannerRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnableScannerRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDisableScannerRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerDisableScannerRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DisableScannerRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDisableScannerRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DisableScannerRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSetActiveSymbologiesRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerSetActiveSymbologiesRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SetActiveSymbologiesRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSetActiveSymbologiesRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SetActiveSymbologiesRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStartSoftwareTriggerRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerStartSoftwareTriggerRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StartSoftwareTriggerRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStartSoftwareTriggerRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StartSoftwareTriggerRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStopSoftwareTriggerRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerStopSoftwareTriggerRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StopSoftwareTriggerRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStopSoftwareTriggerRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StopSoftwareTriggerRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGetBarcodeSymbologyAttributesRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerGetSymbologyAttributesRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GetBarcodeSymbologyAttributesRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGetBarcodeSymbologyAttributesRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GetBarcodeSymbologyAttributesRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSetBarcodeSymbologyAttributesRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerSetSymbologyAttributesRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SetBarcodeSymbologyAttributesRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSetBarcodeSymbologyAttributesRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SetBarcodeSymbologyAttributesRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHideVideoPreviewRequested(self: *@This(), handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerHideVideoPreviewRequestEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HideVideoPreviewRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHideVideoPreviewRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HideVideoPreviewRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerProviderConnection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b44acbed-0b3a-4fa3-86c5-491ea30780eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SupportedSymbologies: *const fn(self: *anyopaque, _r: **IVector(u32)) callconv(.winapi) HRESULT,
        get_CompanyName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CompanyName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Name: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Version: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Version: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ReportScannedDataAsync: *const fn(self: *anyopaque, report: *BarcodeScannerReport, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportTriggerStateAsync: *const fn(self: *anyopaque, state: BarcodeScannerTriggerState, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportErrorAsync: *const fn(self: *anyopaque, errorData: *UnifiedPosErrorData, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportErrorAsyncWithScanReport: *const fn(self: *anyopaque, errorData: *UnifiedPosErrorData, isRetriable: bool, scanReport: *BarcodeScannerReport, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_EnableScannerRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerEnableScannerRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnableScannerRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DisableScannerRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerDisableScannerRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DisableScannerRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SetActiveSymbologiesRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerSetActiveSymbologiesRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SetActiveSymbologiesRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StartSoftwareTriggerRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerStartSoftwareTriggerRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StartSoftwareTriggerRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StopSoftwareTriggerRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerStopSoftwareTriggerRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StopSoftwareTriggerRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GetBarcodeSymbologyAttributesRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerGetSymbologyAttributesRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GetBarcodeSymbologyAttributesRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SetBarcodeSymbologyAttributesRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerSetSymbologyAttributesRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SetBarcodeSymbologyAttributesRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_HideVideoPreviewRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(BarcodeScannerProviderConnection,BarcodeScannerHideVideoPreviewRequestEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HideVideoPreviewRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerProviderConnection2 = extern struct {
    vtable: *const VTable,
    pub fn CreateFrameReaderAsync(self: *@This()) core.HResult!*IAsyncOperation(BarcodeScannerFrameReader) {
        var _r: *IAsyncOperation(BarcodeScannerFrameReader) = undefined;
        const _c = self.vtable.CreateFrameReaderAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFrameReaderAsync(self: *@This(), preferredFormat: BitmapPixelFormat) core.HResult!*IAsyncOperation(BarcodeScannerFrameReader) {
        var _r: *IAsyncOperation(BarcodeScannerFrameReader) = undefined;
        const _c = self.vtable.CreateFrameReaderAsync(@ptrCast(self), preferredFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFrameReaderAsync(self: *@This(), preferredFormat: BitmapPixelFormat, preferredSize: BitmapSize) core.HResult!*IAsyncOperation(BarcodeScannerFrameReader) {
        var _r: *IAsyncOperation(BarcodeScannerFrameReader) = undefined;
        const _c = self.vtable.CreateFrameReaderAsync(@ptrCast(self), preferredFormat, preferredSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerProviderConnection2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be9b53cd-1134-418c-a06b-04423a73f3d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFrameReaderAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(BarcodeScannerFrameReader)) callconv(.winapi) HRESULT,
        CreateFrameReaderAsync: *const fn(self: *anyopaque, preferredFormat: BitmapPixelFormat, _r: **IAsyncOperation(BarcodeScannerFrameReader)) callconv(.winapi) HRESULT,
        CreateFrameReaderAsync: *const fn(self: *anyopaque, preferredFormat: BitmapPixelFormat, preferredSize: BitmapSize, _r: **IAsyncOperation(BarcodeScannerFrameReader)) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerProviderTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getConnection(self: *@This()) core.HResult!*BarcodeScannerProviderConnection {
        var _r: *BarcodeScannerProviderConnection = undefined;
        const _c = self.vtable.get_Connection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerProviderTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50856d82-24e3-48ce-99c7-70aac1cbc9f7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Connection: *const fn(self: *anyopaque, _r: **BarcodeScannerProviderConnection) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerSetActiveSymbologiesRequest = extern struct {
    vtable: *const VTable,
    pub fn getSymbologies(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_Symbologies(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerSetActiveSymbologiesRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db3f32b9-f7da-41a1-9f79-07bcd95f0bdf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Symbologies: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerSetActiveSymbologiesRequest2 = extern struct {
    vtable: *const VTable,
    pub fn ReportFailedAsync(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), reason, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsyncWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsyncWithFailedReasonDescription(@ptrCast(self), reason, failedReasonDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerSetActiveSymbologiesRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5ff6edf-fa9a-4749-b11b-e8fccb75bc6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, reason: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsyncWithFailedReasonDescription: *const fn(self: *anyopaque, reason: i32, failedReasonDescription: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerSetActiveSymbologiesRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerSetActiveSymbologiesRequest {
        var _r: *BarcodeScannerSetActiveSymbologiesRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerSetActiveSymbologiesRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "06305afa-7bf6-4d52-801a-330272f60ae1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **BarcodeScannerSetActiveSymbologiesRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerSetSymbologyAttributesRequest = extern struct {
    vtable: *const VTable,
    pub fn getSymbology(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Symbology(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttributes(self: *@This()) core.HResult!*BarcodeSymbologyAttributes {
        var _r: *BarcodeSymbologyAttributes = undefined;
        const _c = self.vtable.get_Attributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerSetSymbologyAttributesRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "32fb814f-a37f-48b0-acea-dce1480f12ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Symbology: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Attributes: *const fn(self: *anyopaque, _r: **BarcodeSymbologyAttributes) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerSetSymbologyAttributesRequest2 = extern struct {
    vtable: *const VTable,
    pub fn ReportFailedAsync(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), reason, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsyncWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsyncWithFailedReasonDescription(@ptrCast(self), reason, failedReasonDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerSetSymbologyAttributesRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dffbbfc1-dba8-4b77-be1e-b56cd72f65b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, reason: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsyncWithFailedReasonDescription: *const fn(self: *anyopaque, reason: i32, failedReasonDescription: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerSetSymbologyAttributesRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerSetSymbologyAttributesRequest {
        var _r: *BarcodeScannerSetSymbologyAttributesRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerSetSymbologyAttributesRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2b89809-9824-47d4-85bd-d0077baa7bd2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **BarcodeScannerSetSymbologyAttributesRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerStartSoftwareTriggerRequest = extern struct {
    vtable: *const VTable,
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerStartSoftwareTriggerRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3fa7b27-ff62-4454-af4a-cb6144a3e3f7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerStartSoftwareTriggerRequest2 = extern struct {
    vtable: *const VTable,
    pub fn ReportFailedAsync(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), reason, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsyncWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsyncWithFailedReasonDescription(@ptrCast(self), reason, failedReasonDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerStartSoftwareTriggerRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb72a25c-6658-4765-a68e-327482653deb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, reason: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsyncWithFailedReasonDescription: *const fn(self: *anyopaque, reason: i32, failedReasonDescription: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerStartSoftwareTriggerRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerStartSoftwareTriggerRequest {
        var _r: *BarcodeScannerStartSoftwareTriggerRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerStartSoftwareTriggerRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2305d843-c88f-4f3b-8c3b-d3df071051ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **BarcodeScannerStartSoftwareTriggerRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerStopSoftwareTriggerRequest = extern struct {
    vtable: *const VTable,
    pub fn ReportCompletedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportCompletedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerStopSoftwareTriggerRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f9faf35-e287-4ca8-b70d-5a91d694f668";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportCompletedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerStopSoftwareTriggerRequest2 = extern struct {
    vtable: *const VTable,
    pub fn ReportFailedAsync(self: *@This(), reason: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsync(@ptrCast(self), reason, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReportFailedAsyncWithFailedReasonDescription(self: *@This(), reason: i32, failedReasonDescription: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ReportFailedAsyncWithFailedReasonDescription(@ptrCast(self), reason, failedReasonDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerStopSoftwareTriggerRequest2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb57c5dd-fe50-49f8-a0b4-bdc230814da2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportFailedAsync: *const fn(self: *anyopaque, reason: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ReportFailedAsyncWithFailedReasonDescription: *const fn(self: *anyopaque, reason: i32, failedReasonDescription: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerStopSoftwareTriggerRequestEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*BarcodeScannerStopSoftwareTriggerRequest {
        var _r: *BarcodeScannerStopSoftwareTriggerRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerStopSoftwareTriggerRequestEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eac34450-4eb7-481a-9273-147a273b99b8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **BarcodeScannerStopSoftwareTriggerRequest) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeScannerVideoFrame = extern struct {
    vtable: *const VTable,
    pub fn getFormat(self: *@This()) core.HResult!BitmapPixelFormat {
        var _r: BitmapPixelFormat = undefined;
        const _c = self.vtable.get_Format(@ptrCast(self), &_r);
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
    pub fn getPixelData(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_PixelData(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeScannerVideoFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e585248-9df7-4121-a175-801d8000112e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Format: *const fn(self: *anyopaque, _r: *BitmapPixelFormat) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PixelData: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IBarcodeSymbologyAttributesBuilder = extern struct {
    vtable: *const VTable,
    pub fn getIsCheckDigitValidationSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCheckDigitValidationSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCheckDigitValidationSupported(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCheckDigitValidationSupported(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCheckDigitTransmissionSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCheckDigitTransmissionSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCheckDigitTransmissionSupported(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCheckDigitTransmissionSupported(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDecodeLengthSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDecodeLengthSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsDecodeLengthSupported(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsDecodeLengthSupported(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateAttributes(self: *@This()) core.HResult!*BarcodeSymbologyAttributes {
        var _r: *BarcodeSymbologyAttributes = undefined;
        const _c = self.vtable.CreateAttributes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.PointOfService.Provider.IBarcodeSymbologyAttributesBuilder";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c57b0cbf-e4f5-40b9-84cf-e63fbaea42b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCheckDigitValidationSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCheckDigitValidationSupported: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsCheckDigitTransmissionSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCheckDigitTransmissionSupported: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsDecodeLengthSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsDecodeLengthSupported: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        CreateAttributes: *const fn(self: *anyopaque, _r: **BarcodeSymbologyAttributes) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const Deferral = @import("../../Foundation.zig").Deferral;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const FactoryCache = @import("../../core.zig").FactoryCache;
const UnifiedPosErrorData = @import("../PointOfService.zig").UnifiedPosErrorData;
const TrustLevel = @import("../../root.zig").TrustLevel;
const BitmapPixelFormat = @import("../../Graphics/Imaging.zig").BitmapPixelFormat;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const IClosable = @import("../../Foundation.zig").IClosable;
const BarcodeSymbologyAttributes = @import("../PointOfService.zig").BarcodeSymbologyAttributes;
const HSTRING = @import("../../root.zig").HSTRING;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const BitmapSize = @import("../../Graphics/Imaging.zig").BitmapSize;
const BarcodeScannerReport = @import("../PointOfService.zig").BarcodeScannerReport;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
