pub const GazeDeviceConfigurationStatePreview = enum(i32) {
    Unknown = 0,
    Ready = 1,
    Configuring = 2,
    ScreenSetupNeeded = 3,
    UserCalibrationNeeded = 4,
};
pub const GazeDevicePreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IGazeDevicePreview = @ptrCast(self);
        return try this.getId();
    }
    pub fn getCanTrackEyes(self: *@This()) core.HResult!bool {
        const this: *IGazeDevicePreview = @ptrCast(self);
        return try this.getCanTrackEyes();
    }
    pub fn getCanTrackHead(self: *@This()) core.HResult!bool {
        const this: *IGazeDevicePreview = @ptrCast(self);
        return try this.getCanTrackHead();
    }
    pub fn getConfigurationState(self: *@This()) core.HResult!GazeDeviceConfigurationStatePreview {
        const this: *IGazeDevicePreview = @ptrCast(self);
        return try this.getConfigurationState();
    }
    pub fn RequestCalibrationAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IGazeDevicePreview = @ptrCast(self);
        return try this.RequestCalibrationAsync();
    }
    pub fn GetNumericControlDescriptions(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*IVectorView(HidNumericControlDescription) {
        const this: *IGazeDevicePreview = @ptrCast(self);
        return try this.GetNumericControlDescriptions(usagePage, usageId);
    }
    pub fn GetBooleanControlDescriptions(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*IVectorView(HidBooleanControlDescription) {
        const this: *IGazeDevicePreview = @ptrCast(self);
        return try this.GetBooleanControlDescriptions(usagePage, usageId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.GazeDevicePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGazeDevicePreview.GUID;
    pub const IID: Guid = IGazeDevicePreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGazeDevicePreview.SIGNATURE);
};
pub const GazeDeviceWatcherAddedPreviewEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDevice(self: *@This()) core.HResult!*GazeDevicePreview {
        const this: *IGazeDeviceWatcherAddedPreviewEventArgs = @ptrCast(self);
        return try this.getDevice();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.GazeDeviceWatcherAddedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGazeDeviceWatcherAddedPreviewEventArgs.GUID;
    pub const IID: Guid = IGazeDeviceWatcherAddedPreviewEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGazeDeviceWatcherAddedPreviewEventArgs.SIGNATURE);
};
pub const GazeDeviceWatcherPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(GazeDeviceWatcherPreview,GazeDeviceWatcherAddedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGazeDeviceWatcherPreview = @ptrCast(self);
        return try this.addAdded(handler);
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGazeDeviceWatcherPreview = @ptrCast(self);
        return try this.removeAdded(token);
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(GazeDeviceWatcherPreview,GazeDeviceWatcherRemovedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGazeDeviceWatcherPreview = @ptrCast(self);
        return try this.addRemoved(handler);
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGazeDeviceWatcherPreview = @ptrCast(self);
        return try this.removeRemoved(token);
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(GazeDeviceWatcherPreview,GazeDeviceWatcherUpdatedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGazeDeviceWatcherPreview = @ptrCast(self);
        return try this.addUpdated(handler);
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGazeDeviceWatcherPreview = @ptrCast(self);
        return try this.removeUpdated(token);
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(GazeDeviceWatcherPreview,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IGazeDeviceWatcherPreview = @ptrCast(self);
        return try this.addEnumerationCompleted(handler);
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGazeDeviceWatcherPreview = @ptrCast(self);
        return try this.removeEnumerationCompleted(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IGazeDeviceWatcherPreview = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IGazeDeviceWatcherPreview = @ptrCast(self);
        return try this.Stop();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.GazeDeviceWatcherPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGazeDeviceWatcherPreview.GUID;
    pub const IID: Guid = IGazeDeviceWatcherPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGazeDeviceWatcherPreview.SIGNATURE);
};
pub const GazeDeviceWatcherRemovedPreviewEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDevice(self: *@This()) core.HResult!*GazeDevicePreview {
        const this: *IGazeDeviceWatcherRemovedPreviewEventArgs = @ptrCast(self);
        return try this.getDevice();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.GazeDeviceWatcherRemovedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGazeDeviceWatcherRemovedPreviewEventArgs.GUID;
    pub const IID: Guid = IGazeDeviceWatcherRemovedPreviewEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGazeDeviceWatcherRemovedPreviewEventArgs.SIGNATURE);
};
pub const GazeDeviceWatcherUpdatedPreviewEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDevice(self: *@This()) core.HResult!*GazeDevicePreview {
        const this: *IGazeDeviceWatcherUpdatedPreviewEventArgs = @ptrCast(self);
        return try this.getDevice();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.GazeDeviceWatcherUpdatedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGazeDeviceWatcherUpdatedPreviewEventArgs.GUID;
    pub const IID: Guid = IGazeDeviceWatcherUpdatedPreviewEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGazeDeviceWatcherUpdatedPreviewEventArgs.SIGNATURE);
};
pub const GazeEnteredPreviewEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IGazeEnteredPreviewEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IGazeEnteredPreviewEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getCurrentPoint(self: *@This()) core.HResult!*GazePointPreview {
        const this: *IGazeEnteredPreviewEventArgs = @ptrCast(self);
        return try this.getCurrentPoint();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.GazeEnteredPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGazeEnteredPreviewEventArgs.GUID;
    pub const IID: Guid = IGazeEnteredPreviewEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGazeEnteredPreviewEventArgs.SIGNATURE);
};
pub const GazeExitedPreviewEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IGazeExitedPreviewEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IGazeExitedPreviewEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getCurrentPoint(self: *@This()) core.HResult!*GazePointPreview {
        const this: *IGazeExitedPreviewEventArgs = @ptrCast(self);
        return try this.getCurrentPoint();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.GazeExitedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGazeExitedPreviewEventArgs.GUID;
    pub const IID: Guid = IGazeExitedPreviewEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGazeExitedPreviewEventArgs.SIGNATURE);
};
pub const GazeInputSourcePreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addGazeMoved(self: *@This(), handler: *TypedEventHandler(GazeInputSourcePreview,GazeMovedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGazeInputSourcePreview = @ptrCast(self);
        return try this.addGazeMoved(handler);
    }
    pub fn removeGazeMoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGazeInputSourcePreview = @ptrCast(self);
        return try this.removeGazeMoved(token);
    }
    pub fn addGazeEntered(self: *@This(), handler: *TypedEventHandler(GazeInputSourcePreview,GazeEnteredPreviewEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGazeInputSourcePreview = @ptrCast(self);
        return try this.addGazeEntered(handler);
    }
    pub fn removeGazeEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGazeInputSourcePreview = @ptrCast(self);
        return try this.removeGazeEntered(token);
    }
    pub fn addGazeExited(self: *@This(), handler: *TypedEventHandler(GazeInputSourcePreview,GazeExitedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IGazeInputSourcePreview = @ptrCast(self);
        return try this.addGazeExited(handler);
    }
    pub fn removeGazeExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IGazeInputSourcePreview = @ptrCast(self);
        return try this.removeGazeExited(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*GazeInputSourcePreview {
        const factory = @This().IGazeInputSourcePreviewStaticsCache.get();
        return try factory.GetForCurrentView();
    }
    pub fn CreateWatcher() core.HResult!*GazeDeviceWatcherPreview {
        const factory = @This().IGazeInputSourcePreviewStaticsCache.get();
        return try factory.CreateWatcher();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.GazeInputSourcePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGazeInputSourcePreview.GUID;
    pub const IID: Guid = IGazeInputSourcePreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGazeInputSourcePreview.SIGNATURE);
    var _IGazeInputSourcePreviewStaticsCache: FactoryCache(IGazeInputSourcePreviewStatics, RUNTIME_NAME) = .{};
};
pub const GazeMovedPreviewEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IGazeMovedPreviewEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IGazeMovedPreviewEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getCurrentPoint(self: *@This()) core.HResult!*GazePointPreview {
        const this: *IGazeMovedPreviewEventArgs = @ptrCast(self);
        return try this.getCurrentPoint();
    }
    pub fn GetIntermediatePoints(self: *@This()) core.HResult!*IVector(GazePointPreview) {
        const this: *IGazeMovedPreviewEventArgs = @ptrCast(self);
        return try this.GetIntermediatePoints();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.GazeMovedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGazeMovedPreviewEventArgs.GUID;
    pub const IID: Guid = IGazeMovedPreviewEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGazeMovedPreviewEventArgs.SIGNATURE);
};
pub const GazePointPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceDevice(self: *@This()) core.HResult!*GazeDevicePreview {
        const this: *IGazePointPreview = @ptrCast(self);
        return try this.getSourceDevice();
    }
    pub fn getEyeGazePosition(self: *@This()) core.HResult!*IReference(Point) {
        const this: *IGazePointPreview = @ptrCast(self);
        return try this.getEyeGazePosition();
    }
    pub fn getHeadGazePosition(self: *@This()) core.HResult!*IReference(Point) {
        const this: *IGazePointPreview = @ptrCast(self);
        return try this.getHeadGazePosition();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!u64 {
        const this: *IGazePointPreview = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub fn getHidInputReport(self: *@This()) core.HResult!*HidInputReport {
        const this: *IGazePointPreview = @ptrCast(self);
        return try this.getHidInputReport();
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.GazePointPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGazePointPreview.GUID;
    pub const IID: Guid = IGazePointPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGazePointPreview.SIGNATURE);
};
pub const IGazeDevicePreview = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanTrackEyes(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanTrackEyes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanTrackHead(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanTrackHead(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getConfigurationState(self: *@This()) core.HResult!GazeDeviceConfigurationStatePreview {
        var _r: GazeDeviceConfigurationStatePreview = undefined;
        const _c = self.vtable.get_ConfigurationState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestCalibrationAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestCalibrationAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNumericControlDescriptions(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*IVectorView(HidNumericControlDescription) {
        var _r: *IVectorView(HidNumericControlDescription) = undefined;
        const _c = self.vtable.GetNumericControlDescriptions(@ptrCast(self), usagePage, usageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBooleanControlDescriptions(self: *@This(), usagePage: u16, usageId: u16) core.HResult!*IVectorView(HidBooleanControlDescription) {
        var _r: *IVectorView(HidBooleanControlDescription) = undefined;
        const _c = self.vtable.GetBooleanControlDescriptions(@ptrCast(self), usagePage, usageId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.IGazeDevicePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e79e7ee9-b389-11e7-b201-c8d3ffb75721";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_CanTrackEyes: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanTrackHead: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ConfigurationState: *const fn(self: *anyopaque, _r: *GazeDeviceConfigurationStatePreview) callconv(.winapi) HRESULT,
        RequestCalibrationAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        GetNumericControlDescriptions: *const fn(self: *anyopaque, usagePage: u16, usageId: u16, _r: **IVectorView(HidNumericControlDescription)) callconv(.winapi) HRESULT,
        GetBooleanControlDescriptions: *const fn(self: *anyopaque, usagePage: u16, usageId: u16, _r: **IVectorView(HidBooleanControlDescription)) callconv(.winapi) HRESULT,
    };
};
pub const IGazeDeviceWatcherAddedPreviewEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDevice(self: *@This()) core.HResult!*GazeDevicePreview {
        var _r: *GazeDevicePreview = undefined;
        const _c = self.vtable.get_Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.IGazeDeviceWatcherAddedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e79e7eed-b389-11e7-b201-c8d3ffb75721";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Device: *const fn(self: *anyopaque, _r: **GazeDevicePreview) callconv(.winapi) HRESULT,
    };
};
pub const IGazeDeviceWatcherPreview = extern struct {
    vtable: *const VTable,
    pub fn addAdded(self: *@This(), handler: *TypedEventHandler(GazeDeviceWatcherPreview,GazeDeviceWatcherAddedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Added(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Added(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addRemoved(self: *@This(), handler: *TypedEventHandler(GazeDeviceWatcherPreview,GazeDeviceWatcherRemovedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Removed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRemoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Removed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUpdated(self: *@This(), handler: *TypedEventHandler(GazeDeviceWatcherPreview,GazeDeviceWatcherUpdatedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Updated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUpdated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Updated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnumerationCompleted(self: *@This(), handler: *TypedEventHandler(GazeDeviceWatcherPreview,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnumerationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnumerationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnumerationCompleted(@ptrCast(self), token);
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
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.IGazeDeviceWatcherPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e79e7ee7-b389-11e7-b201-c8d3ffb75721";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Added: *const fn(self: *anyopaque, handler: *TypedEventHandler(GazeDeviceWatcherPreview,GazeDeviceWatcherAddedPreviewEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Added: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Removed: *const fn(self: *anyopaque, handler: *TypedEventHandler(GazeDeviceWatcherPreview,GazeDeviceWatcherRemovedPreviewEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Removed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Updated: *const fn(self: *anyopaque, handler: *TypedEventHandler(GazeDeviceWatcherPreview,GazeDeviceWatcherUpdatedPreviewEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Updated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnumerationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(GazeDeviceWatcherPreview,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnumerationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IGazeDeviceWatcherRemovedPreviewEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDevice(self: *@This()) core.HResult!*GazeDevicePreview {
        var _r: *GazeDevicePreview = undefined;
        const _c = self.vtable.get_Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.IGazeDeviceWatcherRemovedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2631f08-0e3f-431f-a606-50b35af94a1c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Device: *const fn(self: *anyopaque, _r: **GazeDevicePreview) callconv(.winapi) HRESULT,
    };
};
pub const IGazeDeviceWatcherUpdatedPreviewEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDevice(self: *@This()) core.HResult!*GazeDevicePreview {
        var _r: *GazeDevicePreview = undefined;
        const _c = self.vtable.get_Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.IGazeDeviceWatcherUpdatedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7fe830ef-7f08-4737-88e1-4a83ae4e4885";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Device: *const fn(self: *anyopaque, _r: **GazeDevicePreview) callconv(.winapi) HRESULT,
    };
};
pub const IGazeEnteredPreviewEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Handled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Handled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCurrentPoint(self: *@This()) core.HResult!*GazePointPreview {
        var _r: *GazePointPreview = undefined;
        const _c = self.vtable.get_CurrentPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.IGazeEnteredPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2567bf43-1225-489f-9dd1-daa7c50fbf4b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CurrentPoint: *const fn(self: *anyopaque, _r: **GazePointPreview) callconv(.winapi) HRESULT,
    };
};
pub const IGazeExitedPreviewEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Handled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Handled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCurrentPoint(self: *@This()) core.HResult!*GazePointPreview {
        var _r: *GazePointPreview = undefined;
        const _c = self.vtable.get_CurrentPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.IGazeExitedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d0af07e-7d83-40ef-9f0a-fbc1bbdcc5ac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CurrentPoint: *const fn(self: *anyopaque, _r: **GazePointPreview) callconv(.winapi) HRESULT,
    };
};
pub const IGazeInputSourcePreview = extern struct {
    vtable: *const VTable,
    pub fn addGazeMoved(self: *@This(), handler: *TypedEventHandler(GazeInputSourcePreview,GazeMovedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GazeMoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGazeMoved(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GazeMoved(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGazeEntered(self: *@This(), handler: *TypedEventHandler(GazeInputSourcePreview,GazeEnteredPreviewEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GazeEntered(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGazeEntered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GazeEntered(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGazeExited(self: *@This(), handler: *TypedEventHandler(GazeInputSourcePreview,GazeExitedPreviewEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GazeExited(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGazeExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GazeExited(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.IGazeInputSourcePreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e79e7ee8-b389-11e7-b201-c8d3ffb75721";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_GazeMoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(GazeInputSourcePreview,GazeMovedPreviewEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GazeMoved: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GazeEntered: *const fn(self: *anyopaque, handler: *TypedEventHandler(GazeInputSourcePreview,GazeEnteredPreviewEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GazeEntered: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GazeExited: *const fn(self: *anyopaque, handler: *TypedEventHandler(GazeInputSourcePreview,GazeExitedPreviewEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GazeExited: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IGazeInputSourcePreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*GazeInputSourcePreview {
        var _r: *GazeInputSourcePreview = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWatcher(self: *@This()) core.HResult!*GazeDeviceWatcherPreview {
        var _r: *GazeDeviceWatcherPreview = undefined;
        const _c = self.vtable.CreateWatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.IGazeInputSourcePreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e79e7ee6-b389-11e7-b201-c8d3ffb75721";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **GazeInputSourcePreview) callconv(.winapi) HRESULT,
        CreateWatcher: *const fn(self: *anyopaque, _r: **GazeDeviceWatcherPreview) callconv(.winapi) HRESULT,
    };
};
pub const IGazeMovedPreviewEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Handled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Handled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCurrentPoint(self: *@This()) core.HResult!*GazePointPreview {
        var _r: *GazePointPreview = undefined;
        const _c = self.vtable.get_CurrentPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIntermediatePoints(self: *@This()) core.HResult!*IVector(GazePointPreview) {
        var _r: *IVector(GazePointPreview) = undefined;
        const _c = self.vtable.GetIntermediatePoints(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.IGazeMovedPreviewEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e79e7eeb-b389-11e7-b201-c8d3ffb75721";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CurrentPoint: *const fn(self: *anyopaque, _r: **GazePointPreview) callconv(.winapi) HRESULT,
        GetIntermediatePoints: *const fn(self: *anyopaque, _r: **IVector(GazePointPreview)) callconv(.winapi) HRESULT,
    };
};
pub const IGazePointPreview = extern struct {
    vtable: *const VTable,
    pub fn getSourceDevice(self: *@This()) core.HResult!*GazeDevicePreview {
        var _r: *GazeDevicePreview = undefined;
        const _c = self.vtable.get_SourceDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEyeGazePosition(self: *@This()) core.HResult!*IReference(Point) {
        var _r: *IReference(Point) = undefined;
        const _c = self.vtable.get_EyeGazePosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeadGazePosition(self: *@This()) core.HResult!*IReference(Point) {
        var _r: *IReference(Point) = undefined;
        const _c = self.vtable.get_HeadGazePosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHidInputReport(self: *@This()) core.HResult!*HidInputReport {
        var _r: *HidInputReport = undefined;
        const _c = self.vtable.get_HidInputReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Input.Preview.IGazePointPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e79e7eea-b389-11e7-b201-c8d3ffb75721";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceDevice: *const fn(self: *anyopaque, _r: **GazeDevicePreview) callconv(.winapi) HRESULT,
        get_EyeGazePosition: *const fn(self: *anyopaque, _r: **IReference(Point)) callconv(.winapi) HRESULT,
        get_HeadGazePosition: *const fn(self: *anyopaque, _r: **IReference(Point)) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_HidInputReport: *const fn(self: *anyopaque, _r: **HidInputReport) callconv(.winapi) HRESULT,
    };
};
const HSTRING = @import("../../root.zig").HSTRING;
const Guid = @import("../../root.zig").Guid;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IUnknown = @import("../../root.zig").IUnknown;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const IReference = @import("../../Foundation.zig").IReference;
const Point = @import("../../Foundation.zig").Point;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const FactoryCache = @import("../../core.zig").FactoryCache;
const HidInputReport = @import("../HumanInterfaceDevice.zig").HidInputReport;
const HidNumericControlDescription = @import("../HumanInterfaceDevice.zig").HidNumericControlDescription;
const HidBooleanControlDescription = @import("../HumanInterfaceDevice.zig").HidBooleanControlDescription;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
