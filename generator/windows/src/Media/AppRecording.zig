pub const AppRecordingManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetStatus(self: *@This()) core.HResult!*AppRecordingStatus {
        const this: *IAppRecordingManager = @ptrCast(self);
        return try this.GetStatus();
    }
    pub fn StartRecordingToFileAsync(self: *@This(), file: *StorageFile) core.HResult!*IAsyncOperation(AppRecordingResult) {
        const this: *IAppRecordingManager = @ptrCast(self);
        return try this.StartRecordingToFileAsync(file);
    }
    pub fn RecordTimeSpanToFileAsync(self: *@This(), startTime: DateTime, duration: TimeSpan, file: *StorageFile) core.HResult!*IAsyncOperation(AppRecordingResult) {
        const this: *IAppRecordingManager = @ptrCast(self);
        return try this.RecordTimeSpanToFileAsync(startTime, duration, file);
    }
    pub fn getSupportedScreenshotMediaEncodingSubtypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        const this: *IAppRecordingManager = @ptrCast(self);
        return try this.getSupportedScreenshotMediaEncodingSubtypes();
    }
    pub fn SaveScreenshotToFilesAsync(self: *@This(), folder: *StorageFolder, filenamePrefix: HSTRING, option: AppRecordingSaveScreenshotOption, requestedFormats: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(AppRecordingSaveScreenshotResult) {
        const this: *IAppRecordingManager = @ptrCast(self);
        return try this.SaveScreenshotToFilesAsync(folder, filenamePrefix, option, requestedFormats);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*AppRecordingManager {
        const _f = @This().IAppRecordingManagerStaticsCache.get();
        return try _f.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Media.AppRecording.AppRecordingManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppRecordingManager.GUID;
    pub const IID: Guid = IAppRecordingManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppRecordingManager.SIGNATURE);
    var _IAppRecordingManagerStaticsCache: FactoryCache(IAppRecordingManagerStatics, RUNTIME_NAME) = .{};
};
pub const AppRecordingResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingResult = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IAppRecordingResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppRecordingResult = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getIsFileTruncated(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingResult = @ptrCast(self);
        return try this.getIsFileTruncated();
    }
    pub const NAME: []const u8 = "Windows.Media.AppRecording.AppRecordingResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppRecordingResult.GUID;
    pub const IID: Guid = IAppRecordingResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppRecordingResult.SIGNATURE);
};
pub const AppRecordingSaveScreenshotOption = enum(i32) {
    None = 0,
    HdrContentVisible = 1,
};
pub const AppRecordingSaveScreenshotResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingSaveScreenshotResult = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *IAppRecordingSaveScreenshotResult = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getSavedScreenshotInfos(self: *@This()) core.HResult!*IVectorView(AppRecordingSavedScreenshotInfo) {
        const this: *IAppRecordingSaveScreenshotResult = @ptrCast(self);
        return try this.getSavedScreenshotInfos();
    }
    pub const NAME: []const u8 = "Windows.Media.AppRecording.AppRecordingSaveScreenshotResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppRecordingSaveScreenshotResult.GUID;
    pub const IID: Guid = IAppRecordingSaveScreenshotResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppRecordingSaveScreenshotResult.SIGNATURE);
};
pub const AppRecordingSavedScreenshotInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        const this: *IAppRecordingSavedScreenshotInfo = @ptrCast(self);
        return try this.getFile();
    }
    pub fn getMediaEncodingSubtype(self: *@This()) core.HResult!HSTRING {
        const this: *IAppRecordingSavedScreenshotInfo = @ptrCast(self);
        return try this.getMediaEncodingSubtype();
    }
    pub const NAME: []const u8 = "Windows.Media.AppRecording.AppRecordingSavedScreenshotInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppRecordingSavedScreenshotInfo.GUID;
    pub const IID: Guid = IAppRecordingSavedScreenshotInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppRecordingSavedScreenshotInfo.SIGNATURE);
};
pub const AppRecordingStatus = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanRecord(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingStatus = @ptrCast(self);
        return try this.getCanRecord();
    }
    pub fn getCanRecordTimeSpan(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingStatus = @ptrCast(self);
        return try this.getCanRecordTimeSpan();
    }
    pub fn getHistoricalBufferDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IAppRecordingStatus = @ptrCast(self);
        return try this.getHistoricalBufferDuration();
    }
    pub fn getDetails(self: *@This()) core.HResult!*AppRecordingStatusDetails {
        const this: *IAppRecordingStatus = @ptrCast(self);
        return try this.getDetails();
    }
    pub const NAME: []const u8 = "Windows.Media.AppRecording.AppRecordingStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppRecordingStatus.GUID;
    pub const IID: Guid = IAppRecordingStatus.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppRecordingStatus.SIGNATURE);
};
pub const AppRecordingStatusDetails = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsAnyAppBroadcasting(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingStatusDetails = @ptrCast(self);
        return try this.getIsAnyAppBroadcasting();
    }
    pub fn getIsCaptureResourceUnavailable(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingStatusDetails = @ptrCast(self);
        return try this.getIsCaptureResourceUnavailable();
    }
    pub fn getIsGameStreamInProgress(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingStatusDetails = @ptrCast(self);
        return try this.getIsGameStreamInProgress();
    }
    pub fn getIsTimeSpanRecordingDisabled(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingStatusDetails = @ptrCast(self);
        return try this.getIsTimeSpanRecordingDisabled();
    }
    pub fn getIsGpuConstrained(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingStatusDetails = @ptrCast(self);
        return try this.getIsGpuConstrained();
    }
    pub fn getIsAppInactive(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingStatusDetails = @ptrCast(self);
        return try this.getIsAppInactive();
    }
    pub fn getIsBlockedForApp(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingStatusDetails = @ptrCast(self);
        return try this.getIsBlockedForApp();
    }
    pub fn getIsDisabledByUser(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingStatusDetails = @ptrCast(self);
        return try this.getIsDisabledByUser();
    }
    pub fn getIsDisabledBySystem(self: *@This()) core.HResult!bool {
        const this: *IAppRecordingStatusDetails = @ptrCast(self);
        return try this.getIsDisabledBySystem();
    }
    pub const NAME: []const u8 = "Windows.Media.AppRecording.AppRecordingStatusDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppRecordingStatusDetails.GUID;
    pub const IID: Guid = IAppRecordingStatusDetails.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppRecordingStatusDetails.SIGNATURE);
};
pub const IAppRecordingManager = extern struct {
    vtable: *const VTable,
    pub fn GetStatus(self: *@This()) core.HResult!*AppRecordingStatus {
        var _r: *AppRecordingStatus = undefined;
        const _c = self.vtable.GetStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartRecordingToFileAsync(self: *@This(), file: *StorageFile) core.HResult!*IAsyncOperation(AppRecordingResult) {
        var _r: *IAsyncOperation(AppRecordingResult) = undefined;
        const _c = self.vtable.StartRecordingToFileAsync(@ptrCast(self), file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RecordTimeSpanToFileAsync(self: *@This(), startTime: DateTime, duration: TimeSpan, file: *StorageFile) core.HResult!*IAsyncOperation(AppRecordingResult) {
        var _r: *IAsyncOperation(AppRecordingResult) = undefined;
        const _c = self.vtable.RecordTimeSpanToFileAsync(@ptrCast(self), startTime, duration, file, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedScreenshotMediaEncodingSubtypes(self: *@This()) core.HResult!*IVectorView(HSTRING) {
        var _r: *IVectorView(HSTRING) = undefined;
        const _c = self.vtable.get_SupportedScreenshotMediaEncodingSubtypes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SaveScreenshotToFilesAsync(self: *@This(), folder: *StorageFolder, filenamePrefix: HSTRING, option: AppRecordingSaveScreenshotOption, requestedFormats: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(AppRecordingSaveScreenshotResult) {
        var _r: *IAsyncOperation(AppRecordingSaveScreenshotResult) = undefined;
        const _c = self.vtable.SaveScreenshotToFilesAsync(@ptrCast(self), folder, filenamePrefix, option, requestedFormats, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.AppRecording.IAppRecordingManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7e26076-a044-48e2-a512-3094d574c7cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetStatus: *const fn(self: *anyopaque, _r: **AppRecordingStatus) callconv(.winapi) HRESULT,
        StartRecordingToFileAsync: *const fn(self: *anyopaque, file: *StorageFile, _r: **IAsyncOperation(AppRecordingResult)) callconv(.winapi) HRESULT,
        RecordTimeSpanToFileAsync: *const fn(self: *anyopaque, startTime: DateTime, duration: TimeSpan, file: *StorageFile, _r: **IAsyncOperation(AppRecordingResult)) callconv(.winapi) HRESULT,
        get_SupportedScreenshotMediaEncodingSubtypes: *const fn(self: *anyopaque, _r: **IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        SaveScreenshotToFilesAsync: *const fn(self: *anyopaque, folder: *StorageFolder, filenamePrefix: HSTRING, option: AppRecordingSaveScreenshotOption, requestedFormats: *IIterable(HSTRING), _r: **IAsyncOperation(AppRecordingSaveScreenshotResult)) callconv(.winapi) HRESULT,
    };
};
pub const IAppRecordingManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*AppRecordingManager {
        var _r: *AppRecordingManager = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.AppRecording.IAppRecordingManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50e709f7-38ce-4bd3-9db2-e72bbe9de11d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **AppRecordingManager) callconv(.winapi) HRESULT,
    };
};
pub const IAppRecordingResult = extern struct {
    vtable: *const VTable,
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsFileTruncated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFileTruncated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.AppRecording.IAppRecordingResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a900864-c66d-46f9-b2d9-5bc2dad070d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_IsFileTruncated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppRecordingSaveScreenshotResult = extern struct {
    vtable: *const VTable,
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSavedScreenshotInfos(self: *@This()) core.HResult!*IVectorView(AppRecordingSavedScreenshotInfo) {
        var _r: *IVectorView(AppRecordingSavedScreenshotInfo) = undefined;
        const _c = self.vtable.get_SavedScreenshotInfos(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.AppRecording.IAppRecordingSaveScreenshotResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c5b8d0a-0abb-4457-aaee-24f9c12ec778";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_SavedScreenshotInfos: *const fn(self: *anyopaque, _r: **IVectorView(AppRecordingSavedScreenshotInfo)) callconv(.winapi) HRESULT,
    };
};
pub const IAppRecordingSavedScreenshotInfo = extern struct {
    vtable: *const VTable,
    pub fn getFile(self: *@This()) core.HResult!*StorageFile {
        var _r: *StorageFile = undefined;
        const _c = self.vtable.get_File(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaEncodingSubtype(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MediaEncodingSubtype(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.AppRecording.IAppRecordingSavedScreenshotInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b642d0a-189a-4d00-bf25-e1bb1249d594";
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
        get_MediaEncodingSubtype: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppRecordingStatus = extern struct {
    vtable: *const VTable,
    pub fn getCanRecord(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanRecord(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanRecordTimeSpan(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanRecordTimeSpan(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHistoricalBufferDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_HistoricalBufferDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDetails(self: *@This()) core.HResult!*AppRecordingStatusDetails {
        var _r: *AppRecordingStatusDetails = undefined;
        const _c = self.vtable.get_Details(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.AppRecording.IAppRecordingStatus";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d0cc82c-bc18-4b8a-a6ef-127efab3b5d9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanRecord: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanRecordTimeSpan: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HistoricalBufferDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Details: *const fn(self: *anyopaque, _r: **AppRecordingStatusDetails) callconv(.winapi) HRESULT,
    };
};
pub const IAppRecordingStatusDetails = extern struct {
    vtable: *const VTable,
    pub fn getIsAnyAppBroadcasting(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAnyAppBroadcasting(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsCaptureResourceUnavailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCaptureResourceUnavailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsGameStreamInProgress(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGameStreamInProgress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTimeSpanRecordingDisabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTimeSpanRecordingDisabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsGpuConstrained(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGpuConstrained(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAppInactive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAppInactive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsBlockedForApp(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsBlockedForApp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDisabledByUser(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisabledByUser(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDisabledBySystem(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisabledBySystem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.AppRecording.IAppRecordingStatusDetails";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b538a9b0-14ed-4412-ac45-6d672c9c9949";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAnyAppBroadcasting: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsCaptureResourceUnavailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsGameStreamInProgress: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsTimeSpanRecordingDisabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsGpuConstrained: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsAppInactive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsBlockedForApp: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDisabledByUser: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsDisabledBySystem: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const StorageFile = @import("../Storage.zig").StorageFile;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const DateTime = @import("../Foundation.zig").DateTime;
const HResult = @import("../Foundation.zig").HResult;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const StorageFolder = @import("../Storage.zig").StorageFolder;
const HSTRING = @import("../root.zig").HSTRING;
