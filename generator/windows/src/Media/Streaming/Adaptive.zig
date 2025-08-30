pub const AdaptiveMediaSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsLive(self: *@This()) core.HResult!bool {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.getIsLive();
    }
    pub fn getDesiredLiveOffset(self: *@This()) core.HResult!TimeSpan {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.getDesiredLiveOffset();
    }
    pub fn putDesiredLiveOffset(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.putDesiredLiveOffset(value);
    }
    pub fn getInitialBitrate(self: *@This()) core.HResult!u32 {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.getInitialBitrate();
    }
    pub fn putInitialBitrate(self: *@This(), value: u32) core.HResult!void {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.putInitialBitrate(value);
    }
    pub fn getCurrentDownloadBitrate(self: *@This()) core.HResult!u32 {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.getCurrentDownloadBitrate();
    }
    pub fn getCurrentPlaybackBitrate(self: *@This()) core.HResult!u32 {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.getCurrentPlaybackBitrate();
    }
    pub fn getAvailableBitrates(self: *@This()) core.HResult!*IVectorView(u32) {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.getAvailableBitrates();
    }
    pub fn getDesiredMinBitrate(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.getDesiredMinBitrate();
    }
    pub fn putDesiredMinBitrate(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.putDesiredMinBitrate(value);
    }
    pub fn getDesiredMaxBitrate(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.getDesiredMaxBitrate();
    }
    pub fn putDesiredMaxBitrate(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.putDesiredMaxBitrate(value);
    }
    pub fn getAudioOnlyPlayback(self: *@This()) core.HResult!bool {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.getAudioOnlyPlayback();
    }
    pub fn getInboundBitsPerSecond(self: *@This()) core.HResult!u64 {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.getInboundBitsPerSecond();
    }
    pub fn getInboundBitsPerSecondWindow(self: *@This()) core.HResult!TimeSpan {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.getInboundBitsPerSecondWindow();
    }
    pub fn putInboundBitsPerSecondWindow(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.putInboundBitsPerSecondWindow(value);
    }
    pub fn addDownloadBitrateChanged(self: *@This(), handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourceDownloadBitrateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.addDownloadBitrateChanged(handler);
    }
    pub fn removeDownloadBitrateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.removeDownloadBitrateChanged(token);
    }
    pub fn addPlaybackBitrateChanged(self: *@This(), handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourcePlaybackBitrateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.addPlaybackBitrateChanged(handler);
    }
    pub fn removePlaybackBitrateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.removePlaybackBitrateChanged(token);
    }
    pub fn addDownloadRequested(self: *@This(), handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourceDownloadRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.addDownloadRequested(handler);
    }
    pub fn removeDownloadRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.removeDownloadRequested(token);
    }
    pub fn addDownloadCompleted(self: *@This(), handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourceDownloadCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.addDownloadCompleted(handler);
    }
    pub fn removeDownloadCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.removeDownloadCompleted(token);
    }
    pub fn addDownloadFailed(self: *@This(), handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourceDownloadFailedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.addDownloadFailed(handler);
    }
    pub fn removeDownloadFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAdaptiveMediaSource = @ptrCast(self);
        return try this.removeDownloadFailed(token);
    }
    pub fn getAdvancedSettings(self: *@This()) core.HResult!*AdaptiveMediaSourceAdvancedSettings {
        var this: ?*IAdaptiveMediaSource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAdvancedSettings();
    }
    pub fn getMinLiveOffset(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IAdaptiveMediaSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinLiveOffset();
    }
    pub fn getMaxSeekableWindowSize(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IAdaptiveMediaSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxSeekableWindowSize();
    }
    pub fn getDesiredSeekableWindowSize(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IAdaptiveMediaSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDesiredSeekableWindowSize();
    }
    pub fn putDesiredSeekableWindowSize(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        var this: ?*IAdaptiveMediaSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDesiredSeekableWindowSize(value);
    }
    pub fn getDiagnostics(self: *@This()) core.HResult!*AdaptiveMediaSourceDiagnostics {
        var this: ?*IAdaptiveMediaSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDiagnostics();
    }
    pub fn GetCorrelatedTimes(self: *@This()) core.HResult!*AdaptiveMediaSourceCorrelatedTimes {
        var this: ?*IAdaptiveMediaSource3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSource3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCorrelatedTimes();
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
    pub fn IsContentTypeSupported(contentType: HSTRING) core.HResult!bool {
        const factory = @This().IAdaptiveMediaSourceStaticsCache.get();
        return try factory.IsContentTypeSupported(contentType);
    }
    pub fn CreateFromUriAsync(uri: *Uri) core.HResult!*IAsyncOperation(AdaptiveMediaSourceCreationResult) {
        const factory = @This().IAdaptiveMediaSourceStaticsCache.get();
        return try factory.CreateFromUriAsync(uri);
    }
    pub fn CreateFromUriAsyncWithHttpClient(uri: *Uri, httpClient: *HttpClient) core.HResult!*IAsyncOperation(AdaptiveMediaSourceCreationResult) {
        const factory = @This().IAdaptiveMediaSourceStaticsCache.get();
        return try factory.CreateFromUriAsyncWithHttpClient(uri, httpClient);
    }
    pub fn CreateFromStreamAsync(stream: *IInputStream, uri: *Uri, contentType: HSTRING) core.HResult!*IAsyncOperation(AdaptiveMediaSourceCreationResult) {
        const factory = @This().IAdaptiveMediaSourceStaticsCache.get();
        return try factory.CreateFromStreamAsync(stream, uri, contentType);
    }
    pub fn CreateFromStreamAsyncWithHttpClient(stream: *IInputStream, uri: *Uri, contentType: HSTRING, httpClient: *HttpClient) core.HResult!*IAsyncOperation(AdaptiveMediaSourceCreationResult) {
        const factory = @This().IAdaptiveMediaSourceStaticsCache.get();
        return try factory.CreateFromStreamAsyncWithHttpClient(stream, uri, contentType, httpClient);
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSource.GUID;
    pub const IID: Guid = IAdaptiveMediaSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSource.SIGNATURE);
    var _IAdaptiveMediaSourceStaticsCache: FactoryCache(IAdaptiveMediaSourceStatics, RUNTIME_NAME) = .{};
};
pub const AdaptiveMediaSourceAdvancedSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAllSegmentsIndependent(self: *@This()) core.HResult!bool {
        const this: *IAdaptiveMediaSourceAdvancedSettings = @ptrCast(self);
        return try this.getAllSegmentsIndependent();
    }
    pub fn putAllSegmentsIndependent(self: *@This(), value: bool) core.HResult!void {
        const this: *IAdaptiveMediaSourceAdvancedSettings = @ptrCast(self);
        return try this.putAllSegmentsIndependent(value);
    }
    pub fn getDesiredBitrateHeadroomRatio(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IAdaptiveMediaSourceAdvancedSettings = @ptrCast(self);
        return try this.getDesiredBitrateHeadroomRatio();
    }
    pub fn putDesiredBitrateHeadroomRatio(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const this: *IAdaptiveMediaSourceAdvancedSettings = @ptrCast(self);
        return try this.putDesiredBitrateHeadroomRatio(value);
    }
    pub fn getBitrateDowngradeTriggerRatio(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IAdaptiveMediaSourceAdvancedSettings = @ptrCast(self);
        return try this.getBitrateDowngradeTriggerRatio();
    }
    pub fn putBitrateDowngradeTriggerRatio(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const this: *IAdaptiveMediaSourceAdvancedSettings = @ptrCast(self);
        return try this.putBitrateDowngradeTriggerRatio(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceAdvancedSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSourceAdvancedSettings.GUID;
    pub const IID: Guid = IAdaptiveMediaSourceAdvancedSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSourceAdvancedSettings.SIGNATURE);
};
pub const AdaptiveMediaSourceCorrelatedTimes = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IAdaptiveMediaSourceCorrelatedTimes = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getPresentationTimeStamp(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IAdaptiveMediaSourceCorrelatedTimes = @ptrCast(self);
        return try this.getPresentationTimeStamp();
    }
    pub fn getProgramDateTime(self: *@This()) core.HResult!*IReference(DateTime) {
        const this: *IAdaptiveMediaSourceCorrelatedTimes = @ptrCast(self);
        return try this.getProgramDateTime();
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCorrelatedTimes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSourceCorrelatedTimes.GUID;
    pub const IID: Guid = IAdaptiveMediaSourceCorrelatedTimes.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSourceCorrelatedTimes.SIGNATURE);
};
pub const AdaptiveMediaSourceCreationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!AdaptiveMediaSourceCreationStatus {
        const this: *IAdaptiveMediaSourceCreationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getMediaSource(self: *@This()) core.HResult!*AdaptiveMediaSource {
        const this: *IAdaptiveMediaSourceCreationResult = @ptrCast(self);
        return try this.getMediaSource();
    }
    pub fn getHttpResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        const this: *IAdaptiveMediaSourceCreationResult = @ptrCast(self);
        return try this.getHttpResponseMessage();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var this: ?*IAdaptiveMediaSourceCreationResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceCreationResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtendedError();
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceCreationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSourceCreationResult.GUID;
    pub const IID: Guid = IAdaptiveMediaSourceCreationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSourceCreationResult.SIGNATURE);
};
pub const AdaptiveMediaSourceCreationStatus = enum(i32) {
    Success = 0,
    ManifestDownloadFailure = 1,
    ManifestParseFailure = 2,
    UnsupportedManifestContentType = 3,
    UnsupportedManifestVersion = 4,
    UnsupportedManifestProfile = 5,
    UnknownFailure = 6,
};
pub const AdaptiveMediaSourceDiagnosticAvailableEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDiagnosticType(self: *@This()) core.HResult!AdaptiveMediaSourceDiagnosticType {
        const this: *IAdaptiveMediaSourceDiagnosticAvailableEventArgs = @ptrCast(self);
        return try this.getDiagnosticType();
    }
    pub fn getRequestId(self: *@This()) core.HResult!*IReference(i32) {
        const this: *IAdaptiveMediaSourceDiagnosticAvailableEventArgs = @ptrCast(self);
        return try this.getRequestId();
    }
    pub fn getPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IAdaptiveMediaSourceDiagnosticAvailableEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getSegmentId(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IAdaptiveMediaSourceDiagnosticAvailableEventArgs = @ptrCast(self);
        return try this.getSegmentId();
    }
    pub fn getResourceType(self: *@This()) core.HResult!*IReference(AdaptiveMediaSourceResourceType) {
        const this: *IAdaptiveMediaSourceDiagnosticAvailableEventArgs = @ptrCast(self);
        return try this.getResourceType();
    }
    pub fn getResourceUri(self: *@This()) core.HResult!*Uri {
        const this: *IAdaptiveMediaSourceDiagnosticAvailableEventArgs = @ptrCast(self);
        return try this.getResourceUri();
    }
    pub fn getResourceByteRangeOffset(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IAdaptiveMediaSourceDiagnosticAvailableEventArgs = @ptrCast(self);
        return try this.getResourceByteRangeOffset();
    }
    pub fn getResourceByteRangeLength(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IAdaptiveMediaSourceDiagnosticAvailableEventArgs = @ptrCast(self);
        return try this.getResourceByteRangeLength();
    }
    pub fn getBitrate(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IAdaptiveMediaSourceDiagnosticAvailableEventArgs = @ptrCast(self);
        return try this.getBitrate();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var this: ?*IAdaptiveMediaSourceDiagnosticAvailableEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDiagnosticAvailableEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtendedError();
    }
    pub fn getResourceDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IAdaptiveMediaSourceDiagnosticAvailableEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDiagnosticAvailableEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResourceDuration();
    }
    pub fn getResourceContentType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAdaptiveMediaSourceDiagnosticAvailableEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDiagnosticAvailableEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResourceContentType();
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnosticAvailableEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSourceDiagnosticAvailableEventArgs.GUID;
    pub const IID: Guid = IAdaptiveMediaSourceDiagnosticAvailableEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSourceDiagnosticAvailableEventArgs.SIGNATURE);
};
pub const AdaptiveMediaSourceDiagnosticType = enum(i32) {
    ManifestUnchangedUponReload = 0,
    ManifestMismatchUponReload = 1,
    ManifestSignaledEndOfLiveEventUponReload = 2,
    MediaSegmentSkipped = 3,
    ResourceNotFound = 4,
    ResourceTimedOut = 5,
    ResourceParsingError = 6,
    BitrateDisabled = 7,
    FatalMediaSourceError = 8,
};
pub const AdaptiveMediaSourceDiagnostics = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addDiagnosticAvailable(self: *@This(), handler: *TypedEventHandler(AdaptiveMediaSourceDiagnostics,AdaptiveMediaSourceDiagnosticAvailableEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAdaptiveMediaSourceDiagnostics = @ptrCast(self);
        return try this.addDiagnosticAvailable(handler);
    }
    pub fn removeDiagnosticAvailable(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAdaptiveMediaSourceDiagnostics = @ptrCast(self);
        return try this.removeDiagnosticAvailable(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDiagnostics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSourceDiagnostics.GUID;
    pub const IID: Guid = IAdaptiveMediaSourceDiagnostics.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSourceDiagnostics.SIGNATURE);
};
pub const AdaptiveMediaSourceDownloadBitrateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOldValue(self: *@This()) core.HResult!u32 {
        const this: *IAdaptiveMediaSourceDownloadBitrateChangedEventArgs = @ptrCast(self);
        return try this.getOldValue();
    }
    pub fn getNewValue(self: *@This()) core.HResult!u32 {
        const this: *IAdaptiveMediaSourceDownloadBitrateChangedEventArgs = @ptrCast(self);
        return try this.getNewValue();
    }
    pub fn getReason(self: *@This()) core.HResult!AdaptiveMediaSourceDownloadBitrateChangedReason {
        var this: ?*IAdaptiveMediaSourceDownloadBitrateChangedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadBitrateChangedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReason();
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadBitrateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSourceDownloadBitrateChangedEventArgs.GUID;
    pub const IID: Guid = IAdaptiveMediaSourceDownloadBitrateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSourceDownloadBitrateChangedEventArgs.SIGNATURE);
};
pub const AdaptiveMediaSourceDownloadBitrateChangedReason = enum(i32) {
    SufficientInboundBitsPerSecond = 0,
    InsufficientInboundBitsPerSecond = 1,
    LowBufferLevel = 2,
    PositionChanged = 3,
    TrackSelectionChanged = 4,
    DesiredBitratesChanged = 5,
    ErrorInPreviousBitrate = 6,
};
pub const AdaptiveMediaSourceDownloadCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResourceType(self: *@This()) core.HResult!AdaptiveMediaSourceResourceType {
        const this: *IAdaptiveMediaSourceDownloadCompletedEventArgs = @ptrCast(self);
        return try this.getResourceType();
    }
    pub fn getResourceUri(self: *@This()) core.HResult!*Uri {
        const this: *IAdaptiveMediaSourceDownloadCompletedEventArgs = @ptrCast(self);
        return try this.getResourceUri();
    }
    pub fn getResourceByteRangeOffset(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IAdaptiveMediaSourceDownloadCompletedEventArgs = @ptrCast(self);
        return try this.getResourceByteRangeOffset();
    }
    pub fn getResourceByteRangeLength(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IAdaptiveMediaSourceDownloadCompletedEventArgs = @ptrCast(self);
        return try this.getResourceByteRangeLength();
    }
    pub fn getHttpResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        const this: *IAdaptiveMediaSourceDownloadCompletedEventArgs = @ptrCast(self);
        return try this.getHttpResponseMessage();
    }
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        var this: ?*IAdaptiveMediaSourceDownloadCompletedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadCompletedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRequestId();
    }
    pub fn getStatistics(self: *@This()) core.HResult!*AdaptiveMediaSourceDownloadStatistics {
        var this: ?*IAdaptiveMediaSourceDownloadCompletedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadCompletedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatistics();
    }
    pub fn getPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IAdaptiveMediaSourceDownloadCompletedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadCompletedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPosition();
    }
    pub fn getResourceDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IAdaptiveMediaSourceDownloadCompletedEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadCompletedEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResourceDuration();
    }
    pub fn getResourceContentType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAdaptiveMediaSourceDownloadCompletedEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadCompletedEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResourceContentType();
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSourceDownloadCompletedEventArgs.GUID;
    pub const IID: Guid = IAdaptiveMediaSourceDownloadCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSourceDownloadCompletedEventArgs.SIGNATURE);
};
pub const AdaptiveMediaSourceDownloadFailedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResourceType(self: *@This()) core.HResult!AdaptiveMediaSourceResourceType {
        const this: *IAdaptiveMediaSourceDownloadFailedEventArgs = @ptrCast(self);
        return try this.getResourceType();
    }
    pub fn getResourceUri(self: *@This()) core.HResult!*Uri {
        const this: *IAdaptiveMediaSourceDownloadFailedEventArgs = @ptrCast(self);
        return try this.getResourceUri();
    }
    pub fn getResourceByteRangeOffset(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IAdaptiveMediaSourceDownloadFailedEventArgs = @ptrCast(self);
        return try this.getResourceByteRangeOffset();
    }
    pub fn getResourceByteRangeLength(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IAdaptiveMediaSourceDownloadFailedEventArgs = @ptrCast(self);
        return try this.getResourceByteRangeLength();
    }
    pub fn getHttpResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        const this: *IAdaptiveMediaSourceDownloadFailedEventArgs = @ptrCast(self);
        return try this.getHttpResponseMessage();
    }
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        var this: ?*IAdaptiveMediaSourceDownloadFailedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadFailedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRequestId();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var this: ?*IAdaptiveMediaSourceDownloadFailedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadFailedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtendedError();
    }
    pub fn getStatistics(self: *@This()) core.HResult!*AdaptiveMediaSourceDownloadStatistics {
        var this: ?*IAdaptiveMediaSourceDownloadFailedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadFailedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatistics();
    }
    pub fn getPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IAdaptiveMediaSourceDownloadFailedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadFailedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPosition();
    }
    pub fn getResourceDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IAdaptiveMediaSourceDownloadFailedEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadFailedEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResourceDuration();
    }
    pub fn getResourceContentType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAdaptiveMediaSourceDownloadFailedEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadFailedEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResourceContentType();
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSourceDownloadFailedEventArgs.GUID;
    pub const IID: Guid = IAdaptiveMediaSourceDownloadFailedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSourceDownloadFailedEventArgs.SIGNATURE);
};
pub const AdaptiveMediaSourceDownloadRequestedDeferral = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IAdaptiveMediaSourceDownloadRequestedDeferral = @ptrCast(self);
        return try this.Complete();
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSourceDownloadRequestedDeferral.GUID;
    pub const IID: Guid = IAdaptiveMediaSourceDownloadRequestedDeferral.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSourceDownloadRequestedDeferral.SIGNATURE);
};
pub const AdaptiveMediaSourceDownloadRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResourceType(self: *@This()) core.HResult!AdaptiveMediaSourceResourceType {
        const this: *IAdaptiveMediaSourceDownloadRequestedEventArgs = @ptrCast(self);
        return try this.getResourceType();
    }
    pub fn getResourceUri(self: *@This()) core.HResult!*Uri {
        const this: *IAdaptiveMediaSourceDownloadRequestedEventArgs = @ptrCast(self);
        return try this.getResourceUri();
    }
    pub fn getResourceByteRangeOffset(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IAdaptiveMediaSourceDownloadRequestedEventArgs = @ptrCast(self);
        return try this.getResourceByteRangeOffset();
    }
    pub fn getResourceByteRangeLength(self: *@This()) core.HResult!*IReference(u64) {
        const this: *IAdaptiveMediaSourceDownloadRequestedEventArgs = @ptrCast(self);
        return try this.getResourceByteRangeLength();
    }
    pub fn getResult(self: *@This()) core.HResult!*AdaptiveMediaSourceDownloadResult {
        const this: *IAdaptiveMediaSourceDownloadRequestedEventArgs = @ptrCast(self);
        return try this.getResult();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*AdaptiveMediaSourceDownloadRequestedDeferral {
        const this: *IAdaptiveMediaSourceDownloadRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        var this: ?*IAdaptiveMediaSourceDownloadRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRequestId();
    }
    pub fn getPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IAdaptiveMediaSourceDownloadRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPosition();
    }
    pub fn getResourceDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var this: ?*IAdaptiveMediaSourceDownloadRequestedEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadRequestedEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResourceDuration();
    }
    pub fn getResourceContentType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAdaptiveMediaSourceDownloadRequestedEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadRequestedEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResourceContentType();
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSourceDownloadRequestedEventArgs.GUID;
    pub const IID: Guid = IAdaptiveMediaSourceDownloadRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSourceDownloadRequestedEventArgs.SIGNATURE);
};
pub const AdaptiveMediaSourceDownloadResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getResourceUri(self: *@This()) core.HResult!*Uri {
        const this: *IAdaptiveMediaSourceDownloadResult = @ptrCast(self);
        return try this.getResourceUri();
    }
    pub fn putResourceUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IAdaptiveMediaSourceDownloadResult = @ptrCast(self);
        return try this.putResourceUri(value);
    }
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        const this: *IAdaptiveMediaSourceDownloadResult = @ptrCast(self);
        return try this.getInputStream();
    }
    pub fn putInputStream(self: *@This(), value: *IInputStream) core.HResult!void {
        const this: *IAdaptiveMediaSourceDownloadResult = @ptrCast(self);
        return try this.putInputStream(value);
    }
    pub fn getBuffer(self: *@This()) core.HResult!*IBuffer {
        const this: *IAdaptiveMediaSourceDownloadResult = @ptrCast(self);
        return try this.getBuffer();
    }
    pub fn putBuffer(self: *@This(), value: *IBuffer) core.HResult!void {
        const this: *IAdaptiveMediaSourceDownloadResult = @ptrCast(self);
        return try this.putBuffer(value);
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        const this: *IAdaptiveMediaSourceDownloadResult = @ptrCast(self);
        return try this.getContentType();
    }
    pub fn putContentType(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAdaptiveMediaSourceDownloadResult = @ptrCast(self);
        return try this.putContentType(value);
    }
    pub fn getExtendedStatus(self: *@This()) core.HResult!u32 {
        const this: *IAdaptiveMediaSourceDownloadResult = @ptrCast(self);
        return try this.getExtendedStatus();
    }
    pub fn putExtendedStatus(self: *@This(), value: u32) core.HResult!void {
        const this: *IAdaptiveMediaSourceDownloadResult = @ptrCast(self);
        return try this.putExtendedStatus(value);
    }
    pub fn getResourceByteRangeOffset(self: *@This()) core.HResult!*IReference(u64) {
        var this: ?*IAdaptiveMediaSourceDownloadResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResourceByteRangeOffset();
    }
    pub fn putResourceByteRangeOffset(self: *@This(), value: *IReference(u64)) core.HResult!void {
        var this: ?*IAdaptiveMediaSourceDownloadResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putResourceByteRangeOffset(value);
    }
    pub fn getResourceByteRangeLength(self: *@This()) core.HResult!*IReference(u64) {
        var this: ?*IAdaptiveMediaSourceDownloadResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getResourceByteRangeLength();
    }
    pub fn putResourceByteRangeLength(self: *@This(), value: *IReference(u64)) core.HResult!void {
        var this: ?*IAdaptiveMediaSourceDownloadResult2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdaptiveMediaSourceDownloadResult2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putResourceByteRangeLength(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSourceDownloadResult.GUID;
    pub const IID: Guid = IAdaptiveMediaSourceDownloadResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSourceDownloadResult.SIGNATURE);
};
pub const AdaptiveMediaSourceDownloadStatistics = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentBytesReceivedCount(self: *@This()) core.HResult!u64 {
        const this: *IAdaptiveMediaSourceDownloadStatistics = @ptrCast(self);
        return try this.getContentBytesReceivedCount();
    }
    pub fn getTimeToHeadersReceived(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IAdaptiveMediaSourceDownloadStatistics = @ptrCast(self);
        return try this.getTimeToHeadersReceived();
    }
    pub fn getTimeToFirstByteReceived(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IAdaptiveMediaSourceDownloadStatistics = @ptrCast(self);
        return try this.getTimeToFirstByteReceived();
    }
    pub fn getTimeToLastByteReceived(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IAdaptiveMediaSourceDownloadStatistics = @ptrCast(self);
        return try this.getTimeToLastByteReceived();
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSourceDownloadStatistics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSourceDownloadStatistics.GUID;
    pub const IID: Guid = IAdaptiveMediaSourceDownloadStatistics.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSourceDownloadStatistics.SIGNATURE);
};
pub const AdaptiveMediaSourcePlaybackBitrateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOldValue(self: *@This()) core.HResult!u32 {
        const this: *IAdaptiveMediaSourcePlaybackBitrateChangedEventArgs = @ptrCast(self);
        return try this.getOldValue();
    }
    pub fn getNewValue(self: *@This()) core.HResult!u32 {
        const this: *IAdaptiveMediaSourcePlaybackBitrateChangedEventArgs = @ptrCast(self);
        return try this.getNewValue();
    }
    pub fn getAudioOnly(self: *@This()) core.HResult!bool {
        const this: *IAdaptiveMediaSourcePlaybackBitrateChangedEventArgs = @ptrCast(self);
        return try this.getAudioOnly();
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.AdaptiveMediaSourcePlaybackBitrateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdaptiveMediaSourcePlaybackBitrateChangedEventArgs.GUID;
    pub const IID: Guid = IAdaptiveMediaSourcePlaybackBitrateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdaptiveMediaSourcePlaybackBitrateChangedEventArgs.SIGNATURE);
};
pub const AdaptiveMediaSourceResourceType = enum(i32) {
    Manifest = 0,
    InitializationSegment = 1,
    MediaSegment = 2,
    Key = 3,
    InitializationVector = 4,
    MediaSegmentIndex = 5,
};
pub const IAdaptiveMediaSource = extern struct {
    vtable: *const VTable,
    pub fn getIsLive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesiredLiveOffset(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DesiredLiveOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredLiveOffset(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_DesiredLiveOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInitialBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_InitialBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInitialBitrate(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_InitialBitrate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCurrentDownloadBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CurrentDownloadBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentPlaybackBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CurrentPlaybackBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAvailableBitrates(self: *@This()) core.HResult!*IVectorView(u32) {
        var _r: *IVectorView(u32) = undefined;
        const _c = self.vtable.get_AvailableBitrates(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesiredMinBitrate(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_DesiredMinBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredMinBitrate(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_DesiredMinBitrate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredMaxBitrate(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_DesiredMaxBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredMaxBitrate(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_DesiredMaxBitrate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioOnlyPlayback(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AudioOnlyPlayback(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInboundBitsPerSecond(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_InboundBitsPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInboundBitsPerSecondWindow(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_InboundBitsPerSecondWindow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInboundBitsPerSecondWindow(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_InboundBitsPerSecondWindow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDownloadBitrateChanged(self: *@This(), handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourceDownloadBitrateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DownloadBitrateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDownloadBitrateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DownloadBitrateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPlaybackBitrateChanged(self: *@This(), handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourcePlaybackBitrateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlaybackBitrateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlaybackBitrateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlaybackBitrateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDownloadRequested(self: *@This(), handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourceDownloadRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DownloadRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDownloadRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DownloadRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDownloadCompleted(self: *@This(), handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourceDownloadCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DownloadCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDownloadCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DownloadCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDownloadFailed(self: *@This(), handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourceDownloadFailedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DownloadFailed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDownloadFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DownloadFailed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c7332ef-d39f-4396-b4d9-043957a7c964";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsLive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DesiredLiveOffset: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_DesiredLiveOffset: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_InitialBitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_InitialBitrate: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_CurrentDownloadBitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_CurrentPlaybackBitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AvailableBitrates: *const fn(self: *anyopaque, _r: **IVectorView(u32)) callconv(.winapi) HRESULT,
        get_DesiredMinBitrate: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_DesiredMinBitrate: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
        get_DesiredMaxBitrate: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_DesiredMaxBitrate: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
        get_AudioOnlyPlayback: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_InboundBitsPerSecond: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_InboundBitsPerSecondWindow: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_InboundBitsPerSecondWindow: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        add_DownloadBitrateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourceDownloadBitrateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DownloadBitrateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PlaybackBitrateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourcePlaybackBitrateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlaybackBitrateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DownloadRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourceDownloadRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DownloadRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DownloadCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourceDownloadCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DownloadCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DownloadFailed: *const fn(self: *anyopaque, handler: *TypedEventHandler(AdaptiveMediaSource,AdaptiveMediaSourceDownloadFailedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DownloadFailed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSource2 = extern struct {
    vtable: *const VTable,
    pub fn getAdvancedSettings(self: *@This()) core.HResult!*AdaptiveMediaSourceAdvancedSettings {
        var _r: *AdaptiveMediaSourceAdvancedSettings = undefined;
        const _c = self.vtable.get_AdvancedSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17890342-6760-4bb9-a58a-f7aa98b08c0e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AdvancedSettings: *const fn(self: *anyopaque, _r: **AdaptiveMediaSourceAdvancedSettings) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSource3 = extern struct {
    vtable: *const VTable,
    pub fn getMinLiveOffset(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_MinLiveOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxSeekableWindowSize(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_MaxSeekableWindowSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesiredSeekableWindowSize(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_DesiredSeekableWindowSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredSeekableWindowSize(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_DesiredSeekableWindowSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDiagnostics(self: *@This()) core.HResult!*AdaptiveMediaSourceDiagnostics {
        var _r: *AdaptiveMediaSourceDiagnostics = undefined;
        const _c = self.vtable.get_Diagnostics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCorrelatedTimes(self: *@This()) core.HResult!*AdaptiveMediaSourceCorrelatedTimes {
        var _r: *AdaptiveMediaSourceCorrelatedTimes = undefined;
        const _c = self.vtable.GetCorrelatedTimes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSource3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ba7023fd-c334-461b-a36e-c99f54f7174a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinLiveOffset: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_MaxSeekableWindowSize: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_DesiredSeekableWindowSize: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_DesiredSeekableWindowSize: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Diagnostics: *const fn(self: *anyopaque, _r: **AdaptiveMediaSourceDiagnostics) callconv(.winapi) HRESULT,
        GetCorrelatedTimes: *const fn(self: *anyopaque, _r: **AdaptiveMediaSourceCorrelatedTimes) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceAdvancedSettings = extern struct {
    vtable: *const VTable,
    pub fn getAllSegmentsIndependent(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllSegmentsIndependent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllSegmentsIndependent(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllSegmentsIndependent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredBitrateHeadroomRatio(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_DesiredBitrateHeadroomRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredBitrateHeadroomRatio(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const _c = self.vtable.put_DesiredBitrateHeadroomRatio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBitrateDowngradeTriggerRatio(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_BitrateDowngradeTriggerRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBitrateDowngradeTriggerRatio(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const _c = self.vtable.put_BitrateDowngradeTriggerRatio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceAdvancedSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55db1680-1aeb-47dc-aa08-9a11610ba45a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllSegmentsIndependent: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllSegmentsIndependent: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_DesiredBitrateHeadroomRatio: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        put_DesiredBitrateHeadroomRatio: *const fn(self: *anyopaque, value: *IReference(f64)) callconv(.winapi) HRESULT,
        get_BitrateDowngradeTriggerRatio: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        put_BitrateDowngradeTriggerRatio: *const fn(self: *anyopaque, value: *IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceCorrelatedTimes = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPresentationTimeStamp(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_PresentationTimeStamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProgramDateTime(self: *@This()) core.HResult!*IReference(DateTime) {
        var _r: *IReference(DateTime) = undefined;
        const _c = self.vtable.get_ProgramDateTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceCorrelatedTimes";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05108787-e032-48e1-ab8d-002b0b3051df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_PresentationTimeStamp: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_ProgramDateTime: *const fn(self: *anyopaque, _r: **IReference(DateTime)) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceCreationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!AdaptiveMediaSourceCreationStatus {
        var _r: AdaptiveMediaSourceCreationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaSource(self: *@This()) core.HResult!*AdaptiveMediaSource {
        var _r: *AdaptiveMediaSource = undefined;
        const _c = self.vtable.get_MediaSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHttpResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        var _r: *HttpResponseMessage = undefined;
        const _c = self.vtable.get_HttpResponseMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceCreationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4686b6b2-800f-4e31-9093-76d4782013e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *AdaptiveMediaSourceCreationStatus) callconv(.winapi) HRESULT,
        get_MediaSource: *const fn(self: *anyopaque, _r: **AdaptiveMediaSource) callconv(.winapi) HRESULT,
        get_HttpResponseMessage: *const fn(self: *anyopaque, _r: **HttpResponseMessage) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceCreationResult2 = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceCreationResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c3243bf-1c44-404b-a201-df45ac7898e8";
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
    };
};
pub const IAdaptiveMediaSourceDiagnosticAvailableEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDiagnosticType(self: *@This()) core.HResult!AdaptiveMediaSourceDiagnosticType {
        var _r: AdaptiveMediaSourceDiagnosticType = undefined;
        const _c = self.vtable.get_DiagnosticType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequestId(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_RequestId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSegmentId(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_SegmentId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceType(self: *@This()) core.HResult!*IReference(AdaptiveMediaSourceResourceType) {
        var _r: *IReference(AdaptiveMediaSourceResourceType) = undefined;
        const _c = self.vtable.get_ResourceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ResourceUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceByteRangeOffset(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_ResourceByteRangeOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceByteRangeLength(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_ResourceByteRangeLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBitrate(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_Bitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnosticAvailableEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3af64f06-6d9c-494a-b7a9-b3a5dee6ad68";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DiagnosticType: *const fn(self: *anyopaque, _r: *AdaptiveMediaSourceDiagnosticType) callconv(.winapi) HRESULT,
        get_RequestId: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_SegmentId: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_ResourceType: *const fn(self: *anyopaque, _r: **IReference(AdaptiveMediaSourceResourceType)) callconv(.winapi) HRESULT,
        get_ResourceUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_ResourceByteRangeOffset: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_ResourceByteRangeLength: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_Bitrate: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDiagnosticAvailableEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnosticAvailableEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c6dd857-16a5-4d9f-810e-00bd901b3ef9";
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
    };
};
pub const IAdaptiveMediaSourceDiagnosticAvailableEventArgs3 = extern struct {
    vtable: *const VTable,
    pub fn getResourceDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_ResourceDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceContentType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResourceContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnosticAvailableEventArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3650cd5-daeb-4103-84da-68769ad513ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResourceDuration: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_ResourceContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDiagnostics = extern struct {
    vtable: *const VTable,
    pub fn addDiagnosticAvailable(self: *@This(), handler: *TypedEventHandler(AdaptiveMediaSourceDiagnostics,AdaptiveMediaSourceDiagnosticAvailableEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DiagnosticAvailable(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDiagnosticAvailable(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DiagnosticAvailable(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDiagnostics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b24ee68-962e-448c-aebf-b29b56098e23";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_DiagnosticAvailable: *const fn(self: *anyopaque, handler: *TypedEventHandler(AdaptiveMediaSourceDiagnostics,AdaptiveMediaSourceDiagnosticAvailableEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DiagnosticAvailable: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadBitrateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOldValue(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_OldValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewValue(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_NewValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadBitrateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "670c0a44-e04e-4eff-816a-17399f78f4ba";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OldValue: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_NewValue: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadBitrateChangedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!AdaptiveMediaSourceDownloadBitrateChangedReason {
        var _r: AdaptiveMediaSourceDownloadBitrateChangedReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadBitrateChangedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3f1f444-96ae-4de0-b540-2b3246e6968c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *AdaptiveMediaSourceDownloadBitrateChangedReason) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getResourceType(self: *@This()) core.HResult!AdaptiveMediaSourceResourceType {
        var _r: AdaptiveMediaSourceResourceType = undefined;
        const _c = self.vtable.get_ResourceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ResourceUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceByteRangeOffset(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_ResourceByteRangeOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceByteRangeLength(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_ResourceByteRangeLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHttpResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        var _r: *HttpResponseMessage = undefined;
        const _c = self.vtable.get_HttpResponseMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "19240dc3-5b37-4a1a-8970-d621cb6ca83b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResourceType: *const fn(self: *anyopaque, _r: *AdaptiveMediaSourceResourceType) callconv(.winapi) HRESULT,
        get_ResourceUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_ResourceByteRangeOffset: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_ResourceByteRangeLength: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_HttpResponseMessage: *const fn(self: *anyopaque, _r: **HttpResponseMessage) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadCompletedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RequestId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatistics(self: *@This()) core.HResult!*AdaptiveMediaSourceDownloadStatistics {
        var _r: *AdaptiveMediaSourceDownloadStatistics = undefined;
        const _c = self.vtable.get_Statistics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadCompletedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "704744c4-964a-40e4-af95-9177dd6dfa00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Statistics: *const fn(self: *anyopaque, _r: **AdaptiveMediaSourceDownloadStatistics) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadCompletedEventArgs3 = extern struct {
    vtable: *const VTable,
    pub fn getResourceDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_ResourceDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceContentType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResourceContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadCompletedEventArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f8a8bd1-93b2-47c6-badc-8be2c8f7f6e8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResourceDuration: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_ResourceContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadFailedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getResourceType(self: *@This()) core.HResult!AdaptiveMediaSourceResourceType {
        var _r: AdaptiveMediaSourceResourceType = undefined;
        const _c = self.vtable.get_ResourceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ResourceUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceByteRangeOffset(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_ResourceByteRangeOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceByteRangeLength(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_ResourceByteRangeLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHttpResponseMessage(self: *@This()) core.HResult!*HttpResponseMessage {
        var _r: *HttpResponseMessage = undefined;
        const _c = self.vtable.get_HttpResponseMessage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "37739048-f4ab-40a4-b135-c6dfd8bd7ff1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResourceType: *const fn(self: *anyopaque, _r: *AdaptiveMediaSourceResourceType) callconv(.winapi) HRESULT,
        get_ResourceUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_ResourceByteRangeOffset: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_ResourceByteRangeLength: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_HttpResponseMessage: *const fn(self: *anyopaque, _r: **HttpResponseMessage) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadFailedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RequestId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatistics(self: *@This()) core.HResult!*AdaptiveMediaSourceDownloadStatistics {
        var _r: *AdaptiveMediaSourceDownloadStatistics = undefined;
        const _c = self.vtable.get_Statistics(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "70919568-967c-4986-90c5-c6fc4b31e2d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_Statistics: *const fn(self: *anyopaque, _r: **AdaptiveMediaSourceDownloadStatistics) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadFailedEventArgs3 = extern struct {
    vtable: *const VTable,
    pub fn getResourceDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_ResourceDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceContentType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResourceContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadFailedEventArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0354549-1132-4a10-915a-c2211b5b9409";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResourceDuration: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_ResourceContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadRequestedDeferral = extern struct {
    vtable: *const VTable,
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedDeferral";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05c68f64-fa20-4dbd-9821-4bf4c9bf77ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getResourceType(self: *@This()) core.HResult!AdaptiveMediaSourceResourceType {
        var _r: AdaptiveMediaSourceResourceType = undefined;
        const _c = self.vtable.get_ResourceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ResourceUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceByteRangeOffset(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_ResourceByteRangeOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceByteRangeLength(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_ResourceByteRangeLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResult(self: *@This()) core.HResult!*AdaptiveMediaSourceDownloadResult {
        var _r: *AdaptiveMediaSourceDownloadResult = undefined;
        const _c = self.vtable.get_Result(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*AdaptiveMediaSourceDownloadRequestedDeferral {
        var _r: *AdaptiveMediaSourceDownloadRequestedDeferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c83fdffd-44a9-47a2-bf96-03398b4bfaaf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResourceType: *const fn(self: *anyopaque, _r: *AdaptiveMediaSourceResourceType) callconv(.winapi) HRESULT,
        get_ResourceUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_ResourceByteRangeOffset: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_ResourceByteRangeLength: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        get_Result: *const fn(self: *anyopaque, _r: **AdaptiveMediaSourceDownloadResult) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **AdaptiveMediaSourceDownloadRequestedDeferral) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadRequestedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getRequestId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_RequestId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b37d8bfe-aa44-4d82-825b-611de3bcfecb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RequestId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadRequestedEventArgs3 = extern struct {
    vtable: *const VTable,
    pub fn getResourceDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_ResourceDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResourceContentType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ResourceContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadRequestedEventArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "333c50fd-4f62-4481-ab44-1e47b0574225";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResourceDuration: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_ResourceContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadResult = extern struct {
    vtable: *const VTable,
    pub fn getResourceUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_ResourceUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResourceUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_ResourceUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInputStream(self: *@This()) core.HResult!*IInputStream {
        var _r: *IInputStream = undefined;
        const _c = self.vtable.get_InputStream(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInputStream(self: *@This(), value: *IInputStream) core.HResult!void {
        const _c = self.vtable.put_InputStream(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBuffer(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_Buffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBuffer(self: *@This(), value: *IBuffer) core.HResult!void {
        const _c = self.vtable.put_Buffer(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentType(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContentType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExtendedStatus(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExtendedStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExtendedStatus(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ExtendedStatus(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f4afdc73-bcee-4a6a-9f0a-fec41e2339b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResourceUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_ResourceUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_InputStream: *const fn(self: *anyopaque, _r: **IInputStream) callconv(.winapi) HRESULT,
        put_InputStream: *const fn(self: *anyopaque, value: *IInputStream) callconv(.winapi) HRESULT,
        get_Buffer: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        put_Buffer: *const fn(self: *anyopaque, value: *IBuffer) callconv(.winapi) HRESULT,
        get_ContentType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContentType: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ExtendedStatus: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_ExtendedStatus: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadResult2 = extern struct {
    vtable: *const VTable,
    pub fn getResourceByteRangeOffset(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_ResourceByteRangeOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResourceByteRangeOffset(self: *@This(), value: *IReference(u64)) core.HResult!void {
        const _c = self.vtable.put_ResourceByteRangeOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResourceByteRangeLength(self: *@This()) core.HResult!*IReference(u64) {
        var _r: *IReference(u64) = undefined;
        const _c = self.vtable.get_ResourceByteRangeLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResourceByteRangeLength(self: *@This(), value: *IReference(u64)) core.HResult!void {
        const _c = self.vtable.put_ResourceByteRangeLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadResult2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "15552cb7-7b80-4ac4-8660-a4b97f7c70f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ResourceByteRangeOffset: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        put_ResourceByteRangeOffset: *const fn(self: *anyopaque, value: *IReference(u64)) callconv(.winapi) HRESULT,
        get_ResourceByteRangeLength: *const fn(self: *anyopaque, _r: **IReference(u64)) callconv(.winapi) HRESULT,
        put_ResourceByteRangeLength: *const fn(self: *anyopaque, value: *IReference(u64)) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceDownloadStatistics = extern struct {
    vtable: *const VTable,
    pub fn getContentBytesReceivedCount(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_ContentBytesReceivedCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeToHeadersReceived(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_TimeToHeadersReceived(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeToFirstByteReceived(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_TimeToFirstByteReceived(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimeToLastByteReceived(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_TimeToLastByteReceived(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceDownloadStatistics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a306cefb-e96a-4dff-a9b8-1ae08c01ae98";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentBytesReceivedCount: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_TimeToHeadersReceived: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_TimeToFirstByteReceived: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_TimeToLastByteReceived: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourcePlaybackBitrateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOldValue(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_OldValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewValue(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_NewValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AudioOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourcePlaybackBitrateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23a29f6d-7dda-4a51-87a9-6fa8c5b292be";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OldValue: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_NewValue: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AudioOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAdaptiveMediaSourceStatics = extern struct {
    vtable: *const VTable,
    pub fn IsContentTypeSupported(self: *@This(), contentType: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsContentTypeSupported(@ptrCast(self), contentType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromUriAsync(self: *@This(), uri: *Uri) core.HResult!*IAsyncOperation(AdaptiveMediaSourceCreationResult) {
        var _r: *IAsyncOperation(AdaptiveMediaSourceCreationResult) = undefined;
        const _c = self.vtable.CreateFromUriAsync(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromUriAsyncWithHttpClient(self: *@This(), uri: *Uri, httpClient: *HttpClient) core.HResult!*IAsyncOperation(AdaptiveMediaSourceCreationResult) {
        var _r: *IAsyncOperation(AdaptiveMediaSourceCreationResult) = undefined;
        const _c = self.vtable.CreateFromUriAsyncWithHttpClient(@ptrCast(self), uri, httpClient, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromStreamAsync(self: *@This(), stream: *IInputStream, uri: *Uri, contentType: HSTRING) core.HResult!*IAsyncOperation(AdaptiveMediaSourceCreationResult) {
        var _r: *IAsyncOperation(AdaptiveMediaSourceCreationResult) = undefined;
        const _c = self.vtable.CreateFromStreamAsync(@ptrCast(self), stream, uri, contentType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFromStreamAsyncWithUriWithContentTypeWithHttpClient(self: *@This(), stream: *IInputStream, uri: *Uri, contentType: HSTRING, httpClient: *HttpClient) core.HResult!*IAsyncOperation(AdaptiveMediaSourceCreationResult) {
        var _r: *IAsyncOperation(AdaptiveMediaSourceCreationResult) = undefined;
        const _c = self.vtable.CreateFromStreamAsyncWithUriWithContentTypeWithHttpClient(@ptrCast(self), stream, uri, contentType, httpClient, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Streaming.Adaptive.IAdaptiveMediaSourceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50a6bd5d-66ef-4cd3-9579-9e660507dc3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsContentTypeSupported: *const fn(self: *anyopaque, contentType: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        CreateFromUriAsync: *const fn(self: *anyopaque, uri: *Uri, _r: **IAsyncOperation(AdaptiveMediaSourceCreationResult)) callconv(.winapi) HRESULT,
        CreateFromUriAsyncWithHttpClient: *const fn(self: *anyopaque, uri: *Uri, httpClient: *HttpClient, _r: **IAsyncOperation(AdaptiveMediaSourceCreationResult)) callconv(.winapi) HRESULT,
        CreateFromStreamAsync: *const fn(self: *anyopaque, stream: *IInputStream, uri: *Uri, contentType: HSTRING, _r: **IAsyncOperation(AdaptiveMediaSourceCreationResult)) callconv(.winapi) HRESULT,
        CreateFromStreamAsyncWithUriWithContentTypeWithHttpClient: *const fn(self: *anyopaque, stream: *IInputStream, uri: *Uri, contentType: HSTRING, httpClient: *HttpClient, _r: **IAsyncOperation(AdaptiveMediaSourceCreationResult)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IReference = @import("../../Foundation.zig").IReference;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const IInputStream = @import("../../Storage/Streams.zig").IInputStream;
const DateTime = @import("../../Foundation.zig").DateTime;
const FactoryCache = @import("../../core.zig").FactoryCache;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const IClosable = @import("../../Foundation.zig").IClosable;
const HSTRING = @import("../../root.zig").HSTRING;
const HttpResponseMessage = @import("../../Web/Http.zig").HttpResponseMessage;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const Uri = @import("../../Foundation.zig").Uri;
const HttpClient = @import("../../Web/Http.zig").HttpClient;
const HResult = @import("../../Foundation.zig").HResult;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const IMediaSource = @import("../Core.zig").IMediaSource;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
