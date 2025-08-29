pub const CameraOptionsUI = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Show(mediaCapture: *MediaCapture) core.HResult!void {
        const factory = @This().ICameraOptionsUIStaticsCache.get();
        return try factory.Show(mediaCapture);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.CameraOptionsUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICameraOptionsUIStaticsCache: FactoryCache(ICameraOptionsUIStatics, RUNTIME_NAME) = .{};
};
pub const ICameraOptionsUIStatics = extern struct {
    vtable: *const VTable,
    pub fn Show(self: *@This(), mediaCapture: *MediaCapture) core.HResult!void {
        const _c = self.vtable.Show(@ptrCast(self), mediaCapture);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ICameraOptionsUIStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b0d5e34-3906-4b7d-946c-7bde844499ae";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Show: *const fn(self: *anyopaque, mediaCapture: *MediaCapture) callconv(.winapi) HRESULT,
    };
};
pub const AppCaptureAlternateShortcutKeys = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putToggleGameBarKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.putToggleGameBarKey(value);
    }
    pub fn getToggleGameBarKey(self: *@This()) core.HResult!VirtualKey {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.getToggleGameBarKey();
    }
    pub fn putToggleGameBarKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.putToggleGameBarKeyModifiers(value);
    }
    pub fn getToggleGameBarKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.getToggleGameBarKeyModifiers();
    }
    pub fn putSaveHistoricalVideoKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.putSaveHistoricalVideoKey(value);
    }
    pub fn getSaveHistoricalVideoKey(self: *@This()) core.HResult!VirtualKey {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.getSaveHistoricalVideoKey();
    }
    pub fn putSaveHistoricalVideoKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.putSaveHistoricalVideoKeyModifiers(value);
    }
    pub fn getSaveHistoricalVideoKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.getSaveHistoricalVideoKeyModifiers();
    }
    pub fn putToggleRecordingKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.putToggleRecordingKey(value);
    }
    pub fn getToggleRecordingKey(self: *@This()) core.HResult!VirtualKey {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.getToggleRecordingKey();
    }
    pub fn putToggleRecordingKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.putToggleRecordingKeyModifiers(value);
    }
    pub fn getToggleRecordingKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.getToggleRecordingKeyModifiers();
    }
    pub fn putTakeScreenshotKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.putTakeScreenshotKey(value);
    }
    pub fn getTakeScreenshotKey(self: *@This()) core.HResult!VirtualKey {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.getTakeScreenshotKey();
    }
    pub fn putTakeScreenshotKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.putTakeScreenshotKeyModifiers(value);
    }
    pub fn getTakeScreenshotKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.getTakeScreenshotKeyModifiers();
    }
    pub fn putToggleRecordingIndicatorKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.putToggleRecordingIndicatorKey(value);
    }
    pub fn getToggleRecordingIndicatorKey(self: *@This()) core.HResult!VirtualKey {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.getToggleRecordingIndicatorKey();
    }
    pub fn putToggleRecordingIndicatorKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.putToggleRecordingIndicatorKeyModifiers(value);
    }
    pub fn getToggleRecordingIndicatorKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        const this: *IAppCaptureAlternateShortcutKeys = @ptrCast(self);
        return try this.getToggleRecordingIndicatorKeyModifiers();
    }
    pub fn putToggleMicrophoneCaptureKey(self: *@This(), value: VirtualKey) core.HResult!void {
        var this: ?*IAppCaptureAlternateShortcutKeys2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureAlternateShortcutKeys2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putToggleMicrophoneCaptureKey(value);
    }
    pub fn getToggleMicrophoneCaptureKey(self: *@This()) core.HResult!VirtualKey {
        var this: ?*IAppCaptureAlternateShortcutKeys2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureAlternateShortcutKeys2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getToggleMicrophoneCaptureKey();
    }
    pub fn putToggleMicrophoneCaptureKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        var this: ?*IAppCaptureAlternateShortcutKeys2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureAlternateShortcutKeys2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putToggleMicrophoneCaptureKeyModifiers(value);
    }
    pub fn getToggleMicrophoneCaptureKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var this: ?*IAppCaptureAlternateShortcutKeys2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureAlternateShortcutKeys2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getToggleMicrophoneCaptureKeyModifiers();
    }
    pub fn putToggleCameraCaptureKey(self: *@This(), value: VirtualKey) core.HResult!void {
        var this: ?*IAppCaptureAlternateShortcutKeys3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureAlternateShortcutKeys3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putToggleCameraCaptureKey(value);
    }
    pub fn getToggleCameraCaptureKey(self: *@This()) core.HResult!VirtualKey {
        var this: ?*IAppCaptureAlternateShortcutKeys3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureAlternateShortcutKeys3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getToggleCameraCaptureKey();
    }
    pub fn putToggleCameraCaptureKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        var this: ?*IAppCaptureAlternateShortcutKeys3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureAlternateShortcutKeys3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putToggleCameraCaptureKeyModifiers(value);
    }
    pub fn getToggleCameraCaptureKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var this: ?*IAppCaptureAlternateShortcutKeys3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureAlternateShortcutKeys3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getToggleCameraCaptureKeyModifiers();
    }
    pub fn putToggleBroadcastKey(self: *@This(), value: VirtualKey) core.HResult!void {
        var this: ?*IAppCaptureAlternateShortcutKeys3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureAlternateShortcutKeys3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putToggleBroadcastKey(value);
    }
    pub fn getToggleBroadcastKey(self: *@This()) core.HResult!VirtualKey {
        var this: ?*IAppCaptureAlternateShortcutKeys3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureAlternateShortcutKeys3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getToggleBroadcastKey();
    }
    pub fn putToggleBroadcastKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        var this: ?*IAppCaptureAlternateShortcutKeys3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureAlternateShortcutKeys3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putToggleBroadcastKeyModifiers(value);
    }
    pub fn getToggleBroadcastKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var this: ?*IAppCaptureAlternateShortcutKeys3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureAlternateShortcutKeys3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getToggleBroadcastKeyModifiers();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppCaptureAlternateShortcutKeys";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppCaptureAlternateShortcutKeys.GUID;
    pub const IID: Guid = IAppCaptureAlternateShortcutKeys.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppCaptureAlternateShortcutKeys.SIGNATURE);
};
pub const AppCaptureDurationGeneratedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppCaptureDurationGeneratedEventArgs = @ptrCast(self);
        return try this.getDuration();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppCaptureDurationGeneratedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppCaptureDurationGeneratedEventArgs.GUID;
    pub const IID: Guid = IAppCaptureDurationGeneratedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppCaptureDurationGeneratedEventArgs.SIGNATURE);
};
pub const AppCaptureFileGeneratedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        const this: *IAppCaptureFileGeneratedEventArgs = @ptrCast(self);
        return try this.getFile();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppCaptureFileGeneratedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppCaptureFileGeneratedEventArgs.GUID;
    pub const IID: Guid = IAppCaptureFileGeneratedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppCaptureFileGeneratedEventArgs.SIGNATURE);
};
pub const AppCaptureHistoricalBufferLengthUnit = enum(i32) {
    Megabytes = 0,
    Seconds = 1,
};
pub const AppCaptureManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetCurrentSettings() core.HResult!*AppCaptureSettings {
        const factory = @This().IAppCaptureManagerStaticsCache.get();
        return try factory.GetCurrentSettings();
    }
    pub fn ApplySettings(appCaptureSettings: *AppCaptureSettings) core.HResult!void {
        const factory = @This().IAppCaptureManagerStaticsCache.get();
        return try factory.ApplySettings(appCaptureSettings);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppCaptureManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAppCaptureManagerStaticsCache: FactoryCache(IAppCaptureManagerStatics, RUNTIME_NAME) = .{};
};
pub const AppCaptureMicrophoneCaptureState = enum(i32) {
    Stopped = 0,
    Started = 1,
    Failed = 2,
};
pub const AppCaptureMicrophoneCaptureStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!AppCaptureMicrophoneCaptureState {
        const this: *IAppCaptureMicrophoneCaptureStateChangedEventArgs = @ptrCast(self);
        return try this.getState();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        const this: *IAppCaptureMicrophoneCaptureStateChangedEventArgs = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppCaptureMicrophoneCaptureStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppCaptureMicrophoneCaptureStateChangedEventArgs.GUID;
    pub const IID: Guid = IAppCaptureMicrophoneCaptureStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppCaptureMicrophoneCaptureStateChangedEventArgs.SIGNATURE);
};
pub const AppCaptureRecordOperation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn StopRecording(self: *@This()) core.HResult!void {
        const this: *IAppCaptureRecordOperation = @ptrCast(self);
        return try this.StopRecording();
    }
    pub fn getState(self: *@This()) core.HResult!AppCaptureRecordingState {
        const this: *IAppCaptureRecordOperation = @ptrCast(self);
        return try this.getState();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IAppCaptureRecordOperation = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub fn getDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IAppCaptureRecordOperation = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        const this: *IAppCaptureRecordOperation = @ptrCast(self);
        return try this.getFile();
    }
    pub fn getIsFileTruncated(self: *@This()) core.HResult!*IReference(bool) {
        const this: *IAppCaptureRecordOperation = @ptrCast(self);
        return try this.getIsFileTruncated();
    }
    pub fn addStateChanged(self: *@This(), value: *TypedEventHandler(AppCaptureRecordOperation,AppCaptureRecordingStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppCaptureRecordOperation = @ptrCast(self);
        return try this.addStateChanged(value);
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppCaptureRecordOperation = @ptrCast(self);
        return try this.removeStateChanged(token);
    }
    pub fn addDurationGenerated(self: *@This(), value: *TypedEventHandler(AppCaptureRecordOperation,AppCaptureDurationGeneratedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppCaptureRecordOperation = @ptrCast(self);
        return try this.addDurationGenerated(value);
    }
    pub fn removeDurationGenerated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppCaptureRecordOperation = @ptrCast(self);
        return try this.removeDurationGenerated(token);
    }
    pub fn addFileGenerated(self: *@This(), value: *TypedEventHandler(AppCaptureRecordOperation,AppCaptureFileGeneratedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppCaptureRecordOperation = @ptrCast(self);
        return try this.addFileGenerated(value);
    }
    pub fn removeFileGenerated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppCaptureRecordOperation = @ptrCast(self);
        return try this.removeFileGenerated(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppCaptureRecordOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppCaptureRecordOperation.GUID;
    pub const IID: Guid = IAppCaptureRecordOperation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppCaptureRecordOperation.SIGNATURE);
};
pub const AppCaptureRecordingState = enum(i32) {
    InProgress = 0,
    Completed = 1,
    Failed = 2,
};
pub const AppCaptureRecordingStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!AppCaptureRecordingState {
        const this: *IAppCaptureRecordingStateChangedEventArgs = @ptrCast(self);
        return try this.getState();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        const this: *IAppCaptureRecordingStateChangedEventArgs = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppCaptureRecordingStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppCaptureRecordingStateChangedEventArgs.GUID;
    pub const IID: Guid = IAppCaptureRecordingStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppCaptureRecordingStateChangedEventArgs.SIGNATURE);
};
pub const AppCaptureServices = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Record(self: *@This()) core.HResult!*AppCaptureRecordOperation {
        const this: *IAppCaptureServices = @ptrCast(self);
        return try this.Record();
    }
    pub fn RecordTimeSpan(self: *@This(), startTime: DateTime, duration: TimeSpan) core.HResult!*AppCaptureRecordOperation {
        const this: *IAppCaptureServices = @ptrCast(self);
        return try this.RecordTimeSpan(startTime, duration);
    }
    pub fn getCanCapture(self: *@This()) core.HResult!bool {
        const this: *IAppCaptureServices = @ptrCast(self);
        return try this.getCanCapture();
    }
    pub fn getState(self: *@This()) core.HResult!*AppCaptureState {
        const this: *IAppCaptureServices = @ptrCast(self);
        return try this.getState();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppCaptureServices";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppCaptureServices.GUID;
    pub const IID: Guid = IAppCaptureServices.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppCaptureServices.SIGNATURE);
};
pub const AppCaptureSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putAppCaptureDestinationFolder(self: *@This(), value: *StorageFolder) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putAppCaptureDestinationFolder(value);
    }
    pub fn getAppCaptureDestinationFolder(self: *@This()) core.HResult!*StorageFolder {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getAppCaptureDestinationFolder();
    }
    pub fn putAudioEncodingBitrate(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putAudioEncodingBitrate(value);
    }
    pub fn getAudioEncodingBitrate(self: *@This()) core.HResult!u32 {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getAudioEncodingBitrate();
    }
    pub fn putIsAudioCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putIsAudioCaptureEnabled(value);
    }
    pub fn getIsAudioCaptureEnabled(self: *@This()) core.HResult!bool {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getIsAudioCaptureEnabled();
    }
    pub fn putCustomVideoEncodingBitrate(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putCustomVideoEncodingBitrate(value);
    }
    pub fn getCustomVideoEncodingBitrate(self: *@This()) core.HResult!u32 {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getCustomVideoEncodingBitrate();
    }
    pub fn putCustomVideoEncodingHeight(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putCustomVideoEncodingHeight(value);
    }
    pub fn getCustomVideoEncodingHeight(self: *@This()) core.HResult!u32 {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getCustomVideoEncodingHeight();
    }
    pub fn putCustomVideoEncodingWidth(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putCustomVideoEncodingWidth(value);
    }
    pub fn getCustomVideoEncodingWidth(self: *@This()) core.HResult!u32 {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getCustomVideoEncodingWidth();
    }
    pub fn putHistoricalBufferLength(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putHistoricalBufferLength(value);
    }
    pub fn getHistoricalBufferLength(self: *@This()) core.HResult!u32 {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getHistoricalBufferLength();
    }
    pub fn putHistoricalBufferLengthUnit(self: *@This(), value: AppCaptureHistoricalBufferLengthUnit) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putHistoricalBufferLengthUnit(value);
    }
    pub fn getHistoricalBufferLengthUnit(self: *@This()) core.HResult!AppCaptureHistoricalBufferLengthUnit {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getHistoricalBufferLengthUnit();
    }
    pub fn putIsHistoricalCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putIsHistoricalCaptureEnabled(value);
    }
    pub fn getIsHistoricalCaptureEnabled(self: *@This()) core.HResult!bool {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getIsHistoricalCaptureEnabled();
    }
    pub fn putIsHistoricalCaptureOnBatteryAllowed(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putIsHistoricalCaptureOnBatteryAllowed(value);
    }
    pub fn getIsHistoricalCaptureOnBatteryAllowed(self: *@This()) core.HResult!bool {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getIsHistoricalCaptureOnBatteryAllowed();
    }
    pub fn putIsHistoricalCaptureOnWirelessDisplayAllowed(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putIsHistoricalCaptureOnWirelessDisplayAllowed(value);
    }
    pub fn getIsHistoricalCaptureOnWirelessDisplayAllowed(self: *@This()) core.HResult!bool {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getIsHistoricalCaptureOnWirelessDisplayAllowed();
    }
    pub fn putMaximumRecordLength(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putMaximumRecordLength(value);
    }
    pub fn getMaximumRecordLength(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getMaximumRecordLength();
    }
    pub fn putScreenshotDestinationFolder(self: *@This(), value: *StorageFolder) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putScreenshotDestinationFolder(value);
    }
    pub fn getScreenshotDestinationFolder(self: *@This()) core.HResult!*StorageFolder {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getScreenshotDestinationFolder();
    }
    pub fn putVideoEncodingBitrateMode(self: *@This(), value: AppCaptureVideoEncodingBitrateMode) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putVideoEncodingBitrateMode(value);
    }
    pub fn getVideoEncodingBitrateMode(self: *@This()) core.HResult!AppCaptureVideoEncodingBitrateMode {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getVideoEncodingBitrateMode();
    }
    pub fn putVideoEncodingResolutionMode(self: *@This(), value: AppCaptureVideoEncodingResolutionMode) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putVideoEncodingResolutionMode(value);
    }
    pub fn getVideoEncodingResolutionMode(self: *@This()) core.HResult!AppCaptureVideoEncodingResolutionMode {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getVideoEncodingResolutionMode();
    }
    pub fn putIsAppCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.putIsAppCaptureEnabled(value);
    }
    pub fn getIsAppCaptureEnabled(self: *@This()) core.HResult!bool {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getIsAppCaptureEnabled();
    }
    pub fn getIsCpuConstrained(self: *@This()) core.HResult!bool {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getIsCpuConstrained();
    }
    pub fn getIsDisabledByPolicy(self: *@This()) core.HResult!bool {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getIsDisabledByPolicy();
    }
    pub fn getIsMemoryConstrained(self: *@This()) core.HResult!bool {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getIsMemoryConstrained();
    }
    pub fn getHasHardwareEncoder(self: *@This()) core.HResult!bool {
        const this: *IAppCaptureSettings = @ptrCast(self);
        return try this.getHasHardwareEncoder();
    }
    pub fn getIsGpuConstrained(self: *@This()) core.HResult!bool {
        var this: ?*IAppCaptureSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsGpuConstrained();
    }
    pub fn getAlternateShortcutKeys(self: *@This()) core.HResult!*AppCaptureAlternateShortcutKeys {
        var this: ?*IAppCaptureSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAlternateShortcutKeys();
    }
    pub fn putIsMicrophoneCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppCaptureSettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsMicrophoneCaptureEnabled(value);
    }
    pub fn getIsMicrophoneCaptureEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IAppCaptureSettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsMicrophoneCaptureEnabled();
    }
    pub fn putIsMicrophoneCaptureEnabledByDefault(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppCaptureSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsMicrophoneCaptureEnabledByDefault(value);
    }
    pub fn getIsMicrophoneCaptureEnabledByDefault(self: *@This()) core.HResult!bool {
        var this: ?*IAppCaptureSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsMicrophoneCaptureEnabledByDefault();
    }
    pub fn putSystemAudioGain(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IAppCaptureSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSystemAudioGain(value);
    }
    pub fn getSystemAudioGain(self: *@This()) core.HResult!f64 {
        var this: ?*IAppCaptureSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSystemAudioGain();
    }
    pub fn putMicrophoneGain(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IAppCaptureSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMicrophoneGain(value);
    }
    pub fn getMicrophoneGain(self: *@This()) core.HResult!f64 {
        var this: ?*IAppCaptureSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMicrophoneGain();
    }
    pub fn putVideoEncodingFrameRateMode(self: *@This(), value: AppCaptureVideoEncodingFrameRateMode) core.HResult!void {
        var this: ?*IAppCaptureSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putVideoEncodingFrameRateMode(value);
    }
    pub fn getVideoEncodingFrameRateMode(self: *@This()) core.HResult!AppCaptureVideoEncodingFrameRateMode {
        var this: ?*IAppCaptureSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVideoEncodingFrameRateMode();
    }
    pub fn putIsEchoCancellationEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppCaptureSettings5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsEchoCancellationEnabled(value);
    }
    pub fn getIsEchoCancellationEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IAppCaptureSettings5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsEchoCancellationEnabled();
    }
    pub fn putIsCursorImageCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IAppCaptureSettings5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsCursorImageCaptureEnabled(value);
    }
    pub fn getIsCursorImageCaptureEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IAppCaptureSettings5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppCaptureSettings5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsCursorImageCaptureEnabled();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppCaptureSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppCaptureSettings.GUID;
    pub const IID: Guid = IAppCaptureSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppCaptureSettings.SIGNATURE);
};
pub const AppCaptureState = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsTargetRunning(self: *@This()) core.HResult!bool {
        const this: *IAppCaptureState = @ptrCast(self);
        return try this.getIsTargetRunning();
    }
    pub fn getIsHistoricalCaptureEnabled(self: *@This()) core.HResult!bool {
        const this: *IAppCaptureState = @ptrCast(self);
        return try this.getIsHistoricalCaptureEnabled();
    }
    pub fn getShouldCaptureMicrophone(self: *@This()) core.HResult!bool {
        const this: *IAppCaptureState = @ptrCast(self);
        return try this.getShouldCaptureMicrophone();
    }
    pub fn putShouldCaptureMicrophone(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppCaptureState = @ptrCast(self);
        return try this.putShouldCaptureMicrophone(value);
    }
    pub fn RestartMicrophoneCapture(self: *@This()) core.HResult!void {
        const this: *IAppCaptureState = @ptrCast(self);
        return try this.RestartMicrophoneCapture();
    }
    pub fn getMicrophoneCaptureState(self: *@This()) core.HResult!AppCaptureMicrophoneCaptureState {
        const this: *IAppCaptureState = @ptrCast(self);
        return try this.getMicrophoneCaptureState();
    }
    pub fn getMicrophoneCaptureError(self: *@This()) core.HResult!u32 {
        const this: *IAppCaptureState = @ptrCast(self);
        return try this.getMicrophoneCaptureError();
    }
    pub fn addMicrophoneCaptureStateChanged(self: *@This(), value: *TypedEventHandler(AppCaptureState,AppCaptureMicrophoneCaptureStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppCaptureState = @ptrCast(self);
        return try this.addMicrophoneCaptureStateChanged(value);
    }
    pub fn removeMicrophoneCaptureStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppCaptureState = @ptrCast(self);
        return try this.removeMicrophoneCaptureStateChanged(token);
    }
    pub fn addCaptureTargetClosed(self: *@This(), value: *TypedEventHandler(AppCaptureState,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppCaptureState = @ptrCast(self);
        return try this.addCaptureTargetClosed(value);
    }
    pub fn removeCaptureTargetClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppCaptureState = @ptrCast(self);
        return try this.removeCaptureTargetClosed(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppCaptureState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppCaptureState.GUID;
    pub const IID: Guid = IAppCaptureState.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppCaptureState.SIGNATURE);
};
pub const AppCaptureVideoEncodingBitrateMode = enum(i32) {
    Custom = 0,
    High = 1,
    Standard = 2,
};
pub const AppCaptureVideoEncodingFrameRateMode = enum(i32) {
    Standard = 0,
    High = 1,
};
pub const AppCaptureVideoEncodingResolutionMode = enum(i32) {
    Custom = 0,
    High = 1,
    Standard = 2,
};
pub const IAppCaptureAlternateShortcutKeys = extern struct {
    vtable: *const VTable,
    pub fn putToggleGameBarKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const _c = self.vtable.put_ToggleGameBarKey(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToggleGameBarKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_ToggleGameBarKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putToggleGameBarKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const _c = self.vtable.put_ToggleGameBarKeyModifiers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToggleGameBarKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var _r: VirtualKeyModifiers = undefined;
        const _c = self.vtable.get_ToggleGameBarKeyModifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSaveHistoricalVideoKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const _c = self.vtable.put_SaveHistoricalVideoKey(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSaveHistoricalVideoKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_SaveHistoricalVideoKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSaveHistoricalVideoKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const _c = self.vtable.put_SaveHistoricalVideoKeyModifiers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSaveHistoricalVideoKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var _r: VirtualKeyModifiers = undefined;
        const _c = self.vtable.get_SaveHistoricalVideoKeyModifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putToggleRecordingKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const _c = self.vtable.put_ToggleRecordingKey(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToggleRecordingKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_ToggleRecordingKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putToggleRecordingKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const _c = self.vtable.put_ToggleRecordingKeyModifiers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToggleRecordingKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var _r: VirtualKeyModifiers = undefined;
        const _c = self.vtable.get_ToggleRecordingKeyModifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTakeScreenshotKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const _c = self.vtable.put_TakeScreenshotKey(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTakeScreenshotKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_TakeScreenshotKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTakeScreenshotKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const _c = self.vtable.put_TakeScreenshotKeyModifiers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTakeScreenshotKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var _r: VirtualKeyModifiers = undefined;
        const _c = self.vtable.get_TakeScreenshotKeyModifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putToggleRecordingIndicatorKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const _c = self.vtable.put_ToggleRecordingIndicatorKey(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToggleRecordingIndicatorKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_ToggleRecordingIndicatorKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putToggleRecordingIndicatorKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const _c = self.vtable.put_ToggleRecordingIndicatorKeyModifiers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToggleRecordingIndicatorKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var _r: VirtualKeyModifiers = undefined;
        const _c = self.vtable.get_ToggleRecordingIndicatorKeyModifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureAlternateShortcutKeys";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "19e8e0ef-236c-40f9-b38f-9b7dd65d1ccc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ToggleGameBarKey: *const fn(self: *anyopaque, value: VirtualKey) callconv(.winapi) HRESULT,
        get_ToggleGameBarKey: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        put_ToggleGameBarKeyModifiers: *const fn(self: *anyopaque, value: VirtualKeyModifiers) callconv(.winapi) HRESULT,
        get_ToggleGameBarKeyModifiers: *const fn(self: *anyopaque, _r: *VirtualKeyModifiers) callconv(.winapi) HRESULT,
        put_SaveHistoricalVideoKey: *const fn(self: *anyopaque, value: VirtualKey) callconv(.winapi) HRESULT,
        get_SaveHistoricalVideoKey: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        put_SaveHistoricalVideoKeyModifiers: *const fn(self: *anyopaque, value: VirtualKeyModifiers) callconv(.winapi) HRESULT,
        get_SaveHistoricalVideoKeyModifiers: *const fn(self: *anyopaque, _r: *VirtualKeyModifiers) callconv(.winapi) HRESULT,
        put_ToggleRecordingKey: *const fn(self: *anyopaque, value: VirtualKey) callconv(.winapi) HRESULT,
        get_ToggleRecordingKey: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        put_ToggleRecordingKeyModifiers: *const fn(self: *anyopaque, value: VirtualKeyModifiers) callconv(.winapi) HRESULT,
        get_ToggleRecordingKeyModifiers: *const fn(self: *anyopaque, _r: *VirtualKeyModifiers) callconv(.winapi) HRESULT,
        put_TakeScreenshotKey: *const fn(self: *anyopaque, value: VirtualKey) callconv(.winapi) HRESULT,
        get_TakeScreenshotKey: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        put_TakeScreenshotKeyModifiers: *const fn(self: *anyopaque, value: VirtualKeyModifiers) callconv(.winapi) HRESULT,
        get_TakeScreenshotKeyModifiers: *const fn(self: *anyopaque, _r: *VirtualKeyModifiers) callconv(.winapi) HRESULT,
        put_ToggleRecordingIndicatorKey: *const fn(self: *anyopaque, value: VirtualKey) callconv(.winapi) HRESULT,
        get_ToggleRecordingIndicatorKey: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        put_ToggleRecordingIndicatorKeyModifiers: *const fn(self: *anyopaque, value: VirtualKeyModifiers) callconv(.winapi) HRESULT,
        get_ToggleRecordingIndicatorKeyModifiers: *const fn(self: *anyopaque, _r: *VirtualKeyModifiers) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureAlternateShortcutKeys2 = extern struct {
    vtable: *const VTable,
    pub fn putToggleMicrophoneCaptureKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const _c = self.vtable.put_ToggleMicrophoneCaptureKey(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToggleMicrophoneCaptureKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_ToggleMicrophoneCaptureKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putToggleMicrophoneCaptureKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const _c = self.vtable.put_ToggleMicrophoneCaptureKeyModifiers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToggleMicrophoneCaptureKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var _r: VirtualKeyModifiers = undefined;
        const _c = self.vtable.get_ToggleMicrophoneCaptureKeyModifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureAlternateShortcutKeys2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3669090-dd17-47f0-95e5-ce42286cf338";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ToggleMicrophoneCaptureKey: *const fn(self: *anyopaque, value: VirtualKey) callconv(.winapi) HRESULT,
        get_ToggleMicrophoneCaptureKey: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        put_ToggleMicrophoneCaptureKeyModifiers: *const fn(self: *anyopaque, value: VirtualKeyModifiers) callconv(.winapi) HRESULT,
        get_ToggleMicrophoneCaptureKeyModifiers: *const fn(self: *anyopaque, _r: *VirtualKeyModifiers) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureAlternateShortcutKeys3 = extern struct {
    vtable: *const VTable,
    pub fn putToggleCameraCaptureKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const _c = self.vtable.put_ToggleCameraCaptureKey(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToggleCameraCaptureKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_ToggleCameraCaptureKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putToggleCameraCaptureKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const _c = self.vtable.put_ToggleCameraCaptureKeyModifiers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToggleCameraCaptureKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var _r: VirtualKeyModifiers = undefined;
        const _c = self.vtable.get_ToggleCameraCaptureKeyModifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putToggleBroadcastKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const _c = self.vtable.put_ToggleBroadcastKey(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToggleBroadcastKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_ToggleBroadcastKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putToggleBroadcastKeyModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const _c = self.vtable.put_ToggleBroadcastKeyModifiers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToggleBroadcastKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var _r: VirtualKeyModifiers = undefined;
        const _c = self.vtable.get_ToggleBroadcastKeyModifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureAlternateShortcutKeys3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b81448c-418e-469c-a49a-45b597c826b6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ToggleCameraCaptureKey: *const fn(self: *anyopaque, value: VirtualKey) callconv(.winapi) HRESULT,
        get_ToggleCameraCaptureKey: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        put_ToggleCameraCaptureKeyModifiers: *const fn(self: *anyopaque, value: VirtualKeyModifiers) callconv(.winapi) HRESULT,
        get_ToggleCameraCaptureKeyModifiers: *const fn(self: *anyopaque, _r: *VirtualKeyModifiers) callconv(.winapi) HRESULT,
        put_ToggleBroadcastKey: *const fn(self: *anyopaque, value: VirtualKey) callconv(.winapi) HRESULT,
        get_ToggleBroadcastKey: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        put_ToggleBroadcastKeyModifiers: *const fn(self: *anyopaque, value: VirtualKeyModifiers) callconv(.winapi) HRESULT,
        get_ToggleBroadcastKeyModifiers: *const fn(self: *anyopaque, _r: *VirtualKeyModifiers) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureDurationGeneratedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureDurationGeneratedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1f5563b-ffa1-44c9-975f-27fbeb553b35";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureFileGeneratedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        var _r: *StorageFile = undefined;
        const _c = self.vtable.get_File(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureFileGeneratedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4189fbf4-465e-45bf-907f-165b3fb23758";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_File: *const fn(self: *anyopaque, _r: **StorageFile) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentSettings(self: *@This()) core.HResult!*AppCaptureSettings {
        var _r: *AppCaptureSettings = undefined;
        const _c = self.vtable.GetCurrentSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ApplySettings(self: *@This(), appCaptureSettings: *AppCaptureSettings) core.HResult!void {
        const _c = self.vtable.ApplySettings(@ptrCast(self), appCaptureSettings);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d9e3ea7-6282-4735-8d4e-aa45f90f6723";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentSettings: *const fn(self: *anyopaque, _r: **AppCaptureSettings) callconv(.winapi) HRESULT,
        ApplySettings: *const fn(self: *anyopaque, appCaptureSettings: *AppCaptureSettings) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureMicrophoneCaptureStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!AppCaptureMicrophoneCaptureState {
        var _r: AppCaptureMicrophoneCaptureState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureMicrophoneCaptureStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "324d249e-45bc-4c35-bc35-e469fc7a69e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *AppCaptureMicrophoneCaptureState) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureRecordOperation = extern struct {
    vtable: *const VTable,
    pub fn StopRecording(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopRecording(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getState(self: *@This()) core.HResult!AppCaptureRecordingState {
        var _r: AppCaptureRecordingState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuration(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        var _r: *StorageFile = undefined;
        const _c = self.vtable.get_File(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsFileTruncated(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_IsFileTruncated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStateChanged(self: *@This(), value: *TypedEventHandler(AppCaptureRecordOperation,AppCaptureRecordingStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StateChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDurationGenerated(self: *@This(), value: *TypedEventHandler(AppCaptureRecordOperation,AppCaptureDurationGeneratedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DurationGenerated(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDurationGenerated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DurationGenerated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFileGenerated(self: *@This(), value: *TypedEventHandler(AppCaptureRecordOperation,AppCaptureFileGeneratedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FileGenerated(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFileGenerated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FileGenerated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureRecordOperation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c66020a9-1538-495c-9bbb-2ba870ec5861";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StopRecording: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *AppCaptureRecordingState) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_File: *const fn(self: *anyopaque, _r: **StorageFile) callconv(.winapi) HRESULT,
        get_IsFileTruncated: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
        add_StateChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(AppCaptureRecordOperation,AppCaptureRecordingStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DurationGenerated: *const fn(self: *anyopaque, value: *TypedEventHandler(AppCaptureRecordOperation,AppCaptureDurationGeneratedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DurationGenerated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_FileGenerated: *const fn(self: *anyopaque, value: *TypedEventHandler(AppCaptureRecordOperation,AppCaptureFileGeneratedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FileGenerated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureRecordingStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!AppCaptureRecordingState {
        var _r: AppCaptureRecordingState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureRecordingStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24fc8712-e305-490d-b415-6b1c9049736b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *AppCaptureRecordingState) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureServices = extern struct {
    vtable: *const VTable,
    pub fn Record(self: *@This()) core.HResult!*AppCaptureRecordOperation {
        var _r: *AppCaptureRecordOperation = undefined;
        const _c = self.vtable.Record(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RecordTimeSpan(self: *@This(), startTime: DateTime, duration: TimeSpan) core.HResult!*AppCaptureRecordOperation {
        var _r: *AppCaptureRecordOperation = undefined;
        const _c = self.vtable.RecordTimeSpan(@ptrCast(self), startTime, duration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanCapture(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanCapture(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!*AppCaptureState {
        var _r: *AppCaptureState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureServices";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "44fec0b5-34f5-4f18-ae8c-b9123abbfc0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Record: *const fn(self: *anyopaque, _r: **AppCaptureRecordOperation) callconv(.winapi) HRESULT,
        RecordTimeSpan: *const fn(self: *anyopaque, startTime: DateTime, duration: TimeSpan, _r: **AppCaptureRecordOperation) callconv(.winapi) HRESULT,
        get_CanCapture: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: **AppCaptureState) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureSettings = extern struct {
    vtable: *const VTable,
    pub fn putAppCaptureDestinationFolder(self: *@This(), value: *StorageFolder) core.HResult!void {
        const _c = self.vtable.put_AppCaptureDestinationFolder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAppCaptureDestinationFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_AppCaptureDestinationFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioEncodingBitrate(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_AudioEncodingBitrate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioEncodingBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AudioEncodingBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAudioCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAudioCaptureEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAudioCaptureEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAudioCaptureEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCustomVideoEncodingBitrate(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CustomVideoEncodingBitrate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCustomVideoEncodingBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CustomVideoEncodingBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCustomVideoEncodingHeight(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CustomVideoEncodingHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCustomVideoEncodingHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CustomVideoEncodingHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCustomVideoEncodingWidth(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CustomVideoEncodingWidth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCustomVideoEncodingWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CustomVideoEncodingWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHistoricalBufferLength(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_HistoricalBufferLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHistoricalBufferLength(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_HistoricalBufferLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHistoricalBufferLengthUnit(self: *@This(), value: AppCaptureHistoricalBufferLengthUnit) core.HResult!void {
        const _c = self.vtable.put_HistoricalBufferLengthUnit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHistoricalBufferLengthUnit(self: *@This()) core.HResult!AppCaptureHistoricalBufferLengthUnit {
        var _r: AppCaptureHistoricalBufferLengthUnit = undefined;
        const _c = self.vtable.get_HistoricalBufferLengthUnit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsHistoricalCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsHistoricalCaptureEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsHistoricalCaptureEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHistoricalCaptureEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsHistoricalCaptureOnBatteryAllowed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsHistoricalCaptureOnBatteryAllowed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsHistoricalCaptureOnBatteryAllowed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHistoricalCaptureOnBatteryAllowed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsHistoricalCaptureOnWirelessDisplayAllowed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsHistoricalCaptureOnWirelessDisplayAllowed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsHistoricalCaptureOnWirelessDisplayAllowed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHistoricalCaptureOnWirelessDisplayAllowed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaximumRecordLength(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_MaximumRecordLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaximumRecordLength(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_MaximumRecordLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScreenshotDestinationFolder(self: *@This(), value: *StorageFolder) core.HResult!void {
        const _c = self.vtable.put_ScreenshotDestinationFolder(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScreenshotDestinationFolder(self: *@This()) core.HResult!*StorageFolder {
        var _r: *StorageFolder = undefined;
        const _c = self.vtable.get_ScreenshotDestinationFolder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVideoEncodingBitrateMode(self: *@This(), value: AppCaptureVideoEncodingBitrateMode) core.HResult!void {
        const _c = self.vtable.put_VideoEncodingBitrateMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVideoEncodingBitrateMode(self: *@This()) core.HResult!AppCaptureVideoEncodingBitrateMode {
        var _r: AppCaptureVideoEncodingBitrateMode = undefined;
        const _c = self.vtable.get_VideoEncodingBitrateMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVideoEncodingResolutionMode(self: *@This(), value: AppCaptureVideoEncodingResolutionMode) core.HResult!void {
        const _c = self.vtable.put_VideoEncodingResolutionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVideoEncodingResolutionMode(self: *@This()) core.HResult!AppCaptureVideoEncodingResolutionMode {
        var _r: AppCaptureVideoEncodingResolutionMode = undefined;
        const _c = self.vtable.get_VideoEncodingResolutionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAppCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAppCaptureEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAppCaptureEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAppCaptureEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCpuConstrained(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCpuConstrained(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDisabledByPolicy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisabledByPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsMemoryConstrained(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMemoryConstrained(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasHardwareEncoder(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasHardwareEncoder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14683a86-8807-48d3-883a-970ee4532a39";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_AppCaptureDestinationFolder: *const fn(self: *anyopaque, value: *StorageFolder) callconv(.winapi) HRESULT,
        get_AppCaptureDestinationFolder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        put_AudioEncodingBitrate: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_AudioEncodingBitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_IsAudioCaptureEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsAudioCaptureEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CustomVideoEncodingBitrate: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_CustomVideoEncodingBitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_CustomVideoEncodingHeight: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_CustomVideoEncodingHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_CustomVideoEncodingWidth: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_CustomVideoEncodingWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_HistoricalBufferLength: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_HistoricalBufferLength: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_HistoricalBufferLengthUnit: *const fn(self: *anyopaque, value: AppCaptureHistoricalBufferLengthUnit) callconv(.winapi) HRESULT,
        get_HistoricalBufferLengthUnit: *const fn(self: *anyopaque, _r: *AppCaptureHistoricalBufferLengthUnit) callconv(.winapi) HRESULT,
        put_IsHistoricalCaptureEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsHistoricalCaptureEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsHistoricalCaptureOnBatteryAllowed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsHistoricalCaptureOnBatteryAllowed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsHistoricalCaptureOnWirelessDisplayAllowed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsHistoricalCaptureOnWirelessDisplayAllowed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_MaximumRecordLength: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_MaximumRecordLength: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_ScreenshotDestinationFolder: *const fn(self: *anyopaque, value: *StorageFolder) callconv(.winapi) HRESULT,
        get_ScreenshotDestinationFolder: *const fn(self: *anyopaque, _r: **StorageFolder) callconv(.winapi) HRESULT,
        put_VideoEncodingBitrateMode: *const fn(self: *anyopaque, value: AppCaptureVideoEncodingBitrateMode) callconv(.winapi) HRESULT,
        get_VideoEncodingBitrateMode: *const fn(self: *anyopaque, _r: *AppCaptureVideoEncodingBitrateMode) callconv(.winapi) HRESULT,
        put_VideoEncodingResolutionMode: *const fn(self: *anyopaque, value: AppCaptureVideoEncodingResolutionMode) callconv(.winapi) HRESULT,
        get_VideoEncodingResolutionMode: *const fn(self: *anyopaque, _r: *AppCaptureVideoEncodingResolutionMode) callconv(.winapi) HRESULT,
        put_IsAppCaptureEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsAppCaptureEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCpuConstrained: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDisabledByPolicy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsMemoryConstrained: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasHardwareEncoder: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureSettings2 = extern struct {
    vtable: *const VTable,
    pub fn getIsGpuConstrained(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGpuConstrained(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlternateShortcutKeys(self: *@This()) core.HResult!*AppCaptureAlternateShortcutKeys {
        var _r: *AppCaptureAlternateShortcutKeys = undefined;
        const _c = self.vtable.get_AlternateShortcutKeys(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureSettings2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcb8cee7-e26b-476f-9b1a-ec342d2a8fde";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsGpuConstrained: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AlternateShortcutKeys: *const fn(self: *anyopaque, _r: **AppCaptureAlternateShortcutKeys) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureSettings3 = extern struct {
    vtable: *const VTable,
    pub fn putIsMicrophoneCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsMicrophoneCaptureEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsMicrophoneCaptureEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMicrophoneCaptureEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureSettings3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a93502fe-88c2-42d6-aaaa-40feffd75aec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_IsMicrophoneCaptureEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsMicrophoneCaptureEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureSettings4 = extern struct {
    vtable: *const VTable,
    pub fn putIsMicrophoneCaptureEnabledByDefault(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsMicrophoneCaptureEnabledByDefault(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsMicrophoneCaptureEnabledByDefault(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMicrophoneCaptureEnabledByDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSystemAudioGain(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_SystemAudioGain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSystemAudioGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SystemAudioGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMicrophoneGain(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MicrophoneGain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMicrophoneGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MicrophoneGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVideoEncodingFrameRateMode(self: *@This(), value: AppCaptureVideoEncodingFrameRateMode) core.HResult!void {
        const _c = self.vtable.put_VideoEncodingFrameRateMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVideoEncodingFrameRateMode(self: *@This()) core.HResult!AppCaptureVideoEncodingFrameRateMode {
        var _r: AppCaptureVideoEncodingFrameRateMode = undefined;
        const _c = self.vtable.get_VideoEncodingFrameRateMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureSettings4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "07c2774c-1a81-482f-a244-049d95f25b0b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_IsMicrophoneCaptureEnabledByDefault: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsMicrophoneCaptureEnabledByDefault: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SystemAudioGain: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_SystemAudioGain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_MicrophoneGain: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_MicrophoneGain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_VideoEncodingFrameRateMode: *const fn(self: *anyopaque, value: AppCaptureVideoEncodingFrameRateMode) callconv(.winapi) HRESULT,
        get_VideoEncodingFrameRateMode: *const fn(self: *anyopaque, _r: *AppCaptureVideoEncodingFrameRateMode) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureSettings5 = extern struct {
    vtable: *const VTable,
    pub fn putIsEchoCancellationEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEchoCancellationEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsEchoCancellationEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEchoCancellationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCursorImageCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCursorImageCaptureEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCursorImageCaptureEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCursorImageCaptureEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureSettings5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "18894522-b0e8-4ba0-8f13-3eaa5fa4013b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_IsEchoCancellationEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsEchoCancellationEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCursorImageCaptureEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsCursorImageCaptureEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureState = extern struct {
    vtable: *const VTable,
    pub fn getIsTargetRunning(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTargetRunning(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHistoricalCaptureEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHistoricalCaptureEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShouldCaptureMicrophone(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldCaptureMicrophone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShouldCaptureMicrophone(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShouldCaptureMicrophone(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RestartMicrophoneCapture(self: *@This()) core.HResult!void {
        const _c = self.vtable.RestartMicrophoneCapture(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMicrophoneCaptureState(self: *@This()) core.HResult!AppCaptureMicrophoneCaptureState {
        var _r: AppCaptureMicrophoneCaptureState = undefined;
        const _c = self.vtable.get_MicrophoneCaptureState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMicrophoneCaptureError(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MicrophoneCaptureError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addMicrophoneCaptureStateChanged(self: *@This(), value: *TypedEventHandler(AppCaptureState,AppCaptureMicrophoneCaptureStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MicrophoneCaptureStateChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMicrophoneCaptureStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MicrophoneCaptureStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCaptureTargetClosed(self: *@This(), value: *TypedEventHandler(AppCaptureState,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CaptureTargetClosed(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCaptureTargetClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CaptureTargetClosed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73134372-d4eb-44ce-9538-465f506ac4ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTargetRunning: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsHistoricalCaptureEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ShouldCaptureMicrophone: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShouldCaptureMicrophone: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        RestartMicrophoneCapture: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_MicrophoneCaptureState: *const fn(self: *anyopaque, _r: *AppCaptureMicrophoneCaptureState) callconv(.winapi) HRESULT,
        get_MicrophoneCaptureError: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_MicrophoneCaptureStateChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(AppCaptureState,AppCaptureMicrophoneCaptureStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MicrophoneCaptureStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CaptureTargetClosed: *const fn(self: *anyopaque, value: *TypedEventHandler(AppCaptureState,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CaptureTargetClosed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const AppCaptureMetadataPriority = enum(i32) {
    Informational = 0,
    Important = 1,
};
pub const AppCaptureMetadataWriter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AddStringEvent(self: *@This(), name: HSTRING, value: HSTRING, priority: AppCaptureMetadataPriority) core.HResult!void {
        const this: *IAppCaptureMetadataWriter = @ptrCast(self);
        return try this.AddStringEvent(name, value, priority);
    }
    pub fn AddInt32Event(self: *@This(), name: HSTRING, value: i32, priority: AppCaptureMetadataPriority) core.HResult!void {
        const this: *IAppCaptureMetadataWriter = @ptrCast(self);
        return try this.AddInt32Event(name, value, priority);
    }
    pub fn AddDoubleEvent(self: *@This(), name: HSTRING, value: f64, priority: AppCaptureMetadataPriority) core.HResult!void {
        const this: *IAppCaptureMetadataWriter = @ptrCast(self);
        return try this.AddDoubleEvent(name, value, priority);
    }
    pub fn StartStringState(self: *@This(), name: HSTRING, value: HSTRING, priority: AppCaptureMetadataPriority) core.HResult!void {
        const this: *IAppCaptureMetadataWriter = @ptrCast(self);
        return try this.StartStringState(name, value, priority);
    }
    pub fn StartInt32State(self: *@This(), name: HSTRING, value: i32, priority: AppCaptureMetadataPriority) core.HResult!void {
        const this: *IAppCaptureMetadataWriter = @ptrCast(self);
        return try this.StartInt32State(name, value, priority);
    }
    pub fn StartDoubleState(self: *@This(), name: HSTRING, value: f64, priority: AppCaptureMetadataPriority) core.HResult!void {
        const this: *IAppCaptureMetadataWriter = @ptrCast(self);
        return try this.StartDoubleState(name, value, priority);
    }
    pub fn StopState(self: *@This(), name: HSTRING) core.HResult!void {
        const this: *IAppCaptureMetadataWriter = @ptrCast(self);
        return try this.StopState(name);
    }
    pub fn StopAllStates(self: *@This()) core.HResult!void {
        const this: *IAppCaptureMetadataWriter = @ptrCast(self);
        return try this.StopAllStates();
    }
    pub fn getRemainingStorageBytesAvailable(self: *@This()) core.HResult!u64 {
        const this: *IAppCaptureMetadataWriter = @ptrCast(self);
        return try this.getRemainingStorageBytesAvailable();
    }
    pub fn addMetadataPurged(self: *@This(), handler: *TypedEventHandler(AppCaptureMetadataWriter,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppCaptureMetadataWriter = @ptrCast(self);
        return try this.addMetadataPurged(handler);
    }
    pub fn removeMetadataPurged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppCaptureMetadataWriter = @ptrCast(self);
        return try this.removeMetadataPurged(token);
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
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAppCaptureMetadataWriter.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppCaptureMetadataWriter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppCaptureMetadataWriter.GUID;
    pub const IID: Guid = IAppCaptureMetadataWriter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppCaptureMetadataWriter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IAppCaptureMetadataWriter = extern struct {
    vtable: *const VTable,
    pub fn AddStringEvent(self: *@This(), name: HSTRING, value: HSTRING, priority: AppCaptureMetadataPriority) core.HResult!void {
        const _c = self.vtable.AddStringEvent(@ptrCast(self), name, value, priority);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddInt32Event(self: *@This(), name: HSTRING, value: i32, priority: AppCaptureMetadataPriority) core.HResult!void {
        const _c = self.vtable.AddInt32Event(@ptrCast(self), name, value, priority);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddDoubleEvent(self: *@This(), name: HSTRING, value: f64, priority: AppCaptureMetadataPriority) core.HResult!void {
        const _c = self.vtable.AddDoubleEvent(@ptrCast(self), name, value, priority);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartStringState(self: *@This(), name: HSTRING, value: HSTRING, priority: AppCaptureMetadataPriority) core.HResult!void {
        const _c = self.vtable.StartStringState(@ptrCast(self), name, value, priority);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartInt32State(self: *@This(), name: HSTRING, value: i32, priority: AppCaptureMetadataPriority) core.HResult!void {
        const _c = self.vtable.StartInt32State(@ptrCast(self), name, value, priority);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartDoubleState(self: *@This(), name: HSTRING, value: f64, priority: AppCaptureMetadataPriority) core.HResult!void {
        const _c = self.vtable.StartDoubleState(@ptrCast(self), name, value, priority);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopState(self: *@This(), name: HSTRING) core.HResult!void {
        const _c = self.vtable.StopState(@ptrCast(self), name);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopAllStates(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopAllStates(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRemainingStorageBytesAvailable(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_RemainingStorageBytesAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addMetadataPurged(self: *@This(), handler: *TypedEventHandler(AppCaptureMetadataWriter,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MetadataPurged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMetadataPurged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MetadataPurged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureMetadataWriter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0ce4877-9aaf-46b4-ad31-6a60b441c780";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddStringEvent: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, priority: AppCaptureMetadataPriority) callconv(.winapi) HRESULT,
        AddInt32Event: *const fn(self: *anyopaque, name: HSTRING, value: i32, priority: AppCaptureMetadataPriority) callconv(.winapi) HRESULT,
        AddDoubleEvent: *const fn(self: *anyopaque, name: HSTRING, value: f64, priority: AppCaptureMetadataPriority) callconv(.winapi) HRESULT,
        StartStringState: *const fn(self: *anyopaque, name: HSTRING, value: HSTRING, priority: AppCaptureMetadataPriority) callconv(.winapi) HRESULT,
        StartInt32State: *const fn(self: *anyopaque, name: HSTRING, value: i32, priority: AppCaptureMetadataPriority) callconv(.winapi) HRESULT,
        StartDoubleState: *const fn(self: *anyopaque, name: HSTRING, value: f64, priority: AppCaptureMetadataPriority) callconv(.winapi) HRESULT,
        StopState: *const fn(self: *anyopaque, name: HSTRING) callconv(.winapi) HRESULT,
        StopAllStates: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_RemainingStorageBytesAvailable: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        add_MetadataPurged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppCaptureMetadataWriter,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MetadataPurged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const GameBarCommand = enum(i32) {
    OpenGameBar = 0,
    RecordHistoricalBuffer = 1,
    ToggleStartStopRecord = 2,
    StartRecord = 3,
    StopRecord = 4,
    TakeScreenshot = 5,
    StartBroadcast = 6,
    StopBroadcast = 7,
    PauseBroadcast = 8,
    ResumeBroadcast = 9,
    ToggleStartStopBroadcast = 10,
    ToggleMicrophoneCapture = 11,
    ToggleCameraCapture = 12,
    ToggleRecordingIndicator = 13,
};
pub const GameBarCommandOrigin = enum(i32) {
    ShortcutKey = 0,
    Cortana = 1,
    AppCommand = 2,
};
pub const GameBarServices = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetCapturePolicy(self: *@This()) core.HResult!GameBarTargetCapturePolicy {
        const this: *IGameBarServices = @ptrCast(self);
        return try this.getTargetCapturePolicy();
    }
    pub fn EnableCapture(self: *@This()) core.HResult!void {
        const this: *IGameBarServices = @ptrCast(self);
        return try this.EnableCapture();
    }
    pub fn DisableCapture(self: *@This()) core.HResult!void {
        const this: *IGameBarServices = @ptrCast(self);
        return try this.DisableCapture();
    }
    pub fn getTargetInfo(self: *@This()) core.HResult!*GameBarServicesTargetInfo {
        const this: *IGameBarServices = @ptrCast(self);
        return try this.getTargetInfo();
    }
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        const this: *IGameBarServices = @ptrCast(self);
        return try this.getSessionId();
    }
    pub fn getAppBroadcastServices(self: *@This()) core.HResult!*AppBroadcastServices {
        const this: *IGameBarServices = @ptrCast(self);
        return try this.getAppBroadcastServices();
    }
    pub fn getAppCaptureServices(self: *@This()) core.HResult!*AppCaptureServices {
        const this: *IGameBarServices = @ptrCast(self);
        return try this.getAppCaptureServices();
    }
    pub fn addCommandReceived(self: *@This(), value: *TypedEventHandler(GameBarServices,GameBarServicesCommandEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGameBarServices = @ptrCast(self);
        return try this.addCommandReceived(value);
    }
    pub fn removeCommandReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGameBarServices = @ptrCast(self);
        return try this.removeCommandReceived(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.GameBarServices";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameBarServices.GUID;
    pub const IID: Guid = IGameBarServices.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameBarServices.SIGNATURE);
};
pub const GameBarServicesCommandEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCommand(self: *@This()) core.HResult!GameBarCommand {
        const this: *IGameBarServicesCommandEventArgs = @ptrCast(self);
        return try this.getCommand();
    }
    pub fn getOrigin(self: *@This()) core.HResult!GameBarCommandOrigin {
        const this: *IGameBarServicesCommandEventArgs = @ptrCast(self);
        return try this.getOrigin();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.GameBarServicesCommandEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameBarServicesCommandEventArgs.GUID;
    pub const IID: Guid = IGameBarServicesCommandEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameBarServicesCommandEventArgs.SIGNATURE);
};
pub const GameBarServicesManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addGameBarServicesCreated(self: *@This(), value: *TypedEventHandler(GameBarServicesManager,GameBarServicesManagerGameBarServicesCreatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGameBarServicesManager = @ptrCast(self);
        return try this.addGameBarServicesCreated(value);
    }
    pub fn removeGameBarServicesCreated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGameBarServicesManager = @ptrCast(self);
        return try this.removeGameBarServicesCreated(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*GameBarServicesManager {
        const factory = @This().IGameBarServicesManagerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.GameBarServicesManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameBarServicesManager.GUID;
    pub const IID: Guid = IGameBarServicesManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameBarServicesManager.SIGNATURE);
    var _IGameBarServicesManagerStaticsCache: FactoryCache(IGameBarServicesManagerStatics, RUNTIME_NAME) = .{};
};
pub const GameBarServicesManagerGameBarServicesCreatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGameBarServices(self: *@This()) core.HResult!*GameBarServices {
        const this: *IGameBarServicesManagerGameBarServicesCreatedEventArgs = @ptrCast(self);
        return try this.getGameBarServices();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.GameBarServicesManagerGameBarServicesCreatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameBarServicesManagerGameBarServicesCreatedEventArgs.GUID;
    pub const IID: Guid = IGameBarServicesManagerGameBarServicesCreatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameBarServicesManagerGameBarServicesCreatedEventArgs.SIGNATURE);
};
pub const GameBarServicesTargetInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IGameBarServicesTargetInfo = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getAppId(self: *@This()) core.HResult!HSTRING {
        const this: *IGameBarServicesTargetInfo = @ptrCast(self);
        return try this.getAppId();
    }
    pub fn getTitleId(self: *@This()) core.HResult!HSTRING {
        const this: *IGameBarServicesTargetInfo = @ptrCast(self);
        return try this.getTitleId();
    }
    pub fn getDisplayMode(self: *@This()) core.HResult!GameBarServicesDisplayMode {
        const this: *IGameBarServicesTargetInfo = @ptrCast(self);
        return try this.getDisplayMode();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.GameBarServicesTargetInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGameBarServicesTargetInfo.GUID;
    pub const IID: Guid = IGameBarServicesTargetInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGameBarServicesTargetInfo.SIGNATURE);
};
pub const GameBarTargetCapturePolicy = enum(i32) {
    EnabledBySystem = 0,
    EnabledByUser = 1,
    NotEnabled = 2,
    ProhibitedBySystem = 3,
    ProhibitedByPublisher = 4,
};
pub const IGameBarServices = extern struct {
    vtable: *const VTable,
    pub fn getTargetCapturePolicy(self: *@This()) core.HResult!GameBarTargetCapturePolicy {
        var _r: GameBarTargetCapturePolicy = undefined;
        const _c = self.vtable.get_TargetCapturePolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnableCapture(self: *@This()) core.HResult!void {
        const _c = self.vtable.EnableCapture(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DisableCapture(self: *@This()) core.HResult!void {
        const _c = self.vtable.DisableCapture(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetInfo(self: *@This()) core.HResult!*GameBarServicesTargetInfo {
        var _r: *GameBarServicesTargetInfo = undefined;
        const _c = self.vtable.get_TargetInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSessionId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SessionId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppBroadcastServices(self: *@This()) core.HResult!*AppBroadcastServices {
        var _r: *AppBroadcastServices = undefined;
        const _c = self.vtable.get_AppBroadcastServices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppCaptureServices(self: *@This()) core.HResult!*AppCaptureServices {
        var _r: *AppCaptureServices = undefined;
        const _c = self.vtable.get_AppCaptureServices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCommandReceived(self: *@This(), value: *TypedEventHandler(GameBarServices,GameBarServicesCommandEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CommandReceived(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCommandReceived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CommandReceived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IGameBarServices";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2dbead57-50a6-499e-8c6c-d330a7311796";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetCapturePolicy: *const fn(self: *anyopaque, _r: *GameBarTargetCapturePolicy) callconv(.winapi) HRESULT,
        EnableCapture: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        DisableCapture: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_TargetInfo: *const fn(self: *anyopaque, _r: **GameBarServicesTargetInfo) callconv(.winapi) HRESULT,
        get_SessionId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AppBroadcastServices: *const fn(self: *anyopaque, _r: **AppBroadcastServices) callconv(.winapi) HRESULT,
        get_AppCaptureServices: *const fn(self: *anyopaque, _r: **AppCaptureServices) callconv(.winapi) HRESULT,
        add_CommandReceived: *const fn(self: *anyopaque, value: *TypedEventHandler(GameBarServices,GameBarServicesCommandEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CommandReceived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGameBarServicesCommandEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCommand(self: *@This()) core.HResult!GameBarCommand {
        var _r: GameBarCommand = undefined;
        const _c = self.vtable.get_Command(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrigin(self: *@This()) core.HResult!GameBarCommandOrigin {
        var _r: GameBarCommandOrigin = undefined;
        const _c = self.vtable.get_Origin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IGameBarServicesCommandEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a74226b2-f176-4fcf-8fbb-cf698b2eb8e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Command: *const fn(self: *anyopaque, _r: *GameBarCommand) callconv(.winapi) HRESULT,
        get_Origin: *const fn(self: *anyopaque, _r: *GameBarCommandOrigin) callconv(.winapi) HRESULT,
    };
};
pub const IGameBarServicesManager = extern struct {
    vtable: *const VTable,
    pub fn addGameBarServicesCreated(self: *@This(), value: *TypedEventHandler(GameBarServicesManager,GameBarServicesManagerGameBarServicesCreatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GameBarServicesCreated(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGameBarServicesCreated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GameBarServicesCreated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IGameBarServicesManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a4b9cfa-7f8b-4c60-9dbb-0bcd262dffc6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_GameBarServicesCreated: *const fn(self: *anyopaque, value: *TypedEventHandler(GameBarServicesManager,GameBarServicesManagerGameBarServicesCreatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GameBarServicesCreated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGameBarServicesManagerGameBarServicesCreatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getGameBarServices(self: *@This()) core.HResult!*GameBarServices {
        var _r: *GameBarServices = undefined;
        const _c = self.vtable.get_GameBarServices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IGameBarServicesManagerGameBarServicesCreatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ededbd9c-143e-49a3-a5ea-0b1995c8d46e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_GameBarServices: *const fn(self: *anyopaque, _r: **GameBarServices) callconv(.winapi) HRESULT,
    };
};
pub const IGameBarServicesManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*GameBarServicesManager {
        var _r: *GameBarServicesManager = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IGameBarServicesManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "34c1b616-ff25-4792-98f2-d3753f15ac13";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **GameBarServicesManager) callconv(.winapi) HRESULT,
    };
};
pub const IGameBarServicesTargetInfo = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitleId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TitleId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayMode(self: *@This()) core.HResult!GameBarServicesDisplayMode {
        var _r: GameBarServicesDisplayMode = undefined;
        const _c = self.vtable.get_DisplayMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IGameBarServicesTargetInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4202f92-1611-4e05-b6ef-dfd737ae33b0";
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
        get_AppId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_TitleId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_DisplayMode: *const fn(self: *anyopaque, _r: *GameBarServicesDisplayMode) callconv(.winapi) HRESULT,
    };
};
pub const AdvancedCapturedPhoto = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrame(self: *@This()) core.HResult!*CapturedFrame {
        const this: *IAdvancedCapturedPhoto = @ptrCast(self);
        return try this.getFrame();
    }
    pub fn getMode(self: *@This()) core.HResult!AdvancedPhotoMode {
        const this: *IAdvancedCapturedPhoto = @ptrCast(self);
        return try this.getMode();
    }
    pub fn getContext(self: *@This()) core.HResult!*IInspectable {
        const this: *IAdvancedCapturedPhoto = @ptrCast(self);
        return try this.getContext();
    }
    pub fn getFrameBoundsRelativeToReferencePhoto(self: *@This()) core.HResult!*IReference(Rect) {
        var this: ?*IAdvancedCapturedPhoto2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAdvancedCapturedPhoto2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFrameBoundsRelativeToReferencePhoto();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AdvancedCapturedPhoto";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdvancedCapturedPhoto.GUID;
    pub const IID: Guid = IAdvancedCapturedPhoto.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdvancedCapturedPhoto.SIGNATURE);
};
pub const AdvancedPhotoCapture = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CaptureAsync(self: *@This()) core.HResult!*IAsyncOperation(AdvancedCapturedPhoto) {
        const this: *IAdvancedPhotoCapture = @ptrCast(self);
        return try this.CaptureAsync();
    }
    pub fn CaptureAsync(self: *@This(), context: *IInspectable) core.HResult!*IAsyncOperation(AdvancedCapturedPhoto) {
        const this: *IAdvancedPhotoCapture = @ptrCast(self);
        return try this.CaptureAsync(context);
    }
    pub fn addOptionalReferencePhotoCaptured(self: *@This(), handler: *TypedEventHandler(AdvancedPhotoCapture,OptionalReferencePhotoCapturedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAdvancedPhotoCapture = @ptrCast(self);
        return try this.addOptionalReferencePhotoCaptured(handler);
    }
    pub fn removeOptionalReferencePhotoCaptured(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAdvancedPhotoCapture = @ptrCast(self);
        return try this.removeOptionalReferencePhotoCaptured(token);
    }
    pub fn addAllPhotosCaptured(self: *@This(), handler: *TypedEventHandler(AdvancedPhotoCapture,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAdvancedPhotoCapture = @ptrCast(self);
        return try this.addAllPhotosCaptured(handler);
    }
    pub fn removeAllPhotosCaptured(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAdvancedPhotoCapture = @ptrCast(self);
        return try this.removeAllPhotosCaptured(token);
    }
    pub fn FinishAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAdvancedPhotoCapture = @ptrCast(self);
        return try this.FinishAsync();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AdvancedPhotoCapture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAdvancedPhotoCapture.GUID;
    pub const IID: Guid = IAdvancedPhotoCapture.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAdvancedPhotoCapture.SIGNATURE);
};
pub const AppCapture = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsCapturingAudio(self: *@This()) core.HResult!bool {
        const this: *IAppCapture = @ptrCast(self);
        return try this.getIsCapturingAudio();
    }
    pub fn getIsCapturingVideo(self: *@This()) core.HResult!bool {
        const this: *IAppCapture = @ptrCast(self);
        return try this.getIsCapturingVideo();
    }
    pub fn addCapturingChanged(self: *@This(), handler: *TypedEventHandler(AppCapture,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppCapture = @ptrCast(self);
        return try this.addCapturingChanged(handler);
    }
    pub fn removeCapturingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppCapture = @ptrCast(self);
        return try this.removeCapturingChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*AppCapture {
        const factory = @This().IAppCaptureStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub fn SetAllowedAsync(allowed: bool) core.HResult!*IAsyncAction {
        const factory = @This().IAppCaptureStatics2Cache.get();
        return try factory.SetAllowedAsync(allowed);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppCapture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppCapture.GUID;
    pub const IID: Guid = IAppCapture.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppCapture.SIGNATURE);
    var _IAppCaptureStaticsCache: FactoryCache(IAppCaptureStatics, RUNTIME_NAME) = .{};
    var _IAppCaptureStatics2Cache: FactoryCache(IAppCaptureStatics2, RUNTIME_NAME) = .{};
};
pub const CameraCaptureUI = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPhotoSettings(self: *@This()) core.HResult!*CameraCaptureUIPhotoCaptureSettings {
        const this: *ICameraCaptureUI = @ptrCast(self);
        return try this.getPhotoSettings();
    }
    pub fn getVideoSettings(self: *@This()) core.HResult!*CameraCaptureUIVideoCaptureSettings {
        const this: *ICameraCaptureUI = @ptrCast(self);
        return try this.getVideoSettings();
    }
    pub fn CaptureFileAsync(self: *@This(), mode: CameraCaptureUIMode) core.HResult!*IAsyncOperation(StorageFile) {
        const this: *ICameraCaptureUI = @ptrCast(self);
        return try this.CaptureFileAsync(mode);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICameraCaptureUI.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.CameraCaptureUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICameraCaptureUI.GUID;
    pub const IID: Guid = ICameraCaptureUI.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICameraCaptureUI.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CameraCaptureUIMaxPhotoResolution = enum(i32) {
    HighestAvailable = 0,
    VerySmallQvga = 1,
    SmallVga = 2,
    MediumXga = 3,
    Large3M = 4,
    VeryLarge5M = 5,
};
pub const CameraCaptureUIMaxVideoResolution = enum(i32) {
    HighestAvailable = 0,
    LowDefinition = 1,
    StandardDefinition = 2,
    HighDefinition = 3,
};
pub const CameraCaptureUIMode = enum(i32) {
    PhotoOrVideo = 0,
    Photo = 1,
    Video = 2,
};
pub const CameraCaptureUIPhotoCaptureSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFormat(self: *@This()) core.HResult!CameraCaptureUIPhotoFormat {
        const this: *ICameraCaptureUIPhotoCaptureSettings = @ptrCast(self);
        return try this.getFormat();
    }
    pub fn putFormat(self: *@This(), value: CameraCaptureUIPhotoFormat) core.HResult!void {
        const this: *ICameraCaptureUIPhotoCaptureSettings = @ptrCast(self);
        return try this.putFormat(value);
    }
    pub fn getMaxResolution(self: *@This()) core.HResult!CameraCaptureUIMaxPhotoResolution {
        const this: *ICameraCaptureUIPhotoCaptureSettings = @ptrCast(self);
        return try this.getMaxResolution();
    }
    pub fn putMaxResolution(self: *@This(), value: CameraCaptureUIMaxPhotoResolution) core.HResult!void {
        const this: *ICameraCaptureUIPhotoCaptureSettings = @ptrCast(self);
        return try this.putMaxResolution(value);
    }
    pub fn getCroppedSizeInPixels(self: *@This()) core.HResult!Size {
        const this: *ICameraCaptureUIPhotoCaptureSettings = @ptrCast(self);
        return try this.getCroppedSizeInPixels();
    }
    pub fn putCroppedSizeInPixels(self: *@This(), value: Size) core.HResult!void {
        const this: *ICameraCaptureUIPhotoCaptureSettings = @ptrCast(self);
        return try this.putCroppedSizeInPixels(value);
    }
    pub fn getCroppedAspectRatio(self: *@This()) core.HResult!Size {
        const this: *ICameraCaptureUIPhotoCaptureSettings = @ptrCast(self);
        return try this.getCroppedAspectRatio();
    }
    pub fn putCroppedAspectRatio(self: *@This(), value: Size) core.HResult!void {
        const this: *ICameraCaptureUIPhotoCaptureSettings = @ptrCast(self);
        return try this.putCroppedAspectRatio(value);
    }
    pub fn getAllowCropping(self: *@This()) core.HResult!bool {
        const this: *ICameraCaptureUIPhotoCaptureSettings = @ptrCast(self);
        return try this.getAllowCropping();
    }
    pub fn putAllowCropping(self: *@This(), value: bool) core.HResult!void {
        const this: *ICameraCaptureUIPhotoCaptureSettings = @ptrCast(self);
        return try this.putAllowCropping(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.CameraCaptureUIPhotoCaptureSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICameraCaptureUIPhotoCaptureSettings.GUID;
    pub const IID: Guid = ICameraCaptureUIPhotoCaptureSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICameraCaptureUIPhotoCaptureSettings.SIGNATURE);
};
pub const CameraCaptureUIPhotoFormat = enum(i32) {
    Jpeg = 0,
    Png = 1,
    JpegXR = 2,
};
pub const CameraCaptureUIVideoCaptureSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFormat(self: *@This()) core.HResult!CameraCaptureUIVideoFormat {
        const this: *ICameraCaptureUIVideoCaptureSettings = @ptrCast(self);
        return try this.getFormat();
    }
    pub fn putFormat(self: *@This(), value: CameraCaptureUIVideoFormat) core.HResult!void {
        const this: *ICameraCaptureUIVideoCaptureSettings = @ptrCast(self);
        return try this.putFormat(value);
    }
    pub fn getMaxResolution(self: *@This()) core.HResult!CameraCaptureUIMaxVideoResolution {
        const this: *ICameraCaptureUIVideoCaptureSettings = @ptrCast(self);
        return try this.getMaxResolution();
    }
    pub fn putMaxResolution(self: *@This(), value: CameraCaptureUIMaxVideoResolution) core.HResult!void {
        const this: *ICameraCaptureUIVideoCaptureSettings = @ptrCast(self);
        return try this.putMaxResolution(value);
    }
    pub fn getMaxDurationInSeconds(self: *@This()) core.HResult!f32 {
        const this: *ICameraCaptureUIVideoCaptureSettings = @ptrCast(self);
        return try this.getMaxDurationInSeconds();
    }
    pub fn putMaxDurationInSeconds(self: *@This(), value: f32) core.HResult!void {
        const this: *ICameraCaptureUIVideoCaptureSettings = @ptrCast(self);
        return try this.putMaxDurationInSeconds(value);
    }
    pub fn getAllowTrimming(self: *@This()) core.HResult!bool {
        const this: *ICameraCaptureUIVideoCaptureSettings = @ptrCast(self);
        return try this.getAllowTrimming();
    }
    pub fn putAllowTrimming(self: *@This(), value: bool) core.HResult!void {
        const this: *ICameraCaptureUIVideoCaptureSettings = @ptrCast(self);
        return try this.putAllowTrimming(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.CameraCaptureUIVideoCaptureSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICameraCaptureUIVideoCaptureSettings.GUID;
    pub const IID: Guid = ICameraCaptureUIVideoCaptureSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICameraCaptureUIVideoCaptureSettings.SIGNATURE);
};
pub const CameraCaptureUIVideoFormat = enum(i32) {
    Mp4 = 0,
    Wmv = 1,
};
pub const CapturedFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *ICapturedFrame = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *ICapturedFrame = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getSize(self: *@This()) core.HResult!u64 {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn putSize(self: *@This(), value: u64) core.HResult!void {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSize(value);
    }
    pub fn GetInputStreamAt(self: *@This(), position: u64) core.HResult!*IInputStream {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetInputStreamAt(position);
    }
    pub fn GetOutputStreamAt(self: *@This(), position: u64) core.HResult!*IOutputStream {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetOutputStreamAt(position);
    }
    pub fn getPosition(self: *@This()) core.HResult!u64 {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPosition();
    }
    pub fn Seek(self: *@This(), position: u64) core.HResult!void {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Seek(position);
    }
    pub fn CloneStream(self: *@This()) core.HResult!*IRandomAccessStream {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CloneStream();
    }
    pub fn getCanRead(self: *@This()) core.HResult!bool {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanRead();
    }
    pub fn getCanWrite(self: *@This()) core.HResult!bool {
        var this: ?*IRandomAccessStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRandomAccessStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanWrite();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn ReadAsync(self: *@This(), buffer: *IBuffer, count: u32, options: InputStreamOptions) core.HResult!*IAsyncOperationWithProgress(IBuffer,u32) {
        var this: ?*IInputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReadAsync(buffer, count, options);
    }
    pub fn WriteAsync(self: *@This(), buffer: *IBuffer) core.HResult!*IAsyncOperationWithProgress(u32,u32) {
        var this: ?*IOutputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOutputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.WriteAsync(buffer);
    }
    pub fn FlushAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IOutputStream = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IOutputStream.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FlushAsync();
    }
    pub fn getContentType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IContentTypeProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IContentTypeProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getContentType();
    }
    pub fn getSoftwareBitmap(self: *@This()) core.HResult!*SoftwareBitmap {
        var this: ?*ICapturedFrameWithSoftwareBitmap = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICapturedFrameWithSoftwareBitmap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSoftwareBitmap();
    }
    pub fn getControlValues(self: *@This()) core.HResult!*CapturedFrameControlValues {
        var this: ?*ICapturedFrame2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICapturedFrame2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getControlValues();
    }
    pub fn getBitmapProperties(self: *@This()) core.HResult!*BitmapPropertySet {
        var this: ?*ICapturedFrame2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICapturedFrame2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBitmapProperties();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.CapturedFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICapturedFrame.GUID;
    pub const IID: Guid = ICapturedFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICapturedFrame.SIGNATURE);
};
pub const CapturedFrameControlValues = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExposure(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *ICapturedFrameControlValues = @ptrCast(self);
        return try this.getExposure();
    }
    pub fn getExposureCompensation(self: *@This()) core.HResult!*IReference(f32) {
        const this: *ICapturedFrameControlValues = @ptrCast(self);
        return try this.getExposureCompensation();
    }
    pub fn getIsoSpeed(self: *@This()) core.HResult!*IReference(u32) {
        const this: *ICapturedFrameControlValues = @ptrCast(self);
        return try this.getIsoSpeed();
    }
    pub fn getFocus(self: *@This()) core.HResult!*IReference(u32) {
        const this: *ICapturedFrameControlValues = @ptrCast(self);
        return try this.getFocus();
    }
    pub fn getSceneMode(self: *@This()) core.HResult!*IReference(CaptureSceneMode) {
        const this: *ICapturedFrameControlValues = @ptrCast(self);
        return try this.getSceneMode();
    }
    pub fn getFlashed(self: *@This()) core.HResult!*IReference(bool) {
        const this: *ICapturedFrameControlValues = @ptrCast(self);
        return try this.getFlashed();
    }
    pub fn getFlashPowerPercent(self: *@This()) core.HResult!*IReference(f32) {
        const this: *ICapturedFrameControlValues = @ptrCast(self);
        return try this.getFlashPowerPercent();
    }
    pub fn getWhiteBalance(self: *@This()) core.HResult!*IReference(u32) {
        const this: *ICapturedFrameControlValues = @ptrCast(self);
        return try this.getWhiteBalance();
    }
    pub fn getZoomFactor(self: *@This()) core.HResult!*IReference(f32) {
        const this: *ICapturedFrameControlValues = @ptrCast(self);
        return try this.getZoomFactor();
    }
    pub fn getFocusState(self: *@This()) core.HResult!*IReference(MediaCaptureFocusState) {
        var this: ?*ICapturedFrameControlValues2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICapturedFrameControlValues2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFocusState();
    }
    pub fn getIsoDigitalGain(self: *@This()) core.HResult!*IReference(f64) {
        var this: ?*ICapturedFrameControlValues2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICapturedFrameControlValues2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsoDigitalGain();
    }
    pub fn getIsoAnalogGain(self: *@This()) core.HResult!*IReference(f64) {
        var this: ?*ICapturedFrameControlValues2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICapturedFrameControlValues2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsoAnalogGain();
    }
    pub fn getSensorFrameRate(self: *@This()) core.HResult!*MediaRatio {
        var this: ?*ICapturedFrameControlValues2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICapturedFrameControlValues2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSensorFrameRate();
    }
    pub fn getWhiteBalanceGain(self: *@This()) core.HResult!*IReference(WhiteBalanceGain) {
        var this: ?*ICapturedFrameControlValues2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICapturedFrameControlValues2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWhiteBalanceGain();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.CapturedFrameControlValues";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICapturedFrameControlValues.GUID;
    pub const IID: Guid = ICapturedFrameControlValues.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICapturedFrameControlValues.SIGNATURE);
};
pub const CapturedPhoto = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrame(self: *@This()) core.HResult!*CapturedFrame {
        const this: *ICapturedPhoto = @ptrCast(self);
        return try this.getFrame();
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*CapturedFrame {
        const this: *ICapturedPhoto = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.CapturedPhoto";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICapturedPhoto.GUID;
    pub const IID: Guid = ICapturedPhoto.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICapturedPhoto.SIGNATURE);
};
pub const IAdvancedCapturedPhoto = extern struct {
    vtable: *const VTable,
    pub fn getFrame(self: *@This()) core.HResult!*CapturedFrame {
        var _r: *CapturedFrame = undefined;
        const _c = self.vtable.get_Frame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMode(self: *@This()) core.HResult!AdvancedPhotoMode {
        var _r: AdvancedPhotoMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContext(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Context(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAdvancedCapturedPhoto";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f072728b-b292-4491-9d41-99807a550bbf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Frame: *const fn(self: *anyopaque, _r: **CapturedFrame) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *AdvancedPhotoMode) callconv(.winapi) HRESULT,
        get_Context: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedCapturedPhoto2 = extern struct {
    vtable: *const VTable,
    pub fn getFrameBoundsRelativeToReferencePhoto(self: *@This()) core.HResult!*IReference(Rect) {
        var _r: *IReference(Rect) = undefined;
        const _c = self.vtable.get_FrameBoundsRelativeToReferencePhoto(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAdvancedCapturedPhoto2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "18cf6cd8-cffe-42d8-8104-017bb318f4a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameBoundsRelativeToReferencePhoto: *const fn(self: *anyopaque, _r: **IReference(Rect)) callconv(.winapi) HRESULT,
    };
};
pub const IAdvancedPhotoCapture = extern struct {
    vtable: *const VTable,
    pub fn CaptureAsync(self: *@This()) core.HResult!*IAsyncOperation(AdvancedCapturedPhoto) {
        var _r: *IAsyncOperation(AdvancedCapturedPhoto) = undefined;
        const _c = self.vtable.CaptureAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CaptureAsync(self: *@This(), context: *IInspectable) core.HResult!*IAsyncOperation(AdvancedCapturedPhoto) {
        var _r: *IAsyncOperation(AdvancedCapturedPhoto) = undefined;
        const _c = self.vtable.CaptureAsync(@ptrCast(self), context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addOptionalReferencePhotoCaptured(self: *@This(), handler: *TypedEventHandler(AdvancedPhotoCapture,OptionalReferencePhotoCapturedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_OptionalReferencePhotoCaptured(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOptionalReferencePhotoCaptured(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_OptionalReferencePhotoCaptured(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAllPhotosCaptured(self: *@This(), handler: *TypedEventHandler(AdvancedPhotoCapture,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AllPhotosCaptured(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAllPhotosCaptured(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AllPhotosCaptured(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FinishAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.FinishAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAdvancedPhotoCapture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83ffaafa-6667-44dc-973c-a6bce596aa0f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CaptureAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(AdvancedCapturedPhoto)) callconv(.winapi) HRESULT,
        CaptureAsync: *const fn(self: *anyopaque, context: *IInspectable, _r: **IAsyncOperation(AdvancedCapturedPhoto)) callconv(.winapi) HRESULT,
        add_OptionalReferencePhotoCaptured: *const fn(self: *anyopaque, handler: *TypedEventHandler(AdvancedPhotoCapture,OptionalReferencePhotoCapturedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_OptionalReferencePhotoCaptured: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AllPhotosCaptured: *const fn(self: *anyopaque, handler: *TypedEventHandler(AdvancedPhotoCapture,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AllPhotosCaptured: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        FinishAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IAppCapture = extern struct {
    vtable: *const VTable,
    pub fn getIsCapturingAudio(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCapturingAudio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCapturingVideo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCapturingVideo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCapturingChanged(self: *@This(), handler: *TypedEventHandler(AppCapture,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CapturingChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCapturingChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CapturingChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCapture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9749d453-a29a-45ed-8f29-22d09942cff7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCapturingAudio: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCapturingVideo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_CapturingChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppCapture,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CapturingChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*AppCapture {
        var _r: *AppCapture = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f922dd6c-0a7e-4e74-8b20-9c1f902d08a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **AppCapture) callconv(.winapi) HRESULT,
    };
};
pub const IAppCaptureStatics2 = extern struct {
    vtable: *const VTable,
    pub fn SetAllowedAsync(self: *@This(), allowed: bool) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetAllowedAsync(@ptrCast(self), allowed, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppCaptureStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2d881d4-836c-4da4-afd7-facc041e1cf3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetAllowedAsync: *const fn(self: *anyopaque, allowed: bool, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ICameraCaptureUI = extern struct {
    vtable: *const VTable,
    pub fn getPhotoSettings(self: *@This()) core.HResult!*CameraCaptureUIPhotoCaptureSettings {
        var _r: *CameraCaptureUIPhotoCaptureSettings = undefined;
        const _c = self.vtable.get_PhotoSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoSettings(self: *@This()) core.HResult!*CameraCaptureUIVideoCaptureSettings {
        var _r: *CameraCaptureUIVideoCaptureSettings = undefined;
        const _c = self.vtable.get_VideoSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CaptureFileAsync(self: *@This(), mode: CameraCaptureUIMode) core.HResult!*IAsyncOperation(StorageFile) {
        var _r: *IAsyncOperation(StorageFile) = undefined;
        const _c = self.vtable.CaptureFileAsync(@ptrCast(self), mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ICameraCaptureUI";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48587540-6f93-4bb4-b8f3-e89e48948c91";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PhotoSettings: *const fn(self: *anyopaque, _r: **CameraCaptureUIPhotoCaptureSettings) callconv(.winapi) HRESULT,
        get_VideoSettings: *const fn(self: *anyopaque, _r: **CameraCaptureUIVideoCaptureSettings) callconv(.winapi) HRESULT,
        CaptureFileAsync: *const fn(self: *anyopaque, mode: CameraCaptureUIMode, _r: **IAsyncOperation(StorageFile)) callconv(.winapi) HRESULT,
    };
};
pub const ICameraCaptureUIPhotoCaptureSettings = extern struct {
    vtable: *const VTable,
    pub fn getFormat(self: *@This()) core.HResult!CameraCaptureUIPhotoFormat {
        var _r: CameraCaptureUIPhotoFormat = undefined;
        const _c = self.vtable.get_Format(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFormat(self: *@This(), value: CameraCaptureUIPhotoFormat) core.HResult!void {
        const _c = self.vtable.put_Format(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxResolution(self: *@This()) core.HResult!CameraCaptureUIMaxPhotoResolution {
        var _r: CameraCaptureUIMaxPhotoResolution = undefined;
        const _c = self.vtable.get_MaxResolution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxResolution(self: *@This(), value: CameraCaptureUIMaxPhotoResolution) core.HResult!void {
        const _c = self.vtable.put_MaxResolution(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCroppedSizeInPixels(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_CroppedSizeInPixels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCroppedSizeInPixels(self: *@This(), value: Size) core.HResult!void {
        const _c = self.vtable.put_CroppedSizeInPixels(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCroppedAspectRatio(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_CroppedAspectRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCroppedAspectRatio(self: *@This(), value: Size) core.HResult!void {
        const _c = self.vtable.put_CroppedAspectRatio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowCropping(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowCropping(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowCropping(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowCropping(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ICameraCaptureUIPhotoCaptureSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9f5be97-3472-46a8-8a9e-04ce42ccc97d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Format: *const fn(self: *anyopaque, _r: *CameraCaptureUIPhotoFormat) callconv(.winapi) HRESULT,
        put_Format: *const fn(self: *anyopaque, value: CameraCaptureUIPhotoFormat) callconv(.winapi) HRESULT,
        get_MaxResolution: *const fn(self: *anyopaque, _r: *CameraCaptureUIMaxPhotoResolution) callconv(.winapi) HRESULT,
        put_MaxResolution: *const fn(self: *anyopaque, value: CameraCaptureUIMaxPhotoResolution) callconv(.winapi) HRESULT,
        get_CroppedSizeInPixels: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        put_CroppedSizeInPixels: *const fn(self: *anyopaque, value: Size) callconv(.winapi) HRESULT,
        get_CroppedAspectRatio: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        put_CroppedAspectRatio: *const fn(self: *anyopaque, value: Size) callconv(.winapi) HRESULT,
        get_AllowCropping: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowCropping: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICameraCaptureUIVideoCaptureSettings = extern struct {
    vtable: *const VTable,
    pub fn getFormat(self: *@This()) core.HResult!CameraCaptureUIVideoFormat {
        var _r: CameraCaptureUIVideoFormat = undefined;
        const _c = self.vtable.get_Format(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFormat(self: *@This(), value: CameraCaptureUIVideoFormat) core.HResult!void {
        const _c = self.vtable.put_Format(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxResolution(self: *@This()) core.HResult!CameraCaptureUIMaxVideoResolution {
        var _r: CameraCaptureUIMaxVideoResolution = undefined;
        const _c = self.vtable.get_MaxResolution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxResolution(self: *@This(), value: CameraCaptureUIMaxVideoResolution) core.HResult!void {
        const _c = self.vtable.put_MaxResolution(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxDurationInSeconds(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MaxDurationInSeconds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxDurationInSeconds(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_MaxDurationInSeconds(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowTrimming(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowTrimming(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowTrimming(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowTrimming(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ICameraCaptureUIVideoCaptureSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64e92d1f-a28d-425a-b84f-e568335ff24e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Format: *const fn(self: *anyopaque, _r: *CameraCaptureUIVideoFormat) callconv(.winapi) HRESULT,
        put_Format: *const fn(self: *anyopaque, value: CameraCaptureUIVideoFormat) callconv(.winapi) HRESULT,
        get_MaxResolution: *const fn(self: *anyopaque, _r: *CameraCaptureUIMaxVideoResolution) callconv(.winapi) HRESULT,
        put_MaxResolution: *const fn(self: *anyopaque, value: CameraCaptureUIMaxVideoResolution) callconv(.winapi) HRESULT,
        get_MaxDurationInSeconds: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_MaxDurationInSeconds: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_AllowTrimming: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowTrimming: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICapturedFrame = extern struct {
    vtable: *const VTable,
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
    pub const NAME: []const u8 = "Windows.Media.Capture.ICapturedFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1dd2de1f-571b-44d8-8e80-a08a1578766e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const ICapturedFrame2 = extern struct {
    vtable: *const VTable,
    pub fn getControlValues(self: *@This()) core.HResult!*CapturedFrameControlValues {
        var _r: *CapturedFrameControlValues = undefined;
        const _c = self.vtable.get_ControlValues(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBitmapProperties(self: *@This()) core.HResult!*BitmapPropertySet {
        var _r: *BitmapPropertySet = undefined;
        const _c = self.vtable.get_BitmapProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ICapturedFrame2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "543fa6d1-bd78-4866-adda-24314bc65dea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ControlValues: *const fn(self: *anyopaque, _r: **CapturedFrameControlValues) callconv(.winapi) HRESULT,
        get_BitmapProperties: *const fn(self: *anyopaque, _r: **BitmapPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const ICapturedFrameControlValues = extern struct {
    vtable: *const VTable,
    pub fn getExposure(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Exposure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExposureCompensation(self: *@This()) core.HResult!*IReference(f32) {
        var _r: *IReference(f32) = undefined;
        const _c = self.vtable.get_ExposureCompensation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsoSpeed(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_IsoSpeed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocus(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_Focus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSceneMode(self: *@This()) core.HResult!*IReference(CaptureSceneMode) {
        var _r: *IReference(CaptureSceneMode) = undefined;
        const _c = self.vtable.get_SceneMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFlashed(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_Flashed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFlashPowerPercent(self: *@This()) core.HResult!*IReference(f32) {
        var _r: *IReference(f32) = undefined;
        const _c = self.vtable.get_FlashPowerPercent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWhiteBalance(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_WhiteBalance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZoomFactor(self: *@This()) core.HResult!*IReference(f32) {
        var _r: *IReference(f32) = undefined;
        const _c = self.vtable.get_ZoomFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ICapturedFrameControlValues";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90c65b7f-4e0d-4ca4-882d-7a144fed0a90";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Exposure: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_ExposureCompensation: *const fn(self: *anyopaque, _r: **IReference(f32)) callconv(.winapi) HRESULT,
        get_IsoSpeed: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_Focus: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_SceneMode: *const fn(self: *anyopaque, _r: **IReference(CaptureSceneMode)) callconv(.winapi) HRESULT,
        get_Flashed: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
        get_FlashPowerPercent: *const fn(self: *anyopaque, _r: **IReference(f32)) callconv(.winapi) HRESULT,
        get_WhiteBalance: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_ZoomFactor: *const fn(self: *anyopaque, _r: **IReference(f32)) callconv(.winapi) HRESULT,
    };
};
pub const ICapturedFrameControlValues2 = extern struct {
    vtable: *const VTable,
    pub fn getFocusState(self: *@This()) core.HResult!*IReference(MediaCaptureFocusState) {
        var _r: *IReference(MediaCaptureFocusState) = undefined;
        const _c = self.vtable.get_FocusState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsoDigitalGain(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_IsoDigitalGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsoAnalogGain(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_IsoAnalogGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSensorFrameRate(self: *@This()) core.HResult!*MediaRatio {
        var _r: *MediaRatio = undefined;
        const _c = self.vtable.get_SensorFrameRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWhiteBalanceGain(self: *@This()) core.HResult!*IReference(WhiteBalanceGain) {
        var _r: *IReference(WhiteBalanceGain) = undefined;
        const _c = self.vtable.get_WhiteBalanceGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ICapturedFrameControlValues2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "500b2b88-06d2-4aa7-a7db-d37af73321d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FocusState: *const fn(self: *anyopaque, _r: **IReference(MediaCaptureFocusState)) callconv(.winapi) HRESULT,
        get_IsoDigitalGain: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_IsoAnalogGain: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        get_SensorFrameRate: *const fn(self: *anyopaque, _r: **MediaRatio) callconv(.winapi) HRESULT,
        get_WhiteBalanceGain: *const fn(self: *anyopaque, _r: **IReference(WhiteBalanceGain)) callconv(.winapi) HRESULT,
    };
};
pub const ICapturedFrameWithSoftwareBitmap = extern struct {
    vtable: *const VTable,
    pub fn getSoftwareBitmap(self: *@This()) core.HResult!*SoftwareBitmap {
        var _r: *SoftwareBitmap = undefined;
        const _c = self.vtable.get_SoftwareBitmap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ICapturedFrameWithSoftwareBitmap";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b58e8b6e-8503-49b5-9e86-897d26a3ff3d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SoftwareBitmap: *const fn(self: *anyopaque, _r: **SoftwareBitmap) callconv(.winapi) HRESULT,
    };
};
pub const ICapturedPhoto = extern struct {
    vtable: *const VTable,
    pub fn getFrame(self: *@This()) core.HResult!*CapturedFrame {
        var _r: *CapturedFrame = undefined;
        const _c = self.vtable.get_Frame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*CapturedFrame {
        var _r: *CapturedFrame = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ICapturedPhoto";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0ce7e5a-cfcc-4d6c-8ad1-0869208aca16";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Frame: *const fn(self: *anyopaque, _r: **CapturedFrame) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **CapturedFrame) callconv(.winapi) HRESULT,
    };
};
pub const ILowLagMediaRecording = extern struct {
    vtable: *const VTable,
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
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
    pub fn FinishAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.FinishAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ILowLagMediaRecording";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41c8baf7-ff3f-49f0-a477-f195e3ce5108";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StopAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        FinishAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ILowLagMediaRecording2 = extern struct {
    vtable: *const VTable,
    pub fn PauseAsync(self: *@This(), behavior: MediaCapturePauseBehavior) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.PauseAsync(@ptrCast(self), behavior, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResumeAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ResumeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ILowLagMediaRecording2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6369c758-5644-41e2-97af-8ef56a25e225";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PauseAsync: *const fn(self: *anyopaque, behavior: MediaCapturePauseBehavior, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ResumeAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ILowLagMediaRecording3 = extern struct {
    vtable: *const VTable,
    pub fn PauseWithResultAsync(self: *@This(), behavior: MediaCapturePauseBehavior) core.HResult!*IAsyncOperation(MediaCapturePauseResult) {
        var _r: *IAsyncOperation(MediaCapturePauseResult) = undefined;
        const _c = self.vtable.PauseWithResultAsync(@ptrCast(self), behavior, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopWithResultAsync(self: *@This()) core.HResult!*IAsyncOperation(MediaCaptureStopResult) {
        var _r: *IAsyncOperation(MediaCaptureStopResult) = undefined;
        const _c = self.vtable.StopWithResultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ILowLagMediaRecording3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c33ab12-48f7-47da-b41e-90880a5fe0ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PauseWithResultAsync: *const fn(self: *anyopaque, behavior: MediaCapturePauseBehavior, _r: **IAsyncOperation(MediaCapturePauseResult)) callconv(.winapi) HRESULT,
        StopWithResultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MediaCaptureStopResult)) callconv(.winapi) HRESULT,
    };
};
pub const ILowLagPhotoCapture = extern struct {
    vtable: *const VTable,
    pub fn CaptureAsync(self: *@This()) core.HResult!*IAsyncOperation(CapturedPhoto) {
        var _r: *IAsyncOperation(CapturedPhoto) = undefined;
        const _c = self.vtable.CaptureAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FinishAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.FinishAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ILowLagPhotoCapture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a37251b7-6b44-473d-8f24-f703d6c0ec44";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CaptureAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(CapturedPhoto)) callconv(.winapi) HRESULT,
        FinishAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ILowLagPhotoSequenceCapture = extern struct {
    vtable: *const VTable,
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
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
    pub fn FinishAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.FinishAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPhotoCaptured(self: *@This(), handler: *TypedEventHandler(LowLagPhotoSequenceCapture,PhotoCapturedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PhotoCaptured(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePhotoCaptured(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PhotoCaptured(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.ILowLagPhotoSequenceCapture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7cc346bb-b9a9-4c91-8ffa-287e9c668669";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StopAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        FinishAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_PhotoCaptured: *const fn(self: *anyopaque, handler: *TypedEventHandler(LowLagPhotoSequenceCapture,PhotoCapturedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PhotoCaptured: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCapture = extern struct {
    vtable: *const VTable,
    pub fn InitializeAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.InitializeAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InitializeAsync(self: *@This(), mediaCaptureInitializationSettings: *MediaCaptureInitializationSettings) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.InitializeAsync(@ptrCast(self), mediaCaptureInitializationSettings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartRecordToStorageFileAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, file: *IStorageFile) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartRecordToStorageFileAsync(@ptrCast(self), encodingProfile, file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartRecordToStreamAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, stream: *IRandomAccessStream) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartRecordToStreamAsync(@ptrCast(self), encodingProfile, stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartRecordToCustomSinkAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, customMediaSink: *IMediaExtension) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartRecordToCustomSinkAsync(@ptrCast(self), encodingProfile, customMediaSink, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartRecordToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings(self: *@This(), encodingProfile: *MediaEncodingProfile, customSinkActivationId: HSTRING, customSinkSettings: *IPropertySet) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartRecordToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings(@ptrCast(self), encodingProfile, customSinkActivationId, customSinkSettings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopRecordAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StopRecordAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CapturePhotoToStorageFileAsync(self: *@This(), ty: *ImageEncodingProperties, file: *IStorageFile) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CapturePhotoToStorageFileAsync(@ptrCast(self), ty, file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CapturePhotoToStreamAsync(self: *@This(), ty: *ImageEncodingProperties, stream: *IRandomAccessStream) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CapturePhotoToStreamAsync(@ptrCast(self), ty, stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddEffectAsync(self: *@This(), mediaStreamType: MediaStreamType, effectActivationID: HSTRING, effectSettings: *IPropertySet) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.AddEffectAsync(@ptrCast(self), mediaStreamType, effectActivationID, effectSettings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearEffectsAsync(self: *@This(), mediaStreamType: MediaStreamType) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ClearEffectsAsync(@ptrCast(self), mediaStreamType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetEncoderProperty(self: *@This(), mediaStreamType: MediaStreamType, propertyId: *Guid, propertyValue: *IInspectable) core.HResult!void {
        const _c = self.vtable.SetEncoderProperty(@ptrCast(self), mediaStreamType, propertyId, propertyValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetEncoderProperty(self: *@This(), mediaStreamType: MediaStreamType, propertyId: *Guid) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetEncoderProperty(@ptrCast(self), mediaStreamType, propertyId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addFailed(self: *@This(), errorEventHandler: *MediaCaptureFailedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Failed(@ptrCast(self), errorEventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFailed(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Failed(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRecordLimitationExceeded(self: *@This(), recordLimitationExceededEventHandler: *RecordLimitationExceededEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RecordLimitationExceeded(@ptrCast(self), recordLimitationExceededEventHandler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRecordLimitationExceeded(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RecordLimitationExceeded(@ptrCast(self), eventCookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMediaCaptureSettings(self: *@This()) core.HResult!*MediaCaptureSettings {
        var _r: *MediaCaptureSettings = undefined;
        const _c = self.vtable.get_MediaCaptureSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioDeviceController(self: *@This()) core.HResult!*AudioDeviceController {
        var _r: *AudioDeviceController = undefined;
        const _c = self.vtable.get_AudioDeviceController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoDeviceController(self: *@This()) core.HResult!*VideoDeviceController {
        var _r: *VideoDeviceController = undefined;
        const _c = self.vtable.get_VideoDeviceController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPreviewMirroring(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.SetPreviewMirroring(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetPreviewMirroring(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetPreviewMirroring(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPreviewRotation(self: *@This(), value: VideoRotation) core.HResult!void {
        const _c = self.vtable.SetPreviewRotation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetPreviewRotation(self: *@This()) core.HResult!VideoRotation {
        var _r: VideoRotation = undefined;
        const _c = self.vtable.GetPreviewRotation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetRecordRotation(self: *@This(), value: VideoRotation) core.HResult!void {
        const _c = self.vtable.SetRecordRotation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetRecordRotation(self: *@This()) core.HResult!VideoRotation {
        var _r: VideoRotation = undefined;
        const _c = self.vtable.GetRecordRotation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCapture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c61afbb4-fb10-4a34-ac18-ca80d9c8e7ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InitializeAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        InitializeAsync: *const fn(self: *anyopaque, mediaCaptureInitializationSettings: *MediaCaptureInitializationSettings, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StartRecordToStorageFileAsync: *const fn(self: *anyopaque, encodingProfile: *MediaEncodingProfile, file: *IStorageFile, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StartRecordToStreamAsync: *const fn(self: *anyopaque, encodingProfile: *MediaEncodingProfile, stream: *IRandomAccessStream, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StartRecordToCustomSinkAsync: *const fn(self: *anyopaque, encodingProfile: *MediaEncodingProfile, customMediaSink: *IMediaExtension, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StartRecordToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings: *const fn(self: *anyopaque, encodingProfile: *MediaEncodingProfile, customSinkActivationId: HSTRING, customSinkSettings: *IPropertySet, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StopRecordAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        CapturePhotoToStorageFileAsync: *const fn(self: *anyopaque, ty: *ImageEncodingProperties, file: *IStorageFile, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        CapturePhotoToStreamAsync: *const fn(self: *anyopaque, ty: *ImageEncodingProperties, stream: *IRandomAccessStream, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        AddEffectAsync: *const fn(self: *anyopaque, mediaStreamType: MediaStreamType, effectActivationID: HSTRING, effectSettings: *IPropertySet, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ClearEffectsAsync: *const fn(self: *anyopaque, mediaStreamType: MediaStreamType, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetEncoderProperty: *const fn(self: *anyopaque, mediaStreamType: MediaStreamType, propertyId: *Guid, propertyValue: *IInspectable) callconv(.winapi) HRESULT,
        GetEncoderProperty: *const fn(self: *anyopaque, mediaStreamType: MediaStreamType, propertyId: *Guid, _r: **IInspectable) callconv(.winapi) HRESULT,
        add_Failed: *const fn(self: *anyopaque, errorEventHandler: *MediaCaptureFailedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Failed: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_RecordLimitationExceeded: *const fn(self: *anyopaque, recordLimitationExceededEventHandler: *RecordLimitationExceededEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RecordLimitationExceeded: *const fn(self: *anyopaque, eventCookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_MediaCaptureSettings: *const fn(self: *anyopaque, _r: **MediaCaptureSettings) callconv(.winapi) HRESULT,
        get_AudioDeviceController: *const fn(self: *anyopaque, _r: **AudioDeviceController) callconv(.winapi) HRESULT,
        get_VideoDeviceController: *const fn(self: *anyopaque, _r: **VideoDeviceController) callconv(.winapi) HRESULT,
        SetPreviewMirroring: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetPreviewMirroring: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        SetPreviewRotation: *const fn(self: *anyopaque, value: VideoRotation) callconv(.winapi) HRESULT,
        GetPreviewRotation: *const fn(self: *anyopaque, _r: *VideoRotation) callconv(.winapi) HRESULT,
        SetRecordRotation: *const fn(self: *anyopaque, value: VideoRotation) callconv(.winapi) HRESULT,
        GetRecordRotation: *const fn(self: *anyopaque, _r: *VideoRotation) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCapture2 = extern struct {
    vtable: *const VTable,
    pub fn PrepareLowLagRecordToStorageFileAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, file: *IStorageFile) core.HResult!*IAsyncOperation(LowLagMediaRecording) {
        var _r: *IAsyncOperation(LowLagMediaRecording) = undefined;
        const _c = self.vtable.PrepareLowLagRecordToStorageFileAsync(@ptrCast(self), encodingProfile, file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PrepareLowLagRecordToStreamAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, stream: *IRandomAccessStream) core.HResult!*IAsyncOperation(LowLagMediaRecording) {
        var _r: *IAsyncOperation(LowLagMediaRecording) = undefined;
        const _c = self.vtable.PrepareLowLagRecordToStreamAsync(@ptrCast(self), encodingProfile, stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PrepareLowLagRecordToCustomSinkAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, customMediaSink: *IMediaExtension) core.HResult!*IAsyncOperation(LowLagMediaRecording) {
        var _r: *IAsyncOperation(LowLagMediaRecording) = undefined;
        const _c = self.vtable.PrepareLowLagRecordToCustomSinkAsync(@ptrCast(self), encodingProfile, customMediaSink, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PrepareLowLagRecordToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings(self: *@This(), encodingProfile: *MediaEncodingProfile, customSinkActivationId: HSTRING, customSinkSettings: *IPropertySet) core.HResult!*IAsyncOperation(LowLagMediaRecording) {
        var _r: *IAsyncOperation(LowLagMediaRecording) = undefined;
        const _c = self.vtable.PrepareLowLagRecordToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings(@ptrCast(self), encodingProfile, customSinkActivationId, customSinkSettings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PrepareLowLagPhotoCaptureAsync(self: *@This(), ty: *ImageEncodingProperties) core.HResult!*IAsyncOperation(LowLagPhotoCapture) {
        var _r: *IAsyncOperation(LowLagPhotoCapture) = undefined;
        const _c = self.vtable.PrepareLowLagPhotoCaptureAsync(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PrepareLowLagPhotoSequenceCaptureAsync(self: *@This(), ty: *ImageEncodingProperties) core.HResult!*IAsyncOperation(LowLagPhotoSequenceCapture) {
        var _r: *IAsyncOperation(LowLagPhotoSequenceCapture) = undefined;
        const _c = self.vtable.PrepareLowLagPhotoSequenceCaptureAsync(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetEncodingPropertiesAsync(self: *@This(), mediaStreamType: MediaStreamType, mediaEncodingProperties: *IMediaEncodingProperties, encoderProperties: *MediaPropertySet) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetEncodingPropertiesAsync(@ptrCast(self), mediaStreamType, mediaEncodingProperties, encoderProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCapture2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9cc68260-7da1-4043-b652-21b8878daff9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PrepareLowLagRecordToStorageFileAsync: *const fn(self: *anyopaque, encodingProfile: *MediaEncodingProfile, file: *IStorageFile, _r: **IAsyncOperation(LowLagMediaRecording)) callconv(.winapi) HRESULT,
        PrepareLowLagRecordToStreamAsync: *const fn(self: *anyopaque, encodingProfile: *MediaEncodingProfile, stream: *IRandomAccessStream, _r: **IAsyncOperation(LowLagMediaRecording)) callconv(.winapi) HRESULT,
        PrepareLowLagRecordToCustomSinkAsync: *const fn(self: *anyopaque, encodingProfile: *MediaEncodingProfile, customMediaSink: *IMediaExtension, _r: **IAsyncOperation(LowLagMediaRecording)) callconv(.winapi) HRESULT,
        PrepareLowLagRecordToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings: *const fn(self: *anyopaque, encodingProfile: *MediaEncodingProfile, customSinkActivationId: HSTRING, customSinkSettings: *IPropertySet, _r: **IAsyncOperation(LowLagMediaRecording)) callconv(.winapi) HRESULT,
        PrepareLowLagPhotoCaptureAsync: *const fn(self: *anyopaque, ty: *ImageEncodingProperties, _r: **IAsyncOperation(LowLagPhotoCapture)) callconv(.winapi) HRESULT,
        PrepareLowLagPhotoSequenceCaptureAsync: *const fn(self: *anyopaque, ty: *ImageEncodingProperties, _r: **IAsyncOperation(LowLagPhotoSequenceCapture)) callconv(.winapi) HRESULT,
        SetEncodingPropertiesAsync: *const fn(self: *anyopaque, mediaStreamType: MediaStreamType, mediaEncodingProperties: *IMediaEncodingProperties, encoderProperties: *MediaPropertySet, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCapture3 = extern struct {
    vtable: *const VTable,
    pub fn PrepareVariablePhotoSequenceCaptureAsync(self: *@This(), ty: *ImageEncodingProperties) core.HResult!*IAsyncOperation(VariablePhotoSequenceCapture) {
        var _r: *IAsyncOperation(VariablePhotoSequenceCapture) = undefined;
        const _c = self.vtable.PrepareVariablePhotoSequenceCaptureAsync(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addFocusChanged(self: *@This(), handler: *TypedEventHandler(MediaCapture,MediaCaptureFocusChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FocusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFocusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FocusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPhotoConfirmationCaptured(self: *@This(), handler: *TypedEventHandler(MediaCapture,PhotoConfirmationCapturedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PhotoConfirmationCaptured(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePhotoConfirmationCaptured(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PhotoConfirmationCaptured(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCapture3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4136f30-1564-466e-bc0a-af94e02ab016";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PrepareVariablePhotoSequenceCaptureAsync: *const fn(self: *anyopaque, ty: *ImageEncodingProperties, _r: **IAsyncOperation(VariablePhotoSequenceCapture)) callconv(.winapi) HRESULT,
        add_FocusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaCapture,MediaCaptureFocusChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FocusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PhotoConfirmationCaptured: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaCapture,PhotoConfirmationCapturedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PhotoConfirmationCaptured: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCapture4 = extern struct {
    vtable: *const VTable,
    pub fn AddAudioEffectAsync(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!*IAsyncOperation(IMediaExtension) {
        var _r: *IAsyncOperation(IMediaExtension) = undefined;
        const _c = self.vtable.AddAudioEffectAsync(@ptrCast(self), definition, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddVideoEffectAsync(self: *@This(), definition: *IVideoEffectDefinition, mediaStreamType: MediaStreamType) core.HResult!*IAsyncOperation(IMediaExtension) {
        var _r: *IAsyncOperation(IMediaExtension) = undefined;
        const _c = self.vtable.AddVideoEffectAsync(@ptrCast(self), definition, mediaStreamType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PauseRecordAsync(self: *@This(), behavior: MediaCapturePauseBehavior) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.PauseRecordAsync(@ptrCast(self), behavior, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ResumeRecordAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ResumeRecordAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCameraStreamStateChanged(self: *@This(), handler: *TypedEventHandler(MediaCapture,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CameraStreamStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCameraStreamStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CameraStreamStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCameraStreamState(self: *@This()) core.HResult!CameraStreamState {
        var _r: CameraStreamState = undefined;
        const _c = self.vtable.get_CameraStreamState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPreviewFrameAsync(self: *@This()) core.HResult!*IAsyncOperation(VideoFrame) {
        var _r: *IAsyncOperation(VideoFrame) = undefined;
        const _c = self.vtable.GetPreviewFrameAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPreviewFrameAsync(self: *@This(), destination: *VideoFrame) core.HResult!*IAsyncOperation(VideoFrame) {
        var _r: *IAsyncOperation(VideoFrame) = undefined;
        const _c = self.vtable.GetPreviewFrameAsync(@ptrCast(self), destination, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addThermalStatusChanged(self: *@This(), handler: *TypedEventHandler(MediaCapture,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ThermalStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeThermalStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ThermalStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThermalStatus(self: *@This()) core.HResult!MediaCaptureThermalStatus {
        var _r: MediaCaptureThermalStatus = undefined;
        const _c = self.vtable.get_ThermalStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PrepareAdvancedPhotoCaptureAsync(self: *@This(), encodingProperties: *ImageEncodingProperties) core.HResult!*IAsyncOperation(AdvancedPhotoCapture) {
        var _r: *IAsyncOperation(AdvancedPhotoCapture) = undefined;
        const _c = self.vtable.PrepareAdvancedPhotoCaptureAsync(@ptrCast(self), encodingProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCapture4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bacd6fd6-fb08-4947-aea2-ce14eff0ce13";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddAudioEffectAsync: *const fn(self: *anyopaque, definition: *IAudioEffectDefinition, _r: **IAsyncOperation(IMediaExtension)) callconv(.winapi) HRESULT,
        AddVideoEffectAsync: *const fn(self: *anyopaque, definition: *IVideoEffectDefinition, mediaStreamType: MediaStreamType, _r: **IAsyncOperation(IMediaExtension)) callconv(.winapi) HRESULT,
        PauseRecordAsync: *const fn(self: *anyopaque, behavior: MediaCapturePauseBehavior, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ResumeRecordAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_CameraStreamStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaCapture,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CameraStreamStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_CameraStreamState: *const fn(self: *anyopaque, _r: *CameraStreamState) callconv(.winapi) HRESULT,
        GetPreviewFrameAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(VideoFrame)) callconv(.winapi) HRESULT,
        GetPreviewFrameAsync: *const fn(self: *anyopaque, destination: *VideoFrame, _r: **IAsyncOperation(VideoFrame)) callconv(.winapi) HRESULT,
        add_ThermalStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaCapture,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ThermalStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_ThermalStatus: *const fn(self: *anyopaque, _r: *MediaCaptureThermalStatus) callconv(.winapi) HRESULT,
        PrepareAdvancedPhotoCaptureAsync: *const fn(self: *anyopaque, encodingProperties: *ImageEncodingProperties, _r: **IAsyncOperation(AdvancedPhotoCapture)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCapture5 = extern struct {
    vtable: *const VTable,
    pub fn RemoveEffectAsync(self: *@This(), effect: *IMediaExtension) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RemoveEffectAsync(@ptrCast(self), effect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PauseRecordWithResultAsync(self: *@This(), behavior: MediaCapturePauseBehavior) core.HResult!*IAsyncOperation(MediaCapturePauseResult) {
        var _r: *IAsyncOperation(MediaCapturePauseResult) = undefined;
        const _c = self.vtable.PauseRecordWithResultAsync(@ptrCast(self), behavior, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopRecordWithResultAsync(self: *@This()) core.HResult!*IAsyncOperation(MediaCaptureStopResult) {
        var _r: *IAsyncOperation(MediaCaptureStopResult) = undefined;
        const _c = self.vtable.StopRecordWithResultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameSources(self: *@This()) core.HResult!*IMapView(HSTRING,MediaFrameSource) {
        var _r: *IMapView(HSTRING,MediaFrameSource) = undefined;
        const _c = self.vtable.get_FrameSources(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFrameReaderAsync(self: *@This(), inputSource: *MediaFrameSource) core.HResult!*IAsyncOperation(MediaFrameReader) {
        var _r: *IAsyncOperation(MediaFrameReader) = undefined;
        const _c = self.vtable.CreateFrameReaderAsync(@ptrCast(self), inputSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFrameReaderAsyncWithOutputSubtype(self: *@This(), inputSource: *MediaFrameSource, outputSubtype: HSTRING) core.HResult!*IAsyncOperation(MediaFrameReader) {
        var _r: *IAsyncOperation(MediaFrameReader) = undefined;
        const _c = self.vtable.CreateFrameReaderAsyncWithOutputSubtype(@ptrCast(self), inputSource, outputSubtype, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateFrameReaderAsyncWithOutputSize(self: *@This(), inputSource: *MediaFrameSource, outputSubtype: HSTRING, outputSize: BitmapSize) core.HResult!*IAsyncOperation(MediaFrameReader) {
        var _r: *IAsyncOperation(MediaFrameReader) = undefined;
        const _c = self.vtable.CreateFrameReaderAsyncWithOutputSize(@ptrCast(self), inputSource, outputSubtype, outputSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCapture5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da787c22-3a9b-4720-a71e-97900a316e5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RemoveEffectAsync: *const fn(self: *anyopaque, effect: *IMediaExtension, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        PauseRecordWithResultAsync: *const fn(self: *anyopaque, behavior: MediaCapturePauseBehavior, _r: **IAsyncOperation(MediaCapturePauseResult)) callconv(.winapi) HRESULT,
        StopRecordWithResultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(MediaCaptureStopResult)) callconv(.winapi) HRESULT,
        get_FrameSources: *const fn(self: *anyopaque, _r: **IMapView(HSTRING,MediaFrameSource)) callconv(.winapi) HRESULT,
        CreateFrameReaderAsync: *const fn(self: *anyopaque, inputSource: *MediaFrameSource, _r: **IAsyncOperation(MediaFrameReader)) callconv(.winapi) HRESULT,
        CreateFrameReaderAsyncWithOutputSubtype: *const fn(self: *anyopaque, inputSource: *MediaFrameSource, outputSubtype: HSTRING, _r: **IAsyncOperation(MediaFrameReader)) callconv(.winapi) HRESULT,
        CreateFrameReaderAsyncWithOutputSize: *const fn(self: *anyopaque, inputSource: *MediaFrameSource, outputSubtype: HSTRING, outputSize: BitmapSize, _r: **IAsyncOperation(MediaFrameReader)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCapture6 = extern struct {
    vtable: *const VTable,
    pub fn addCaptureDeviceExclusiveControlStatusChanged(self: *@This(), handler: *TypedEventHandler(MediaCapture,MediaCaptureDeviceExclusiveControlStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CaptureDeviceExclusiveControlStatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCaptureDeviceExclusiveControlStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CaptureDeviceExclusiveControlStatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateMultiSourceFrameReaderAsync(self: *@This(), inputSources: *IIterable(MediaFrameSource)) core.HResult!*IAsyncOperation(MultiSourceMediaFrameReader) {
        var _r: *IAsyncOperation(MultiSourceMediaFrameReader) = undefined;
        const _c = self.vtable.CreateMultiSourceFrameReaderAsync(@ptrCast(self), inputSources, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCapture6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "228948bd-4b20-4bb1-9fd6-a583212a1012";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_CaptureDeviceExclusiveControlStatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaCapture,MediaCaptureDeviceExclusiveControlStatusChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CaptureDeviceExclusiveControlStatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        CreateMultiSourceFrameReaderAsync: *const fn(self: *anyopaque, inputSources: *IIterable(MediaFrameSource), _r: **IAsyncOperation(MultiSourceMediaFrameReader)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCapture7 = extern struct {
    vtable: *const VTable,
    pub fn CreateRelativePanelWatcher(self: *@This(), captureMode: StreamingCaptureMode, displayRegion: *DisplayRegion) core.HResult!*MediaCaptureRelativePanelWatcher {
        var _r: *MediaCaptureRelativePanelWatcher = undefined;
        const _c = self.vtable.CreateRelativePanelWatcher(@ptrCast(self), captureMode, displayRegion, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCapture7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9169f102-8888-541a-95bc-24e4d462542a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateRelativePanelWatcher: *const fn(self: *anyopaque, captureMode: StreamingCaptureMode, displayRegion: *DisplayRegion, _r: **MediaCaptureRelativePanelWatcher) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureDeviceExclusiveControlStatusChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!MediaCaptureDeviceExclusiveControlStatus {
        var _r: MediaCaptureDeviceExclusiveControlStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureDeviceExclusiveControlStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d2f920d-a588-43c6-89d6-5ad322af006a";
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
        get_Status: *const fn(self: *anyopaque, _r: *MediaCaptureDeviceExclusiveControlStatus) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureFailedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Message(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Code(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80fde3f4-54c4-42c0-8d19-cea1a87ca18b";
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
        get_Code: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureFocusChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFocusState(self: *@This()) core.HResult!MediaCaptureFocusState {
        var _r: MediaCaptureFocusState = undefined;
        const _c = self.vtable.get_FocusState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureFocusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81e1bc7f-2277-493e-abee-d3f44ff98c04";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FocusState: *const fn(self: *anyopaque, _r: *MediaCaptureFocusState) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureInitializationSettings = extern struct {
    vtable: *const VTable,
    pub fn putAudioDeviceId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AudioDeviceId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVideoDeviceId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_VideoDeviceId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVideoDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStreamingCaptureMode(self: *@This(), value: StreamingCaptureMode) core.HResult!void {
        const _c = self.vtable.put_StreamingCaptureMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStreamingCaptureMode(self: *@This()) core.HResult!StreamingCaptureMode {
        var _r: StreamingCaptureMode = undefined;
        const _c = self.vtable.get_StreamingCaptureMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPhotoCaptureSource(self: *@This(), value: PhotoCaptureSource) core.HResult!void {
        const _c = self.vtable.put_PhotoCaptureSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPhotoCaptureSource(self: *@This()) core.HResult!PhotoCaptureSource {
        var _r: PhotoCaptureSource = undefined;
        const _c = self.vtable.get_PhotoCaptureSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureInitializationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9782ba70-ea65-4900-9356-8ca887726884";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_AudioDeviceId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AudioDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_VideoDeviceId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_VideoDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_StreamingCaptureMode: *const fn(self: *anyopaque, value: StreamingCaptureMode) callconv(.winapi) HRESULT,
        get_StreamingCaptureMode: *const fn(self: *anyopaque, _r: *StreamingCaptureMode) callconv(.winapi) HRESULT,
        put_PhotoCaptureSource: *const fn(self: *anyopaque, value: PhotoCaptureSource) callconv(.winapi) HRESULT,
        get_PhotoCaptureSource: *const fn(self: *anyopaque, _r: *PhotoCaptureSource) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureInitializationSettings2 = extern struct {
    vtable: *const VTable,
    pub fn putMediaCategory(self: *@This(), value: MediaCategory) core.HResult!void {
        const _c = self.vtable.put_MediaCategory(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMediaCategory(self: *@This()) core.HResult!MediaCategory {
        var _r: MediaCategory = undefined;
        const _c = self.vtable.get_MediaCategory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioProcessing(self: *@This(), value: AudioProcessing) core.HResult!void {
        const _c = self.vtable.put_AudioProcessing(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioProcessing(self: *@This()) core.HResult!AudioProcessing {
        var _r: AudioProcessing = undefined;
        const _c = self.vtable.get_AudioProcessing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureInitializationSettings2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "404e0626-c9dc-43e9-aee4-e6bf1b57b44c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_MediaCategory: *const fn(self: *anyopaque, value: MediaCategory) callconv(.winapi) HRESULT,
        get_MediaCategory: *const fn(self: *anyopaque, _r: *MediaCategory) callconv(.winapi) HRESULT,
        put_AudioProcessing: *const fn(self: *anyopaque, value: AudioProcessing) callconv(.winapi) HRESULT,
        get_AudioProcessing: *const fn(self: *anyopaque, _r: *AudioProcessing) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureInitializationSettings3 = extern struct {
    vtable: *const VTable,
    pub fn putAudioSource(self: *@This(), value: *IMediaSource) core.HResult!void {
        const _c = self.vtable.put_AudioSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioSource(self: *@This()) core.HResult!*IMediaSource {
        var _r: *IMediaSource = undefined;
        const _c = self.vtable.get_AudioSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVideoSource(self: *@This(), value: *IMediaSource) core.HResult!void {
        const _c = self.vtable.put_VideoSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVideoSource(self: *@This()) core.HResult!*IMediaSource {
        var _r: *IMediaSource = undefined;
        const _c = self.vtable.get_VideoSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureInitializationSettings3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4160519d-be48-4730-8104-0cf6e9e97948";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_AudioSource: *const fn(self: *anyopaque, value: *IMediaSource) callconv(.winapi) HRESULT,
        get_AudioSource: *const fn(self: *anyopaque, _r: **IMediaSource) callconv(.winapi) HRESULT,
        put_VideoSource: *const fn(self: *anyopaque, value: *IMediaSource) callconv(.winapi) HRESULT,
        get_VideoSource: *const fn(self: *anyopaque, _r: **IMediaSource) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureInitializationSettings4 = extern struct {
    vtable: *const VTable,
    pub fn getVideoProfile(self: *@This()) core.HResult!*MediaCaptureVideoProfile {
        var _r: *MediaCaptureVideoProfile = undefined;
        const _c = self.vtable.get_VideoProfile(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVideoProfile(self: *@This(), value: *MediaCaptureVideoProfile) core.HResult!void {
        const _c = self.vtable.put_VideoProfile(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPreviewMediaDescription(self: *@This()) core.HResult!*MediaCaptureVideoProfileMediaDescription {
        var _r: *MediaCaptureVideoProfileMediaDescription = undefined;
        const _c = self.vtable.get_PreviewMediaDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreviewMediaDescription(self: *@This(), value: *MediaCaptureVideoProfileMediaDescription) core.HResult!void {
        const _c = self.vtable.put_PreviewMediaDescription(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRecordMediaDescription(self: *@This()) core.HResult!*MediaCaptureVideoProfileMediaDescription {
        var _r: *MediaCaptureVideoProfileMediaDescription = undefined;
        const _c = self.vtable.get_RecordMediaDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRecordMediaDescription(self: *@This(), value: *MediaCaptureVideoProfileMediaDescription) core.HResult!void {
        const _c = self.vtable.put_RecordMediaDescription(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPhotoMediaDescription(self: *@This()) core.HResult!*MediaCaptureVideoProfileMediaDescription {
        var _r: *MediaCaptureVideoProfileMediaDescription = undefined;
        const _c = self.vtable.get_PhotoMediaDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPhotoMediaDescription(self: *@This(), value: *MediaCaptureVideoProfileMediaDescription) core.HResult!void {
        const _c = self.vtable.put_PhotoMediaDescription(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureInitializationSettings4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f502a537-4cb7-4d28-95ed-4f9f012e0518";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoProfile: *const fn(self: *anyopaque, _r: **MediaCaptureVideoProfile) callconv(.winapi) HRESULT,
        put_VideoProfile: *const fn(self: *anyopaque, value: *MediaCaptureVideoProfile) callconv(.winapi) HRESULT,
        get_PreviewMediaDescription: *const fn(self: *anyopaque, _r: **MediaCaptureVideoProfileMediaDescription) callconv(.winapi) HRESULT,
        put_PreviewMediaDescription: *const fn(self: *anyopaque, value: *MediaCaptureVideoProfileMediaDescription) callconv(.winapi) HRESULT,
        get_RecordMediaDescription: *const fn(self: *anyopaque, _r: **MediaCaptureVideoProfileMediaDescription) callconv(.winapi) HRESULT,
        put_RecordMediaDescription: *const fn(self: *anyopaque, value: *MediaCaptureVideoProfileMediaDescription) callconv(.winapi) HRESULT,
        get_PhotoMediaDescription: *const fn(self: *anyopaque, _r: **MediaCaptureVideoProfileMediaDescription) callconv(.winapi) HRESULT,
        put_PhotoMediaDescription: *const fn(self: *anyopaque, value: *MediaCaptureVideoProfileMediaDescription) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureInitializationSettings5 = extern struct {
    vtable: *const VTable,
    pub fn getSourceGroup(self: *@This()) core.HResult!*MediaFrameSourceGroup {
        var _r: *MediaFrameSourceGroup = undefined;
        const _c = self.vtable.get_SourceGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourceGroup(self: *@This(), value: *MediaFrameSourceGroup) core.HResult!void {
        const _c = self.vtable.put_SourceGroup(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSharingMode(self: *@This()) core.HResult!MediaCaptureSharingMode {
        var _r: MediaCaptureSharingMode = undefined;
        const _c = self.vtable.get_SharingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSharingMode(self: *@This(), value: MediaCaptureSharingMode) core.HResult!void {
        const _c = self.vtable.put_SharingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMemoryPreference(self: *@This()) core.HResult!MediaCaptureMemoryPreference {
        var _r: MediaCaptureMemoryPreference = undefined;
        const _c = self.vtable.get_MemoryPreference(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMemoryPreference(self: *@This(), value: MediaCaptureMemoryPreference) core.HResult!void {
        const _c = self.vtable.put_MemoryPreference(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureInitializationSettings5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d5a2e3b8-2626-4e94-b7b3-5308a0f64b1a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceGroup: *const fn(self: *anyopaque, _r: **MediaFrameSourceGroup) callconv(.winapi) HRESULT,
        put_SourceGroup: *const fn(self: *anyopaque, value: *MediaFrameSourceGroup) callconv(.winapi) HRESULT,
        get_SharingMode: *const fn(self: *anyopaque, _r: *MediaCaptureSharingMode) callconv(.winapi) HRESULT,
        put_SharingMode: *const fn(self: *anyopaque, value: MediaCaptureSharingMode) callconv(.winapi) HRESULT,
        get_MemoryPreference: *const fn(self: *anyopaque, _r: *MediaCaptureMemoryPreference) callconv(.winapi) HRESULT,
        put_MemoryPreference: *const fn(self: *anyopaque, value: MediaCaptureMemoryPreference) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureInitializationSettings6 = extern struct {
    vtable: *const VTable,
    pub fn getAlwaysPlaySystemShutterSound(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AlwaysPlaySystemShutterSound(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlwaysPlaySystemShutterSound(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AlwaysPlaySystemShutterSound(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureInitializationSettings6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2e26b47-3db1-4d33-ab63-0ffa09056585";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlwaysPlaySystemShutterSound: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AlwaysPlaySystemShutterSound: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureInitializationSettings7 = extern struct {
    vtable: *const VTable,
    pub fn getDeviceUriPasswordCredential(self: *@This()) core.HResult!*PasswordCredential {
        var _r: *PasswordCredential = undefined;
        const _c = self.vtable.get_DeviceUriPasswordCredential(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeviceUriPasswordCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        const _c = self.vtable.put_DeviceUriPasswordCredential(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDeviceUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_DeviceUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDeviceUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_DeviceUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureInitializationSettings7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41546967-f58a-5d82-9ef4-ed572fb5e34e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceUriPasswordCredential: *const fn(self: *anyopaque, _r: **PasswordCredential) callconv(.winapi) HRESULT,
        put_DeviceUriPasswordCredential: *const fn(self: *anyopaque, value: *PasswordCredential) callconv(.winapi) HRESULT,
        get_DeviceUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_DeviceUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCapturePauseResult = extern struct {
    vtable: *const VTable,
    pub fn getLastFrame(self: *@This()) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.get_LastFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecordDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RecordDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCapturePauseResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aec47ca3-4477-4b04-a06f-2c1c5182fe9d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LastFrame: *const fn(self: *anyopaque, _r: **VideoFrame) callconv(.winapi) HRESULT,
        get_RecordDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureRelativePanelWatcher = extern struct {
    vtable: *const VTable,
    pub fn getRelativePanel(self: *@This()) core.HResult!Panel {
        var _r: Panel = undefined;
        const _c = self.vtable.get_RelativePanel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(MediaCaptureRelativePanelWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Changed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Changed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const _c = self.vtable.Start(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureRelativePanelWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7d896566-04be-5b89-b30e-bd34a9f12db0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RelativePanel: *const fn(self: *anyopaque, _r: *Panel) callconv(.winapi) HRESULT,
        add_Changed: *const fn(self: *anyopaque, handler: *TypedEventHandler(MediaCaptureRelativePanelWatcher,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Changed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureSettings = extern struct {
    vtable: *const VTable,
    pub fn getAudioDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_VideoDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStreamingCaptureMode(self: *@This()) core.HResult!StreamingCaptureMode {
        var _r: StreamingCaptureMode = undefined;
        const _c = self.vtable.get_StreamingCaptureMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhotoCaptureSource(self: *@This()) core.HResult!PhotoCaptureSource {
        var _r: PhotoCaptureSource = undefined;
        const _c = self.vtable.get_PhotoCaptureSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoDeviceCharacteristic(self: *@This()) core.HResult!VideoDeviceCharacteristic {
        var _r: VideoDeviceCharacteristic = undefined;
        const _c = self.vtable.get_VideoDeviceCharacteristic(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d83aafe-6d45-4477-8dc4-ac5bc01c4091";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AudioDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_VideoDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_StreamingCaptureMode: *const fn(self: *anyopaque, _r: *StreamingCaptureMode) callconv(.winapi) HRESULT,
        get_PhotoCaptureSource: *const fn(self: *anyopaque, _r: *PhotoCaptureSource) callconv(.winapi) HRESULT,
        get_VideoDeviceCharacteristic: *const fn(self: *anyopaque, _r: *VideoDeviceCharacteristic) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureSettings2 = extern struct {
    vtable: *const VTable,
    pub fn getConcurrentRecordAndPhotoSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ConcurrentRecordAndPhotoSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConcurrentRecordAndPhotoSequenceSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ConcurrentRecordAndPhotoSequenceSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCameraSoundRequiredForRegion(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CameraSoundRequiredForRegion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHorizontal35mmEquivalentFocalLength(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_Horizontal35mmEquivalentFocalLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPitchOffsetDegrees(self: *@This()) core.HResult!*IReference(i32) {
        var _r: *IReference(i32) = undefined;
        const _c = self.vtable.get_PitchOffsetDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVertical35mmEquivalentFocalLength(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_Vertical35mmEquivalentFocalLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaCategory(self: *@This()) core.HResult!MediaCategory {
        var _r: MediaCategory = undefined;
        const _c = self.vtable.get_MediaCategory(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioProcessing(self: *@This()) core.HResult!AudioProcessing {
        var _r: AudioProcessing = undefined;
        const _c = self.vtable.get_AudioProcessing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureSettings2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f9e7cfb-fa9f-4b13-9cbe-5ab94f1f3493";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConcurrentRecordAndPhotoSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ConcurrentRecordAndPhotoSequenceSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CameraSoundRequiredForRegion: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Horizontal35mmEquivalentFocalLength: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_PitchOffsetDegrees: *const fn(self: *anyopaque, _r: **IReference(i32)) callconv(.winapi) HRESULT,
        get_Vertical35mmEquivalentFocalLength: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        get_MediaCategory: *const fn(self: *anyopaque, _r: *MediaCategory) callconv(.winapi) HRESULT,
        get_AudioProcessing: *const fn(self: *anyopaque, _r: *AudioProcessing) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureSettings3 = extern struct {
    vtable: *const VTable,
    pub fn getDirect3D11Device(self: *@This()) core.HResult!*IDirect3DDevice {
        var _r: *IDirect3DDevice = undefined;
        const _c = self.vtable.get_Direct3D11Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureSettings3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "303c67c2-8058-4b1b-b877-8c2ef3528440";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Direct3D11Device: *const fn(self: *anyopaque, _r: **IDirect3DDevice) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureStatics = extern struct {
    vtable: *const VTable,
    pub fn IsVideoProfileSupported(self: *@This(), videoDeviceId: HSTRING) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsVideoProfileSupported(@ptrCast(self), videoDeviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllVideoProfiles(self: *@This(), videoDeviceId: HSTRING) core.HResult!*IVectorView(MediaCaptureVideoProfile) {
        var _r: *IVectorView(MediaCaptureVideoProfile) = undefined;
        const _c = self.vtable.FindAllVideoProfiles(@ptrCast(self), videoDeviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindConcurrentProfiles(self: *@This(), videoDeviceId: HSTRING) core.HResult!*IVectorView(MediaCaptureVideoProfile) {
        var _r: *IVectorView(MediaCaptureVideoProfile) = undefined;
        const _c = self.vtable.FindConcurrentProfiles(@ptrCast(self), videoDeviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindKnownVideoProfiles(self: *@This(), videoDeviceId: HSTRING, name: KnownVideoProfile) core.HResult!*IVectorView(MediaCaptureVideoProfile) {
        var _r: *IVectorView(MediaCaptureVideoProfile) = undefined;
        const _c = self.vtable.FindKnownVideoProfiles(@ptrCast(self), videoDeviceId, name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "acef81ff-99ed-4645-965e-1925cfc63834";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsVideoProfileSupported: *const fn(self: *anyopaque, videoDeviceId: HSTRING, _r: *bool) callconv(.winapi) HRESULT,
        FindAllVideoProfiles: *const fn(self: *anyopaque, videoDeviceId: HSTRING, _r: **IVectorView(MediaCaptureVideoProfile)) callconv(.winapi) HRESULT,
        FindConcurrentProfiles: *const fn(self: *anyopaque, videoDeviceId: HSTRING, _r: **IVectorView(MediaCaptureVideoProfile)) callconv(.winapi) HRESULT,
        FindKnownVideoProfiles: *const fn(self: *anyopaque, videoDeviceId: HSTRING, name: KnownVideoProfile, _r: **IVectorView(MediaCaptureVideoProfile)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureStopResult = extern struct {
    vtable: *const VTable,
    pub fn getLastFrame(self: *@This()) core.HResult!*VideoFrame {
        var _r: *VideoFrame = undefined;
        const _c = self.vtable.get_LastFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRecordDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RecordDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureStopResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f9db6a2a-a092-4ad1-97d4-f201f9d082db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LastFrame: *const fn(self: *anyopaque, _r: **VideoFrame) callconv(.winapi) HRESULT,
        get_RecordDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureVideoPreview = extern struct {
    vtable: *const VTable,
    pub fn StartPreviewAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartPreviewAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartPreviewToCustomSinkAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, customMediaSink: *IMediaExtension) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartPreviewToCustomSinkAsync(@ptrCast(self), encodingProfile, customMediaSink, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartPreviewToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings(self: *@This(), encodingProfile: *MediaEncodingProfile, customSinkActivationId: HSTRING, customSinkSettings: *IPropertySet) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartPreviewToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings(@ptrCast(self), encodingProfile, customSinkActivationId, customSinkSettings, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopPreviewAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StopPreviewAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureVideoPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "27727073-549e-447f-a20a-4f03c479d8c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartPreviewAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StartPreviewToCustomSinkAsync: *const fn(self: *anyopaque, encodingProfile: *MediaEncodingProfile, customMediaSink: *IMediaExtension, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StartPreviewToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings: *const fn(self: *anyopaque, encodingProfile: *MediaEncodingProfile, customSinkActivationId: HSTRING, customSinkSettings: *IPropertySet, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StopPreviewAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureVideoProfile = extern struct {
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
    pub fn getSupportedPreviewMediaDescription(self: *@This()) core.HResult!*IVectorView(MediaCaptureVideoProfileMediaDescription) {
        var _r: *IVectorView(MediaCaptureVideoProfileMediaDescription) = undefined;
        const _c = self.vtable.get_SupportedPreviewMediaDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedRecordMediaDescription(self: *@This()) core.HResult!*IVectorView(MediaCaptureVideoProfileMediaDescription) {
        var _r: *IVectorView(MediaCaptureVideoProfileMediaDescription) = undefined;
        const _c = self.vtable.get_SupportedRecordMediaDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedPhotoMediaDescription(self: *@This()) core.HResult!*IVectorView(MediaCaptureVideoProfileMediaDescription) {
        var _r: *IVectorView(MediaCaptureVideoProfileMediaDescription) = undefined;
        const _c = self.vtable.get_SupportedPhotoMediaDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetConcurrency(self: *@This()) core.HResult!*IVectorView(MediaCaptureVideoProfile) {
        var _r: *IVectorView(MediaCaptureVideoProfile) = undefined;
        const _c = self.vtable.GetConcurrency(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureVideoProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "21a073bf-a3ee-4ecf-9ef6-50b0bc4e1305";
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
        get_SupportedPreviewMediaDescription: *const fn(self: *anyopaque, _r: **IVectorView(MediaCaptureVideoProfileMediaDescription)) callconv(.winapi) HRESULT,
        get_SupportedRecordMediaDescription: *const fn(self: *anyopaque, _r: **IVectorView(MediaCaptureVideoProfileMediaDescription)) callconv(.winapi) HRESULT,
        get_SupportedPhotoMediaDescription: *const fn(self: *anyopaque, _r: **IVectorView(MediaCaptureVideoProfileMediaDescription)) callconv(.winapi) HRESULT,
        GetConcurrency: *const fn(self: *anyopaque, _r: **IVectorView(MediaCaptureVideoProfile)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureVideoProfile2 = extern struct {
    vtable: *const VTable,
    pub fn getFrameSourceInfos(self: *@This()) core.HResult!*IVectorView(MediaFrameSourceInfo) {
        var _r: *IVectorView(MediaFrameSourceInfo) = undefined;
        const _c = self.vtable.get_FrameSourceInfos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        var _r: *IMapView(Guid,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureVideoProfile2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "97ddc95f-94ce-468f-9316-fc5bc2638f6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameSourceInfos: *const fn(self: *anyopaque, _r: **IVectorView(MediaFrameSourceInfo)) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(Guid,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureVideoProfileMediaDescription = extern struct {
    vtable: *const VTable,
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
    pub fn getFrameRate(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FrameRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsVariablePhotoSequenceSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVariablePhotoSequenceSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHdrVideoSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHdrVideoSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureVideoProfileMediaDescription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8012afef-b691-49ff-83f2-c1e76eaaea1b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Width: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_FrameRate: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_IsVariablePhotoSequenceSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsHdrVideoSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IMediaCaptureVideoProfileMediaDescription2 = extern struct {
    vtable: *const VTable,
    pub fn getSubtype(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Subtype(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        var _r: *IMapView(Guid,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IMediaCaptureVideoProfileMediaDescription2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c6a6ef13-322d-413a-b85a-68a88e02f4e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Subtype: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(Guid,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IOptionalReferencePhotoCapturedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFrame(self: *@This()) core.HResult!*CapturedFrame {
        var _r: *CapturedFrame = undefined;
        const _c = self.vtable.get_Frame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContext(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Context(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IOptionalReferencePhotoCapturedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "470f88b3-1e6d-4051-9c8b-f1d85af047b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Frame: *const fn(self: *anyopaque, _r: **CapturedFrame) callconv(.winapi) HRESULT,
        get_Context: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoCapturedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFrame(self: *@This()) core.HResult!*CapturedFrame {
        var _r: *CapturedFrame = undefined;
        const _c = self.vtable.get_Frame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*CapturedFrame {
        var _r: *CapturedFrame = undefined;
        const _c = self.vtable.get_Thumbnail(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCaptureTimeOffset(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_CaptureTimeOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IPhotoCapturedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "373bfbc1-984e-4ff0-bf85-1c00aabc5a45";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Frame: *const fn(self: *anyopaque, _r: **CapturedFrame) callconv(.winapi) HRESULT,
        get_Thumbnail: *const fn(self: *anyopaque, _r: **CapturedFrame) callconv(.winapi) HRESULT,
        get_CaptureTimeOffset: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IPhotoConfirmationCapturedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFrame(self: *@This()) core.HResult!*CapturedFrame {
        var _r: *CapturedFrame = undefined;
        const _c = self.vtable.get_Frame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCaptureTimeOffset(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_CaptureTimeOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IPhotoConfirmationCapturedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab473672-c28a-4827-8f8d-3636d3beb51e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Frame: *const fn(self: *anyopaque, _r: **CapturedFrame) callconv(.winapi) HRESULT,
        get_CaptureTimeOffset: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IVideoStreamConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getInputProperties(self: *@This()) core.HResult!*VideoEncodingProperties {
        var _r: *VideoEncodingProperties = undefined;
        const _c = self.vtable.get_InputProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOutputProperties(self: *@This()) core.HResult!*VideoEncodingProperties {
        var _r: *VideoEncodingProperties = undefined;
        const _c = self.vtable.get_OutputProperties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IVideoStreamConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d8770a6f-4390-4b5e-ad3e-0f8af0963490";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InputProperties: *const fn(self: *anyopaque, _r: **VideoEncodingProperties) callconv(.winapi) HRESULT,
        get_OutputProperties: *const fn(self: *anyopaque, _r: **VideoEncodingProperties) callconv(.winapi) HRESULT,
    };
};
pub const KnownVideoProfile = enum(i32) {
    VideoRecording = 0,
    HighQualityPhoto = 1,
    BalancedVideoAndPhoto = 2,
    VideoConferencing = 3,
    PhotoSequence = 4,
    HighFrameRate = 5,
    VariablePhotoSequence = 6,
    HdrWithWcgVideo = 7,
    HdrWithWcgPhoto = 8,
    VideoHdr8 = 9,
    CompressedCamera = 10,
};
pub const LowLagMediaRecording = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ILowLagMediaRecording = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ILowLagMediaRecording = @ptrCast(self);
        return try this.StopAsync();
    }
    pub fn FinishAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ILowLagMediaRecording = @ptrCast(self);
        return try this.FinishAsync();
    }
    pub fn PauseAsync(self: *@This(), behavior: MediaCapturePauseBehavior) core.HResult!*IAsyncAction {
        var this: ?*ILowLagMediaRecording2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILowLagMediaRecording2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PauseAsync(behavior);
    }
    pub fn ResumeAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*ILowLagMediaRecording2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILowLagMediaRecording2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ResumeAsync();
    }
    pub fn PauseWithResultAsync(self: *@This(), behavior: MediaCapturePauseBehavior) core.HResult!*IAsyncOperation(MediaCapturePauseResult) {
        var this: ?*ILowLagMediaRecording3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILowLagMediaRecording3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PauseWithResultAsync(behavior);
    }
    pub fn StopWithResultAsync(self: *@This()) core.HResult!*IAsyncOperation(MediaCaptureStopResult) {
        var this: ?*ILowLagMediaRecording3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILowLagMediaRecording3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopWithResultAsync();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.LowLagMediaRecording";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILowLagMediaRecording.GUID;
    pub const IID: Guid = ILowLagMediaRecording.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILowLagMediaRecording.SIGNATURE);
};
pub const LowLagPhotoCapture = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CaptureAsync(self: *@This()) core.HResult!*IAsyncOperation(CapturedPhoto) {
        const this: *ILowLagPhotoCapture = @ptrCast(self);
        return try this.CaptureAsync();
    }
    pub fn FinishAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ILowLagPhotoCapture = @ptrCast(self);
        return try this.FinishAsync();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.LowLagPhotoCapture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILowLagPhotoCapture.GUID;
    pub const IID: Guid = ILowLagPhotoCapture.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILowLagPhotoCapture.SIGNATURE);
};
pub const LowLagPhotoSequenceCapture = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn StartAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ILowLagPhotoSequenceCapture = @ptrCast(self);
        return try this.StartAsync();
    }
    pub fn StopAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ILowLagPhotoSequenceCapture = @ptrCast(self);
        return try this.StopAsync();
    }
    pub fn FinishAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *ILowLagPhotoSequenceCapture = @ptrCast(self);
        return try this.FinishAsync();
    }
    pub fn addPhotoCaptured(self: *@This(), handler: *TypedEventHandler(LowLagPhotoSequenceCapture,PhotoCapturedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ILowLagPhotoSequenceCapture = @ptrCast(self);
        return try this.addPhotoCaptured(handler);
    }
    pub fn removePhotoCaptured(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILowLagPhotoSequenceCapture = @ptrCast(self);
        return try this.removePhotoCaptured(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.LowLagPhotoSequenceCapture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILowLagPhotoSequenceCapture.GUID;
    pub const IID: Guid = ILowLagPhotoSequenceCapture.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILowLagPhotoSequenceCapture.SIGNATURE);
};
pub const MediaCapture = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn InitializeAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.InitializeAsync();
    }
    pub fn InitializeAsync(self: *@This(), mediaCaptureInitializationSettings: *MediaCaptureInitializationSettings) core.HResult!*IAsyncAction {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.InitializeAsync(mediaCaptureInitializationSettings);
    }
    pub fn StartRecordToStorageFileAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, file: *IStorageFile) core.HResult!*IAsyncAction {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.StartRecordToStorageFileAsync(encodingProfile, file);
    }
    pub fn StartRecordToStreamAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, stream: *IRandomAccessStream) core.HResult!*IAsyncAction {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.StartRecordToStreamAsync(encodingProfile, stream);
    }
    pub fn StartRecordToCustomSinkAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, customMediaSink: *IMediaExtension) core.HResult!*IAsyncAction {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.StartRecordToCustomSinkAsync(encodingProfile, customMediaSink);
    }
    pub fn StartRecordToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings(self: *@This(), encodingProfile: *MediaEncodingProfile, customSinkActivationId: HSTRING, customSinkSettings: *IPropertySet) core.HResult!*IAsyncAction {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.StartRecordToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings(encodingProfile, customSinkActivationId, customSinkSettings);
    }
    pub fn StopRecordAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.StopRecordAsync();
    }
    pub fn CapturePhotoToStorageFileAsync(self: *@This(), ty: *ImageEncodingProperties, file: *IStorageFile) core.HResult!*IAsyncAction {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.CapturePhotoToStorageFileAsync(ty, file);
    }
    pub fn CapturePhotoToStreamAsync(self: *@This(), ty: *ImageEncodingProperties, stream: *IRandomAccessStream) core.HResult!*IAsyncAction {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.CapturePhotoToStreamAsync(ty, stream);
    }
    pub fn AddEffectAsync(self: *@This(), mediaStreamType: MediaStreamType, effectActivationID: HSTRING, effectSettings: *IPropertySet) core.HResult!*IAsyncAction {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.AddEffectAsync(mediaStreamType, effectActivationID, effectSettings);
    }
    pub fn ClearEffectsAsync(self: *@This(), mediaStreamType: MediaStreamType) core.HResult!*IAsyncAction {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.ClearEffectsAsync(mediaStreamType);
    }
    pub fn SetEncoderProperty(self: *@This(), mediaStreamType: MediaStreamType, propertyId: *Guid, propertyValue: *IInspectable) core.HResult!void {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.SetEncoderProperty(mediaStreamType, propertyId, propertyValue);
    }
    pub fn GetEncoderProperty(self: *@This(), mediaStreamType: MediaStreamType, propertyId: *Guid) core.HResult!*IInspectable {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.GetEncoderProperty(mediaStreamType, propertyId);
    }
    pub fn addFailed(self: *@This(), errorEventHandler: *MediaCaptureFailedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.addFailed(errorEventHandler);
    }
    pub fn removeFailed(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.removeFailed(eventCookie);
    }
    pub fn addRecordLimitationExceeded(self: *@This(), recordLimitationExceededEventHandler: *RecordLimitationExceededEventHandler) core.HResult!EventRegistrationToken {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.addRecordLimitationExceeded(recordLimitationExceededEventHandler);
    }
    pub fn removeRecordLimitationExceeded(self: *@This(), eventCookie: EventRegistrationToken) core.HResult!void {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.removeRecordLimitationExceeded(eventCookie);
    }
    pub fn getMediaCaptureSettings(self: *@This()) core.HResult!*MediaCaptureSettings {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.getMediaCaptureSettings();
    }
    pub fn getAudioDeviceController(self: *@This()) core.HResult!*AudioDeviceController {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.getAudioDeviceController();
    }
    pub fn getVideoDeviceController(self: *@This()) core.HResult!*VideoDeviceController {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.getVideoDeviceController();
    }
    pub fn SetPreviewMirroring(self: *@This(), value: bool) core.HResult!void {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.SetPreviewMirroring(value);
    }
    pub fn GetPreviewMirroring(self: *@This()) core.HResult!bool {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.GetPreviewMirroring();
    }
    pub fn SetPreviewRotation(self: *@This(), value: VideoRotation) core.HResult!void {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.SetPreviewRotation(value);
    }
    pub fn GetPreviewRotation(self: *@This()) core.HResult!VideoRotation {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.GetPreviewRotation();
    }
    pub fn SetRecordRotation(self: *@This(), value: VideoRotation) core.HResult!void {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.SetRecordRotation(value);
    }
    pub fn GetRecordRotation(self: *@This()) core.HResult!VideoRotation {
        const this: *IMediaCapture = @ptrCast(self);
        return try this.GetRecordRotation();
    }
    pub fn StartPreviewAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IMediaCaptureVideoPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureVideoPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartPreviewAsync();
    }
    pub fn StartPreviewToCustomSinkAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, customMediaSink: *IMediaExtension) core.HResult!*IAsyncAction {
        var this: ?*IMediaCaptureVideoPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureVideoPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartPreviewToCustomSinkAsync(encodingProfile, customMediaSink);
    }
    pub fn StartPreviewToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings(self: *@This(), encodingProfile: *MediaEncodingProfile, customSinkActivationId: HSTRING, customSinkSettings: *IPropertySet) core.HResult!*IAsyncAction {
        var this: ?*IMediaCaptureVideoPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureVideoPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartPreviewToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings(encodingProfile, customSinkActivationId, customSinkSettings);
    }
    pub fn StopPreviewAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IMediaCaptureVideoPreview = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureVideoPreview.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopPreviewAsync();
    }
    pub fn PrepareLowLagRecordToStorageFileAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, file: *IStorageFile) core.HResult!*IAsyncOperation(LowLagMediaRecording) {
        var this: ?*IMediaCapture2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrepareLowLagRecordToStorageFileAsync(encodingProfile, file);
    }
    pub fn PrepareLowLagRecordToStreamAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, stream: *IRandomAccessStream) core.HResult!*IAsyncOperation(LowLagMediaRecording) {
        var this: ?*IMediaCapture2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrepareLowLagRecordToStreamAsync(encodingProfile, stream);
    }
    pub fn PrepareLowLagRecordToCustomSinkAsync(self: *@This(), encodingProfile: *MediaEncodingProfile, customMediaSink: *IMediaExtension) core.HResult!*IAsyncOperation(LowLagMediaRecording) {
        var this: ?*IMediaCapture2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrepareLowLagRecordToCustomSinkAsync(encodingProfile, customMediaSink);
    }
    pub fn PrepareLowLagRecordToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings(self: *@This(), encodingProfile: *MediaEncodingProfile, customSinkActivationId: HSTRING, customSinkSettings: *IPropertySet) core.HResult!*IAsyncOperation(LowLagMediaRecording) {
        var this: ?*IMediaCapture2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrepareLowLagRecordToCustomSinkAsyncWithCustomSinkActivationIdWithCustomSinkSettings(encodingProfile, customSinkActivationId, customSinkSettings);
    }
    pub fn PrepareLowLagPhotoCaptureAsync(self: *@This(), ty: *ImageEncodingProperties) core.HResult!*IAsyncOperation(LowLagPhotoCapture) {
        var this: ?*IMediaCapture2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrepareLowLagPhotoCaptureAsync(ty);
    }
    pub fn PrepareLowLagPhotoSequenceCaptureAsync(self: *@This(), ty: *ImageEncodingProperties) core.HResult!*IAsyncOperation(LowLagPhotoSequenceCapture) {
        var this: ?*IMediaCapture2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrepareLowLagPhotoSequenceCaptureAsync(ty);
    }
    pub fn SetEncodingPropertiesAsync(self: *@This(), mediaStreamType: MediaStreamType, mediaEncodingProperties: *IMediaEncodingProperties, encoderProperties: *MediaPropertySet) core.HResult!*IAsyncAction {
        var this: ?*IMediaCapture2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetEncodingPropertiesAsync(mediaStreamType, mediaEncodingProperties, encoderProperties);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn PrepareVariablePhotoSequenceCaptureAsync(self: *@This(), ty: *ImageEncodingProperties) core.HResult!*IAsyncOperation(VariablePhotoSequenceCapture) {
        var this: ?*IMediaCapture3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrepareVariablePhotoSequenceCaptureAsync(ty);
    }
    pub fn addFocusChanged(self: *@This(), handler: *TypedEventHandler(MediaCapture,MediaCaptureFocusChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaCapture3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addFocusChanged(handler);
    }
    pub fn removeFocusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaCapture3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeFocusChanged(token);
    }
    pub fn addPhotoConfirmationCaptured(self: *@This(), handler: *TypedEventHandler(MediaCapture,PhotoConfirmationCapturedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaCapture3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPhotoConfirmationCaptured(handler);
    }
    pub fn removePhotoConfirmationCaptured(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaCapture3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePhotoConfirmationCaptured(token);
    }
    pub fn AddAudioEffectAsync(self: *@This(), definition: *IAudioEffectDefinition) core.HResult!*IAsyncOperation(IMediaExtension) {
        var this: ?*IMediaCapture4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddAudioEffectAsync(definition);
    }
    pub fn AddVideoEffectAsync(self: *@This(), definition: *IVideoEffectDefinition, mediaStreamType: MediaStreamType) core.HResult!*IAsyncOperation(IMediaExtension) {
        var this: ?*IMediaCapture4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddVideoEffectAsync(definition, mediaStreamType);
    }
    pub fn PauseRecordAsync(self: *@This(), behavior: MediaCapturePauseBehavior) core.HResult!*IAsyncAction {
        var this: ?*IMediaCapture4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PauseRecordAsync(behavior);
    }
    pub fn ResumeRecordAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*IMediaCapture4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ResumeRecordAsync();
    }
    pub fn addCameraStreamStateChanged(self: *@This(), handler: *TypedEventHandler(MediaCapture,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaCapture4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addCameraStreamStateChanged(handler);
    }
    pub fn removeCameraStreamStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaCapture4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeCameraStreamStateChanged(token);
    }
    pub fn getCameraStreamState(self: *@This()) core.HResult!CameraStreamState {
        var this: ?*IMediaCapture4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCameraStreamState();
    }
    pub fn GetPreviewFrameAsync(self: *@This()) core.HResult!*IAsyncOperation(VideoFrame) {
        var this: ?*IMediaCapture4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPreviewFrameAsync();
    }
    pub fn GetPreviewFrameAsync(self: *@This(), destination: *VideoFrame) core.HResult!*IAsyncOperation(VideoFrame) {
        var this: ?*IMediaCapture4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPreviewFrameAsync(destination);
    }
    pub fn addThermalStatusChanged(self: *@This(), handler: *TypedEventHandler(MediaCapture,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaCapture4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addThermalStatusChanged(handler);
    }
    pub fn removeThermalStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaCapture4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeThermalStatusChanged(token);
    }
    pub fn getThermalStatus(self: *@This()) core.HResult!MediaCaptureThermalStatus {
        var this: ?*IMediaCapture4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getThermalStatus();
    }
    pub fn PrepareAdvancedPhotoCaptureAsync(self: *@This(), encodingProperties: *ImageEncodingProperties) core.HResult!*IAsyncOperation(AdvancedPhotoCapture) {
        var this: ?*IMediaCapture4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PrepareAdvancedPhotoCaptureAsync(encodingProperties);
    }
    pub fn RemoveEffectAsync(self: *@This(), effect: *IMediaExtension) core.HResult!*IAsyncAction {
        var this: ?*IMediaCapture5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveEffectAsync(effect);
    }
    pub fn PauseRecordWithResultAsync(self: *@This(), behavior: MediaCapturePauseBehavior) core.HResult!*IAsyncOperation(MediaCapturePauseResult) {
        var this: ?*IMediaCapture5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PauseRecordWithResultAsync(behavior);
    }
    pub fn StopRecordWithResultAsync(self: *@This()) core.HResult!*IAsyncOperation(MediaCaptureStopResult) {
        var this: ?*IMediaCapture5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopRecordWithResultAsync();
    }
    pub fn getFrameSources(self: *@This()) core.HResult!*IMapView(HSTRING,MediaFrameSource) {
        var this: ?*IMediaCapture5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFrameSources();
    }
    pub fn CreateFrameReaderAsync(self: *@This(), inputSource: *MediaFrameSource) core.HResult!*IAsyncOperation(MediaFrameReader) {
        var this: ?*IMediaCapture5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFrameReaderAsync(inputSource);
    }
    pub fn CreateFrameReaderAsyncWithOutputSubtype(self: *@This(), inputSource: *MediaFrameSource, outputSubtype: HSTRING) core.HResult!*IAsyncOperation(MediaFrameReader) {
        var this: ?*IMediaCapture5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFrameReaderAsyncWithOutputSubtype(inputSource, outputSubtype);
    }
    pub fn CreateFrameReaderAsyncWithOutputSize(self: *@This(), inputSource: *MediaFrameSource, outputSubtype: HSTRING, outputSize: BitmapSize) core.HResult!*IAsyncOperation(MediaFrameReader) {
        var this: ?*IMediaCapture5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFrameReaderAsyncWithOutputSize(inputSource, outputSubtype, outputSize);
    }
    pub fn addCaptureDeviceExclusiveControlStatusChanged(self: *@This(), handler: *TypedEventHandler(MediaCapture,MediaCaptureDeviceExclusiveControlStatusChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IMediaCapture6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addCaptureDeviceExclusiveControlStatusChanged(handler);
    }
    pub fn removeCaptureDeviceExclusiveControlStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IMediaCapture6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeCaptureDeviceExclusiveControlStatusChanged(token);
    }
    pub fn CreateMultiSourceFrameReaderAsync(self: *@This(), inputSources: *IIterable(MediaFrameSource)) core.HResult!*IAsyncOperation(MultiSourceMediaFrameReader) {
        var this: ?*IMediaCapture6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateMultiSourceFrameReaderAsync(inputSources);
    }
    pub fn CreateRelativePanelWatcher(self: *@This(), captureMode: StreamingCaptureMode, displayRegion: *DisplayRegion) core.HResult!*MediaCaptureRelativePanelWatcher {
        var this: ?*IMediaCapture7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCapture7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateRelativePanelWatcher(captureMode, displayRegion);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaCapture.IID)));
    }
    pub fn IsVideoProfileSupported(videoDeviceId: HSTRING) core.HResult!bool {
        const factory = @This().IMediaCaptureStaticsCache.get();
        return try factory.IsVideoProfileSupported(videoDeviceId);
    }
    pub fn FindAllVideoProfiles(videoDeviceId: HSTRING) core.HResult!*IVectorView(MediaCaptureVideoProfile) {
        const factory = @This().IMediaCaptureStaticsCache.get();
        return try factory.FindAllVideoProfiles(videoDeviceId);
    }
    pub fn FindConcurrentProfiles(videoDeviceId: HSTRING) core.HResult!*IVectorView(MediaCaptureVideoProfile) {
        const factory = @This().IMediaCaptureStaticsCache.get();
        return try factory.FindConcurrentProfiles(videoDeviceId);
    }
    pub fn FindKnownVideoProfiles(videoDeviceId: HSTRING, name: KnownVideoProfile) core.HResult!*IVectorView(MediaCaptureVideoProfile) {
        const factory = @This().IMediaCaptureStaticsCache.get();
        return try factory.FindKnownVideoProfiles(videoDeviceId, name);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.MediaCapture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaCapture.GUID;
    pub const IID: Guid = IMediaCapture.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaCapture.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMediaCaptureStaticsCache: FactoryCache(IMediaCaptureStatics, RUNTIME_NAME) = .{};
};
pub const MediaCaptureDeviceExclusiveControlReleaseMode = enum(i32) {
    OnDispose = 0,
    OnAllStreamsStopped = 1,
};
pub const MediaCaptureDeviceExclusiveControlStatus = enum(i32) {
    ExclusiveControlAvailable = 0,
    SharedReadOnlyAvailable = 1,
};
pub const MediaCaptureDeviceExclusiveControlStatusChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaCaptureDeviceExclusiveControlStatusChangedEventArgs = @ptrCast(self);
        return try this.getDeviceId();
    }
    pub fn getStatus(self: *@This()) core.HResult!MediaCaptureDeviceExclusiveControlStatus {
        const this: *IMediaCaptureDeviceExclusiveControlStatusChangedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.MediaCaptureDeviceExclusiveControlStatusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaCaptureDeviceExclusiveControlStatusChangedEventArgs.GUID;
    pub const IID: Guid = IMediaCaptureDeviceExclusiveControlStatusChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaCaptureDeviceExclusiveControlStatusChangedEventArgs.SIGNATURE);
};
pub const MediaCaptureFailedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMessage(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaCaptureFailedEventArgs = @ptrCast(self);
        return try this.getMessage();
    }
    pub fn getCode(self: *@This()) core.HResult!u32 {
        const this: *IMediaCaptureFailedEventArgs = @ptrCast(self);
        return try this.getCode();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.MediaCaptureFailedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaCaptureFailedEventArgs.GUID;
    pub const IID: Guid = IMediaCaptureFailedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaCaptureFailedEventArgs.SIGNATURE);
};
pub const MediaCaptureFailedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *MediaCapture, errorEventArgs: *MediaCaptureFailedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *MediaCapture, errorEventArgs: *MediaCaptureFailedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *MediaCapture, errorEventArgs: *MediaCaptureFailedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, errorEventArgs);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.MediaCaptureFailedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2014effb-5cd8-4f08-a314-0d360da59f14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *MediaCapture, errorEventArgs: *MediaCaptureFailedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const MediaCaptureFocusChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFocusState(self: *@This()) core.HResult!MediaCaptureFocusState {
        const this: *IMediaCaptureFocusChangedEventArgs = @ptrCast(self);
        return try this.getFocusState();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.MediaCaptureFocusChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaCaptureFocusChangedEventArgs.GUID;
    pub const IID: Guid = IMediaCaptureFocusChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaCaptureFocusChangedEventArgs.SIGNATURE);
};
pub const MediaCaptureInitializationSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putAudioDeviceId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMediaCaptureInitializationSettings = @ptrCast(self);
        return try this.putAudioDeviceId(value);
    }
    pub fn getAudioDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaCaptureInitializationSettings = @ptrCast(self);
        return try this.getAudioDeviceId();
    }
    pub fn putVideoDeviceId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IMediaCaptureInitializationSettings = @ptrCast(self);
        return try this.putVideoDeviceId(value);
    }
    pub fn getVideoDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaCaptureInitializationSettings = @ptrCast(self);
        return try this.getVideoDeviceId();
    }
    pub fn putStreamingCaptureMode(self: *@This(), value: StreamingCaptureMode) core.HResult!void {
        const this: *IMediaCaptureInitializationSettings = @ptrCast(self);
        return try this.putStreamingCaptureMode(value);
    }
    pub fn getStreamingCaptureMode(self: *@This()) core.HResult!StreamingCaptureMode {
        const this: *IMediaCaptureInitializationSettings = @ptrCast(self);
        return try this.getStreamingCaptureMode();
    }
    pub fn putPhotoCaptureSource(self: *@This(), value: PhotoCaptureSource) core.HResult!void {
        const this: *IMediaCaptureInitializationSettings = @ptrCast(self);
        return try this.putPhotoCaptureSource(value);
    }
    pub fn getPhotoCaptureSource(self: *@This()) core.HResult!PhotoCaptureSource {
        const this: *IMediaCaptureInitializationSettings = @ptrCast(self);
        return try this.getPhotoCaptureSource();
    }
    pub fn putMediaCategory(self: *@This(), value: MediaCategory) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMediaCategory(value);
    }
    pub fn getMediaCategory(self: *@This()) core.HResult!MediaCategory {
        var this: ?*IMediaCaptureInitializationSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMediaCategory();
    }
    pub fn putAudioProcessing(self: *@This(), value: AudioProcessing) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAudioProcessing(value);
    }
    pub fn getAudioProcessing(self: *@This()) core.HResult!AudioProcessing {
        var this: ?*IMediaCaptureInitializationSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioProcessing();
    }
    pub fn putAudioSource(self: *@This(), value: *IMediaSource) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAudioSource(value);
    }
    pub fn getAudioSource(self: *@This()) core.HResult!*IMediaSource {
        var this: ?*IMediaCaptureInitializationSettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioSource();
    }
    pub fn putVideoSource(self: *@This(), value: *IMediaSource) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putVideoSource(value);
    }
    pub fn getVideoSource(self: *@This()) core.HResult!*IMediaSource {
        var this: ?*IMediaCaptureInitializationSettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVideoSource();
    }
    pub fn getVideoProfile(self: *@This()) core.HResult!*MediaCaptureVideoProfile {
        var this: ?*IMediaCaptureInitializationSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVideoProfile();
    }
    pub fn putVideoProfile(self: *@This(), value: *MediaCaptureVideoProfile) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putVideoProfile(value);
    }
    pub fn getPreviewMediaDescription(self: *@This()) core.HResult!*MediaCaptureVideoProfileMediaDescription {
        var this: ?*IMediaCaptureInitializationSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreviewMediaDescription();
    }
    pub fn putPreviewMediaDescription(self: *@This(), value: *MediaCaptureVideoProfileMediaDescription) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPreviewMediaDescription(value);
    }
    pub fn getRecordMediaDescription(self: *@This()) core.HResult!*MediaCaptureVideoProfileMediaDescription {
        var this: ?*IMediaCaptureInitializationSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRecordMediaDescription();
    }
    pub fn putRecordMediaDescription(self: *@This(), value: *MediaCaptureVideoProfileMediaDescription) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRecordMediaDescription(value);
    }
    pub fn getPhotoMediaDescription(self: *@This()) core.HResult!*MediaCaptureVideoProfileMediaDescription {
        var this: ?*IMediaCaptureInitializationSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPhotoMediaDescription();
    }
    pub fn putPhotoMediaDescription(self: *@This(), value: *MediaCaptureVideoProfileMediaDescription) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPhotoMediaDescription(value);
    }
    pub fn getSourceGroup(self: *@This()) core.HResult!*MediaFrameSourceGroup {
        var this: ?*IMediaCaptureInitializationSettings5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSourceGroup();
    }
    pub fn putSourceGroup(self: *@This(), value: *MediaFrameSourceGroup) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSourceGroup(value);
    }
    pub fn getSharingMode(self: *@This()) core.HResult!MediaCaptureSharingMode {
        var this: ?*IMediaCaptureInitializationSettings5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSharingMode();
    }
    pub fn putSharingMode(self: *@This(), value: MediaCaptureSharingMode) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSharingMode(value);
    }
    pub fn getMemoryPreference(self: *@This()) core.HResult!MediaCaptureMemoryPreference {
        var this: ?*IMediaCaptureInitializationSettings5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMemoryPreference();
    }
    pub fn putMemoryPreference(self: *@This(), value: MediaCaptureMemoryPreference) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMemoryPreference(value);
    }
    pub fn getAlwaysPlaySystemShutterSound(self: *@This()) core.HResult!bool {
        var this: ?*IMediaCaptureInitializationSettings6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAlwaysPlaySystemShutterSound();
    }
    pub fn putAlwaysPlaySystemShutterSound(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAlwaysPlaySystemShutterSound(value);
    }
    pub fn getDeviceUriPasswordCredential(self: *@This()) core.HResult!*PasswordCredential {
        var this: ?*IMediaCaptureInitializationSettings7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceUriPasswordCredential();
    }
    pub fn putDeviceUriPasswordCredential(self: *@This(), value: *PasswordCredential) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDeviceUriPasswordCredential(value);
    }
    pub fn getDeviceUri(self: *@This()) core.HResult!*Uri {
        var this: ?*IMediaCaptureInitializationSettings7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceUri();
    }
    pub fn putDeviceUri(self: *@This(), value: *Uri) core.HResult!void {
        var this: ?*IMediaCaptureInitializationSettings7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureInitializationSettings7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDeviceUri(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMediaCaptureInitializationSettings.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.MediaCaptureInitializationSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaCaptureInitializationSettings.GUID;
    pub const IID: Guid = IMediaCaptureInitializationSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaCaptureInitializationSettings.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const MediaCaptureMemoryPreference = enum(i32) {
    Auto = 0,
    Cpu = 1,
};
pub const MediaCapturePauseResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLastFrame(self: *@This()) core.HResult!*VideoFrame {
        const this: *IMediaCapturePauseResult = @ptrCast(self);
        return try this.getLastFrame();
    }
    pub fn getRecordDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaCapturePauseResult = @ptrCast(self);
        return try this.getRecordDuration();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.MediaCapturePauseResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaCapturePauseResult.GUID;
    pub const IID: Guid = IMediaCapturePauseResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaCapturePauseResult.SIGNATURE);
};
pub const MediaCaptureRelativePanelWatcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRelativePanel(self: *@This()) core.HResult!Panel {
        const this: *IMediaCaptureRelativePanelWatcher = @ptrCast(self);
        return try this.getRelativePanel();
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(MediaCaptureRelativePanelWatcher,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IMediaCaptureRelativePanelWatcher = @ptrCast(self);
        return try this.addChanged(handler);
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IMediaCaptureRelativePanelWatcher = @ptrCast(self);
        return try this.removeChanged(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IMediaCaptureRelativePanelWatcher = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IMediaCaptureRelativePanelWatcher = @ptrCast(self);
        return try this.Stop();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.MediaCaptureRelativePanelWatcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaCaptureRelativePanelWatcher.GUID;
    pub const IID: Guid = IMediaCaptureRelativePanelWatcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaCaptureRelativePanelWatcher.SIGNATURE);
};
pub const MediaCaptureSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAudioDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaCaptureSettings = @ptrCast(self);
        return try this.getAudioDeviceId();
    }
    pub fn getVideoDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaCaptureSettings = @ptrCast(self);
        return try this.getVideoDeviceId();
    }
    pub fn getStreamingCaptureMode(self: *@This()) core.HResult!StreamingCaptureMode {
        const this: *IMediaCaptureSettings = @ptrCast(self);
        return try this.getStreamingCaptureMode();
    }
    pub fn getPhotoCaptureSource(self: *@This()) core.HResult!PhotoCaptureSource {
        const this: *IMediaCaptureSettings = @ptrCast(self);
        return try this.getPhotoCaptureSource();
    }
    pub fn getVideoDeviceCharacteristic(self: *@This()) core.HResult!VideoDeviceCharacteristic {
        const this: *IMediaCaptureSettings = @ptrCast(self);
        return try this.getVideoDeviceCharacteristic();
    }
    pub fn getConcurrentRecordAndPhotoSupported(self: *@This()) core.HResult!bool {
        var this: ?*IMediaCaptureSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConcurrentRecordAndPhotoSupported();
    }
    pub fn getConcurrentRecordAndPhotoSequenceSupported(self: *@This()) core.HResult!bool {
        var this: ?*IMediaCaptureSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConcurrentRecordAndPhotoSequenceSupported();
    }
    pub fn getCameraSoundRequiredForRegion(self: *@This()) core.HResult!bool {
        var this: ?*IMediaCaptureSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCameraSoundRequiredForRegion();
    }
    pub fn getHorizontal35mmEquivalentFocalLength(self: *@This()) core.HResult!*IReference(u32) {
        var this: ?*IMediaCaptureSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontal35mmEquivalentFocalLength();
    }
    pub fn getPitchOffsetDegrees(self: *@This()) core.HResult!*IReference(i32) {
        var this: ?*IMediaCaptureSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPitchOffsetDegrees();
    }
    pub fn getVertical35mmEquivalentFocalLength(self: *@This()) core.HResult!*IReference(u32) {
        var this: ?*IMediaCaptureSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVertical35mmEquivalentFocalLength();
    }
    pub fn getMediaCategory(self: *@This()) core.HResult!MediaCategory {
        var this: ?*IMediaCaptureSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMediaCategory();
    }
    pub fn getAudioProcessing(self: *@This()) core.HResult!AudioProcessing {
        var this: ?*IMediaCaptureSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAudioProcessing();
    }
    pub fn getDirect3D11Device(self: *@This()) core.HResult!*IDirect3DDevice {
        var this: ?*IMediaCaptureSettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureSettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDirect3D11Device();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.MediaCaptureSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaCaptureSettings.GUID;
    pub const IID: Guid = IMediaCaptureSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaCaptureSettings.SIGNATURE);
};
pub const MediaCaptureSharingMode = enum(i32) {
    ExclusiveControl = 0,
    SharedReadOnly = 1,
};
pub const MediaCaptureStopResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLastFrame(self: *@This()) core.HResult!*VideoFrame {
        const this: *IMediaCaptureStopResult = @ptrCast(self);
        return try this.getLastFrame();
    }
    pub fn getRecordDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IMediaCaptureStopResult = @ptrCast(self);
        return try this.getRecordDuration();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.MediaCaptureStopResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaCaptureStopResult.GUID;
    pub const IID: Guid = IMediaCaptureStopResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaCaptureStopResult.SIGNATURE);
};
pub const MediaCaptureThermalStatus = enum(i32) {
    Normal = 0,
    Overheated = 1,
};
pub const MediaCaptureVideoProfile = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaCaptureVideoProfile = @ptrCast(self);
        return try this.getId();
    }
    pub fn getVideoDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IMediaCaptureVideoProfile = @ptrCast(self);
        return try this.getVideoDeviceId();
    }
    pub fn getSupportedPreviewMediaDescription(self: *@This()) core.HResult!*IVectorView(MediaCaptureVideoProfileMediaDescription) {
        const this: *IMediaCaptureVideoProfile = @ptrCast(self);
        return try this.getSupportedPreviewMediaDescription();
    }
    pub fn getSupportedRecordMediaDescription(self: *@This()) core.HResult!*IVectorView(MediaCaptureVideoProfileMediaDescription) {
        const this: *IMediaCaptureVideoProfile = @ptrCast(self);
        return try this.getSupportedRecordMediaDescription();
    }
    pub fn getSupportedPhotoMediaDescription(self: *@This()) core.HResult!*IVectorView(MediaCaptureVideoProfileMediaDescription) {
        const this: *IMediaCaptureVideoProfile = @ptrCast(self);
        return try this.getSupportedPhotoMediaDescription();
    }
    pub fn GetConcurrency(self: *@This()) core.HResult!*IVectorView(MediaCaptureVideoProfile) {
        const this: *IMediaCaptureVideoProfile = @ptrCast(self);
        return try this.GetConcurrency();
    }
    pub fn getFrameSourceInfos(self: *@This()) core.HResult!*IVectorView(MediaFrameSourceInfo) {
        var this: ?*IMediaCaptureVideoProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureVideoProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFrameSourceInfos();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        var this: ?*IMediaCaptureVideoProfile2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureVideoProfile2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.MediaCaptureVideoProfile";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaCaptureVideoProfile.GUID;
    pub const IID: Guid = IMediaCaptureVideoProfile.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaCaptureVideoProfile.SIGNATURE);
};
pub const MediaCaptureVideoProfileMediaDescription = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *IMediaCaptureVideoProfileMediaDescription = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *IMediaCaptureVideoProfileMediaDescription = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getFrameRate(self: *@This()) core.HResult!f64 {
        const this: *IMediaCaptureVideoProfileMediaDescription = @ptrCast(self);
        return try this.getFrameRate();
    }
    pub fn getIsVariablePhotoSequenceSupported(self: *@This()) core.HResult!bool {
        const this: *IMediaCaptureVideoProfileMediaDescription = @ptrCast(self);
        return try this.getIsVariablePhotoSequenceSupported();
    }
    pub fn getIsHdrVideoSupported(self: *@This()) core.HResult!bool {
        const this: *IMediaCaptureVideoProfileMediaDescription = @ptrCast(self);
        return try this.getIsHdrVideoSupported();
    }
    pub fn getSubtype(self: *@This()) core.HResult!HSTRING {
        var this: ?*IMediaCaptureVideoProfileMediaDescription2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureVideoProfileMediaDescription2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSubtype();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        var this: ?*IMediaCaptureVideoProfileMediaDescription2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMediaCaptureVideoProfileMediaDescription2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.MediaCaptureVideoProfileMediaDescription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaCaptureVideoProfileMediaDescription.GUID;
    pub const IID: Guid = IMediaCaptureVideoProfileMediaDescription.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaCaptureVideoProfileMediaDescription.SIGNATURE);
};
pub const MediaCategory = enum(i32) {
    Other = 0,
    Communications = 1,
    Media = 2,
    GameChat = 3,
    Speech = 4,
    FarFieldSpeech = 5,
    UniformSpeech = 6,
    VoiceTyping = 7,
};
pub const MediaStreamType = enum(i32) {
    VideoPreview = 0,
    VideoRecord = 1,
    Audio = 2,
    Photo = 3,
    Metadata = 4,
};
pub const OptionalReferencePhotoCapturedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrame(self: *@This()) core.HResult!*CapturedFrame {
        const this: *IOptionalReferencePhotoCapturedEventArgs = @ptrCast(self);
        return try this.getFrame();
    }
    pub fn getContext(self: *@This()) core.HResult!*IInspectable {
        const this: *IOptionalReferencePhotoCapturedEventArgs = @ptrCast(self);
        return try this.getContext();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.OptionalReferencePhotoCapturedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOptionalReferencePhotoCapturedEventArgs.GUID;
    pub const IID: Guid = IOptionalReferencePhotoCapturedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOptionalReferencePhotoCapturedEventArgs.SIGNATURE);
};
pub const PhotoCaptureSource = enum(i32) {
    Auto = 0,
    VideoPreview = 1,
    Photo = 2,
};
pub const PhotoCapturedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrame(self: *@This()) core.HResult!*CapturedFrame {
        const this: *IPhotoCapturedEventArgs = @ptrCast(self);
        return try this.getFrame();
    }
    pub fn getThumbnail(self: *@This()) core.HResult!*CapturedFrame {
        const this: *IPhotoCapturedEventArgs = @ptrCast(self);
        return try this.getThumbnail();
    }
    pub fn getCaptureTimeOffset(self: *@This()) core.HResult!TimeSpan {
        const this: *IPhotoCapturedEventArgs = @ptrCast(self);
        return try this.getCaptureTimeOffset();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.PhotoCapturedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoCapturedEventArgs.GUID;
    pub const IID: Guid = IPhotoCapturedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoCapturedEventArgs.SIGNATURE);
};
pub const PhotoConfirmationCapturedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrame(self: *@This()) core.HResult!*CapturedFrame {
        const this: *IPhotoConfirmationCapturedEventArgs = @ptrCast(self);
        return try this.getFrame();
    }
    pub fn getCaptureTimeOffset(self: *@This()) core.HResult!TimeSpan {
        const this: *IPhotoConfirmationCapturedEventArgs = @ptrCast(self);
        return try this.getCaptureTimeOffset();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.PhotoConfirmationCapturedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPhotoConfirmationCapturedEventArgs.GUID;
    pub const IID: Guid = IPhotoConfirmationCapturedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPhotoConfirmationCapturedEventArgs.SIGNATURE);
};
pub const PowerlineFrequency = enum(i32) {
    Disabled = 0,
    FiftyHertz = 1,
    SixtyHertz = 2,
    Auto = 3,
};
pub const RecordLimitationExceededEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *MediaCapture) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *MediaCapture) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *MediaCapture) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.RecordLimitationExceededEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3fae8f2e-4fe1-4ffd-aaba-e1f1337d4e53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *MediaCapture) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const StreamingCaptureMode = enum(i32) {
    AudioAndVideo = 0,
    Audio = 1,
    Video = 2,
};
pub const VideoDeviceCharacteristic = enum(i32) {
    AllStreamsIndependent = 0,
    PreviewRecordStreamsIdentical = 1,
    PreviewPhotoStreamsIdentical = 2,
    RecordPhotoStreamsIdentical = 3,
    AllStreamsIdentical = 4,
};
pub const VideoRotation = enum(i32) {
    None = 0,
    Clockwise90Degrees = 1,
    Clockwise180Degrees = 2,
    Clockwise270Degrees = 3,
};
pub const VideoStreamConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInputProperties(self: *@This()) core.HResult!*VideoEncodingProperties {
        const this: *IVideoStreamConfiguration = @ptrCast(self);
        return try this.getInputProperties();
    }
    pub fn getOutputProperties(self: *@This()) core.HResult!*VideoEncodingProperties {
        const this: *IVideoStreamConfiguration = @ptrCast(self);
        return try this.getOutputProperties();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.VideoStreamConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVideoStreamConfiguration.GUID;
    pub const IID: Guid = IVideoStreamConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVideoStreamConfiguration.SIGNATURE);
};
pub const WhiteBalanceGain = extern struct {
    R: f64,
    G: f64,
    B: f64,
};
pub const AppBroadcastBackgroundService = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putPlugInState(self: *@This(), value: AppBroadcastPlugInState) core.HResult!void {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.putPlugInState(value);
    }
    pub fn getPlugInState(self: *@This()) core.HResult!AppBroadcastPlugInState {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.getPlugInState();
    }
    pub fn putSignInInfo(self: *@This(), value: *AppBroadcastBackgroundServiceSignInInfo) core.HResult!void {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.putSignInInfo(value);
    }
    pub fn getSignInInfo(self: *@This()) core.HResult!*AppBroadcastBackgroundServiceSignInInfo {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.getSignInInfo();
    }
    pub fn putStreamInfo(self: *@This(), value: *AppBroadcastBackgroundServiceStreamInfo) core.HResult!void {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.putStreamInfo(value);
    }
    pub fn getStreamInfo(self: *@This()) core.HResult!*AppBroadcastBackgroundServiceStreamInfo {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.getStreamInfo();
    }
    pub fn getAppId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.getAppId();
    }
    pub fn getBroadcastTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.getBroadcastTitle();
    }
    pub fn putViewerCount(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.putViewerCount(value);
    }
    pub fn getViewerCount(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.getViewerCount();
    }
    pub fn TerminateBroadcast(self: *@This(), reason: AppBroadcastTerminationReason, providerSpecificReason: u32) core.HResult!void {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.TerminateBroadcast(reason, providerSpecificReason);
    }
    pub fn addHeartbeatRequested(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundService,AppBroadcastHeartbeatRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.addHeartbeatRequested(handler);
    }
    pub fn removeHeartbeatRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.removeHeartbeatRequested(token);
    }
    pub fn getTitleId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastBackgroundService = @ptrCast(self);
        return try this.getTitleId();
    }
    pub fn putBroadcastTitle(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IAppBroadcastBackgroundService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBroadcastTitle(value);
    }
    pub fn getBroadcastLanguage(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppBroadcastBackgroundService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBroadcastLanguage();
    }
    pub fn putBroadcastLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IAppBroadcastBackgroundService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBroadcastLanguage(value);
    }
    pub fn getBroadcastChannel(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppBroadcastBackgroundService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getBroadcastChannel();
    }
    pub fn putBroadcastChannel(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IAppBroadcastBackgroundService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putBroadcastChannel(value);
    }
    pub fn addBroadcastTitleChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundService,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IAppBroadcastBackgroundService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addBroadcastTitleChanged(handler);
    }
    pub fn removeBroadcastTitleChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IAppBroadcastBackgroundService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeBroadcastTitleChanged(token);
    }
    pub fn addBroadcastLanguageChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundService,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IAppBroadcastBackgroundService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addBroadcastLanguageChanged(handler);
    }
    pub fn removeBroadcastLanguageChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IAppBroadcastBackgroundService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeBroadcastLanguageChanged(token);
    }
    pub fn addBroadcastChannelChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundService,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IAppBroadcastBackgroundService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addBroadcastChannelChanged(handler);
    }
    pub fn removeBroadcastChannelChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IAppBroadcastBackgroundService2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundService2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeBroadcastChannelChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastBackgroundService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastBackgroundService.GUID;
    pub const IID: Guid = IAppBroadcastBackgroundService.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastBackgroundService.SIGNATURE);
};
pub const AppBroadcastBackgroundServiceSignInInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSignInState(self: *@This()) core.HResult!AppBroadcastSignInState {
        const this: *IAppBroadcastBackgroundServiceSignInInfo = @ptrCast(self);
        return try this.getSignInState();
    }
    pub fn putOAuthRequestUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IAppBroadcastBackgroundServiceSignInInfo = @ptrCast(self);
        return try this.putOAuthRequestUri(value);
    }
    pub fn getOAuthRequestUri(self: *@This()) core.HResult!*Uri {
        const this: *IAppBroadcastBackgroundServiceSignInInfo = @ptrCast(self);
        return try this.getOAuthRequestUri();
    }
    pub fn putOAuthCallbackUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IAppBroadcastBackgroundServiceSignInInfo = @ptrCast(self);
        return try this.putOAuthCallbackUri(value);
    }
    pub fn getOAuthCallbackUri(self: *@This()) core.HResult!*Uri {
        const this: *IAppBroadcastBackgroundServiceSignInInfo = @ptrCast(self);
        return try this.getOAuthCallbackUri();
    }
    pub fn getAuthenticationResult(self: *@This()) core.HResult!*WebAuthenticationResult {
        const this: *IAppBroadcastBackgroundServiceSignInInfo = @ptrCast(self);
        return try this.getAuthenticationResult();
    }
    pub fn putUserName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppBroadcastBackgroundServiceSignInInfo = @ptrCast(self);
        return try this.putUserName(value);
    }
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastBackgroundServiceSignInInfo = @ptrCast(self);
        return try this.getUserName();
    }
    pub fn addSignInStateChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundServiceSignInInfo,AppBroadcastSignInStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastBackgroundServiceSignInInfo = @ptrCast(self);
        return try this.addSignInStateChanged(handler);
    }
    pub fn removeSignInStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastBackgroundServiceSignInInfo = @ptrCast(self);
        return try this.removeSignInStateChanged(token);
    }
    pub fn addUserNameChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundServiceSignInInfo,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IAppBroadcastBackgroundServiceSignInInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundServiceSignInInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addUserNameChanged(handler);
    }
    pub fn removeUserNameChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IAppBroadcastBackgroundServiceSignInInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundServiceSignInInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeUserNameChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastBackgroundServiceSignInInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastBackgroundServiceSignInInfo.GUID;
    pub const IID: Guid = IAppBroadcastBackgroundServiceSignInInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastBackgroundServiceSignInInfo.SIGNATURE);
};
pub const AppBroadcastBackgroundServiceStreamInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStreamState(self: *@This()) core.HResult!AppBroadcastStreamState {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.getStreamState();
    }
    pub fn putDesiredVideoEncodingBitrate(self: *@This(), value: u64) core.HResult!void {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.putDesiredVideoEncodingBitrate(value);
    }
    pub fn getDesiredVideoEncodingBitrate(self: *@This()) core.HResult!u64 {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.getDesiredVideoEncodingBitrate();
    }
    pub fn putBandwidthTestBitrate(self: *@This(), value: u64) core.HResult!void {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.putBandwidthTestBitrate(value);
    }
    pub fn getBandwidthTestBitrate(self: *@This()) core.HResult!u64 {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.getBandwidthTestBitrate();
    }
    pub fn putAudioCodec(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.putAudioCodec(value);
    }
    pub fn getAudioCodec(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.getAudioCodec();
    }
    pub fn getBroadcastStreamReader(self: *@This()) core.HResult!*AppBroadcastStreamReader {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.getBroadcastStreamReader();
    }
    pub fn addStreamStateChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundServiceStreamInfo,AppBroadcastStreamStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.addStreamStateChanged(handler);
    }
    pub fn removeStreamStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.removeStreamStateChanged(token);
    }
    pub fn addVideoEncodingResolutionChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundServiceStreamInfo,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.addVideoEncodingResolutionChanged(handler);
    }
    pub fn removeVideoEncodingResolutionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.removeVideoEncodingResolutionChanged(token);
    }
    pub fn addVideoEncodingBitrateChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundServiceStreamInfo,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.addVideoEncodingBitrateChanged(handler);
    }
    pub fn removeVideoEncodingBitrateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastBackgroundServiceStreamInfo = @ptrCast(self);
        return try this.removeVideoEncodingBitrateChanged(token);
    }
    pub fn ReportProblemWithStream(self: *@This()) core.HResult!void {
        var this: ?*IAppBroadcastBackgroundServiceStreamInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBroadcastBackgroundServiceStreamInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReportProblemWithStream();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastBackgroundServiceStreamInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastBackgroundServiceStreamInfo.GUID;
    pub const IID: Guid = IAppBroadcastBackgroundServiceStreamInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastBackgroundServiceStreamInfo.SIGNATURE);
};
pub const AppBroadcastCameraCaptureState = enum(i32) {
    Stopped = 0,
    Started = 1,
    Failed = 2,
};
pub const AppBroadcastCameraCaptureStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!AppBroadcastCameraCaptureState {
        const this: *IAppBroadcastCameraCaptureStateChangedEventArgs = @ptrCast(self);
        return try this.getState();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastCameraCaptureStateChangedEventArgs = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastCameraCaptureStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastCameraCaptureStateChangedEventArgs.GUID;
    pub const IID: Guid = IAppBroadcastCameraCaptureStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastCameraCaptureStateChangedEventArgs.SIGNATURE);
};
pub const AppBroadcastCameraOverlayLocation = enum(i32) {
    TopLeft = 0,
    TopCenter = 1,
    TopRight = 2,
    MiddleLeft = 3,
    MiddleCenter = 4,
    MiddleRight = 5,
    BottomLeft = 6,
    BottomCenter = 7,
    BottomRight = 8,
};
pub const AppBroadcastCameraOverlaySize = enum(i32) {
    Small = 0,
    Medium = 1,
    Large = 2,
};
pub const AppBroadcastCaptureTargetType = enum(i32) {
    AppView = 0,
    EntireDisplay = 1,
};
pub const AppBroadcastExitBroadcastModeReason = enum(i32) {
    NormalExit = 0,
    UserCanceled = 1,
    AuthorizationFail = 2,
    ForegroundAppActivated = 3,
};
pub const AppBroadcastGlobalSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsBroadcastEnabled(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getIsBroadcastEnabled();
    }
    pub fn getIsDisabledByPolicy(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getIsDisabledByPolicy();
    }
    pub fn getIsGpuConstrained(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getIsGpuConstrained();
    }
    pub fn getHasHardwareEncoder(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getHasHardwareEncoder();
    }
    pub fn putIsAudioCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.putIsAudioCaptureEnabled(value);
    }
    pub fn getIsAudioCaptureEnabled(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getIsAudioCaptureEnabled();
    }
    pub fn putIsMicrophoneCaptureEnabledByDefault(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.putIsMicrophoneCaptureEnabledByDefault(value);
    }
    pub fn getIsMicrophoneCaptureEnabledByDefault(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getIsMicrophoneCaptureEnabledByDefault();
    }
    pub fn putIsEchoCancellationEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.putIsEchoCancellationEnabled(value);
    }
    pub fn getIsEchoCancellationEnabled(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getIsEchoCancellationEnabled();
    }
    pub fn putSystemAudioGain(self: *@This(), value: f64) core.HResult!void {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.putSystemAudioGain(value);
    }
    pub fn getSystemAudioGain(self: *@This()) core.HResult!f64 {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getSystemAudioGain();
    }
    pub fn putMicrophoneGain(self: *@This(), value: f64) core.HResult!void {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.putMicrophoneGain(value);
    }
    pub fn getMicrophoneGain(self: *@This()) core.HResult!f64 {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getMicrophoneGain();
    }
    pub fn putIsCameraCaptureEnabledByDefault(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.putIsCameraCaptureEnabledByDefault(value);
    }
    pub fn getIsCameraCaptureEnabledByDefault(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getIsCameraCaptureEnabledByDefault();
    }
    pub fn putSelectedCameraId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.putSelectedCameraId(value);
    }
    pub fn getSelectedCameraId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getSelectedCameraId();
    }
    pub fn putCameraOverlayLocation(self: *@This(), value: AppBroadcastCameraOverlayLocation) core.HResult!void {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.putCameraOverlayLocation(value);
    }
    pub fn getCameraOverlayLocation(self: *@This()) core.HResult!AppBroadcastCameraOverlayLocation {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getCameraOverlayLocation();
    }
    pub fn putCameraOverlaySize(self: *@This(), value: AppBroadcastCameraOverlaySize) core.HResult!void {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.putCameraOverlaySize(value);
    }
    pub fn getCameraOverlaySize(self: *@This()) core.HResult!AppBroadcastCameraOverlaySize {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getCameraOverlaySize();
    }
    pub fn putIsCursorImageCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.putIsCursorImageCaptureEnabled(value);
    }
    pub fn getIsCursorImageCaptureEnabled(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastGlobalSettings = @ptrCast(self);
        return try this.getIsCursorImageCaptureEnabled();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastGlobalSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastGlobalSettings.GUID;
    pub const IID: Guid = IAppBroadcastGlobalSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastGlobalSettings.SIGNATURE);
};
pub const AppBroadcastHeartbeatRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppBroadcastHeartbeatRequestedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastHeartbeatRequestedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastHeartbeatRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastHeartbeatRequestedEventArgs.GUID;
    pub const IID: Guid = IAppBroadcastHeartbeatRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastHeartbeatRequestedEventArgs.SIGNATURE);
};
pub const AppBroadcastManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetGlobalSettings() core.HResult!*AppBroadcastGlobalSettings {
        const factory = @This().IAppBroadcastManagerStaticsCache.get();
        return try factory.GetGlobalSettings();
    }
    pub fn ApplyGlobalSettings(value: *AppBroadcastGlobalSettings) core.HResult!void {
        const factory = @This().IAppBroadcastManagerStaticsCache.get();
        return try factory.ApplyGlobalSettings(value);
    }
    pub fn GetProviderSettings() core.HResult!*AppBroadcastProviderSettings {
        const factory = @This().IAppBroadcastManagerStaticsCache.get();
        return try factory.GetProviderSettings();
    }
    pub fn ApplyProviderSettings(value: *AppBroadcastProviderSettings) core.HResult!void {
        const factory = @This().IAppBroadcastManagerStaticsCache.get();
        return try factory.ApplyProviderSettings(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IAppBroadcastManagerStaticsCache: FactoryCache(IAppBroadcastManagerStatics, RUNTIME_NAME) = .{};
};
pub const AppBroadcastMicrophoneCaptureState = enum(i32) {
    Stopped = 0,
    Started = 1,
    Failed = 2,
};
pub const AppBroadcastMicrophoneCaptureStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getState(self: *@This()) core.HResult!AppBroadcastMicrophoneCaptureState {
        const this: *IAppBroadcastMicrophoneCaptureStateChangedEventArgs = @ptrCast(self);
        return try this.getState();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastMicrophoneCaptureStateChangedEventArgs = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastMicrophoneCaptureStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastMicrophoneCaptureStateChangedEventArgs.GUID;
    pub const IID: Guid = IAppBroadcastMicrophoneCaptureStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastMicrophoneCaptureStateChangedEventArgs.SIGNATURE);
};
pub const AppBroadcastPlugIn = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastPlugIn = @ptrCast(self);
        return try this.getAppId();
    }
    pub fn getProviderSettings(self: *@This()) core.HResult!*AppBroadcastProviderSettings {
        const this: *IAppBroadcastPlugIn = @ptrCast(self);
        return try this.getProviderSettings();
    }
    pub fn getLogo(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        const this: *IAppBroadcastPlugIn = @ptrCast(self);
        return try this.getLogo();
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastPlugIn = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastPlugIn";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastPlugIn.GUID;
    pub const IID: Guid = IAppBroadcastPlugIn.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastPlugIn.SIGNATURE);
};
pub const AppBroadcastPlugInManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsBroadcastProviderAvailable(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastPlugInManager = @ptrCast(self);
        return try this.getIsBroadcastProviderAvailable();
    }
    pub fn getPlugInList(self: *@This()) core.HResult!*IVectorView(AppBroadcastPlugIn) {
        const this: *IAppBroadcastPlugInManager = @ptrCast(self);
        return try this.getPlugInList();
    }
    pub fn getDefaultPlugIn(self: *@This()) core.HResult!*AppBroadcastPlugIn {
        const this: *IAppBroadcastPlugInManager = @ptrCast(self);
        return try this.getDefaultPlugIn();
    }
    pub fn putDefaultPlugIn(self: *@This(), value: *AppBroadcastPlugIn) core.HResult!void {
        const this: *IAppBroadcastPlugInManager = @ptrCast(self);
        return try this.putDefaultPlugIn(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*AppBroadcastPlugInManager {
        const factory = @This().IAppBroadcastPlugInManagerStaticsCache.get();
        return try factory.GetDefault();
    }
    pub fn GetForUser(user: *User) core.HResult!*AppBroadcastPlugInManager {
        const factory = @This().IAppBroadcastPlugInManagerStaticsCache.get();
        return try factory.GetForUser(user);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastPlugInManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastPlugInManager.GUID;
    pub const IID: Guid = IAppBroadcastPlugInManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastPlugInManager.SIGNATURE);
    var _IAppBroadcastPlugInManagerStaticsCache: FactoryCache(IAppBroadcastPlugInManagerStatics, RUNTIME_NAME) = .{};
};
pub const AppBroadcastPlugInState = enum(i32) {
    Unknown = 0,
    Initialized = 1,
    MicrosoftSignInRequired = 2,
    OAuthSignInRequired = 3,
    ProviderSignInRequired = 4,
    InBandwidthTest = 5,
    ReadyToBroadcast = 6,
};
pub const AppBroadcastPlugInStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPlugInState(self: *@This()) core.HResult!AppBroadcastPlugInState {
        const this: *IAppBroadcastPlugInStateChangedEventArgs = @ptrCast(self);
        return try this.getPlugInState();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastPlugInStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastPlugInStateChangedEventArgs.GUID;
    pub const IID: Guid = IAppBroadcastPlugInStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastPlugInStateChangedEventArgs.SIGNATURE);
};
pub const AppBroadcastPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn StopPreview(self: *@This()) core.HResult!void {
        const this: *IAppBroadcastPreview = @ptrCast(self);
        return try this.StopPreview();
    }
    pub fn getPreviewState(self: *@This()) core.HResult!AppBroadcastPreviewState {
        const this: *IAppBroadcastPreview = @ptrCast(self);
        return try this.getPreviewState();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IAppBroadcastPreview = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub fn addPreviewStateChanged(self: *@This(), value: *TypedEventHandler(AppBroadcastPreview,AppBroadcastPreviewStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastPreview = @ptrCast(self);
        return try this.addPreviewStateChanged(value);
    }
    pub fn removePreviewStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastPreview = @ptrCast(self);
        return try this.removePreviewStateChanged(token);
    }
    pub fn getPreviewStreamReader(self: *@This()) core.HResult!*AppBroadcastPreviewStreamReader {
        const this: *IAppBroadcastPreview = @ptrCast(self);
        return try this.getPreviewStreamReader();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastPreview.GUID;
    pub const IID: Guid = IAppBroadcastPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastPreview.SIGNATURE);
};
pub const AppBroadcastPreviewState = enum(i32) {
    Started = 0,
    Stopped = 1,
    Failed = 2,
};
pub const AppBroadcastPreviewStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPreviewState(self: *@This()) core.HResult!AppBroadcastPreviewState {
        const this: *IAppBroadcastPreviewStateChangedEventArgs = @ptrCast(self);
        return try this.getPreviewState();
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastPreviewStateChangedEventArgs = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastPreviewStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastPreviewStateChangedEventArgs.GUID;
    pub const IID: Guid = IAppBroadcastPreviewStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastPreviewStateChangedEventArgs.SIGNATURE);
};
pub const AppBroadcastPreviewStreamReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVideoWidth(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastPreviewStreamReader = @ptrCast(self);
        return try this.getVideoWidth();
    }
    pub fn getVideoHeight(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastPreviewStreamReader = @ptrCast(self);
        return try this.getVideoHeight();
    }
    pub fn getVideoStride(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastPreviewStreamReader = @ptrCast(self);
        return try this.getVideoStride();
    }
    pub fn getVideoBitmapPixelFormat(self: *@This()) core.HResult!BitmapPixelFormat {
        const this: *IAppBroadcastPreviewStreamReader = @ptrCast(self);
        return try this.getVideoBitmapPixelFormat();
    }
    pub fn getVideoBitmapAlphaMode(self: *@This()) core.HResult!BitmapAlphaMode {
        const this: *IAppBroadcastPreviewStreamReader = @ptrCast(self);
        return try this.getVideoBitmapAlphaMode();
    }
    pub fn TryGetNextVideoFrame(self: *@This()) core.HResult!*AppBroadcastPreviewStreamVideoFrame {
        const this: *IAppBroadcastPreviewStreamReader = @ptrCast(self);
        return try this.TryGetNextVideoFrame();
    }
    pub fn addVideoFrameArrived(self: *@This(), value: *TypedEventHandler(AppBroadcastPreviewStreamReader,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastPreviewStreamReader = @ptrCast(self);
        return try this.addVideoFrameArrived(value);
    }
    pub fn removeVideoFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastPreviewStreamReader = @ptrCast(self);
        return try this.removeVideoFrameArrived(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastPreviewStreamReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastPreviewStreamReader.GUID;
    pub const IID: Guid = IAppBroadcastPreviewStreamReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastPreviewStreamReader.SIGNATURE);
};
pub const AppBroadcastPreviewStreamVideoFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVideoHeader(self: *@This()) core.HResult!*AppBroadcastPreviewStreamVideoHeader {
        const this: *IAppBroadcastPreviewStreamVideoFrame = @ptrCast(self);
        return try this.getVideoHeader();
    }
    pub fn getVideoBuffer(self: *@This()) core.HResult!*IBuffer {
        const this: *IAppBroadcastPreviewStreamVideoFrame = @ptrCast(self);
        return try this.getVideoBuffer();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastPreviewStreamVideoFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastPreviewStreamVideoFrame.GUID;
    pub const IID: Guid = IAppBroadcastPreviewStreamVideoFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastPreviewStreamVideoFrame.SIGNATURE);
};
pub const AppBroadcastPreviewStreamVideoHeader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAbsoluteTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IAppBroadcastPreviewStreamVideoHeader = @ptrCast(self);
        return try this.getAbsoluteTimestamp();
    }
    pub fn getRelativeTimestamp(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppBroadcastPreviewStreamVideoHeader = @ptrCast(self);
        return try this.getRelativeTimestamp();
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppBroadcastPreviewStreamVideoHeader = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getFrameId(self: *@This()) core.HResult!u64 {
        const this: *IAppBroadcastPreviewStreamVideoHeader = @ptrCast(self);
        return try this.getFrameId();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastPreviewStreamVideoHeader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastPreviewStreamVideoHeader.GUID;
    pub const IID: Guid = IAppBroadcastPreviewStreamVideoHeader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastPreviewStreamVideoHeader.SIGNATURE);
};
pub const AppBroadcastProviderSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putDefaultBroadcastTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.putDefaultBroadcastTitle(value);
    }
    pub fn getDefaultBroadcastTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.getDefaultBroadcastTitle();
    }
    pub fn putAudioEncodingBitrate(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.putAudioEncodingBitrate(value);
    }
    pub fn getAudioEncodingBitrate(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.getAudioEncodingBitrate();
    }
    pub fn putCustomVideoEncodingBitrate(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.putCustomVideoEncodingBitrate(value);
    }
    pub fn getCustomVideoEncodingBitrate(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.getCustomVideoEncodingBitrate();
    }
    pub fn putCustomVideoEncodingHeight(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.putCustomVideoEncodingHeight(value);
    }
    pub fn getCustomVideoEncodingHeight(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.getCustomVideoEncodingHeight();
    }
    pub fn putCustomVideoEncodingWidth(self: *@This(), value: u32) core.HResult!void {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.putCustomVideoEncodingWidth(value);
    }
    pub fn getCustomVideoEncodingWidth(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.getCustomVideoEncodingWidth();
    }
    pub fn putVideoEncodingBitrateMode(self: *@This(), value: AppBroadcastVideoEncodingBitrateMode) core.HResult!void {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.putVideoEncodingBitrateMode(value);
    }
    pub fn getVideoEncodingBitrateMode(self: *@This()) core.HResult!AppBroadcastVideoEncodingBitrateMode {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.getVideoEncodingBitrateMode();
    }
    pub fn putVideoEncodingResolutionMode(self: *@This(), value: AppBroadcastVideoEncodingResolutionMode) core.HResult!void {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.putVideoEncodingResolutionMode(value);
    }
    pub fn getVideoEncodingResolutionMode(self: *@This()) core.HResult!AppBroadcastVideoEncodingResolutionMode {
        const this: *IAppBroadcastProviderSettings = @ptrCast(self);
        return try this.getVideoEncodingResolutionMode();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastProviderSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastProviderSettings.GUID;
    pub const IID: Guid = IAppBroadcastProviderSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastProviderSettings.SIGNATURE);
};
pub const AppBroadcastServices = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCaptureTargetType(self: *@This()) core.HResult!AppBroadcastCaptureTargetType {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.getCaptureTargetType();
    }
    pub fn putCaptureTargetType(self: *@This(), value: AppBroadcastCaptureTargetType) core.HResult!void {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.putCaptureTargetType(value);
    }
    pub fn getBroadcastTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.getBroadcastTitle();
    }
    pub fn putBroadcastTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.putBroadcastTitle(value);
    }
    pub fn getBroadcastLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.getBroadcastLanguage();
    }
    pub fn putBroadcastLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.putBroadcastLanguage(value);
    }
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.getUserName();
    }
    pub fn getCanCapture(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.getCanCapture();
    }
    pub fn EnterBroadcastModeAsync(self: *@This(), plugIn: *AppBroadcastPlugIn) core.HResult!*IAsyncOperation(u32) {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.EnterBroadcastModeAsync(plugIn);
    }
    pub fn ExitBroadcastMode(self: *@This(), reason: AppBroadcastExitBroadcastModeReason) core.HResult!void {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.ExitBroadcastMode(reason);
    }
    pub fn StartBroadcast(self: *@This()) core.HResult!void {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.StartBroadcast();
    }
    pub fn PauseBroadcast(self: *@This()) core.HResult!void {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.PauseBroadcast();
    }
    pub fn ResumeBroadcast(self: *@This()) core.HResult!void {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.ResumeBroadcast();
    }
    pub fn StartPreview(self: *@This(), desiredSize: Size) core.HResult!*AppBroadcastPreview {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.StartPreview(desiredSize);
    }
    pub fn getState(self: *@This()) core.HResult!*AppBroadcastState {
        const this: *IAppBroadcastServices = @ptrCast(self);
        return try this.getState();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastServices";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastServices.GUID;
    pub const IID: Guid = IAppBroadcastServices.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastServices.SIGNATURE);
};
pub const AppBroadcastSignInResult = enum(i32) {
    Success = 0,
    AuthenticationFailed = 1,
    Unauthorized = 2,
    ServiceUnavailable = 3,
    Unknown = 4,
};
pub const AppBroadcastSignInState = enum(i32) {
    NotSignedIn = 0,
    MicrosoftSignInInProgress = 1,
    MicrosoftSignInComplete = 2,
    OAuthSignInInProgress = 3,
    OAuthSignInComplete = 4,
};
pub const AppBroadcastSignInStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSignInState(self: *@This()) core.HResult!AppBroadcastSignInState {
        const this: *IAppBroadcastSignInStateChangedEventArgs = @ptrCast(self);
        return try this.getSignInState();
    }
    pub fn getResult(self: *@This()) core.HResult!AppBroadcastSignInResult {
        const this: *IAppBroadcastSignInStateChangedEventArgs = @ptrCast(self);
        return try this.getResult();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastSignInStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastSignInStateChangedEventArgs.GUID;
    pub const IID: Guid = IAppBroadcastSignInStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastSignInStateChangedEventArgs.SIGNATURE);
};
pub const AppBroadcastState = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsCaptureTargetRunning(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getIsCaptureTargetRunning();
    }
    pub fn getViewerCount(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getViewerCount();
    }
    pub fn getShouldCaptureMicrophone(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getShouldCaptureMicrophone();
    }
    pub fn putShouldCaptureMicrophone(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.putShouldCaptureMicrophone(value);
    }
    pub fn RestartMicrophoneCapture(self: *@This()) core.HResult!void {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.RestartMicrophoneCapture();
    }
    pub fn getShouldCaptureCamera(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getShouldCaptureCamera();
    }
    pub fn putShouldCaptureCamera(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.putShouldCaptureCamera(value);
    }
    pub fn RestartCameraCapture(self: *@This()) core.HResult!void {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.RestartCameraCapture();
    }
    pub fn getEncodedVideoSize(self: *@This()) core.HResult!Size {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getEncodedVideoSize();
    }
    pub fn getMicrophoneCaptureState(self: *@This()) core.HResult!AppBroadcastMicrophoneCaptureState {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getMicrophoneCaptureState();
    }
    pub fn getMicrophoneCaptureError(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getMicrophoneCaptureError();
    }
    pub fn getCameraCaptureState(self: *@This()) core.HResult!AppBroadcastCameraCaptureState {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getCameraCaptureState();
    }
    pub fn getCameraCaptureError(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getCameraCaptureError();
    }
    pub fn getStreamState(self: *@This()) core.HResult!AppBroadcastStreamState {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getStreamState();
    }
    pub fn getPlugInState(self: *@This()) core.HResult!AppBroadcastPlugInState {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getPlugInState();
    }
    pub fn getOAuthRequestUri(self: *@This()) core.HResult!*Uri {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getOAuthRequestUri();
    }
    pub fn getOAuthCallbackUri(self: *@This()) core.HResult!*Uri {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getOAuthCallbackUri();
    }
    pub fn getAuthenticationResult(self: *@This()) core.HResult!*WebAuthenticationResult {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getAuthenticationResult();
    }
    pub fn putAuthenticationResult(self: *@This(), value: *WebAuthenticationResult) core.HResult!void {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.putAuthenticationResult(value);
    }
    pub fn putSignInState(self: *@This(), value: AppBroadcastSignInState) core.HResult!void {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.putSignInState(value);
    }
    pub fn getSignInState(self: *@This()) core.HResult!AppBroadcastSignInState {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getSignInState();
    }
    pub fn getTerminationReason(self: *@This()) core.HResult!AppBroadcastTerminationReason {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getTerminationReason();
    }
    pub fn getTerminationReasonPlugInSpecific(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.getTerminationReasonPlugInSpecific();
    }
    pub fn addViewerCountChanged(self: *@This(), value: *TypedEventHandler(AppBroadcastState,AppBroadcastViewerCountChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.addViewerCountChanged(value);
    }
    pub fn removeViewerCountChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.removeViewerCountChanged(token);
    }
    pub fn addMicrophoneCaptureStateChanged(self: *@This(), value: *TypedEventHandler(AppBroadcastState,AppBroadcastMicrophoneCaptureStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.addMicrophoneCaptureStateChanged(value);
    }
    pub fn removeMicrophoneCaptureStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.removeMicrophoneCaptureStateChanged(token);
    }
    pub fn addCameraCaptureStateChanged(self: *@This(), value: *TypedEventHandler(AppBroadcastState,AppBroadcastCameraCaptureStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.addCameraCaptureStateChanged(value);
    }
    pub fn removeCameraCaptureStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.removeCameraCaptureStateChanged(token);
    }
    pub fn addPlugInStateChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastState,AppBroadcastPlugInStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.addPlugInStateChanged(handler);
    }
    pub fn removePlugInStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.removePlugInStateChanged(token);
    }
    pub fn addStreamStateChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastState,AppBroadcastStreamStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.addStreamStateChanged(handler);
    }
    pub fn removeStreamStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.removeStreamStateChanged(token);
    }
    pub fn addCaptureTargetClosed(self: *@This(), value: *TypedEventHandler(AppBroadcastState,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.addCaptureTargetClosed(value);
    }
    pub fn removeCaptureTargetClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastState = @ptrCast(self);
        return try this.removeCaptureTargetClosed(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastState.GUID;
    pub const IID: Guid = IAppBroadcastState.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastState.SIGNATURE);
};
pub const AppBroadcastStreamAudioFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAudioHeader(self: *@This()) core.HResult!*AppBroadcastStreamAudioHeader {
        const this: *IAppBroadcastStreamAudioFrame = @ptrCast(self);
        return try this.getAudioHeader();
    }
    pub fn getAudioBuffer(self: *@This()) core.HResult!*IBuffer {
        const this: *IAppBroadcastStreamAudioFrame = @ptrCast(self);
        return try this.getAudioBuffer();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastStreamAudioFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastStreamAudioFrame.GUID;
    pub const IID: Guid = IAppBroadcastStreamAudioFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastStreamAudioFrame.SIGNATURE);
};
pub const AppBroadcastStreamAudioHeader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAbsoluteTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IAppBroadcastStreamAudioHeader = @ptrCast(self);
        return try this.getAbsoluteTimestamp();
    }
    pub fn getRelativeTimestamp(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppBroadcastStreamAudioHeader = @ptrCast(self);
        return try this.getRelativeTimestamp();
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppBroadcastStreamAudioHeader = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getHasDiscontinuity(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastStreamAudioHeader = @ptrCast(self);
        return try this.getHasDiscontinuity();
    }
    pub fn getFrameId(self: *@This()) core.HResult!u64 {
        const this: *IAppBroadcastStreamAudioHeader = @ptrCast(self);
        return try this.getFrameId();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastStreamAudioHeader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastStreamAudioHeader.GUID;
    pub const IID: Guid = IAppBroadcastStreamAudioHeader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastStreamAudioHeader.SIGNATURE);
};
pub const AppBroadcastStreamReader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAudioChannels(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastStreamReader = @ptrCast(self);
        return try this.getAudioChannels();
    }
    pub fn getAudioSampleRate(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastStreamReader = @ptrCast(self);
        return try this.getAudioSampleRate();
    }
    pub fn getAudioAacSequence(self: *@This()) core.HResult!*IBuffer {
        const this: *IAppBroadcastStreamReader = @ptrCast(self);
        return try this.getAudioAacSequence();
    }
    pub fn getAudioBitrate(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastStreamReader = @ptrCast(self);
        return try this.getAudioBitrate();
    }
    pub fn TryGetNextAudioFrame(self: *@This()) core.HResult!*AppBroadcastStreamAudioFrame {
        const this: *IAppBroadcastStreamReader = @ptrCast(self);
        return try this.TryGetNextAudioFrame();
    }
    pub fn getVideoWidth(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastStreamReader = @ptrCast(self);
        return try this.getVideoWidth();
    }
    pub fn getVideoHeight(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastStreamReader = @ptrCast(self);
        return try this.getVideoHeight();
    }
    pub fn getVideoBitrate(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastStreamReader = @ptrCast(self);
        return try this.getVideoBitrate();
    }
    pub fn TryGetNextVideoFrame(self: *@This()) core.HResult!*AppBroadcastStreamVideoFrame {
        const this: *IAppBroadcastStreamReader = @ptrCast(self);
        return try this.TryGetNextVideoFrame();
    }
    pub fn addAudioFrameArrived(self: *@This(), value: *TypedEventHandler(AppBroadcastStreamReader,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastStreamReader = @ptrCast(self);
        return try this.addAudioFrameArrived(value);
    }
    pub fn removeAudioFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastStreamReader = @ptrCast(self);
        return try this.removeAudioFrameArrived(token);
    }
    pub fn addVideoFrameArrived(self: *@This(), value: *TypedEventHandler(AppBroadcastStreamReader,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAppBroadcastStreamReader = @ptrCast(self);
        return try this.addVideoFrameArrived(value);
    }
    pub fn removeVideoFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppBroadcastStreamReader = @ptrCast(self);
        return try this.removeVideoFrameArrived(token);
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastStreamReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastStreamReader.GUID;
    pub const IID: Guid = IAppBroadcastStreamReader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastStreamReader.SIGNATURE);
};
pub const AppBroadcastStreamState = enum(i32) {
    Initializing = 0,
    StreamReady = 1,
    Started = 2,
    Paused = 3,
    Terminated = 4,
};
pub const AppBroadcastStreamStateChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStreamState(self: *@This()) core.HResult!AppBroadcastStreamState {
        const this: *IAppBroadcastStreamStateChangedEventArgs = @ptrCast(self);
        return try this.getStreamState();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastStreamStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastStreamStateChangedEventArgs.GUID;
    pub const IID: Guid = IAppBroadcastStreamStateChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastStreamStateChangedEventArgs.SIGNATURE);
};
pub const AppBroadcastStreamVideoFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getVideoHeader(self: *@This()) core.HResult!*AppBroadcastStreamVideoHeader {
        const this: *IAppBroadcastStreamVideoFrame = @ptrCast(self);
        return try this.getVideoHeader();
    }
    pub fn getVideoBuffer(self: *@This()) core.HResult!*IBuffer {
        const this: *IAppBroadcastStreamVideoFrame = @ptrCast(self);
        return try this.getVideoBuffer();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastStreamVideoFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastStreamVideoFrame.GUID;
    pub const IID: Guid = IAppBroadcastStreamVideoFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastStreamVideoFrame.SIGNATURE);
};
pub const AppBroadcastStreamVideoHeader = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAbsoluteTimestamp(self: *@This()) core.HResult!DateTime {
        const this: *IAppBroadcastStreamVideoHeader = @ptrCast(self);
        return try this.getAbsoluteTimestamp();
    }
    pub fn getRelativeTimestamp(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppBroadcastStreamVideoHeader = @ptrCast(self);
        return try this.getRelativeTimestamp();
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppBroadcastStreamVideoHeader = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getIsKeyFrame(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastStreamVideoHeader = @ptrCast(self);
        return try this.getIsKeyFrame();
    }
    pub fn getHasDiscontinuity(self: *@This()) core.HResult!bool {
        const this: *IAppBroadcastStreamVideoHeader = @ptrCast(self);
        return try this.getHasDiscontinuity();
    }
    pub fn getFrameId(self: *@This()) core.HResult!u64 {
        const this: *IAppBroadcastStreamVideoHeader = @ptrCast(self);
        return try this.getFrameId();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastStreamVideoHeader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastStreamVideoHeader.GUID;
    pub const IID: Guid = IAppBroadcastStreamVideoHeader.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastStreamVideoHeader.SIGNATURE);
};
pub const AppBroadcastTerminationReason = enum(i32) {
    NormalTermination = 0,
    LostConnectionToService = 1,
    NoNetworkConnectivity = 2,
    ServiceAbort = 3,
    ServiceError = 4,
    ServiceUnavailable = 5,
    InternalError = 6,
    UnsupportedFormat = 7,
    BackgroundTaskTerminated = 8,
    BackgroundTaskUnresponsive = 9,
};
pub const AppBroadcastTriggerDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBackgroundService(self: *@This()) core.HResult!*AppBroadcastBackgroundService {
        const this: *IAppBroadcastTriggerDetails = @ptrCast(self);
        return try this.getBackgroundService();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastTriggerDetails.GUID;
    pub const IID: Guid = IAppBroadcastTriggerDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastTriggerDetails.SIGNATURE);
};
pub const AppBroadcastVideoEncodingBitrateMode = enum(i32) {
    Custom = 0,
    Auto = 1,
};
pub const AppBroadcastVideoEncodingResolutionMode = enum(i32) {
    Custom = 0,
    Auto = 1,
};
pub const AppBroadcastViewerCountChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getViewerCount(self: *@This()) core.HResult!u32 {
        const this: *IAppBroadcastViewerCountChangedEventArgs = @ptrCast(self);
        return try this.getViewerCount();
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.AppBroadcastViewerCountChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBroadcastViewerCountChangedEventArgs.GUID;
    pub const IID: Guid = IAppBroadcastViewerCountChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBroadcastViewerCountChangedEventArgs.SIGNATURE);
};
pub const ForegroundActivationArgument = enum(i32) {
    SignInRequired = 0,
    MoreSettings = 1,
};
pub const GameBarServicesDisplayMode = enum(i32) {
    Windowed = 0,
    FullScreenExclusive = 1,
};
pub const IAppBroadcastBackgroundService = extern struct {
    vtable: *const VTable,
    pub fn putPlugInState(self: *@This(), value: AppBroadcastPlugInState) core.HResult!void {
        const _c = self.vtable.put_PlugInState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPlugInState(self: *@This()) core.HResult!AppBroadcastPlugInState {
        var _r: AppBroadcastPlugInState = undefined;
        const _c = self.vtable.get_PlugInState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSignInInfo(self: *@This(), value: *AppBroadcastBackgroundServiceSignInInfo) core.HResult!void {
        const _c = self.vtable.put_SignInInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSignInInfo(self: *@This()) core.HResult!*AppBroadcastBackgroundServiceSignInInfo {
        var _r: *AppBroadcastBackgroundServiceSignInInfo = undefined;
        const _c = self.vtable.get_SignInInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStreamInfo(self: *@This(), value: *AppBroadcastBackgroundServiceStreamInfo) core.HResult!void {
        const _c = self.vtable.put_StreamInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStreamInfo(self: *@This()) core.HResult!*AppBroadcastBackgroundServiceStreamInfo {
        var _r: *AppBroadcastBackgroundServiceStreamInfo = undefined;
        const _c = self.vtable.get_StreamInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBroadcastTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BroadcastTitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putViewerCount(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_ViewerCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getViewerCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ViewerCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TerminateBroadcast(self: *@This(), reason: AppBroadcastTerminationReason, providerSpecificReason: u32) core.HResult!void {
        const _c = self.vtable.TerminateBroadcast(@ptrCast(self), reason, providerSpecificReason);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHeartbeatRequested(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundService,AppBroadcastHeartbeatRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HeartbeatRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHeartbeatRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HeartbeatRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTitleId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TitleId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastBackgroundService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bad1e72a-fa94-46f9-95fc-d71511cda70b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_PlugInState: *const fn(self: *anyopaque, value: AppBroadcastPlugInState) callconv(.winapi) HRESULT,
        get_PlugInState: *const fn(self: *anyopaque, _r: *AppBroadcastPlugInState) callconv(.winapi) HRESULT,
        put_SignInInfo: *const fn(self: *anyopaque, value: *AppBroadcastBackgroundServiceSignInInfo) callconv(.winapi) HRESULT,
        get_SignInInfo: *const fn(self: *anyopaque, _r: **AppBroadcastBackgroundServiceSignInInfo) callconv(.winapi) HRESULT,
        put_StreamInfo: *const fn(self: *anyopaque, value: *AppBroadcastBackgroundServiceStreamInfo) callconv(.winapi) HRESULT,
        get_StreamInfo: *const fn(self: *anyopaque, _r: **AppBroadcastBackgroundServiceStreamInfo) callconv(.winapi) HRESULT,
        get_AppId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BroadcastTitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ViewerCount: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_ViewerCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        TerminateBroadcast: *const fn(self: *anyopaque, reason: AppBroadcastTerminationReason, providerSpecificReason: u32) callconv(.winapi) HRESULT,
        add_HeartbeatRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppBroadcastBackgroundService,AppBroadcastHeartbeatRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HeartbeatRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_TitleId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastBackgroundService2 = extern struct {
    vtable: *const VTable,
    pub fn putBroadcastTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_BroadcastTitle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBroadcastLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BroadcastLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBroadcastLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_BroadcastLanguage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBroadcastChannel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BroadcastChannel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBroadcastChannel(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_BroadcastChannel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBroadcastTitleChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundService,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BroadcastTitleChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBroadcastTitleChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BroadcastTitleChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBroadcastLanguageChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundService,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BroadcastLanguageChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBroadcastLanguageChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BroadcastLanguageChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addBroadcastChannelChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundService,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BroadcastChannelChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBroadcastChannelChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BroadcastChannelChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastBackgroundService2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc8ccbbf-5549-4b87-959f-23ca401fd473";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_BroadcastTitle: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_BroadcastLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_BroadcastLanguage: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_BroadcastChannel: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_BroadcastChannel: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        add_BroadcastTitleChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppBroadcastBackgroundService,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BroadcastTitleChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BroadcastLanguageChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppBroadcastBackgroundService,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BroadcastLanguageChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_BroadcastChannelChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppBroadcastBackgroundService,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BroadcastChannelChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastBackgroundServiceSignInInfo = extern struct {
    vtable: *const VTable,
    pub fn getSignInState(self: *@This()) core.HResult!AppBroadcastSignInState {
        var _r: AppBroadcastSignInState = undefined;
        const _c = self.vtable.get_SignInState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOAuthRequestUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_OAuthRequestUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOAuthRequestUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_OAuthRequestUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOAuthCallbackUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_OAuthCallbackUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOAuthCallbackUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_OAuthCallbackUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthenticationResult(self: *@This()) core.HResult!*WebAuthenticationResult {
        var _r: *WebAuthenticationResult = undefined;
        const _c = self.vtable.get_AuthenticationResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUserName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_UserName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSignInStateChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundServiceSignInInfo,AppBroadcastSignInStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SignInStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSignInStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SignInStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastBackgroundServiceSignInInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e735275-88c8-4eca-89ba-4825985db880";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SignInState: *const fn(self: *anyopaque, _r: *AppBroadcastSignInState) callconv(.winapi) HRESULT,
        put_OAuthRequestUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_OAuthRequestUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_OAuthCallbackUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_OAuthCallbackUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_AuthenticationResult: *const fn(self: *anyopaque, _r: **WebAuthenticationResult) callconv(.winapi) HRESULT,
        put_UserName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_UserName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        add_SignInStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppBroadcastBackgroundServiceSignInInfo,AppBroadcastSignInStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SignInStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastBackgroundServiceSignInInfo2 = extern struct {
    vtable: *const VTable,
    pub fn addUserNameChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundServiceSignInInfo,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UserNameChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUserNameChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UserNameChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastBackgroundServiceSignInInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9104285c-62cf-4a3c-a7ee-aeb507404645";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_UserNameChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppBroadcastBackgroundServiceSignInInfo,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UserNameChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastBackgroundServiceStreamInfo = extern struct {
    vtable: *const VTable,
    pub fn getStreamState(self: *@This()) core.HResult!AppBroadcastStreamState {
        var _r: AppBroadcastStreamState = undefined;
        const _c = self.vtable.get_StreamState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredVideoEncodingBitrate(self: *@This(), value: u64) core.HResult!void {
        const _c = self.vtable.put_DesiredVideoEncodingBitrate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredVideoEncodingBitrate(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_DesiredVideoEncodingBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBandwidthTestBitrate(self: *@This(), value: u64) core.HResult!void {
        const _c = self.vtable.put_BandwidthTestBitrate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBandwidthTestBitrate(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_BandwidthTestBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioCodec(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AudioCodec(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioCodec(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AudioCodec(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBroadcastStreamReader(self: *@This()) core.HResult!*AppBroadcastStreamReader {
        var _r: *AppBroadcastStreamReader = undefined;
        const _c = self.vtable.get_BroadcastStreamReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStreamStateChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundServiceStreamInfo,AppBroadcastStreamStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StreamStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStreamStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StreamStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVideoEncodingResolutionChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundServiceStreamInfo,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VideoEncodingResolutionChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVideoEncodingResolutionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VideoEncodingResolutionChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVideoEncodingBitrateChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastBackgroundServiceStreamInfo,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VideoEncodingBitrateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVideoEncodingBitrateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VideoEncodingBitrateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastBackgroundServiceStreamInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "31dc02bc-990a-4904-aa96-fe364381f136";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StreamState: *const fn(self: *anyopaque, _r: *AppBroadcastStreamState) callconv(.winapi) HRESULT,
        put_DesiredVideoEncodingBitrate: *const fn(self: *anyopaque, value: u64) callconv(.winapi) HRESULT,
        get_DesiredVideoEncodingBitrate: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        put_BandwidthTestBitrate: *const fn(self: *anyopaque, value: u64) callconv(.winapi) HRESULT,
        get_BandwidthTestBitrate: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        put_AudioCodec: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_AudioCodec: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_BroadcastStreamReader: *const fn(self: *anyopaque, _r: **AppBroadcastStreamReader) callconv(.winapi) HRESULT,
        add_StreamStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppBroadcastBackgroundServiceStreamInfo,AppBroadcastStreamStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StreamStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_VideoEncodingResolutionChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppBroadcastBackgroundServiceStreamInfo,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VideoEncodingResolutionChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_VideoEncodingBitrateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppBroadcastBackgroundServiceStreamInfo,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VideoEncodingBitrateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastBackgroundServiceStreamInfo2 = extern struct {
    vtable: *const VTable,
    pub fn ReportProblemWithStream(self: *@This()) core.HResult!void {
        const _c = self.vtable.ReportProblemWithStream(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastBackgroundServiceStreamInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd1e9f6d-94dc-4fce-9541-a9f129596334";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReportProblemWithStream: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastCameraCaptureStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!AppBroadcastCameraCaptureState {
        var _r: AppBroadcastCameraCaptureState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastCameraCaptureStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e334cd0-b882-4b88-8692-05999aceb70f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *AppBroadcastCameraCaptureState) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastGlobalSettings = extern struct {
    vtable: *const VTable,
    pub fn getIsBroadcastEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBroadcastEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDisabledByPolicy(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisabledByPolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsGpuConstrained(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGpuConstrained(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasHardwareEncoder(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasHardwareEncoder(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAudioCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAudioCaptureEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAudioCaptureEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAudioCaptureEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsMicrophoneCaptureEnabledByDefault(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsMicrophoneCaptureEnabledByDefault(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsMicrophoneCaptureEnabledByDefault(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMicrophoneCaptureEnabledByDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsEchoCancellationEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEchoCancellationEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsEchoCancellationEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEchoCancellationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSystemAudioGain(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_SystemAudioGain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSystemAudioGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SystemAudioGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMicrophoneGain(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_MicrophoneGain(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMicrophoneGain(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MicrophoneGain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCameraCaptureEnabledByDefault(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCameraCaptureEnabledByDefault(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCameraCaptureEnabledByDefault(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCameraCaptureEnabledByDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedCameraId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SelectedCameraId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedCameraId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SelectedCameraId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCameraOverlayLocation(self: *@This(), value: AppBroadcastCameraOverlayLocation) core.HResult!void {
        const _c = self.vtable.put_CameraOverlayLocation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCameraOverlayLocation(self: *@This()) core.HResult!AppBroadcastCameraOverlayLocation {
        var _r: AppBroadcastCameraOverlayLocation = undefined;
        const _c = self.vtable.get_CameraOverlayLocation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCameraOverlaySize(self: *@This(), value: AppBroadcastCameraOverlaySize) core.HResult!void {
        const _c = self.vtable.put_CameraOverlaySize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCameraOverlaySize(self: *@This()) core.HResult!AppBroadcastCameraOverlaySize {
        var _r: AppBroadcastCameraOverlaySize = undefined;
        const _c = self.vtable.get_CameraOverlaySize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCursorImageCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCursorImageCaptureEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCursorImageCaptureEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCursorImageCaptureEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastGlobalSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2cb27a5-70fc-4e17-80bd-6ba0fd3ff3a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsBroadcastEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDisabledByPolicy: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsGpuConstrained: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasHardwareEncoder: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAudioCaptureEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsAudioCaptureEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsMicrophoneCaptureEnabledByDefault: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsMicrophoneCaptureEnabledByDefault: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEchoCancellationEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsEchoCancellationEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SystemAudioGain: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_SystemAudioGain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_MicrophoneGain: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_MicrophoneGain: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_IsCameraCaptureEnabledByDefault: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsCameraCaptureEnabledByDefault: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SelectedCameraId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_SelectedCameraId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_CameraOverlayLocation: *const fn(self: *anyopaque, value: AppBroadcastCameraOverlayLocation) callconv(.winapi) HRESULT,
        get_CameraOverlayLocation: *const fn(self: *anyopaque, _r: *AppBroadcastCameraOverlayLocation) callconv(.winapi) HRESULT,
        put_CameraOverlaySize: *const fn(self: *anyopaque, value: AppBroadcastCameraOverlaySize) callconv(.winapi) HRESULT,
        get_CameraOverlaySize: *const fn(self: *anyopaque, _r: *AppBroadcastCameraOverlaySize) callconv(.winapi) HRESULT,
        put_IsCursorImageCaptureEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsCursorImageCaptureEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastHeartbeatRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Handled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Handled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastHeartbeatRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cea54283-ee51-4dbf-9472-79a9ed4e2165";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetGlobalSettings(self: *@This()) core.HResult!*AppBroadcastGlobalSettings {
        var _r: *AppBroadcastGlobalSettings = undefined;
        const _c = self.vtable.GetGlobalSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ApplyGlobalSettings(self: *@This(), value: *AppBroadcastGlobalSettings) core.HResult!void {
        const _c = self.vtable.ApplyGlobalSettings(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetProviderSettings(self: *@This()) core.HResult!*AppBroadcastProviderSettings {
        var _r: *AppBroadcastProviderSettings = undefined;
        const _c = self.vtable.GetProviderSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ApplyProviderSettings(self: *@This(), value: *AppBroadcastProviderSettings) core.HResult!void {
        const _c = self.vtable.ApplyProviderSettings(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "364e018b-1e4e-411f-ab3e-92959844c156";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetGlobalSettings: *const fn(self: *anyopaque, _r: **AppBroadcastGlobalSettings) callconv(.winapi) HRESULT,
        ApplyGlobalSettings: *const fn(self: *anyopaque, value: *AppBroadcastGlobalSettings) callconv(.winapi) HRESULT,
        GetProviderSettings: *const fn(self: *anyopaque, _r: **AppBroadcastProviderSettings) callconv(.winapi) HRESULT,
        ApplyProviderSettings: *const fn(self: *anyopaque, value: *AppBroadcastProviderSettings) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastMicrophoneCaptureStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getState(self: *@This()) core.HResult!AppBroadcastMicrophoneCaptureState {
        var _r: AppBroadcastMicrophoneCaptureState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastMicrophoneCaptureStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a86ad5e9-9440-4908-9d09-65b7e315d795";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *AppBroadcastMicrophoneCaptureState) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastPlugIn = extern struct {
    vtable: *const VTable,
    pub fn getAppId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProviderSettings(self: *@This()) core.HResult!*AppBroadcastProviderSettings {
        var _r: *AppBroadcastProviderSettings = undefined;
        const _c = self.vtable.get_ProviderSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLogo(self: *@This()) core.HResult!*IRandomAccessStreamReference {
        var _r: *IRandomAccessStreamReference = undefined;
        const _c = self.vtable.get_Logo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastPlugIn";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "520c1e66-6513-4574-ac54-23b79729615b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ProviderSettings: *const fn(self: *anyopaque, _r: **AppBroadcastProviderSettings) callconv(.winapi) HRESULT,
        get_Logo: *const fn(self: *anyopaque, _r: **IRandomAccessStreamReference) callconv(.winapi) HRESULT,
        get_DisplayName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastPlugInManager = extern struct {
    vtable: *const VTable,
    pub fn getIsBroadcastProviderAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBroadcastProviderAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlugInList(self: *@This()) core.HResult!*IVectorView(AppBroadcastPlugIn) {
        var _r: *IVectorView(AppBroadcastPlugIn) = undefined;
        const _c = self.vtable.get_PlugInList(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDefaultPlugIn(self: *@This()) core.HResult!*AppBroadcastPlugIn {
        var _r: *AppBroadcastPlugIn = undefined;
        const _c = self.vtable.get_DefaultPlugIn(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDefaultPlugIn(self: *@This(), value: *AppBroadcastPlugIn) core.HResult!void {
        const _c = self.vtable.put_DefaultPlugIn(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastPlugInManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e550d979-27a1-49a7-bbf4-d7a9e9d07668";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsBroadcastProviderAvailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PlugInList: *const fn(self: *anyopaque, _r: **IVectorView(AppBroadcastPlugIn)) callconv(.winapi) HRESULT,
        get_DefaultPlugIn: *const fn(self: *anyopaque, _r: **AppBroadcastPlugIn) callconv(.winapi) HRESULT,
        put_DefaultPlugIn: *const fn(self: *anyopaque, value: *AppBroadcastPlugIn) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastPlugInManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*AppBroadcastPlugInManager {
        var _r: *AppBroadcastPlugInManager = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetForUser(self: *@This(), user: *User) core.HResult!*AppBroadcastPlugInManager {
        var _r: *AppBroadcastPlugInManager = undefined;
        const _c = self.vtable.GetForUser(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastPlugInManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2645c20-5c76-4cdc-9364-82fe9eb6534d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **AppBroadcastPlugInManager) callconv(.winapi) HRESULT,
        GetForUser: *const fn(self: *anyopaque, user: *User, _r: **AppBroadcastPlugInManager) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastPlugInStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPlugInState(self: *@This()) core.HResult!AppBroadcastPlugInState {
        var _r: AppBroadcastPlugInState = undefined;
        const _c = self.vtable.get_PlugInState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastPlugInStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4881d0f2-abc5-4fc6-84b0-89370bb47212";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PlugInState: *const fn(self: *anyopaque, _r: *AppBroadcastPlugInState) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastPreview = extern struct {
    vtable: *const VTable,
    pub fn StopPreview(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopPreview(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPreviewState(self: *@This()) core.HResult!AppBroadcastPreviewState {
        var _r: AppBroadcastPreviewState = undefined;
        const _c = self.vtable.get_PreviewState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPreviewStateChanged(self: *@This(), value: *TypedEventHandler(AppBroadcastPreview,AppBroadcastPreviewStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PreviewStateChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePreviewStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PreviewStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPreviewStreamReader(self: *@This()) core.HResult!*AppBroadcastPreviewStreamReader {
        var _r: *AppBroadcastPreviewStreamReader = undefined;
        const _c = self.vtable.get_PreviewStreamReader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14b60f5a-6e4a-4b80-a14f-67ee77d153e7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StopPreview: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_PreviewState: *const fn(self: *anyopaque, _r: *AppBroadcastPreviewState) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        add_PreviewStateChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(AppBroadcastPreview,AppBroadcastPreviewStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PreviewStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_PreviewStreamReader: *const fn(self: *anyopaque, _r: **AppBroadcastPreviewStreamReader) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastPreviewStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPreviewState(self: *@This()) core.HResult!AppBroadcastPreviewState {
        var _r: AppBroadcastPreviewState = undefined;
        const _c = self.vtable.get_PreviewState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getErrorCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastPreviewStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a57f2de-8dea-4e86-90ad-03fc26b9653c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreviewState: *const fn(self: *anyopaque, _r: *AppBroadcastPreviewState) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastPreviewStreamReader = extern struct {
    vtable: *const VTable,
    pub fn getVideoWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_VideoWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_VideoHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoStride(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_VideoStride(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoBitmapPixelFormat(self: *@This()) core.HResult!BitmapPixelFormat {
        var _r: BitmapPixelFormat = undefined;
        const _c = self.vtable.get_VideoBitmapPixelFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoBitmapAlphaMode(self: *@This()) core.HResult!BitmapAlphaMode {
        var _r: BitmapAlphaMode = undefined;
        const _c = self.vtable.get_VideoBitmapAlphaMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetNextVideoFrame(self: *@This()) core.HResult!*AppBroadcastPreviewStreamVideoFrame {
        var _r: *AppBroadcastPreviewStreamVideoFrame = undefined;
        const _c = self.vtable.TryGetNextVideoFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addVideoFrameArrived(self: *@This(), value: *TypedEventHandler(AppBroadcastPreviewStreamReader,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VideoFrameArrived(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVideoFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VideoFrameArrived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastPreviewStreamReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92228d50-db3f-40a8-8cd4-f4e371ddab37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_VideoHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_VideoStride: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_VideoBitmapPixelFormat: *const fn(self: *anyopaque, _r: *BitmapPixelFormat) callconv(.winapi) HRESULT,
        get_VideoBitmapAlphaMode: *const fn(self: *anyopaque, _r: *BitmapAlphaMode) callconv(.winapi) HRESULT,
        TryGetNextVideoFrame: *const fn(self: *anyopaque, _r: **AppBroadcastPreviewStreamVideoFrame) callconv(.winapi) HRESULT,
        add_VideoFrameArrived: *const fn(self: *anyopaque, value: *TypedEventHandler(AppBroadcastPreviewStreamReader,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VideoFrameArrived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastPreviewStreamVideoFrame = extern struct {
    vtable: *const VTable,
    pub fn getVideoHeader(self: *@This()) core.HResult!*AppBroadcastPreviewStreamVideoHeader {
        var _r: *AppBroadcastPreviewStreamVideoHeader = undefined;
        const _c = self.vtable.get_VideoHeader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoBuffer(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_VideoBuffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastPreviewStreamVideoFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "010fbea1-94fe-4499-b8c0-8d244279fb12";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoHeader: *const fn(self: *anyopaque, _r: **AppBroadcastPreviewStreamVideoHeader) callconv(.winapi) HRESULT,
        get_VideoBuffer: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastPreviewStreamVideoHeader = extern struct {
    vtable: *const VTable,
    pub fn getAbsoluteTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_AbsoluteTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRelativeTimestamp(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RelativeTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameId(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_FrameId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastPreviewStreamVideoHeader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8bef6113-da84-4499-a7ab-87118cb4a157";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AbsoluteTimestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_RelativeTimestamp: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_FrameId: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastProviderSettings = extern struct {
    vtable: *const VTable,
    pub fn putDefaultBroadcastTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_DefaultBroadcastTitle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDefaultBroadcastTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DefaultBroadcastTitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAudioEncodingBitrate(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_AudioEncodingBitrate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAudioEncodingBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AudioEncodingBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCustomVideoEncodingBitrate(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CustomVideoEncodingBitrate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCustomVideoEncodingBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CustomVideoEncodingBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCustomVideoEncodingHeight(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CustomVideoEncodingHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCustomVideoEncodingHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CustomVideoEncodingHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCustomVideoEncodingWidth(self: *@This(), value: u32) core.HResult!void {
        const _c = self.vtable.put_CustomVideoEncodingWidth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCustomVideoEncodingWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CustomVideoEncodingWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVideoEncodingBitrateMode(self: *@This(), value: AppBroadcastVideoEncodingBitrateMode) core.HResult!void {
        const _c = self.vtable.put_VideoEncodingBitrateMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVideoEncodingBitrateMode(self: *@This()) core.HResult!AppBroadcastVideoEncodingBitrateMode {
        var _r: AppBroadcastVideoEncodingBitrateMode = undefined;
        const _c = self.vtable.get_VideoEncodingBitrateMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVideoEncodingResolutionMode(self: *@This(), value: AppBroadcastVideoEncodingResolutionMode) core.HResult!void {
        const _c = self.vtable.put_VideoEncodingResolutionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVideoEncodingResolutionMode(self: *@This()) core.HResult!AppBroadcastVideoEncodingResolutionMode {
        var _r: AppBroadcastVideoEncodingResolutionMode = undefined;
        const _c = self.vtable.get_VideoEncodingResolutionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastProviderSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c30bdf62-9948-458f-ad50-aa06ec03da08";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_DefaultBroadcastTitle: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_DefaultBroadcastTitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AudioEncodingBitrate: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_AudioEncodingBitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_CustomVideoEncodingBitrate: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_CustomVideoEncodingBitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_CustomVideoEncodingHeight: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_CustomVideoEncodingHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_CustomVideoEncodingWidth: *const fn(self: *anyopaque, value: u32) callconv(.winapi) HRESULT,
        get_CustomVideoEncodingWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        put_VideoEncodingBitrateMode: *const fn(self: *anyopaque, value: AppBroadcastVideoEncodingBitrateMode) callconv(.winapi) HRESULT,
        get_VideoEncodingBitrateMode: *const fn(self: *anyopaque, _r: *AppBroadcastVideoEncodingBitrateMode) callconv(.winapi) HRESULT,
        put_VideoEncodingResolutionMode: *const fn(self: *anyopaque, value: AppBroadcastVideoEncodingResolutionMode) callconv(.winapi) HRESULT,
        get_VideoEncodingResolutionMode: *const fn(self: *anyopaque, _r: *AppBroadcastVideoEncodingResolutionMode) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastServices = extern struct {
    vtable: *const VTable,
    pub fn getCaptureTargetType(self: *@This()) core.HResult!AppBroadcastCaptureTargetType {
        var _r: AppBroadcastCaptureTargetType = undefined;
        const _c = self.vtable.get_CaptureTargetType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCaptureTargetType(self: *@This(), value: AppBroadcastCaptureTargetType) core.HResult!void {
        const _c = self.vtable.put_CaptureTargetType(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBroadcastTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BroadcastTitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBroadcastTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_BroadcastTitle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBroadcastLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_BroadcastLanguage(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBroadcastLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_BroadcastLanguage(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getUserName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UserName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanCapture(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanCapture(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn EnterBroadcastModeAsync(self: *@This(), plugIn: *AppBroadcastPlugIn) core.HResult!*IAsyncOperation(u32) {
        var _r: *IAsyncOperation(u32) = undefined;
        const _c = self.vtable.EnterBroadcastModeAsync(@ptrCast(self), plugIn, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ExitBroadcastMode(self: *@This(), reason: AppBroadcastExitBroadcastModeReason) core.HResult!void {
        const _c = self.vtable.ExitBroadcastMode(@ptrCast(self), reason);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartBroadcast(self: *@This()) core.HResult!void {
        const _c = self.vtable.StartBroadcast(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PauseBroadcast(self: *@This()) core.HResult!void {
        const _c = self.vtable.PauseBroadcast(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ResumeBroadcast(self: *@This()) core.HResult!void {
        const _c = self.vtable.ResumeBroadcast(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartPreview(self: *@This(), desiredSize: Size) core.HResult!*AppBroadcastPreview {
        var _r: *AppBroadcastPreview = undefined;
        const _c = self.vtable.StartPreview(@ptrCast(self), desiredSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!*AppBroadcastState {
        var _r: *AppBroadcastState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastServices";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8660b4d6-969b-4e3c-ac3a-8b042ee4ee63";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CaptureTargetType: *const fn(self: *anyopaque, _r: *AppBroadcastCaptureTargetType) callconv(.winapi) HRESULT,
        put_CaptureTargetType: *const fn(self: *anyopaque, value: AppBroadcastCaptureTargetType) callconv(.winapi) HRESULT,
        get_BroadcastTitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_BroadcastTitle: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_BroadcastLanguage: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_BroadcastLanguage: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_UserName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CanCapture: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        EnterBroadcastModeAsync: *const fn(self: *anyopaque, plugIn: *AppBroadcastPlugIn, _r: **IAsyncOperation(u32)) callconv(.winapi) HRESULT,
        ExitBroadcastMode: *const fn(self: *anyopaque, reason: AppBroadcastExitBroadcastModeReason) callconv(.winapi) HRESULT,
        StartBroadcast: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PauseBroadcast: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ResumeBroadcast: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        StartPreview: *const fn(self: *anyopaque, desiredSize: Size, _r: **AppBroadcastPreview) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: **AppBroadcastState) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastSignInStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getSignInState(self: *@This()) core.HResult!AppBroadcastSignInState {
        var _r: AppBroadcastSignInState = undefined;
        const _c = self.vtable.get_SignInState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getResult(self: *@This()) core.HResult!AppBroadcastSignInResult {
        var _r: AppBroadcastSignInResult = undefined;
        const _c = self.vtable.get_Result(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastSignInStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "02b692a4-5919-4a9e-8d5e-c9bb0dd3377a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SignInState: *const fn(self: *anyopaque, _r: *AppBroadcastSignInState) callconv(.winapi) HRESULT,
        get_Result: *const fn(self: *anyopaque, _r: *AppBroadcastSignInResult) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastState = extern struct {
    vtable: *const VTable,
    pub fn getIsCaptureTargetRunning(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCaptureTargetRunning(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViewerCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ViewerCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShouldCaptureMicrophone(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldCaptureMicrophone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShouldCaptureMicrophone(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShouldCaptureMicrophone(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RestartMicrophoneCapture(self: *@This()) core.HResult!void {
        const _c = self.vtable.RestartMicrophoneCapture(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShouldCaptureCamera(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldCaptureCamera(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShouldCaptureCamera(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShouldCaptureCamera(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RestartCameraCapture(self: *@This()) core.HResult!void {
        const _c = self.vtable.RestartCameraCapture(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEncodedVideoSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_EncodedVideoSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMicrophoneCaptureState(self: *@This()) core.HResult!AppBroadcastMicrophoneCaptureState {
        var _r: AppBroadcastMicrophoneCaptureState = undefined;
        const _c = self.vtable.get_MicrophoneCaptureState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMicrophoneCaptureError(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MicrophoneCaptureError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCameraCaptureState(self: *@This()) core.HResult!AppBroadcastCameraCaptureState {
        var _r: AppBroadcastCameraCaptureState = undefined;
        const _c = self.vtable.get_CameraCaptureState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCameraCaptureError(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CameraCaptureError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStreamState(self: *@This()) core.HResult!AppBroadcastStreamState {
        var _r: AppBroadcastStreamState = undefined;
        const _c = self.vtable.get_StreamState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlugInState(self: *@This()) core.HResult!AppBroadcastPlugInState {
        var _r: AppBroadcastPlugInState = undefined;
        const _c = self.vtable.get_PlugInState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOAuthRequestUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_OAuthRequestUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOAuthCallbackUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_OAuthCallbackUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthenticationResult(self: *@This()) core.HResult!*WebAuthenticationResult {
        var _r: *WebAuthenticationResult = undefined;
        const _c = self.vtable.get_AuthenticationResult(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuthenticationResult(self: *@This(), value: *WebAuthenticationResult) core.HResult!void {
        const _c = self.vtable.put_AuthenticationResult(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putSignInState(self: *@This(), value: AppBroadcastSignInState) core.HResult!void {
        const _c = self.vtable.put_SignInState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSignInState(self: *@This()) core.HResult!AppBroadcastSignInState {
        var _r: AppBroadcastSignInState = undefined;
        const _c = self.vtable.get_SignInState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTerminationReason(self: *@This()) core.HResult!AppBroadcastTerminationReason {
        var _r: AppBroadcastTerminationReason = undefined;
        const _c = self.vtable.get_TerminationReason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTerminationReasonPlugInSpecific(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_TerminationReasonPlugInSpecific(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addViewerCountChanged(self: *@This(), value: *TypedEventHandler(AppBroadcastState,AppBroadcastViewerCountChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ViewerCountChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeViewerCountChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ViewerCountChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMicrophoneCaptureStateChanged(self: *@This(), value: *TypedEventHandler(AppBroadcastState,AppBroadcastMicrophoneCaptureStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MicrophoneCaptureStateChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMicrophoneCaptureStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MicrophoneCaptureStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCameraCaptureStateChanged(self: *@This(), value: *TypedEventHandler(AppBroadcastState,AppBroadcastCameraCaptureStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CameraCaptureStateChanged(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCameraCaptureStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CameraCaptureStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPlugInStateChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastState,AppBroadcastPlugInStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PlugInStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePlugInStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PlugInStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addStreamStateChanged(self: *@This(), handler: *TypedEventHandler(AppBroadcastState,AppBroadcastStreamStateChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StreamStateChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStreamStateChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StreamStateChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCaptureTargetClosed(self: *@This(), value: *TypedEventHandler(AppBroadcastState,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CaptureTargetClosed(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCaptureTargetClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CaptureTargetClosed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee08056d-8099-4ddd-922e-c56dac58abfb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCaptureTargetRunning: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ViewerCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ShouldCaptureMicrophone: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShouldCaptureMicrophone: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        RestartMicrophoneCapture: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_ShouldCaptureCamera: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShouldCaptureCamera: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        RestartCameraCapture: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        get_EncodedVideoSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_MicrophoneCaptureState: *const fn(self: *anyopaque, _r: *AppBroadcastMicrophoneCaptureState) callconv(.winapi) HRESULT,
        get_MicrophoneCaptureError: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_CameraCaptureState: *const fn(self: *anyopaque, _r: *AppBroadcastCameraCaptureState) callconv(.winapi) HRESULT,
        get_CameraCaptureError: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_StreamState: *const fn(self: *anyopaque, _r: *AppBroadcastStreamState) callconv(.winapi) HRESULT,
        get_PlugInState: *const fn(self: *anyopaque, _r: *AppBroadcastPlugInState) callconv(.winapi) HRESULT,
        get_OAuthRequestUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_OAuthCallbackUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_AuthenticationResult: *const fn(self: *anyopaque, _r: **WebAuthenticationResult) callconv(.winapi) HRESULT,
        put_AuthenticationResult: *const fn(self: *anyopaque, value: *WebAuthenticationResult) callconv(.winapi) HRESULT,
        put_SignInState: *const fn(self: *anyopaque, value: AppBroadcastSignInState) callconv(.winapi) HRESULT,
        get_SignInState: *const fn(self: *anyopaque, _r: *AppBroadcastSignInState) callconv(.winapi) HRESULT,
        get_TerminationReason: *const fn(self: *anyopaque, _r: *AppBroadcastTerminationReason) callconv(.winapi) HRESULT,
        get_TerminationReasonPlugInSpecific: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        add_ViewerCountChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(AppBroadcastState,AppBroadcastViewerCountChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ViewerCountChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MicrophoneCaptureStateChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(AppBroadcastState,AppBroadcastMicrophoneCaptureStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MicrophoneCaptureStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CameraCaptureStateChanged: *const fn(self: *anyopaque, value: *TypedEventHandler(AppBroadcastState,AppBroadcastCameraCaptureStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CameraCaptureStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PlugInStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppBroadcastState,AppBroadcastPlugInStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PlugInStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_StreamStateChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppBroadcastState,AppBroadcastStreamStateChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StreamStateChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CaptureTargetClosed: *const fn(self: *anyopaque, value: *TypedEventHandler(AppBroadcastState,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CaptureTargetClosed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastStreamAudioFrame = extern struct {
    vtable: *const VTable,
    pub fn getAudioHeader(self: *@This()) core.HResult!*AppBroadcastStreamAudioHeader {
        var _r: *AppBroadcastStreamAudioHeader = undefined;
        const _c = self.vtable.get_AudioHeader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioBuffer(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_AudioBuffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastStreamAudioFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efab4ac8-21ba-453f-8bb7-5e938a2e9a74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AudioHeader: *const fn(self: *anyopaque, _r: **AppBroadcastStreamAudioHeader) callconv(.winapi) HRESULT,
        get_AudioBuffer: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastStreamAudioHeader = extern struct {
    vtable: *const VTable,
    pub fn getAbsoluteTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_AbsoluteTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRelativeTimestamp(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RelativeTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasDiscontinuity(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasDiscontinuity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameId(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_FrameId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastStreamAudioHeader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bf21a570-6b78-4216-9f07-5aff5256f1b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AbsoluteTimestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_RelativeTimestamp: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_HasDiscontinuity: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_FrameId: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastStreamReader = extern struct {
    vtable: *const VTable,
    pub fn getAudioChannels(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AudioChannels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioSampleRate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AudioSampleRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioAacSequence(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_AudioAacSequence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAudioBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AudioBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetNextAudioFrame(self: *@This()) core.HResult!*AppBroadcastStreamAudioFrame {
        var _r: *AppBroadcastStreamAudioFrame = undefined;
        const _c = self.vtable.TryGetNextAudioFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_VideoWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_VideoHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoBitrate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_VideoBitrate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetNextVideoFrame(self: *@This()) core.HResult!*AppBroadcastStreamVideoFrame {
        var _r: *AppBroadcastStreamVideoFrame = undefined;
        const _c = self.vtable.TryGetNextVideoFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAudioFrameArrived(self: *@This(), value: *TypedEventHandler(AppBroadcastStreamReader,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AudioFrameArrived(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAudioFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AudioFrameArrived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVideoFrameArrived(self: *@This(), value: *TypedEventHandler(AppBroadcastStreamReader,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VideoFrameArrived(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVideoFrameArrived(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VideoFrameArrived(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastStreamReader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b338bcf9-3364-4460-b5f1-3cc2796a8aa2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AudioChannels: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AudioSampleRate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AudioAacSequence: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
        get_AudioBitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        TryGetNextAudioFrame: *const fn(self: *anyopaque, _r: **AppBroadcastStreamAudioFrame) callconv(.winapi) HRESULT,
        get_VideoWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_VideoHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_VideoBitrate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        TryGetNextVideoFrame: *const fn(self: *anyopaque, _r: **AppBroadcastStreamVideoFrame) callconv(.winapi) HRESULT,
        add_AudioFrameArrived: *const fn(self: *anyopaque, value: *TypedEventHandler(AppBroadcastStreamReader,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AudioFrameArrived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_VideoFrameArrived: *const fn(self: *anyopaque, value: *TypedEventHandler(AppBroadcastStreamReader,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VideoFrameArrived: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastStreamStateChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStreamState(self: *@This()) core.HResult!AppBroadcastStreamState {
        var _r: AppBroadcastStreamState = undefined;
        const _c = self.vtable.get_StreamState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastStreamStateChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5108a733-d008-4a89-93be-58aed961374e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StreamState: *const fn(self: *anyopaque, _r: *AppBroadcastStreamState) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastStreamVideoFrame = extern struct {
    vtable: *const VTable,
    pub fn getVideoHeader(self: *@This()) core.HResult!*AppBroadcastStreamVideoHeader {
        var _r: *AppBroadcastStreamVideoHeader = undefined;
        const _c = self.vtable.get_VideoHeader(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVideoBuffer(self: *@This()) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.get_VideoBuffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastStreamVideoFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f97cf2b-c9e4-4e88-8194-d814cbd585d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_VideoHeader: *const fn(self: *anyopaque, _r: **AppBroadcastStreamVideoHeader) callconv(.winapi) HRESULT,
        get_VideoBuffer: *const fn(self: *anyopaque, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastStreamVideoHeader = extern struct {
    vtable: *const VTable,
    pub fn getAbsoluteTimestamp(self: *@This()) core.HResult!DateTime {
        var _r: DateTime = undefined;
        const _c = self.vtable.get_AbsoluteTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRelativeTimestamp(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RelativeTimestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsKeyFrame(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsKeyFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasDiscontinuity(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasDiscontinuity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameId(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_FrameId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastStreamVideoHeader";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0b9ebece-7e32-432d-8ca2-36bf10b9f462";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AbsoluteTimestamp: *const fn(self: *anyopaque, _r: *DateTime) callconv(.winapi) HRESULT,
        get_RelativeTimestamp: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_IsKeyFrame: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasDiscontinuity: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_FrameId: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastTriggerDetails = extern struct {
    vtable: *const VTable,
    pub fn getBackgroundService(self: *@This()) core.HResult!*AppBroadcastBackgroundService {
        var _r: *AppBroadcastBackgroundService = undefined;
        const _c = self.vtable.get_BackgroundService(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastTriggerDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "deebab35-ec5e-4d8f-b1c0-5da6e8c75638";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BackgroundService: *const fn(self: *anyopaque, _r: **AppBroadcastBackgroundService) callconv(.winapi) HRESULT,
    };
};
pub const IAppBroadcastViewerCountChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getViewerCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ViewerCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Capture.IAppBroadcastViewerCountChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6e11825-5401-4ade-8bd2-c14ecee6807d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ViewerCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IVideoEffectDefinition = @import("./Effects.zig").IVideoEffectDefinition;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const ImageEncodingProperties = @import("./MediaProperties.zig").ImageEncodingProperties;
const VideoDeviceController = @import("./Devices.zig").VideoDeviceController;
const CaptureSceneMode = @import("./Devices.zig").CaptureSceneMode;
const IAsyncOperationWithProgress = @import("../Foundation.zig").IAsyncOperationWithProgress;
const BitmapPropertySet = @import("../Graphics/Imaging.zig").BitmapPropertySet;
const BitmapPixelFormat = @import("../Graphics/Imaging.zig").BitmapPixelFormat;
const MediaFrameSourceGroup = @import("./Frames.zig").MediaFrameSourceGroup;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const MediaCaptureFocusState = @import("./Devices.zig").MediaCaptureFocusState;
const Uri = @import("../Foundation.zig").Uri;
const BitmapAlphaMode = @import("../Graphics/Imaging.zig").BitmapAlphaMode;
const MediaPropertySet = @import("./MediaProperties.zig").MediaPropertySet;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IReference = @import("../Foundation.zig").IReference;
const MediaFrameSourceInfo = @import("./Frames.zig").MediaFrameSourceInfo;
const FactoryCache = @import("../core.zig").FactoryCache;
const IRandomAccessStreamReference = @import("../Storage/Streams.zig").IRandomAccessStreamReference;
const IStorageFile = @import("../Storage.zig").IStorageFile;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const Panel = @import("../Devices/Enumeration.zig").Panel;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const PasswordCredential = @import("../Security/Credentials.zig").PasswordCredential;
const DisplayRegion = @import("../UI/WindowManagement.zig").DisplayRegion;
const IAgileObject = @import("../root.zig").IAgileObject;
const VirtualKey = @import("../System.zig").VirtualKey;
const IOutputStream = @import("../Storage/Streams.zig").IOutputStream;
const IMediaSource = @import("./Core.zig").IMediaSource;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const StorageFolder = @import("../Storage.zig").StorageFolder;
const Guid = @import("../root.zig").Guid;
const VideoFrame = @import("../Media.zig").VideoFrame;
const Size = @import("../Foundation.zig").Size;
const MediaEncodingProfile = @import("./MediaProperties.zig").MediaEncodingProfile;
const WebAuthenticationResult = @import("../Security/Authentication/Web.zig").WebAuthenticationResult;
const VideoEncodingProperties = @import("./MediaProperties.zig").VideoEncodingProperties;
const VariablePhotoSequenceCapture = @import("./Core.zig").VariablePhotoSequenceCapture;
const InputStreamOptions = @import("../Storage/Streams.zig").InputStreamOptions;
const IClosable = @import("../Foundation.zig").IClosable;
const SoftwareBitmap = @import("../Graphics/Imaging.zig").SoftwareBitmap;
const MediaCapturePauseBehavior = @import("./Devices.zig").MediaCapturePauseBehavior;
const IContentTypeProvider = @import("../Storage/Streams.zig").IContentTypeProvider;
const AudioProcessing = @import("../Media.zig").AudioProcessing;
const AdvancedPhotoMode = @import("./Devices.zig").AdvancedPhotoMode;
const HRESULT = @import("../root.zig").HRESULT;
const MediaRatio = @import("./MediaProperties.zig").MediaRatio;
const CameraStreamState = @import("./Devices.zig").CameraStreamState;
const StorageFile = @import("../Storage.zig").StorageFile;
const IBuffer = @import("../Storage/Streams.zig").IBuffer;
const IInputStream = @import("../Storage/Streams.zig").IInputStream;
const DateTime = @import("../Foundation.zig").DateTime;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const IDirect3DDevice = @import("../Graphics/DirectX/Direct3D11.zig").IDirect3DDevice;
const MediaFrameReader = @import("./Frames.zig").MediaFrameReader;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const BitmapSize = @import("../Graphics/Imaging.zig").BitmapSize;
const HSTRING = @import("../root.zig").HSTRING;
const AudioDeviceController = @import("./Devices.zig").AudioDeviceController;
const MediaFrameSource = @import("./Frames.zig").MediaFrameSource;
const MultiSourceMediaFrameReader = @import("./Frames.zig").MultiSourceMediaFrameReader;
const IMediaEncodingProperties = @import("./MediaProperties.zig").IMediaEncodingProperties;
const IMediaExtension = @import("../Media.zig").IMediaExtension;
const IRandomAccessStreamWithContentType = @import("../Storage/Streams.zig").IRandomAccessStreamWithContentType;
const VirtualKeyModifiers = @import("../System.zig").VirtualKeyModifiers;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const IAudioEffectDefinition = @import("./Effects.zig").IAudioEffectDefinition;
const User = @import("../System.zig").User;
pub const Core = @import("./Capture/Core.zig");
pub const Frames = @import("./Capture/Frames.zig");
