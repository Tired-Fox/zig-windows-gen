pub const IKnownSimpleHapticsControllerWaveformsStatics = extern struct {
    vtable: *const VTable,
    pub fn getClick(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Click(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBuzzContinuous(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_BuzzContinuous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRumbleContinuous(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_RumbleContinuous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPress(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Press(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRelease(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Release(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Haptics.IKnownSimpleHapticsControllerWaveformsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577ef7-4cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Click: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_BuzzContinuous: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_RumbleContinuous: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Press: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Release: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const IKnownSimpleHapticsControllerWaveformsStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getBrushContinuous(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_BrushContinuous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChiselMarkerContinuous(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_ChiselMarkerContinuous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEraserContinuous(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_EraserContinuous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getError(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Error(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGalaxyPenContinuous(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_GalaxyPenContinuous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHover(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Hover(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInkContinuous(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_InkContinuous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMarkerContinuous(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_MarkerContinuous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPencilContinuous(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_PencilContinuous(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSuccess(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Success(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Haptics.IKnownSimpleHapticsControllerWaveformsStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7d24c27-b79d-510a-bf79-ff6d49173e1d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BrushContinuous: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_ChiselMarkerContinuous: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_EraserContinuous: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Error: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_GalaxyPenContinuous: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Hover: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_InkContinuous: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_MarkerContinuous: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_PencilContinuous: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Success: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
    };
};
pub const ISimpleHapticsController = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedFeedback(self: *@This()) core.HResult!*IVectorView(SimpleHapticsControllerFeedback) {
        var _r: *IVectorView(SimpleHapticsControllerFeedback) = undefined;
        const _c = self.vtable.get_SupportedFeedback(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsIntensitySupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIntensitySupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPlayCountSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPlayCountSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPlayDurationSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPlayDurationSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsReplayPauseIntervalSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReplayPauseIntervalSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopFeedback(self: *@This()) core.HResult!void {
        const _c = self.vtable.StopFeedback(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SendHapticFeedback(self: *@This(), feedback: *SimpleHapticsControllerFeedback) core.HResult!void {
        const _c = self.vtable.SendHapticFeedback(@ptrCast(self), feedback);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SendHapticFeedback(self: *@This(), feedback: *SimpleHapticsControllerFeedback, intensity: f64) core.HResult!void {
        const _c = self.vtable.SendHapticFeedback(@ptrCast(self), feedback, intensity);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SendHapticFeedbackForDuration(self: *@This(), feedback: *SimpleHapticsControllerFeedback, intensity: f64, playDuration: TimeSpan) core.HResult!void {
        const _c = self.vtable.SendHapticFeedbackForDuration(@ptrCast(self), feedback, intensity, playDuration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SendHapticFeedbackForPlayCount(self: *@This(), feedback: *SimpleHapticsControllerFeedback, intensity: f64, playCount: i32, replayPauseInterval: TimeSpan) core.HResult!void {
        const _c = self.vtable.SendHapticFeedbackForPlayCount(@ptrCast(self), feedback, intensity, playCount, replayPauseInterval);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Haptics.ISimpleHapticsController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577ef9-4cee-11e6-b535-001bdc06ab3b";
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
        get_SupportedFeedback: *const fn(self: *anyopaque, _r: **IVectorView(SimpleHapticsControllerFeedback)) callconv(.winapi) HRESULT,
        get_IsIntensitySupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPlayCountSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPlayDurationSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsReplayPauseIntervalSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        StopFeedback: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SendHapticFeedback: *const fn(self: *anyopaque, feedback: *SimpleHapticsControllerFeedback) callconv(.winapi) HRESULT,
        SendHapticFeedback: *const fn(self: *anyopaque, feedback: *SimpleHapticsControllerFeedback, intensity: f64) callconv(.winapi) HRESULT,
        SendHapticFeedbackForDuration: *const fn(self: *anyopaque, feedback: *SimpleHapticsControllerFeedback, intensity: f64, playDuration: TimeSpan) callconv(.winapi) HRESULT,
        SendHapticFeedbackForPlayCount: *const fn(self: *anyopaque, feedback: *SimpleHapticsControllerFeedback, intensity: f64, playCount: i32, replayPauseInterval: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const ISimpleHapticsControllerFeedback = extern struct {
    vtable: *const VTable,
    pub fn getWaveform(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Waveform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Haptics.ISimpleHapticsControllerFeedback";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d577ef8-4cee-11e6-b535-001bdc06ab3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Waveform: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IVibrationDevice = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        var _r: *SimpleHapticsController = undefined;
        const _c = self.vtable.get_SimpleHapticsController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Haptics.IVibrationDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40f21a3e-8844-47ff-b312-06185a3844da";
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
        get_SimpleHapticsController: *const fn(self: *anyopaque, _r: **SimpleHapticsController) callconv(.winapi) HRESULT,
    };
};
pub const IVibrationDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn RequestAccessAsync(self: *@This()) core.HResult!*IAsyncOperation(VibrationAccessStatus) {
        var _r: *IAsyncOperation(VibrationAccessStatus) = undefined;
        const _c = self.vtable.RequestAccessAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceId: HSTRING) core.HResult!*IAsyncOperation(VibrationDevice) {
        var _r: *IAsyncOperation(VibrationDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDefaultAsync(self: *@This()) core.HResult!*IAsyncOperation(VibrationDevice) {
        var _r: *IAsyncOperation(VibrationDevice) = undefined;
        const _c = self.vtable.GetDefaultAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAllAsync(self: *@This()) core.HResult!*IAsyncOperation(IVectorView(VibrationDevice)) {
        var _r: *IAsyncOperation(IVectorView(VibrationDevice)) = undefined;
        const _c = self.vtable.FindAllAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Haptics.IVibrationDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53e2eded-2290-4ac9-8eb3-1a84122eb71c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestAccessAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(VibrationAccessStatus)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceId: HSTRING, _r: **IAsyncOperation(VibrationDevice)) callconv(.winapi) HRESULT,
        GetDefaultAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(VibrationDevice)) callconv(.winapi) HRESULT,
        FindAllAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(IVectorView(VibrationDevice))) callconv(.winapi) HRESULT,
    };
};
pub const KnownSimpleHapticsControllerWaveforms = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getClick() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStaticsCache.get();
        return try factory.getClick();
    }
    pub fn getBuzzContinuous() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStaticsCache.get();
        return try factory.getBuzzContinuous();
    }
    pub fn getRumbleContinuous() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStaticsCache.get();
        return try factory.getRumbleContinuous();
    }
    pub fn getPress() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStaticsCache.get();
        return try factory.getPress();
    }
    pub fn getRelease() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStaticsCache.get();
        return try factory.getRelease();
    }
    pub fn getBrushContinuous() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStatics2Cache.get();
        return try factory.getBrushContinuous();
    }
    pub fn getChiselMarkerContinuous() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStatics2Cache.get();
        return try factory.getChiselMarkerContinuous();
    }
    pub fn getEraserContinuous() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStatics2Cache.get();
        return try factory.getEraserContinuous();
    }
    pub fn getError() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStatics2Cache.get();
        return try factory.getError();
    }
    pub fn getGalaxyPenContinuous() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStatics2Cache.get();
        return try factory.getGalaxyPenContinuous();
    }
    pub fn getHover() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStatics2Cache.get();
        return try factory.getHover();
    }
    pub fn getInkContinuous() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStatics2Cache.get();
        return try factory.getInkContinuous();
    }
    pub fn getMarkerContinuous() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStatics2Cache.get();
        return try factory.getMarkerContinuous();
    }
    pub fn getPencilContinuous() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStatics2Cache.get();
        return try factory.getPencilContinuous();
    }
    pub fn getSuccess() core.HResult!u16 {
        const factory = @This().IKnownSimpleHapticsControllerWaveformsStatics2Cache.get();
        return try factory.getSuccess();
    }
    pub const NAME: []const u8 = "Windows.Devices.Haptics.KnownSimpleHapticsControllerWaveforms";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IKnownSimpleHapticsControllerWaveformsStaticsCache: FactoryCache(IKnownSimpleHapticsControllerWaveformsStatics, RUNTIME_NAME) = .{};
    var _IKnownSimpleHapticsControllerWaveformsStatics2Cache: FactoryCache(IKnownSimpleHapticsControllerWaveformsStatics2, RUNTIME_NAME) = .{};
};
pub const SimpleHapticsController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *ISimpleHapticsController = @ptrCast(self);
        return try this.getId();
    }
    pub fn getSupportedFeedback(self: *@This()) core.HResult!*IVectorView(SimpleHapticsControllerFeedback) {
        const this: *ISimpleHapticsController = @ptrCast(self);
        return try this.getSupportedFeedback();
    }
    pub fn getIsIntensitySupported(self: *@This()) core.HResult!bool {
        const this: *ISimpleHapticsController = @ptrCast(self);
        return try this.getIsIntensitySupported();
    }
    pub fn getIsPlayCountSupported(self: *@This()) core.HResult!bool {
        const this: *ISimpleHapticsController = @ptrCast(self);
        return try this.getIsPlayCountSupported();
    }
    pub fn getIsPlayDurationSupported(self: *@This()) core.HResult!bool {
        const this: *ISimpleHapticsController = @ptrCast(self);
        return try this.getIsPlayDurationSupported();
    }
    pub fn getIsReplayPauseIntervalSupported(self: *@This()) core.HResult!bool {
        const this: *ISimpleHapticsController = @ptrCast(self);
        return try this.getIsReplayPauseIntervalSupported();
    }
    pub fn StopFeedback(self: *@This()) core.HResult!void {
        const this: *ISimpleHapticsController = @ptrCast(self);
        return try this.StopFeedback();
    }
    pub fn SendHapticFeedback(self: *@This(), feedback: *SimpleHapticsControllerFeedback) core.HResult!void {
        const this: *ISimpleHapticsController = @ptrCast(self);
        return try this.SendHapticFeedback(feedback);
    }
    pub fn SendHapticFeedback(self: *@This(), feedback: *SimpleHapticsControllerFeedback, intensity: f64) core.HResult!void {
        const this: *ISimpleHapticsController = @ptrCast(self);
        return try this.SendHapticFeedback(feedback, intensity);
    }
    pub fn SendHapticFeedbackForDuration(self: *@This(), feedback: *SimpleHapticsControllerFeedback, intensity: f64, playDuration: TimeSpan) core.HResult!void {
        const this: *ISimpleHapticsController = @ptrCast(self);
        return try this.SendHapticFeedbackForDuration(feedback, intensity, playDuration);
    }
    pub fn SendHapticFeedbackForPlayCount(self: *@This(), feedback: *SimpleHapticsControllerFeedback, intensity: f64, playCount: i32, replayPauseInterval: TimeSpan) core.HResult!void {
        const this: *ISimpleHapticsController = @ptrCast(self);
        return try this.SendHapticFeedbackForPlayCount(feedback, intensity, playCount, replayPauseInterval);
    }
    pub const NAME: []const u8 = "Windows.Devices.Haptics.SimpleHapticsController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISimpleHapticsController.GUID;
    pub const IID: Guid = ISimpleHapticsController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISimpleHapticsController.SIGNATURE);
};
pub const SimpleHapticsControllerFeedback = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWaveform(self: *@This()) core.HResult!u16 {
        const this: *ISimpleHapticsControllerFeedback = @ptrCast(self);
        return try this.getWaveform();
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *ISimpleHapticsControllerFeedback = @ptrCast(self);
        return try this.getDuration();
    }
    pub const NAME: []const u8 = "Windows.Devices.Haptics.SimpleHapticsControllerFeedback";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISimpleHapticsControllerFeedback.GUID;
    pub const IID: Guid = ISimpleHapticsControllerFeedback.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISimpleHapticsControllerFeedback.SIGNATURE);
};
pub const VibrationAccessStatus = enum(i32) {
    Allowed = 0,
    DeniedByUser = 1,
    DeniedBySystem = 2,
    DeniedByEnergySaver = 3,
};
pub const VibrationDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IVibrationDevice = @ptrCast(self);
        return try this.getId();
    }
    pub fn getSimpleHapticsController(self: *@This()) core.HResult!*SimpleHapticsController {
        const this: *IVibrationDevice = @ptrCast(self);
        return try this.getSimpleHapticsController();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn RequestAccessAsync() core.HResult!*IAsyncOperation(VibrationAccessStatus) {
        const factory = @This().IVibrationDeviceStaticsCache.get();
        return try factory.RequestAccessAsync();
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IVibrationDeviceStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceId: HSTRING) core.HResult!*IAsyncOperation(VibrationDevice) {
        const factory = @This().IVibrationDeviceStaticsCache.get();
        return try factory.FromIdAsync(deviceId);
    }
    pub fn GetDefaultAsync() core.HResult!*IAsyncOperation(VibrationDevice) {
        const factory = @This().IVibrationDeviceStaticsCache.get();
        return try factory.GetDefaultAsync();
    }
    pub fn FindAllAsync() core.HResult!*IAsyncOperation(IVectorView(VibrationDevice)) {
        const factory = @This().IVibrationDeviceStaticsCache.get();
        return try factory.FindAllAsync();
    }
    pub const NAME: []const u8 = "Windows.Devices.Haptics.VibrationDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVibrationDevice.GUID;
    pub const IID: Guid = IVibrationDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVibrationDevice.SIGNATURE);
    var _IVibrationDeviceStaticsCache: FactoryCache(IVibrationDeviceStatics, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const FactoryCache = @import("../core.zig").FactoryCache;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const TrustLevel = @import("../root.zig").TrustLevel;
const HSTRING = @import("../root.zig").HSTRING;
