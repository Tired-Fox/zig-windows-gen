pub const DisplayAdapter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!DisplayAdapterId {
        const this: *IDisplayAdapter = @ptrCast(self);
        return try this.getId();
    }
    pub fn getDeviceInterfacePath(self: *@This()) core.HResult!HSTRING {
        const this: *IDisplayAdapter = @ptrCast(self);
        return try this.getDeviceInterfacePath();
    }
    pub fn getSourceCount(self: *@This()) core.HResult!u32 {
        const this: *IDisplayAdapter = @ptrCast(self);
        return try this.getSourceCount();
    }
    pub fn getPciVendorId(self: *@This()) core.HResult!u32 {
        const this: *IDisplayAdapter = @ptrCast(self);
        return try this.getPciVendorId();
    }
    pub fn getPciDeviceId(self: *@This()) core.HResult!u32 {
        const this: *IDisplayAdapter = @ptrCast(self);
        return try this.getPciDeviceId();
    }
    pub fn getPciSubSystemId(self: *@This()) core.HResult!u32 {
        const this: *IDisplayAdapter = @ptrCast(self);
        return try this.getPciSubSystemId();
    }
    pub fn getPciRevision(self: *@This()) core.HResult!u32 {
        const this: *IDisplayAdapter = @ptrCast(self);
        return try this.getPciRevision();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        const this: *IDisplayAdapter = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getIsIndirectDisplayDevice(self: *@This()) core.HResult!bool {
        var this: ?*IDisplayAdapter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayAdapter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsIndirectDisplayDevice();
    }
    pub fn getPreferredRenderAdapter(self: *@This()) core.HResult!*DisplayAdapter {
        var this: ?*IDisplayAdapter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayAdapter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPreferredRenderAdapter();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromId(id: DisplayAdapterId) core.HResult!*DisplayAdapter {
        const factory = @This().IDisplayAdapterStaticsCache.get();
        return try factory.FromId(id);
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayAdapter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayAdapter.GUID;
    pub const IID: Guid = IDisplayAdapter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayAdapter.SIGNATURE);
    var _IDisplayAdapterStaticsCache: FactoryCache(IDisplayAdapterStatics, RUNTIME_NAME) = .{};
};
pub const DisplayBitsPerChannel = enum(i32) {
    None = 0,
    Bpc6 = 1,
    Bpc8 = 2,
    Bpc10 = 4,
    Bpc12 = 8,
    Bpc14 = 16,
    Bpc16 = 32,
};
pub const DisplayDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateScanoutSource(self: *@This(), target: *DisplayTarget) core.HResult!*DisplaySource {
        const this: *IDisplayDevice = @ptrCast(self);
        return try this.CreateScanoutSource(target);
    }
    pub fn CreatePrimary(self: *@This(), target: *DisplayTarget, desc: *DisplayPrimaryDescription) core.HResult!*DisplaySurface {
        const this: *IDisplayDevice = @ptrCast(self);
        return try this.CreatePrimary(target, desc);
    }
    pub fn CreateTaskPool(self: *@This()) core.HResult!*DisplayTaskPool {
        const this: *IDisplayDevice = @ptrCast(self);
        return try this.CreateTaskPool();
    }
    pub fn CreatePeriodicFence(self: *@This(), target: *DisplayTarget, offsetFromVBlank: TimeSpan) core.HResult!*DisplayFence {
        const this: *IDisplayDevice = @ptrCast(self);
        return try this.CreatePeriodicFence(target, offsetFromVBlank);
    }
    pub fn WaitForVBlank(self: *@This(), source: *DisplaySource) core.HResult!void {
        const this: *IDisplayDevice = @ptrCast(self);
        return try this.WaitForVBlank(source);
    }
    pub fn CreateSimpleScanout(self: *@This(), pSource: *DisplaySource, pSurface: *DisplaySurface, SubResourceIndex: u32, SyncInterval: u32) core.HResult!*DisplayScanout {
        const this: *IDisplayDevice = @ptrCast(self);
        return try this.CreateSimpleScanout(pSource, pSurface, SubResourceIndex, SyncInterval);
    }
    pub fn IsCapabilitySupported(self: *@This(), capability: DisplayDeviceCapability) core.HResult!bool {
        const this: *IDisplayDevice = @ptrCast(self);
        return try this.IsCapabilitySupported(capability);
    }
    pub fn CreateSimpleScanoutWithDirtyRectsAndOptions(self: *@This(), source: *DisplaySource, surface: *DisplaySurface, subresourceIndex: u32, syncInterval: u32, dirtyRects: *IIterable(RectInt32), options: DisplayScanoutOptions) core.HResult!*DisplayScanout {
        var this: ?*IDisplayDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateSimpleScanoutWithDirtyRectsAndOptions(source, surface, subresourceIndex, syncInterval, dirtyRects, options);
    }
    pub fn getRenderAdapterId(self: *@This()) core.HResult!DisplayAdapterId {
        var this: ?*IDisplayDeviceRenderAdapter = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayDeviceRenderAdapter.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRenderAdapterId();
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayDevice.GUID;
    pub const IID: Guid = IDisplayDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayDevice.SIGNATURE);
};
pub const DisplayDeviceCapability = enum(i32) {
    FlipOverride = 0,
};
pub const DisplayFence = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayFence";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayFence.GUID;
    pub const IID: Guid = IDisplayFence.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayFence.SIGNATURE);
};
pub const DisplayManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetCurrentTargets(self: *@This()) core.HResult!*IVectorView(DisplayTarget) {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.GetCurrentTargets();
    }
    pub fn GetCurrentAdapters(self: *@This()) core.HResult!*IVectorView(DisplayAdapter) {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.GetCurrentAdapters();
    }
    pub fn TryAcquireTarget(self: *@This(), target: *DisplayTarget) core.HResult!DisplayManagerResult {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.TryAcquireTarget(target);
    }
    pub fn ReleaseTarget(self: *@This(), target: *DisplayTarget) core.HResult!void {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.ReleaseTarget(target);
    }
    pub fn TryReadCurrentStateForAllTargets(self: *@This()) core.HResult!*DisplayManagerResultWithState {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.TryReadCurrentStateForAllTargets();
    }
    pub fn TryAcquireTargetsAndReadCurrentState(self: *@This(), targets: *IIterable(DisplayTarget)) core.HResult!*DisplayManagerResultWithState {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.TryAcquireTargetsAndReadCurrentState(targets);
    }
    pub fn TryAcquireTargetsAndCreateEmptyState(self: *@This(), targets: *IIterable(DisplayTarget)) core.HResult!*DisplayManagerResultWithState {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.TryAcquireTargetsAndCreateEmptyState(targets);
    }
    pub fn TryAcquireTargetsAndCreateSubstate(self: *@This(), existingState: *DisplayState, targets: *IIterable(DisplayTarget)) core.HResult!*DisplayManagerResultWithState {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.TryAcquireTargetsAndCreateSubstate(existingState, targets);
    }
    pub fn CreateDisplayDevice(self: *@This(), adapter: *DisplayAdapter) core.HResult!*DisplayDevice {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.CreateDisplayDevice(adapter);
    }
    pub fn addEnabled(self: *@This(), handler: *TypedEventHandler(DisplayManager,DisplayManagerEnabledEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.addEnabled(handler);
    }
    pub fn removeEnabled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.removeEnabled(token);
    }
    pub fn addDisabled(self: *@This(), handler: *TypedEventHandler(DisplayManager,DisplayManagerDisabledEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.addDisabled(handler);
    }
    pub fn removeDisabled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.removeDisabled(token);
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(DisplayManager,DisplayManagerChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.addChanged(handler);
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.removeChanged(token);
    }
    pub fn addPathsFailedOrInvalidated(self: *@This(), handler: *TypedEventHandler(DisplayManager,DisplayManagerPathsFailedOrInvalidatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.addPathsFailedOrInvalidated(handler);
    }
    pub fn removePathsFailedOrInvalidated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.removePathsFailedOrInvalidated(token);
    }
    pub fn Start(self: *@This()) core.HResult!void {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.Start();
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IDisplayManager = @ptrCast(self);
        return try this.Stop();
    }
    pub fn TryReadCurrentStateForModeQuery(self: *@This()) core.HResult!*DisplayManagerResultWithState {
        var this: ?*IDisplayManager2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayManager2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryReadCurrentStateForModeQuery();
    }
    pub fn CreateDisplayDeviceForIndirectAdapter(self: *@This(), indirectAdapter: *DisplayAdapter, renderAdapter: *DisplayAdapter) core.HResult!*DisplayDevice {
        var this: ?*IDisplayManager3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayManager3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateDisplayDeviceForIndirectAdapter(indirectAdapter, renderAdapter);
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
    pub fn Create(options: DisplayManagerOptions) core.HResult!*DisplayManager {
        const factory = @This().IDisplayManagerStaticsCache.get();
        return try factory.Create(options);
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayManager.GUID;
    pub const IID: Guid = IDisplayManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayManager.SIGNATURE);
    var _IDisplayManagerStaticsCache: FactoryCache(IDisplayManagerStatics, RUNTIME_NAME) = .{};
};
pub const DisplayManagerChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IDisplayManagerChangedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IDisplayManagerChangedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IDisplayManagerChangedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayManagerChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayManagerChangedEventArgs.GUID;
    pub const IID: Guid = IDisplayManagerChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayManagerChangedEventArgs.SIGNATURE);
};
pub const DisplayManagerDisabledEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IDisplayManagerDisabledEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IDisplayManagerDisabledEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IDisplayManagerDisabledEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayManagerDisabledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayManagerDisabledEventArgs.GUID;
    pub const IID: Guid = IDisplayManagerDisabledEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayManagerDisabledEventArgs.SIGNATURE);
};
pub const DisplayManagerEnabledEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IDisplayManagerEnabledEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IDisplayManagerEnabledEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IDisplayManagerEnabledEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayManagerEnabledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayManagerEnabledEventArgs.GUID;
    pub const IID: Guid = IDisplayManagerEnabledEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayManagerEnabledEventArgs.SIGNATURE);
};
pub const DisplayManagerOptions = enum(i32) {
    None = 0,
    EnforceSourceOwnership = 1,
    VirtualRefreshRateAware = 2,
};
pub const DisplayManagerPathsFailedOrInvalidatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IDisplayManagerPathsFailedOrInvalidatedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IDisplayManagerPathsFailedOrInvalidatedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IDisplayManagerPathsFailedOrInvalidatedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayManagerPathsFailedOrInvalidatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayManagerPathsFailedOrInvalidatedEventArgs.GUID;
    pub const IID: Guid = IDisplayManagerPathsFailedOrInvalidatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayManagerPathsFailedOrInvalidatedEventArgs.SIGNATURE);
};
pub const DisplayManagerResult = enum(i32) {
    Success = 0,
    UnknownFailure = 1,
    TargetAccessDenied = 2,
    TargetStale = 3,
    RemoteSessionNotSupported = 4,
};
pub const DisplayManagerResultWithState = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getErrorCode(self: *@This()) core.HResult!DisplayManagerResult {
        const this: *IDisplayManagerResultWithState = @ptrCast(self);
        return try this.getErrorCode();
    }
    pub fn getExtendedErrorCode(self: *@This()) core.HResult!HResult {
        const this: *IDisplayManagerResultWithState = @ptrCast(self);
        return try this.getExtendedErrorCode();
    }
    pub fn getState(self: *@This()) core.HResult!*DisplayState {
        const this: *IDisplayManagerResultWithState = @ptrCast(self);
        return try this.getState();
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayManagerResultWithState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayManagerResultWithState.GUID;
    pub const IID: Guid = IDisplayManagerResultWithState.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayManagerResultWithState.SIGNATURE);
};
pub const DisplayModeInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceResolution(self: *@This()) core.HResult!SizeInt32 {
        const this: *IDisplayModeInfo = @ptrCast(self);
        return try this.getSourceResolution();
    }
    pub fn getIsStereo(self: *@This()) core.HResult!bool {
        const this: *IDisplayModeInfo = @ptrCast(self);
        return try this.getIsStereo();
    }
    pub fn getSourcePixelFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        const this: *IDisplayModeInfo = @ptrCast(self);
        return try this.getSourcePixelFormat();
    }
    pub fn getTargetResolution(self: *@This()) core.HResult!SizeInt32 {
        const this: *IDisplayModeInfo = @ptrCast(self);
        return try this.getTargetResolution();
    }
    pub fn getPresentationRate(self: *@This()) core.HResult!DisplayPresentationRate {
        const this: *IDisplayModeInfo = @ptrCast(self);
        return try this.getPresentationRate();
    }
    pub fn getIsInterlaced(self: *@This()) core.HResult!bool {
        const this: *IDisplayModeInfo = @ptrCast(self);
        return try this.getIsInterlaced();
    }
    pub fn GetWireFormatSupportedBitsPerChannel(self: *@This(), encoding: DisplayWireFormatPixelEncoding) core.HResult!DisplayBitsPerChannel {
        const this: *IDisplayModeInfo = @ptrCast(self);
        return try this.GetWireFormatSupportedBitsPerChannel(encoding);
    }
    pub fn IsWireFormatSupported(self: *@This(), wireFormat: *DisplayWireFormat) core.HResult!bool {
        const this: *IDisplayModeInfo = @ptrCast(self);
        return try this.IsWireFormatSupported(wireFormat);
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        const this: *IDisplayModeInfo = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getPhysicalPresentationRate(self: *@This()) core.HResult!DisplayPresentationRate {
        var this: ?*IDisplayModeInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayModeInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPhysicalPresentationRate();
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayModeInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayModeInfo.GUID;
    pub const IID: Guid = IDisplayModeInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayModeInfo.SIGNATURE);
};
pub const DisplayModeQueryOptions = enum(i32) {
    None = 0,
    OnlyPreferredResolution = 1,
};
pub const DisplayMuxDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        const this: *IDisplayMuxDevice = @ptrCast(self);
        return try this.getId();
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *IDisplayMuxDevice = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn GetAvailableMuxTargets(self: *@This()) core.HResult!*IVectorView(DisplayTarget) {
        const this: *IDisplayMuxDevice = @ptrCast(self);
        return try this.GetAvailableMuxTargets();
    }
    pub fn getCurrentTarget(self: *@This()) core.HResult!*DisplayTarget {
        const this: *IDisplayMuxDevice = @ptrCast(self);
        return try this.getCurrentTarget();
    }
    pub fn getPreferredTarget(self: *@This()) core.HResult!*DisplayTarget {
        const this: *IDisplayMuxDevice = @ptrCast(self);
        return try this.getPreferredTarget();
    }
    pub fn getIsAutomaticTargetSwitchingEnabled(self: *@This()) core.HResult!bool {
        const this: *IDisplayMuxDevice = @ptrCast(self);
        return try this.getIsAutomaticTargetSwitchingEnabled();
    }
    pub fn SetPreferredTarget(self: *@This(), target: *DisplayTarget) core.HResult!*IAsyncAction {
        const this: *IDisplayMuxDevice = @ptrCast(self);
        return try this.SetPreferredTarget(target);
    }
    pub fn SetAutomaticTargetSwitching(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IDisplayMuxDevice = @ptrCast(self);
        return try this.SetAutomaticTargetSwitching();
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(DisplayMuxDevice,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDisplayMuxDevice = @ptrCast(self);
        return try this.addChanged(handler);
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDisplayMuxDevice = @ptrCast(self);
        return try this.removeChanged(token);
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
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const factory = @This().IDisplayMuxDeviceStaticsCache.get();
        return try factory.GetDeviceSelector();
    }
    pub fn FromIdAsync(deviceInterfaceId: HSTRING) core.HResult!*IAsyncOperation(DisplayMuxDevice) {
        const factory = @This().IDisplayMuxDeviceStaticsCache.get();
        return try factory.FromIdAsync(deviceInterfaceId);
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayMuxDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayMuxDevice.GUID;
    pub const IID: Guid = IDisplayMuxDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayMuxDevice.SIGNATURE);
    var _IDisplayMuxDeviceStaticsCache: FactoryCache(IDisplayMuxDeviceStatics, RUNTIME_NAME) = .{};
};
pub const DisplayPath = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getView(self: *@This()) core.HResult!*DisplayView {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.getView();
    }
    pub fn getTarget(self: *@This()) core.HResult!*DisplayTarget {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.getTarget();
    }
    pub fn getStatus(self: *@This()) core.HResult!DisplayPathStatus {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getSourceResolution(self: *@This()) core.HResult!*IReference(SizeInt32) {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.getSourceResolution();
    }
    pub fn putSourceResolution(self: *@This(), value: *IReference(SizeInt32)) core.HResult!void {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.putSourceResolution(value);
    }
    pub fn getSourcePixelFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.getSourcePixelFormat();
    }
    pub fn putSourcePixelFormat(self: *@This(), value: DirectXPixelFormat) core.HResult!void {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.putSourcePixelFormat(value);
    }
    pub fn getIsStereo(self: *@This()) core.HResult!bool {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.getIsStereo();
    }
    pub fn putIsStereo(self: *@This(), value: bool) core.HResult!void {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.putIsStereo(value);
    }
    pub fn getTargetResolution(self: *@This()) core.HResult!*IReference(SizeInt32) {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.getTargetResolution();
    }
    pub fn putTargetResolution(self: *@This(), value: *IReference(SizeInt32)) core.HResult!void {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.putTargetResolution(value);
    }
    pub fn getPresentationRate(self: *@This()) core.HResult!*IReference(DisplayPresentationRate) {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.getPresentationRate();
    }
    pub fn putPresentationRate(self: *@This(), value: *IReference(DisplayPresentationRate)) core.HResult!void {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.putPresentationRate(value);
    }
    pub fn getIsInterlaced(self: *@This()) core.HResult!*IReference(bool) {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.getIsInterlaced();
    }
    pub fn putIsInterlaced(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.putIsInterlaced(value);
    }
    pub fn getWireFormat(self: *@This()) core.HResult!*DisplayWireFormat {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.getWireFormat();
    }
    pub fn putWireFormat(self: *@This(), value: *DisplayWireFormat) core.HResult!void {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.putWireFormat(value);
    }
    pub fn getRotation(self: *@This()) core.HResult!DisplayRotation {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.getRotation();
    }
    pub fn putRotation(self: *@This(), value: DisplayRotation) core.HResult!void {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.putRotation(value);
    }
    pub fn getScaling(self: *@This()) core.HResult!DisplayPathScaling {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.getScaling();
    }
    pub fn putScaling(self: *@This(), value: DisplayPathScaling) core.HResult!void {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.putScaling(value);
    }
    pub fn FindModes(self: *@This(), flags: DisplayModeQueryOptions) core.HResult!*IVectorView(DisplayModeInfo) {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.FindModes(flags);
    }
    pub fn ApplyPropertiesFromMode(self: *@This(), modeResult: *DisplayModeInfo) core.HResult!void {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.ApplyPropertiesFromMode(modeResult);
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(Guid,IInspectable) {
        const this: *IDisplayPath = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getPhysicalPresentationRate(self: *@This()) core.HResult!*IReference(DisplayPresentationRate) {
        var this: ?*IDisplayPath2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayPath2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPhysicalPresentationRate();
    }
    pub fn putPhysicalPresentationRate(self: *@This(), value: *IReference(DisplayPresentationRate)) core.HResult!void {
        var this: ?*IDisplayPath2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayPath2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPhysicalPresentationRate(value);
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayPath";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayPath.GUID;
    pub const IID: Guid = IDisplayPath.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayPath.SIGNATURE);
};
pub const DisplayPathScaling = enum(i32) {
    Identity = 0,
    Centered = 1,
    Stretched = 2,
    AspectRatioStretched = 3,
    Custom = 4,
    DriverPreferred = 5,
};
pub const DisplayPathStatus = enum(i32) {
    Unknown = 0,
    Succeeded = 1,
    Pending = 2,
    Failed = 3,
    FailedAsync = 4,
    InvalidatedAsync = 5,
};
pub const DisplayPresentStatus = enum(i32) {
    Success = 0,
    SourceStatusPreventedPresent = 1,
    ScanoutInvalid = 2,
    SourceInvalid = 3,
    DeviceInvalid = 4,
    UnknownFailure = 5,
};
pub const DisplayPresentationRate = extern struct {
    VerticalSyncRate: Rational,
    VerticalSyncsPerPresentation: i32,
};
pub const DisplayPrimaryDescription = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWidth(self: *@This()) core.HResult!u32 {
        const this: *IDisplayPrimaryDescription = @ptrCast(self);
        return try this.getWidth();
    }
    pub fn getHeight(self: *@This()) core.HResult!u32 {
        const this: *IDisplayPrimaryDescription = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn getFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        const this: *IDisplayPrimaryDescription = @ptrCast(self);
        return try this.getFormat();
    }
    pub fn getColorSpace(self: *@This()) core.HResult!DirectXColorSpace {
        const this: *IDisplayPrimaryDescription = @ptrCast(self);
        return try this.getColorSpace();
    }
    pub fn getIsStereo(self: *@This()) core.HResult!bool {
        const this: *IDisplayPrimaryDescription = @ptrCast(self);
        return try this.getIsStereo();
    }
    pub fn getMultisampleDescription(self: *@This()) core.HResult!Direct3DMultisampleDescription {
        const this: *IDisplayPrimaryDescription = @ptrCast(self);
        return try this.getMultisampleDescription();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        const this: *IDisplayPrimaryDescription = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(width: u32, height: u32, pixelFormat: DirectXPixelFormat, colorSpace: DirectXColorSpace, isStereo: bool, multisampleDescription: Direct3DMultisampleDescription) core.HResult!*DisplayPrimaryDescription {
        const factory = @This().IDisplayPrimaryDescriptionFactoryCache.get();
        return try factory.CreateInstance(width, height, pixelFormat, colorSpace, isStereo, multisampleDescription);
    }
    pub fn CreateWithProperties(extraProperties: *IIterable(IKeyValuePair(Guid,IInspectable)), width: u32, height: u32, pixelFormat: DirectXPixelFormat, colorSpace: DirectXColorSpace, isStereo: bool, multisampleDescription: Direct3DMultisampleDescription) core.HResult!*DisplayPrimaryDescription {
        const factory = @This().IDisplayPrimaryDescriptionStaticsCache.get();
        return try factory.CreateWithProperties(extraProperties, width, height, pixelFormat, colorSpace, isStereo, multisampleDescription);
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayPrimaryDescription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayPrimaryDescription.GUID;
    pub const IID: Guid = IDisplayPrimaryDescription.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayPrimaryDescription.SIGNATURE);
    var _IDisplayPrimaryDescriptionFactoryCache: FactoryCache(IDisplayPrimaryDescriptionFactory, RUNTIME_NAME) = .{};
    var _IDisplayPrimaryDescriptionStaticsCache: FactoryCache(IDisplayPrimaryDescriptionStatics, RUNTIME_NAME) = .{};
};
pub const DisplayRotation = enum(i32) {
    None = 0,
    Clockwise90Degrees = 1,
    Clockwise180Degrees = 2,
    Clockwise270Degrees = 3,
};
pub const DisplayScanout = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayScanout";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayScanout.GUID;
    pub const IID: Guid = IDisplayScanout.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayScanout.SIGNATURE);
};
pub const DisplayScanoutOptions = enum(i32) {
    None = 0,
    AllowTearing = 2,
};
pub const DisplaySource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAdapterId(self: *@This()) core.HResult!DisplayAdapterId {
        const this: *IDisplaySource = @ptrCast(self);
        return try this.getAdapterId();
    }
    pub fn getSourceId(self: *@This()) core.HResult!u32 {
        const this: *IDisplaySource = @ptrCast(self);
        return try this.getSourceId();
    }
    pub fn GetMetadata(self: *@This(), Key: *Guid) core.HResult!*IBuffer {
        const this: *IDisplaySource = @ptrCast(self);
        return try this.GetMetadata(Key);
    }
    pub fn getStatus(self: *@This()) core.HResult!DisplaySourceStatus {
        var this: ?*IDisplaySource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplaySource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getStatus();
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(DisplaySource,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IDisplaySource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplaySource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addStatusChanged(handler);
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IDisplaySource2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplaySource2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeStatusChanged(token);
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplaySource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplaySource.GUID;
    pub const IID: Guid = IDisplaySource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplaySource.SIGNATURE);
};
pub const DisplaySourceStatus = enum(i32) {
    Active = 0,
    PoweredOff = 1,
    Invalid = 2,
    OwnedByAnotherDevice = 3,
    Unowned = 4,
};
pub const DisplayState = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        const this: *IDisplayState = @ptrCast(self);
        return try this.getIsReadOnly();
    }
    pub fn getIsStale(self: *@This()) core.HResult!bool {
        const this: *IDisplayState = @ptrCast(self);
        return try this.getIsStale();
    }
    pub fn getTargets(self: *@This()) core.HResult!*IVectorView(DisplayTarget) {
        const this: *IDisplayState = @ptrCast(self);
        return try this.getTargets();
    }
    pub fn getViews(self: *@This()) core.HResult!*IVectorView(DisplayView) {
        const this: *IDisplayState = @ptrCast(self);
        return try this.getViews();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(Guid,IInspectable) {
        const this: *IDisplayState = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn ConnectTarget(self: *@This(), target: *DisplayTarget) core.HResult!*DisplayPath {
        const this: *IDisplayState = @ptrCast(self);
        return try this.ConnectTarget(target);
    }
    pub fn ConnectTargetWithView(self: *@This(), target: *DisplayTarget, view: *DisplayView) core.HResult!*DisplayPath {
        const this: *IDisplayState = @ptrCast(self);
        return try this.ConnectTargetWithView(target, view);
    }
    pub fn CanConnectTargetToView(self: *@This(), target: *DisplayTarget, view: *DisplayView) core.HResult!bool {
        const this: *IDisplayState = @ptrCast(self);
        return try this.CanConnectTargetToView(target, view);
    }
    pub fn GetViewForTarget(self: *@This(), target: *DisplayTarget) core.HResult!*DisplayView {
        const this: *IDisplayState = @ptrCast(self);
        return try this.GetViewForTarget(target);
    }
    pub fn GetPathForTarget(self: *@This(), target: *DisplayTarget) core.HResult!*DisplayPath {
        const this: *IDisplayState = @ptrCast(self);
        return try this.GetPathForTarget(target);
    }
    pub fn DisconnectTarget(self: *@This(), target: *DisplayTarget) core.HResult!void {
        const this: *IDisplayState = @ptrCast(self);
        return try this.DisconnectTarget(target);
    }
    pub fn TryFunctionalize(self: *@This(), options: DisplayStateFunctionalizeOptions) core.HResult!*DisplayStateOperationResult {
        const this: *IDisplayState = @ptrCast(self);
        return try this.TryFunctionalize(options);
    }
    pub fn TryApply(self: *@This(), options: DisplayStateApplyOptions) core.HResult!*DisplayStateOperationResult {
        const this: *IDisplayState = @ptrCast(self);
        return try this.TryApply(options);
    }
    pub fn Clone(self: *@This()) core.HResult!*DisplayState {
        const this: *IDisplayState = @ptrCast(self);
        return try this.Clone();
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayState.GUID;
    pub const IID: Guid = IDisplayState.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayState.SIGNATURE);
};
pub const DisplayStateApplyOptions = enum(i32) {
    None = 0,
    FailIfStateChanged = 1,
    ForceReapply = 2,
    ForceModeEnumeration = 4,
};
pub const DisplayStateFunctionalizeOptions = enum(i32) {
    None = 0,
    FailIfStateChanged = 1,
    ValidateTopologyOnly = 2,
};
pub const DisplayStateOperationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!DisplayStateOperationStatus {
        const this: *IDisplayStateOperationResult = @ptrCast(self);
        return try this.getStatus();
    }
    pub fn getExtendedErrorCode(self: *@This()) core.HResult!HResult {
        const this: *IDisplayStateOperationResult = @ptrCast(self);
        return try this.getExtendedErrorCode();
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayStateOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayStateOperationResult.GUID;
    pub const IID: Guid = IDisplayStateOperationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayStateOperationResult.SIGNATURE);
};
pub const DisplayStateOperationStatus = enum(i32) {
    Success = 0,
    PartialFailure = 1,
    UnknownFailure = 2,
    TargetOwnershipLost = 3,
    SystemStateChanged = 4,
    TooManyPathsForAdapter = 5,
    ModesNotSupported = 6,
    RemoteSessionNotSupported = 7,
};
pub const DisplaySurface = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplaySurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplaySurface.GUID;
    pub const IID: Guid = IDisplaySurface.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplaySurface.SIGNATURE);
};
pub const DisplayTarget = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAdapter(self: *@This()) core.HResult!*DisplayAdapter {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.getAdapter();
    }
    pub fn getDeviceInterfacePath(self: *@This()) core.HResult!HSTRING {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.getDeviceInterfacePath();
    }
    pub fn getAdapterRelativeId(self: *@This()) core.HResult!u32 {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.getAdapterRelativeId();
    }
    pub fn getIsConnected(self: *@This()) core.HResult!bool {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.getIsConnected();
    }
    pub fn getIsVirtualModeEnabled(self: *@This()) core.HResult!bool {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.getIsVirtualModeEnabled();
    }
    pub fn getIsVirtualTopologyEnabled(self: *@This()) core.HResult!bool {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.getIsVirtualTopologyEnabled();
    }
    pub fn getUsageKind(self: *@This()) core.HResult!DisplayMonitorUsageKind {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.getUsageKind();
    }
    pub fn getMonitorPersistence(self: *@This()) core.HResult!DisplayTargetPersistence {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.getMonitorPersistence();
    }
    pub fn getStableMonitorId(self: *@This()) core.HResult!HSTRING {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.getStableMonitorId();
    }
    pub fn TryGetMonitor(self: *@This()) core.HResult!*DisplayMonitor {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.TryGetMonitor();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn getIsStale(self: *@This()) core.HResult!bool {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.getIsStale();
    }
    pub fn IsSame(self: *@This(), otherTarget: *DisplayTarget) core.HResult!bool {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.IsSame(otherTarget);
    }
    pub fn IsEqual(self: *@This(), otherTarget: *DisplayTarget) core.HResult!bool {
        const this: *IDisplayTarget = @ptrCast(self);
        return try this.IsEqual(otherTarget);
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayTarget.GUID;
    pub const IID: Guid = IDisplayTarget.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayTarget.SIGNATURE);
};
pub const DisplayTargetPersistence = enum(i32) {
    None = 0,
    BootPersisted = 1,
    TemporaryPersisted = 2,
    PathPersisted = 3,
};
pub const DisplayTask = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetScanout(self: *@This(), scanout: *DisplayScanout) core.HResult!void {
        const this: *IDisplayTask = @ptrCast(self);
        return try this.SetScanout(scanout);
    }
    pub fn SetWait(self: *@This(), readyFence: *DisplayFence, readyFenceValue: u64) core.HResult!void {
        const this: *IDisplayTask = @ptrCast(self);
        return try this.SetWait(readyFence, readyFenceValue);
    }
    pub fn SetSignal(self: *@This(), signalKind: DisplayTaskSignalKind, fence: *DisplayFence) core.HResult!void {
        var this: ?*IDisplayTask2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayTask2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetSignal(signalKind, fence);
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayTask";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayTask.GUID;
    pub const IID: Guid = IDisplayTask.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayTask.SIGNATURE);
};
pub const DisplayTaskPool = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateTask(self: *@This()) core.HResult!*DisplayTask {
        const this: *IDisplayTaskPool = @ptrCast(self);
        return try this.CreateTask();
    }
    pub fn ExecuteTask(self: *@This(), task: *DisplayTask) core.HResult!void {
        const this: *IDisplayTaskPool = @ptrCast(self);
        return try this.ExecuteTask(task);
    }
    pub fn TryExecuteTask(self: *@This(), task: *DisplayTask) core.HResult!*DisplayTaskResult {
        var this: ?*IDisplayTaskPool2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDisplayTaskPool2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryExecuteTask(task);
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayTaskPool";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayTaskPool.GUID;
    pub const IID: Guid = IDisplayTaskPool.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayTaskPool.SIGNATURE);
};
pub const DisplayTaskResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPresentStatus(self: *@This()) core.HResult!DisplayPresentStatus {
        const this: *IDisplayTaskResult = @ptrCast(self);
        return try this.getPresentStatus();
    }
    pub fn getPresentId(self: *@This()) core.HResult!u64 {
        const this: *IDisplayTaskResult = @ptrCast(self);
        return try this.getPresentId();
    }
    pub fn getSourceStatus(self: *@This()) core.HResult!DisplaySourceStatus {
        const this: *IDisplayTaskResult = @ptrCast(self);
        return try this.getSourceStatus();
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayTaskResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayTaskResult.GUID;
    pub const IID: Guid = IDisplayTaskResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayTaskResult.SIGNATURE);
};
pub const DisplayTaskSignalKind = enum(i32) {
    OnPresentFlipAway = 0,
    OnPresentFlipTo = 1,
};
pub const DisplayView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPaths(self: *@This()) core.HResult!*IVectorView(DisplayPath) {
        const this: *IDisplayView = @ptrCast(self);
        return try this.getPaths();
    }
    pub fn getContentResolution(self: *@This()) core.HResult!*IReference(SizeInt32) {
        const this: *IDisplayView = @ptrCast(self);
        return try this.getContentResolution();
    }
    pub fn putContentResolution(self: *@This(), value: *IReference(SizeInt32)) core.HResult!void {
        const this: *IDisplayView = @ptrCast(self);
        return try this.putContentResolution(value);
    }
    pub fn SetPrimaryPath(self: *@This(), path: *DisplayPath) core.HResult!void {
        const this: *IDisplayView = @ptrCast(self);
        return try this.SetPrimaryPath(path);
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(Guid,IInspectable) {
        const this: *IDisplayView = @ptrCast(self);
        return try this.getProperties();
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayView.GUID;
    pub const IID: Guid = IDisplayView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayView.SIGNATURE);
};
pub const DisplayWireFormat = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPixelEncoding(self: *@This()) core.HResult!DisplayWireFormatPixelEncoding {
        const this: *IDisplayWireFormat = @ptrCast(self);
        return try this.getPixelEncoding();
    }
    pub fn getBitsPerChannel(self: *@This()) core.HResult!i32 {
        const this: *IDisplayWireFormat = @ptrCast(self);
        return try this.getBitsPerChannel();
    }
    pub fn getColorSpace(self: *@This()) core.HResult!DisplayWireFormatColorSpace {
        const this: *IDisplayWireFormat = @ptrCast(self);
        return try this.getColorSpace();
    }
    pub fn getEotf(self: *@This()) core.HResult!DisplayWireFormatEotf {
        const this: *IDisplayWireFormat = @ptrCast(self);
        return try this.getEotf();
    }
    pub fn getHdrMetadata(self: *@This()) core.HResult!DisplayWireFormatHdrMetadata {
        const this: *IDisplayWireFormat = @ptrCast(self);
        return try this.getHdrMetadata();
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        const this: *IDisplayWireFormat = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(pixelEncoding: DisplayWireFormatPixelEncoding, bitsPerChannel: i32, colorSpace: DisplayWireFormatColorSpace, eotf: DisplayWireFormatEotf, hdrMetadata: DisplayWireFormatHdrMetadata) core.HResult!*DisplayWireFormat {
        const factory = @This().IDisplayWireFormatFactoryCache.get();
        return try factory.CreateInstance(pixelEncoding, bitsPerChannel, colorSpace, eotf, hdrMetadata);
    }
    pub fn CreateWithProperties(extraProperties: *IIterable(IKeyValuePair(Guid,IInspectable)), pixelEncoding: DisplayWireFormatPixelEncoding, bitsPerChannel: i32, colorSpace: DisplayWireFormatColorSpace, eotf: DisplayWireFormatEotf, hdrMetadata: DisplayWireFormatHdrMetadata) core.HResult!*DisplayWireFormat {
        const factory = @This().IDisplayWireFormatStaticsCache.get();
        return try factory.CreateWithProperties(extraProperties, pixelEncoding, bitsPerChannel, colorSpace, eotf, hdrMetadata);
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.DisplayWireFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayWireFormat.GUID;
    pub const IID: Guid = IDisplayWireFormat.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayWireFormat.SIGNATURE);
    var _IDisplayWireFormatFactoryCache: FactoryCache(IDisplayWireFormatFactory, RUNTIME_NAME) = .{};
    var _IDisplayWireFormatStaticsCache: FactoryCache(IDisplayWireFormatStatics, RUNTIME_NAME) = .{};
};
pub const DisplayWireFormatColorSpace = enum(i32) {
    BT709 = 0,
    BT2020 = 1,
    ProfileDefinedWideColorGamut = 2,
};
pub const DisplayWireFormatEotf = enum(i32) {
    Sdr = 0,
    HdrSmpte2084 = 1,
};
pub const DisplayWireFormatHdrMetadata = enum(i32) {
    None = 0,
    Hdr10 = 1,
    Hdr10Plus = 2,
    DolbyVisionLowLatency = 3,
};
pub const DisplayWireFormatPixelEncoding = enum(i32) {
    Rgb444 = 0,
    Ycc444 = 1,
    Ycc422 = 2,
    Ycc420 = 3,
    Intensity = 4,
};
pub const IDisplayAdapter = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!DisplayAdapterId {
        var _r: DisplayAdapterId = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceInterfacePath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceInterfacePath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SourceCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPciVendorId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PciVendorId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPciDeviceId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PciDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPciSubSystemId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PciSubSystemId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPciRevision(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PciRevision(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        var _r: *IMapView(Guid,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayAdapter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a56f5287-f000-5f2e-b5ac-3783a2b69af5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *DisplayAdapterId) callconv(.winapi) HRESULT,
        get_DeviceInterfacePath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_SourceCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PciVendorId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PciDeviceId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PciSubSystemId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PciRevision: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(Guid,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayAdapter2 = extern struct {
    vtable: *const VTable,
    pub fn getIsIndirectDisplayDevice(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIndirectDisplayDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreferredRenderAdapter(self: *@This()) core.HResult!*DisplayAdapter {
        var _r: *DisplayAdapter = undefined;
        const _c = self.vtable.get_PreferredRenderAdapter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayAdapter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ab49b18-b3c7-5546-8374-a9127111edd8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsIndirectDisplayDevice: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PreferredRenderAdapter: *const fn(self: *anyopaque, _r: **DisplayAdapter) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayAdapterStatics = extern struct {
    vtable: *const VTable,
    pub fn FromId(self: *@This(), id: DisplayAdapterId) core.HResult!*DisplayAdapter {
        var _r: *DisplayAdapter = undefined;
        const _c = self.vtable.FromId(@ptrCast(self), id, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayAdapterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1dac3cda-481f-5469-8470-82c4ba680a28";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromId: *const fn(self: *anyopaque, id: DisplayAdapterId, _r: **DisplayAdapter) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayDevice = extern struct {
    vtable: *const VTable,
    pub fn CreateScanoutSource(self: *@This(), target: *DisplayTarget) core.HResult!*DisplaySource {
        var _r: *DisplaySource = undefined;
        const _c = self.vtable.CreateScanoutSource(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePrimary(self: *@This(), target: *DisplayTarget, desc: *DisplayPrimaryDescription) core.HResult!*DisplaySurface {
        var _r: *DisplaySurface = undefined;
        const _c = self.vtable.CreatePrimary(@ptrCast(self), target, desc, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTaskPool(self: *@This()) core.HResult!*DisplayTaskPool {
        var _r: *DisplayTaskPool = undefined;
        const _c = self.vtable.CreateTaskPool(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePeriodicFence(self: *@This(), target: *DisplayTarget, offsetFromVBlank: TimeSpan) core.HResult!*DisplayFence {
        var _r: *DisplayFence = undefined;
        const _c = self.vtable.CreatePeriodicFence(@ptrCast(self), target, offsetFromVBlank, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WaitForVBlank(self: *@This(), source: *DisplaySource) core.HResult!void {
        const _c = self.vtable.WaitForVBlank(@ptrCast(self), source);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateSimpleScanout(self: *@This(), pSource: *DisplaySource, pSurface: *DisplaySurface, SubResourceIndex: u32, SyncInterval: u32) core.HResult!*DisplayScanout {
        var _r: *DisplayScanout = undefined;
        const _c = self.vtable.CreateSimpleScanout(@ptrCast(self), pSource, pSurface, SubResourceIndex, SyncInterval, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsCapabilitySupported(self: *@This(), capability: DisplayDeviceCapability) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsCapabilitySupported(@ptrCast(self), capability, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4c9b62c-335f-5731-8cb4-c1ccd4731070";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateScanoutSource: *const fn(self: *anyopaque, target: *DisplayTarget, _r: **DisplaySource) callconv(.winapi) HRESULT,
        CreatePrimary: *const fn(self: *anyopaque, target: *DisplayTarget, desc: *DisplayPrimaryDescription, _r: **DisplaySurface) callconv(.winapi) HRESULT,
        CreateTaskPool: *const fn(self: *anyopaque, _r: **DisplayTaskPool) callconv(.winapi) HRESULT,
        CreatePeriodicFence: *const fn(self: *anyopaque, target: *DisplayTarget, offsetFromVBlank: TimeSpan, _r: **DisplayFence) callconv(.winapi) HRESULT,
        WaitForVBlank: *const fn(self: *anyopaque, source: *DisplaySource) callconv(.winapi) HRESULT,
        CreateSimpleScanout: *const fn(self: *anyopaque, pSource: *DisplaySource, pSurface: *DisplaySurface, SubResourceIndex: u32, SyncInterval: u32, _r: **DisplayScanout) callconv(.winapi) HRESULT,
        IsCapabilitySupported: *const fn(self: *anyopaque, capability: DisplayDeviceCapability, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayDevice2 = extern struct {
    vtable: *const VTable,
    pub fn CreateSimpleScanoutWithDirtyRectsAndOptions(self: *@This(), source: *DisplaySource, surface: *DisplaySurface, subresourceIndex: u32, syncInterval: u32, dirtyRects: *IIterable(RectInt32), options: DisplayScanoutOptions) core.HResult!*DisplayScanout {
        var _r: *DisplayScanout = undefined;
        const _c = self.vtable.CreateSimpleScanoutWithDirtyRectsAndOptions(@ptrCast(self), source, surface, subresourceIndex, syncInterval, dirtyRects, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayDevice2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3fefe50c-0940-54bd-a02f-f9c7a536ad60";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateSimpleScanoutWithDirtyRectsAndOptions: *const fn(self: *anyopaque, source: *DisplaySource, surface: *DisplaySurface, subresourceIndex: u32, syncInterval: u32, dirtyRects: *IIterable(RectInt32), options: DisplayScanoutOptions, _r: **DisplayScanout) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayDeviceRenderAdapter = extern struct {
    vtable: *const VTable,
    pub fn getRenderAdapterId(self: *@This()) core.HResult!DisplayAdapterId {
        var _r: DisplayAdapterId = undefined;
        const _c = self.vtable.get_RenderAdapterId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayDeviceRenderAdapter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41c86ce5-b18f-573f-9d59-70463115e4cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RenderAdapterId: *const fn(self: *anyopaque, _r: *DisplayAdapterId) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayFence = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayFence";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "04dcf9ef-3406-5700-8fec-77eba4c5a74b";
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
pub const IDisplayManager = extern struct {
    vtable: *const VTable,
    pub fn GetCurrentTargets(self: *@This()) core.HResult!*IVectorView(DisplayTarget) {
        var _r: *IVectorView(DisplayTarget) = undefined;
        const _c = self.vtable.GetCurrentTargets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentAdapters(self: *@This()) core.HResult!*IVectorView(DisplayAdapter) {
        var _r: *IVectorView(DisplayAdapter) = undefined;
        const _c = self.vtable.GetCurrentAdapters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryAcquireTarget(self: *@This(), target: *DisplayTarget) core.HResult!DisplayManagerResult {
        var _r: DisplayManagerResult = undefined;
        const _c = self.vtable.TryAcquireTarget(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ReleaseTarget(self: *@This(), target: *DisplayTarget) core.HResult!void {
        const _c = self.vtable.ReleaseTarget(@ptrCast(self), target);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryReadCurrentStateForAllTargets(self: *@This()) core.HResult!*DisplayManagerResultWithState {
        var _r: *DisplayManagerResultWithState = undefined;
        const _c = self.vtable.TryReadCurrentStateForAllTargets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryAcquireTargetsAndReadCurrentState(self: *@This(), targets: *IIterable(DisplayTarget)) core.HResult!*DisplayManagerResultWithState {
        var _r: *DisplayManagerResultWithState = undefined;
        const _c = self.vtable.TryAcquireTargetsAndReadCurrentState(@ptrCast(self), targets, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryAcquireTargetsAndCreateEmptyState(self: *@This(), targets: *IIterable(DisplayTarget)) core.HResult!*DisplayManagerResultWithState {
        var _r: *DisplayManagerResultWithState = undefined;
        const _c = self.vtable.TryAcquireTargetsAndCreateEmptyState(@ptrCast(self), targets, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryAcquireTargetsAndCreateSubstate(self: *@This(), existingState: *DisplayState, targets: *IIterable(DisplayTarget)) core.HResult!*DisplayManagerResultWithState {
        var _r: *DisplayManagerResultWithState = undefined;
        const _c = self.vtable.TryAcquireTargetsAndCreateSubstate(@ptrCast(self), existingState, targets, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDisplayDevice(self: *@This(), adapter: *DisplayAdapter) core.HResult!*DisplayDevice {
        var _r: *DisplayDevice = undefined;
        const _c = self.vtable.CreateDisplayDevice(@ptrCast(self), adapter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addEnabled(self: *@This(), handler: *TypedEventHandler(DisplayManager,DisplayManagerEnabledEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Enabled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnabled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Enabled(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDisabled(self: *@This(), handler: *TypedEventHandler(DisplayManager,DisplayManagerDisabledEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Disabled(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDisabled(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Disabled(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(DisplayManager,DisplayManagerChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Changed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Changed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPathsFailedOrInvalidated(self: *@This(), handler: *TypedEventHandler(DisplayManager,DisplayManagerPathsFailedOrInvalidatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PathsFailedOrInvalidated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePathsFailedOrInvalidated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PathsFailedOrInvalidated(@ptrCast(self), token);
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
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ed9245b-15ec-56e2-9072-7fe5084a31a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCurrentTargets: *const fn(self: *anyopaque, _r: **IVectorView(DisplayTarget)) callconv(.winapi) HRESULT,
        GetCurrentAdapters: *const fn(self: *anyopaque, _r: **IVectorView(DisplayAdapter)) callconv(.winapi) HRESULT,
        TryAcquireTarget: *const fn(self: *anyopaque, target: *DisplayTarget, _r: *DisplayManagerResult) callconv(.winapi) HRESULT,
        ReleaseTarget: *const fn(self: *anyopaque, target: *DisplayTarget) callconv(.winapi) HRESULT,
        TryReadCurrentStateForAllTargets: *const fn(self: *anyopaque, _r: **DisplayManagerResultWithState) callconv(.winapi) HRESULT,
        TryAcquireTargetsAndReadCurrentState: *const fn(self: *anyopaque, targets: *IIterable(DisplayTarget), _r: **DisplayManagerResultWithState) callconv(.winapi) HRESULT,
        TryAcquireTargetsAndCreateEmptyState: *const fn(self: *anyopaque, targets: *IIterable(DisplayTarget), _r: **DisplayManagerResultWithState) callconv(.winapi) HRESULT,
        TryAcquireTargetsAndCreateSubstate: *const fn(self: *anyopaque, existingState: *DisplayState, targets: *IIterable(DisplayTarget), _r: **DisplayManagerResultWithState) callconv(.winapi) HRESULT,
        CreateDisplayDevice: *const fn(self: *anyopaque, adapter: *DisplayAdapter, _r: **DisplayDevice) callconv(.winapi) HRESULT,
        add_Enabled: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayManager,DisplayManagerEnabledEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Enabled: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Disabled: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayManager,DisplayManagerDisabledEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Disabled: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Changed: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayManager,DisplayManagerChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Changed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PathsFailedOrInvalidated: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayManager,DisplayManagerPathsFailedOrInvalidatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PathsFailedOrInvalidated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Start: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayManager2 = extern struct {
    vtable: *const VTable,
    pub fn TryReadCurrentStateForModeQuery(self: *@This()) core.HResult!*DisplayManagerResultWithState {
        var _r: *DisplayManagerResultWithState = undefined;
        const _c = self.vtable.TryReadCurrentStateForModeQuery(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayManager2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e001ec1e-7eb1-597f-9a30-14d3fe3714cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryReadCurrentStateForModeQuery: *const fn(self: *anyopaque, _r: **DisplayManagerResultWithState) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayManager3 = extern struct {
    vtable: *const VTable,
    pub fn CreateDisplayDeviceForIndirectAdapter(self: *@This(), indirectAdapter: *DisplayAdapter, renderAdapter: *DisplayAdapter) core.HResult!*DisplayDevice {
        var _r: *DisplayDevice = undefined;
        const _c = self.vtable.CreateDisplayDeviceForIndirectAdapter(@ptrCast(self), indirectAdapter, renderAdapter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayManager3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f14cb89-7f49-587d-93ce-77487cbcb530";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateDisplayDeviceForIndirectAdapter: *const fn(self: *anyopaque, indirectAdapter: *DisplayAdapter, renderAdapter: *DisplayAdapter, _r: **DisplayDevice) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayManagerChangedEventArgs = extern struct {
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
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayManagerChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6abfa285-6cca-5731-bcdc-42e5d2f5c50f";
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
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayManagerDisabledEventArgs = extern struct {
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
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayManagerDisabledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8726dde4-6793-5973-a11f-5ffbc93fdb90";
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
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayManagerEnabledEventArgs = extern struct {
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
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayManagerEnabledEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f0cf3f6f-42fa-59a2-b297-26e1713de848";
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
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayManagerPathsFailedOrInvalidatedEventArgs = extern struct {
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
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayManagerPathsFailedOrInvalidatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03a65659-1dec-5c15-b2a2-8fe9129869fe";
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
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayManagerResultWithState = extern struct {
    vtable: *const VTable,
    pub fn getErrorCode(self: *@This()) core.HResult!DisplayManagerResult {
        var _r: DisplayManagerResult = undefined;
        const _c = self.vtable.get_ErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedErrorCode(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!*DisplayState {
        var _r: *DisplayState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayManagerResultWithState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e656aa6-6614-54be-bfef-4994547f7be1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ErrorCode: *const fn(self: *anyopaque, _r: *DisplayManagerResult) callconv(.winapi) HRESULT,
        get_ExtendedErrorCode: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: **DisplayState) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), options: DisplayManagerOptions) core.HResult!*DisplayManager {
        var _r: *DisplayManager = undefined;
        const _c = self.vtable.Create(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b6b9446-b999-5535-9d69-53f092c780a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, options: DisplayManagerOptions, _r: **DisplayManager) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayModeInfo = extern struct {
    vtable: *const VTable,
    pub fn getSourceResolution(self: *@This()) core.HResult!SizeInt32 {
        var _r: SizeInt32 = undefined;
        const _c = self.vtable.get_SourceResolution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStereo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStereo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourcePixelFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        var _r: DirectXPixelFormat = undefined;
        const _c = self.vtable.get_SourcePixelFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTargetResolution(self: *@This()) core.HResult!SizeInt32 {
        var _r: SizeInt32 = undefined;
        const _c = self.vtable.get_TargetResolution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPresentationRate(self: *@This()) core.HResult!DisplayPresentationRate {
        var _r: DisplayPresentationRate = undefined;
        const _c = self.vtable.get_PresentationRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInterlaced(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInterlaced(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetWireFormatSupportedBitsPerChannel(self: *@This(), encoding: DisplayWireFormatPixelEncoding) core.HResult!DisplayBitsPerChannel {
        var _r: DisplayBitsPerChannel = undefined;
        const _c = self.vtable.GetWireFormatSupportedBitsPerChannel(@ptrCast(self), encoding, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsWireFormatSupported(self: *@This(), wireFormat: *DisplayWireFormat) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsWireFormatSupported(@ptrCast(self), wireFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        var _r: *IMapView(Guid,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayModeInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48d513a0-f79b-5a74-a05e-da821f470868";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceResolution: *const fn(self: *anyopaque, _r: *SizeInt32) callconv(.winapi) HRESULT,
        get_IsStereo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SourcePixelFormat: *const fn(self: *anyopaque, _r: *DirectXPixelFormat) callconv(.winapi) HRESULT,
        get_TargetResolution: *const fn(self: *anyopaque, _r: *SizeInt32) callconv(.winapi) HRESULT,
        get_PresentationRate: *const fn(self: *anyopaque, _r: *DisplayPresentationRate) callconv(.winapi) HRESULT,
        get_IsInterlaced: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetWireFormatSupportedBitsPerChannel: *const fn(self: *anyopaque, encoding: DisplayWireFormatPixelEncoding, _r: *DisplayBitsPerChannel) callconv(.winapi) HRESULT,
        IsWireFormatSupported: *const fn(self: *anyopaque, wireFormat: *DisplayWireFormat, _r: *bool) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(Guid,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayModeInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getPhysicalPresentationRate(self: *@This()) core.HResult!DisplayPresentationRate {
        var _r: DisplayPresentationRate = undefined;
        const _c = self.vtable.get_PhysicalPresentationRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayModeInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c86fa386-0ddb-5473-bfb0-4b7807b5f909";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PhysicalPresentationRate: *const fn(self: *anyopaque, _r: *DisplayPresentationRate) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayMuxDevice = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAvailableMuxTargets(self: *@This()) core.HResult!*IVectorView(DisplayTarget) {
        var _r: *IVectorView(DisplayTarget) = undefined;
        const _c = self.vtable.GetAvailableMuxTargets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentTarget(self: *@This()) core.HResult!*DisplayTarget {
        var _r: *DisplayTarget = undefined;
        const _c = self.vtable.get_CurrentTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPreferredTarget(self: *@This()) core.HResult!*DisplayTarget {
        var _r: *DisplayTarget = undefined;
        const _c = self.vtable.get_PreferredTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAutomaticTargetSwitchingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAutomaticTargetSwitchingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPreferredTarget(self: *@This(), target: *DisplayTarget) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetPreferredTarget(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAutomaticTargetSwitching(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SetAutomaticTargetSwitching(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(DisplayMuxDevice,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Changed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Changed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayMuxDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d81c4925-83dd-52c9-ab4e-e0833fc75068";
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
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetAvailableMuxTargets: *const fn(self: *anyopaque, _r: **IVectorView(DisplayTarget)) callconv(.winapi) HRESULT,
        get_CurrentTarget: *const fn(self: *anyopaque, _r: **DisplayTarget) callconv(.winapi) HRESULT,
        get_PreferredTarget: *const fn(self: *anyopaque, _r: **DisplayTarget) callconv(.winapi) HRESULT,
        get_IsAutomaticTargetSwitchingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        SetPreferredTarget: *const fn(self: *anyopaque, target: *DisplayTarget, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SetAutomaticTargetSwitching: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        add_Changed: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayMuxDevice,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Changed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayMuxDeviceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromIdAsync(self: *@This(), deviceInterfaceId: HSTRING) core.HResult!*IAsyncOperation(DisplayMuxDevice) {
        var _r: *IAsyncOperation(DisplayMuxDevice) = undefined;
        const _c = self.vtable.FromIdAsync(@ptrCast(self), deviceInterfaceId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayMuxDeviceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b37a64a-0465-53da-baee-70028480ced0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        FromIdAsync: *const fn(self: *anyopaque, deviceInterfaceId: HSTRING, _r: **IAsyncOperation(DisplayMuxDevice)) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayPath = extern struct {
    vtable: *const VTable,
    pub fn getView(self: *@This()) core.HResult!*DisplayView {
        var _r: *DisplayView = undefined;
        const _c = self.vtable.get_View(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTarget(self: *@This()) core.HResult!*DisplayTarget {
        var _r: *DisplayTarget = undefined;
        const _c = self.vtable.get_Target(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStatus(self: *@This()) core.HResult!DisplayPathStatus {
        var _r: DisplayPathStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceResolution(self: *@This()) core.HResult!*IReference(SizeInt32) {
        var _r: *IReference(SizeInt32) = undefined;
        const _c = self.vtable.get_SourceResolution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourceResolution(self: *@This(), value: *IReference(SizeInt32)) core.HResult!void {
        const _c = self.vtable.put_SourceResolution(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSourcePixelFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        var _r: DirectXPixelFormat = undefined;
        const _c = self.vtable.get_SourcePixelFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourcePixelFormat(self: *@This(), value: DirectXPixelFormat) core.HResult!void {
        const _c = self.vtable.put_SourcePixelFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsStereo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStereo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsStereo(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsStereo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetResolution(self: *@This()) core.HResult!*IReference(SizeInt32) {
        var _r: *IReference(SizeInt32) = undefined;
        const _c = self.vtable.get_TargetResolution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetResolution(self: *@This(), value: *IReference(SizeInt32)) core.HResult!void {
        const _c = self.vtable.put_TargetResolution(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPresentationRate(self: *@This()) core.HResult!*IReference(DisplayPresentationRate) {
        var _r: *IReference(DisplayPresentationRate) = undefined;
        const _c = self.vtable.get_PresentationRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPresentationRate(self: *@This(), value: *IReference(DisplayPresentationRate)) core.HResult!void {
        const _c = self.vtable.put_PresentationRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsInterlaced(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_IsInterlaced(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsInterlaced(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const _c = self.vtable.put_IsInterlaced(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getWireFormat(self: *@This()) core.HResult!*DisplayWireFormat {
        var _r: *DisplayWireFormat = undefined;
        const _c = self.vtable.get_WireFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putWireFormat(self: *@This(), value: *DisplayWireFormat) core.HResult!void {
        const _c = self.vtable.put_WireFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotation(self: *@This()) core.HResult!DisplayRotation {
        var _r: DisplayRotation = undefined;
        const _c = self.vtable.get_Rotation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotation(self: *@This(), value: DisplayRotation) core.HResult!void {
        const _c = self.vtable.put_Rotation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaling(self: *@This()) core.HResult!DisplayPathScaling {
        var _r: DisplayPathScaling = undefined;
        const _c = self.vtable.get_Scaling(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaling(self: *@This(), value: DisplayPathScaling) core.HResult!void {
        const _c = self.vtable.put_Scaling(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn FindModes(self: *@This(), flags: DisplayModeQueryOptions) core.HResult!*IVectorView(DisplayModeInfo) {
        var _r: *IVectorView(DisplayModeInfo) = undefined;
        const _c = self.vtable.FindModes(@ptrCast(self), flags, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ApplyPropertiesFromMode(self: *@This(), modeResult: *DisplayModeInfo) core.HResult!void {
        const _c = self.vtable.ApplyPropertiesFromMode(@ptrCast(self), modeResult);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(Guid,IInspectable) {
        var _r: *IMap(Guid,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayPath";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3dfd64a-7460-5cde-811b-d5ae9f3d9f84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_View: *const fn(self: *anyopaque, _r: **DisplayView) callconv(.winapi) HRESULT,
        get_Target: *const fn(self: *anyopaque, _r: **DisplayTarget) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DisplayPathStatus) callconv(.winapi) HRESULT,
        get_SourceResolution: *const fn(self: *anyopaque, _r: **IReference(SizeInt32)) callconv(.winapi) HRESULT,
        put_SourceResolution: *const fn(self: *anyopaque, value: *IReference(SizeInt32)) callconv(.winapi) HRESULT,
        get_SourcePixelFormat: *const fn(self: *anyopaque, _r: *DirectXPixelFormat) callconv(.winapi) HRESULT,
        put_SourcePixelFormat: *const fn(self: *anyopaque, value: DirectXPixelFormat) callconv(.winapi) HRESULT,
        get_IsStereo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsStereo: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_TargetResolution: *const fn(self: *anyopaque, _r: **IReference(SizeInt32)) callconv(.winapi) HRESULT,
        put_TargetResolution: *const fn(self: *anyopaque, value: *IReference(SizeInt32)) callconv(.winapi) HRESULT,
        get_PresentationRate: *const fn(self: *anyopaque, _r: **IReference(DisplayPresentationRate)) callconv(.winapi) HRESULT,
        put_PresentationRate: *const fn(self: *anyopaque, value: *IReference(DisplayPresentationRate)) callconv(.winapi) HRESULT,
        get_IsInterlaced: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
        put_IsInterlaced: *const fn(self: *anyopaque, value: *IReference(bool)) callconv(.winapi) HRESULT,
        get_WireFormat: *const fn(self: *anyopaque, _r: **DisplayWireFormat) callconv(.winapi) HRESULT,
        put_WireFormat: *const fn(self: *anyopaque, value: *DisplayWireFormat) callconv(.winapi) HRESULT,
        get_Rotation: *const fn(self: *anyopaque, _r: *DisplayRotation) callconv(.winapi) HRESULT,
        put_Rotation: *const fn(self: *anyopaque, value: DisplayRotation) callconv(.winapi) HRESULT,
        get_Scaling: *const fn(self: *anyopaque, _r: *DisplayPathScaling) callconv(.winapi) HRESULT,
        put_Scaling: *const fn(self: *anyopaque, value: DisplayPathScaling) callconv(.winapi) HRESULT,
        FindModes: *const fn(self: *anyopaque, flags: DisplayModeQueryOptions, _r: **IVectorView(DisplayModeInfo)) callconv(.winapi) HRESULT,
        ApplyPropertiesFromMode: *const fn(self: *anyopaque, modeResult: *DisplayModeInfo) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMap(Guid,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayPath2 = extern struct {
    vtable: *const VTable,
    pub fn getPhysicalPresentationRate(self: *@This()) core.HResult!*IReference(DisplayPresentationRate) {
        var _r: *IReference(DisplayPresentationRate) = undefined;
        const _c = self.vtable.get_PhysicalPresentationRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPhysicalPresentationRate(self: *@This(), value: *IReference(DisplayPresentationRate)) core.HResult!void {
        const _c = self.vtable.put_PhysicalPresentationRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayPath2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f32459c5-e994-570b-9ec8-ef42c35a8547";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PhysicalPresentationRate: *const fn(self: *anyopaque, _r: **IReference(DisplayPresentationRate)) callconv(.winapi) HRESULT,
        put_PhysicalPresentationRate: *const fn(self: *anyopaque, value: *IReference(DisplayPresentationRate)) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayPrimaryDescription = extern struct {
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
    pub fn getFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        var _r: DirectXPixelFormat = undefined;
        const _c = self.vtable.get_Format(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColorSpace(self: *@This()) core.HResult!DirectXColorSpace {
        var _r: DirectXColorSpace = undefined;
        const _c = self.vtable.get_ColorSpace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStereo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStereo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMultisampleDescription(self: *@This()) core.HResult!Direct3DMultisampleDescription {
        var _r: Direct3DMultisampleDescription = undefined;
        const _c = self.vtable.get_MultisampleDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        var _r: *IMapView(Guid,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayPrimaryDescription";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "872591d2-d533-50ff-a85e-06696194b77c";
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
        get_Format: *const fn(self: *anyopaque, _r: *DirectXPixelFormat) callconv(.winapi) HRESULT,
        get_ColorSpace: *const fn(self: *anyopaque, _r: *DirectXColorSpace) callconv(.winapi) HRESULT,
        get_IsStereo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MultisampleDescription: *const fn(self: *anyopaque, _r: *Direct3DMultisampleDescription) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(Guid,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayPrimaryDescriptionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), width: u32, height: u32, pixelFormat: DirectXPixelFormat, colorSpace: DirectXColorSpace, isStereo: bool, multisampleDescription: Direct3DMultisampleDescription) core.HResult!*DisplayPrimaryDescription {
        var _r: *DisplayPrimaryDescription = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), width, height, pixelFormat, colorSpace, isStereo, multisampleDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayPrimaryDescriptionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a6aff7b-3637-5c46-b479-76d576216e65";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, width: u32, height: u32, pixelFormat: DirectXPixelFormat, colorSpace: DirectXColorSpace, isStereo: bool, multisampleDescription: Direct3DMultisampleDescription, _r: **DisplayPrimaryDescription) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayPrimaryDescriptionStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateWithProperties(self: *@This(), extraProperties: *IIterable(IKeyValuePair(Guid,IInspectable)), width: u32, height: u32, pixelFormat: DirectXPixelFormat, colorSpace: DirectXColorSpace, isStereo: bool, multisampleDescription: Direct3DMultisampleDescription) core.HResult!*DisplayPrimaryDescription {
        var _r: *DisplayPrimaryDescription = undefined;
        const _c = self.vtable.CreateWithProperties(@ptrCast(self), extraProperties, width, height, pixelFormat, colorSpace, isStereo, multisampleDescription, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayPrimaryDescriptionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e60e4cfb-36c9-56dd-8fa1-6ff8c4e0ff07";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithProperties: *const fn(self: *anyopaque, extraProperties: *IIterable(IKeyValuePair(Guid,IInspectable)), width: u32, height: u32, pixelFormat: DirectXPixelFormat, colorSpace: DirectXColorSpace, isStereo: bool, multisampleDescription: Direct3DMultisampleDescription, _r: **DisplayPrimaryDescription) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayScanout = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayScanout";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3051828-1ba5-50e7-8a39-bb1fd2f4f8b9";
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
pub const IDisplaySource = extern struct {
    vtable: *const VTable,
    pub fn getAdapterId(self: *@This()) core.HResult!DisplayAdapterId {
        var _r: DisplayAdapterId = undefined;
        const _c = self.vtable.get_AdapterId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_SourceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMetadata(self: *@This(), Key: *Guid) core.HResult!*IBuffer {
        var _r: *IBuffer = undefined;
        const _c = self.vtable.GetMetadata(@ptrCast(self), Key, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplaySource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ecd15fc1-eadc-51bc-971d-3bc628db2dd4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AdapterId: *const fn(self: *anyopaque, _r: *DisplayAdapterId) callconv(.winapi) HRESULT,
        get_SourceId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        GetMetadata: *const fn(self: *anyopaque, Key: *Guid, _r: **IBuffer) callconv(.winapi) HRESULT,
    };
};
pub const IDisplaySource2 = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!DisplaySourceStatus {
        var _r: DisplaySourceStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addStatusChanged(self: *@This(), handler: *TypedEventHandler(DisplaySource,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_StatusChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeStatusChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_StatusChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplaySource2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71e18952-b321-5af4-bfe8-03fbea31e40d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DisplaySourceStatus) callconv(.winapi) HRESULT,
        add_StatusChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplaySource,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_StatusChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayState = extern struct {
    vtable: *const VTable,
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsReadOnly(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStale(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTargets(self: *@This()) core.HResult!*IVectorView(DisplayTarget) {
        var _r: *IVectorView(DisplayTarget) = undefined;
        const _c = self.vtable.get_Targets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViews(self: *@This()) core.HResult!*IVectorView(DisplayView) {
        var _r: *IVectorView(DisplayView) = undefined;
        const _c = self.vtable.get_Views(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(Guid,IInspectable) {
        var _r: *IMap(Guid,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectTarget(self: *@This(), target: *DisplayTarget) core.HResult!*DisplayPath {
        var _r: *DisplayPath = undefined;
        const _c = self.vtable.ConnectTarget(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ConnectTargetWithView(self: *@This(), target: *DisplayTarget, view: *DisplayView) core.HResult!*DisplayPath {
        var _r: *DisplayPath = undefined;
        const _c = self.vtable.ConnectTargetWithView(@ptrCast(self), target, view, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CanConnectTargetToView(self: *@This(), target: *DisplayTarget, view: *DisplayView) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanConnectTargetToView(@ptrCast(self), target, view, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetViewForTarget(self: *@This(), target: *DisplayTarget) core.HResult!*DisplayView {
        var _r: *DisplayView = undefined;
        const _c = self.vtable.GetViewForTarget(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPathForTarget(self: *@This(), target: *DisplayTarget) core.HResult!*DisplayPath {
        var _r: *DisplayPath = undefined;
        const _c = self.vtable.GetPathForTarget(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisconnectTarget(self: *@This(), target: *DisplayTarget) core.HResult!void {
        const _c = self.vtable.DisconnectTarget(@ptrCast(self), target);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryFunctionalize(self: *@This(), options: DisplayStateFunctionalizeOptions) core.HResult!*DisplayStateOperationResult {
        var _r: *DisplayStateOperationResult = undefined;
        const _c = self.vtable.TryFunctionalize(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryApply(self: *@This(), options: DisplayStateApplyOptions) core.HResult!*DisplayStateOperationResult {
        var _r: *DisplayStateOperationResult = undefined;
        const _c = self.vtable.TryApply(@ptrCast(self), options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Clone(self: *@This()) core.HResult!*DisplayState {
        var _r: *DisplayState = undefined;
        const _c = self.vtable.Clone(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayState";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08129321-11b5-5cb2-99f8-e90b479a8a1d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsReadOnly: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsStale: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Targets: *const fn(self: *anyopaque, _r: **IVectorView(DisplayTarget)) callconv(.winapi) HRESULT,
        get_Views: *const fn(self: *anyopaque, _r: **IVectorView(DisplayView)) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMap(Guid,IInspectable)) callconv(.winapi) HRESULT,
        ConnectTarget: *const fn(self: *anyopaque, target: *DisplayTarget, _r: **DisplayPath) callconv(.winapi) HRESULT,
        ConnectTargetWithView: *const fn(self: *anyopaque, target: *DisplayTarget, view: *DisplayView, _r: **DisplayPath) callconv(.winapi) HRESULT,
        CanConnectTargetToView: *const fn(self: *anyopaque, target: *DisplayTarget, view: *DisplayView, _r: *bool) callconv(.winapi) HRESULT,
        GetViewForTarget: *const fn(self: *anyopaque, target: *DisplayTarget, _r: **DisplayView) callconv(.winapi) HRESULT,
        GetPathForTarget: *const fn(self: *anyopaque, target: *DisplayTarget, _r: **DisplayPath) callconv(.winapi) HRESULT,
        DisconnectTarget: *const fn(self: *anyopaque, target: *DisplayTarget) callconv(.winapi) HRESULT,
        TryFunctionalize: *const fn(self: *anyopaque, options: DisplayStateFunctionalizeOptions, _r: **DisplayStateOperationResult) callconv(.winapi) HRESULT,
        TryApply: *const fn(self: *anyopaque, options: DisplayStateApplyOptions, _r: **DisplayStateOperationResult) callconv(.winapi) HRESULT,
        Clone: *const fn(self: *anyopaque, _r: **DisplayState) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayStateOperationResult = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!DisplayStateOperationStatus {
        var _r: DisplayStateOperationStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedErrorCode(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedErrorCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayStateOperationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcadbfdf-dc27-5638-b7f2-ebdfa4f7ea93";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *DisplayStateOperationStatus) callconv(.winapi) HRESULT,
        get_ExtendedErrorCode: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
    };
};
pub const IDisplaySurface = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplaySurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "594f6cc6-139a-56d6-a4b1-15fe2cb76adb";
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
pub const IDisplayTarget = extern struct {
    vtable: *const VTable,
    pub fn getAdapter(self: *@This()) core.HResult!*DisplayAdapter {
        var _r: *DisplayAdapter = undefined;
        const _c = self.vtable.get_Adapter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeviceInterfacePath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceInterfacePath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdapterRelativeId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_AdapterRelativeId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsConnected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConnected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsVirtualModeEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVirtualModeEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsVirtualTopologyEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVirtualTopologyEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUsageKind(self: *@This()) core.HResult!DisplayMonitorUsageKind {
        var _r: DisplayMonitorUsageKind = undefined;
        const _c = self.vtable.get_UsageKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMonitorPersistence(self: *@This()) core.HResult!DisplayTargetPersistence {
        var _r: DisplayTargetPersistence = undefined;
        const _c = self.vtable.get_MonitorPersistence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStableMonitorId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_StableMonitorId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetMonitor(self: *@This()) core.HResult!*DisplayMonitor {
        var _r: *DisplayMonitor = undefined;
        const _c = self.vtable.TryGetMonitor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        var _r: *IMapView(Guid,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStale(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsSame(self: *@This(), otherTarget: *DisplayTarget) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsSame(@ptrCast(self), otherTarget, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEqual(self: *@This(), otherTarget: *DisplayTarget) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEqual(@ptrCast(self), otherTarget, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aec57c6f-47b4-546b-987c-e73fa791fe3a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Adapter: *const fn(self: *anyopaque, _r: **DisplayAdapter) callconv(.winapi) HRESULT,
        get_DeviceInterfacePath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_AdapterRelativeId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_IsConnected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsVirtualModeEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsVirtualTopologyEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_UsageKind: *const fn(self: *anyopaque, _r: *DisplayMonitorUsageKind) callconv(.winapi) HRESULT,
        get_MonitorPersistence: *const fn(self: *anyopaque, _r: *DisplayTargetPersistence) callconv(.winapi) HRESULT,
        get_StableMonitorId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        TryGetMonitor: *const fn(self: *anyopaque, _r: **DisplayMonitor) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(Guid,IInspectable)) callconv(.winapi) HRESULT,
        get_IsStale: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsSame: *const fn(self: *anyopaque, otherTarget: *DisplayTarget, _r: *bool) callconv(.winapi) HRESULT,
        IsEqual: *const fn(self: *anyopaque, otherTarget: *DisplayTarget, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayTask = extern struct {
    vtable: *const VTable,
    pub fn SetScanout(self: *@This(), scanout: *DisplayScanout) core.HResult!void {
        const _c = self.vtable.SetScanout(@ptrCast(self), scanout);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetWait(self: *@This(), readyFence: *DisplayFence, readyFenceValue: u64) core.HResult!void {
        const _c = self.vtable.SetWait(@ptrCast(self), readyFence, readyFenceValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayTask";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e087448-135b-5bb0-bf63-637f84227c7a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetScanout: *const fn(self: *anyopaque, scanout: *DisplayScanout) callconv(.winapi) HRESULT,
        SetWait: *const fn(self: *anyopaque, readyFence: *DisplayFence, readyFenceValue: u64) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayTask2 = extern struct {
    vtable: *const VTable,
    pub fn SetSignal(self: *@This(), signalKind: DisplayTaskSignalKind, fence: *DisplayFence) core.HResult!void {
        const _c = self.vtable.SetSignal(@ptrCast(self), signalKind, fence);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayTask2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0957ea19-bd55-55de-9267-c97b61e71c37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetSignal: *const fn(self: *anyopaque, signalKind: DisplayTaskSignalKind, fence: *DisplayFence) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayTaskPool = extern struct {
    vtable: *const VTable,
    pub fn CreateTask(self: *@This()) core.HResult!*DisplayTask {
        var _r: *DisplayTask = undefined;
        const _c = self.vtable.CreateTask(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ExecuteTask(self: *@This(), task: *DisplayTask) core.HResult!void {
        const _c = self.vtable.ExecuteTask(@ptrCast(self), task);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayTaskPool";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c676253d-237d-5548-aafa-3e517fefef1c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateTask: *const fn(self: *anyopaque, _r: **DisplayTask) callconv(.winapi) HRESULT,
        ExecuteTask: *const fn(self: *anyopaque, task: *DisplayTask) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayTaskPool2 = extern struct {
    vtable: *const VTable,
    pub fn TryExecuteTask(self: *@This(), task: *DisplayTask) core.HResult!*DisplayTaskResult {
        var _r: *DisplayTaskResult = undefined;
        const _c = self.vtable.TryExecuteTask(@ptrCast(self), task, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayTaskPool2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46b879b6-5d17-5955-a872-eb38003db586";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryExecuteTask: *const fn(self: *anyopaque, task: *DisplayTask, _r: **DisplayTaskResult) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayTaskResult = extern struct {
    vtable: *const VTable,
    pub fn getPresentStatus(self: *@This()) core.HResult!DisplayPresentStatus {
        var _r: DisplayPresentStatus = undefined;
        const _c = self.vtable.get_PresentStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPresentId(self: *@This()) core.HResult!u64 {
        var _r: u64 = undefined;
        const _c = self.vtable.get_PresentId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSourceStatus(self: *@This()) core.HResult!DisplaySourceStatus {
        var _r: DisplaySourceStatus = undefined;
        const _c = self.vtable.get_SourceStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayTaskResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6fbc7d67-f9b1-55e0-9d88-d3a5197a3f59";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PresentStatus: *const fn(self: *anyopaque, _r: *DisplayPresentStatus) callconv(.winapi) HRESULT,
        get_PresentId: *const fn(self: *anyopaque, _r: *u64) callconv(.winapi) HRESULT,
        get_SourceStatus: *const fn(self: *anyopaque, _r: *DisplaySourceStatus) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayView = extern struct {
    vtable: *const VTable,
    pub fn getPaths(self: *@This()) core.HResult!*IVectorView(DisplayPath) {
        var _r: *IVectorView(DisplayPath) = undefined;
        const _c = self.vtable.get_Paths(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentResolution(self: *@This()) core.HResult!*IReference(SizeInt32) {
        var _r: *IReference(SizeInt32) = undefined;
        const _c = self.vtable.get_ContentResolution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentResolution(self: *@This(), value: *IReference(SizeInt32)) core.HResult!void {
        const _c = self.vtable.put_ContentResolution(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetPrimaryPath(self: *@This(), path: *DisplayPath) core.HResult!void {
        const _c = self.vtable.SetPrimaryPath(@ptrCast(self), path);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMap(Guid,IInspectable) {
        var _r: *IMap(Guid,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0c98ca1-b759-5b59-b1ad-f0786aa9e53d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Paths: *const fn(self: *anyopaque, _r: **IVectorView(DisplayPath)) callconv(.winapi) HRESULT,
        get_ContentResolution: *const fn(self: *anyopaque, _r: **IReference(SizeInt32)) callconv(.winapi) HRESULT,
        put_ContentResolution: *const fn(self: *anyopaque, value: *IReference(SizeInt32)) callconv(.winapi) HRESULT,
        SetPrimaryPath: *const fn(self: *anyopaque, path: *DisplayPath) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMap(Guid,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayWireFormat = extern struct {
    vtable: *const VTable,
    pub fn getPixelEncoding(self: *@This()) core.HResult!DisplayWireFormatPixelEncoding {
        var _r: DisplayWireFormatPixelEncoding = undefined;
        const _c = self.vtable.get_PixelEncoding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBitsPerChannel(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_BitsPerChannel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColorSpace(self: *@This()) core.HResult!DisplayWireFormatColorSpace {
        var _r: DisplayWireFormatColorSpace = undefined;
        const _c = self.vtable.get_ColorSpace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEotf(self: *@This()) core.HResult!DisplayWireFormatEotf {
        var _r: DisplayWireFormatEotf = undefined;
        const _c = self.vtable.get_Eotf(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHdrMetadata(self: *@This()) core.HResult!DisplayWireFormatHdrMetadata {
        var _r: DisplayWireFormatHdrMetadata = undefined;
        const _c = self.vtable.get_HdrMetadata(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IMapView(Guid,IInspectable) {
        var _r: *IMapView(Guid,IInspectable) = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayWireFormat";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1acc967d-872c-5a38-bbb9-1d4872b76255";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PixelEncoding: *const fn(self: *anyopaque, _r: *DisplayWireFormatPixelEncoding) callconv(.winapi) HRESULT,
        get_BitsPerChannel: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ColorSpace: *const fn(self: *anyopaque, _r: *DisplayWireFormatColorSpace) callconv(.winapi) HRESULT,
        get_Eotf: *const fn(self: *anyopaque, _r: *DisplayWireFormatEotf) callconv(.winapi) HRESULT,
        get_HdrMetadata: *const fn(self: *anyopaque, _r: *DisplayWireFormatHdrMetadata) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IMapView(Guid,IInspectable)) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayWireFormatFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), pixelEncoding: DisplayWireFormatPixelEncoding, bitsPerChannel: i32, colorSpace: DisplayWireFormatColorSpace, eotf: DisplayWireFormatEotf, hdrMetadata: DisplayWireFormatHdrMetadata) core.HResult!*DisplayWireFormat {
        var _r: *DisplayWireFormat = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), pixelEncoding, bitsPerChannel, colorSpace, eotf, hdrMetadata, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayWireFormatFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2efc8d5-09d6-55e6-ad22-9014b3d25229";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, pixelEncoding: DisplayWireFormatPixelEncoding, bitsPerChannel: i32, colorSpace: DisplayWireFormatColorSpace, eotf: DisplayWireFormatEotf, hdrMetadata: DisplayWireFormatHdrMetadata, _r: **DisplayWireFormat) callconv(.winapi) HRESULT,
    };
};
pub const IDisplayWireFormatStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateWithProperties(self: *@This(), extraProperties: *IIterable(IKeyValuePair(Guid,IInspectable)), pixelEncoding: DisplayWireFormatPixelEncoding, bitsPerChannel: i32, colorSpace: DisplayWireFormatColorSpace, eotf: DisplayWireFormatEotf, hdrMetadata: DisplayWireFormatHdrMetadata) core.HResult!*DisplayWireFormat {
        var _r: *DisplayWireFormat = undefined;
        const _c = self.vtable.CreateWithProperties(@ptrCast(self), extraProperties, pixelEncoding, bitsPerChannel, colorSpace, eotf, hdrMetadata, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Devices.Display.Core.IDisplayWireFormatStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c575a22d-c3e6-5f7a-bdfb-87c6ab8661d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateWithProperties: *const fn(self: *anyopaque, extraProperties: *IIterable(IKeyValuePair(Guid,IInspectable)), pixelEncoding: DisplayWireFormatPixelEncoding, bitsPerChannel: i32, colorSpace: DisplayWireFormatColorSpace, eotf: DisplayWireFormatEotf, hdrMetadata: DisplayWireFormatHdrMetadata, _r: **DisplayWireFormat) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const Guid = @import("../../root.zig").Guid;
const Deferral = @import("../../Foundation.zig").Deferral;
const IMapView = @import("../../Foundation/Collections.zig").IMapView;
const IKeyValuePair = @import("../../Foundation/Collections.zig").IKeyValuePair;
const IClosable = @import("../../Foundation.zig").IClosable;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const HRESULT = @import("../../root.zig").HRESULT;
const DisplayMonitor = @import("../Display.zig").DisplayMonitor;
const DisplayMonitorUsageKind = @import("../Display.zig").DisplayMonitorUsageKind;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const Direct3DMultisampleDescription = @import("../../Graphics/DirectX/Direct3D11.zig").Direct3DMultisampleDescription;
const DirectXPixelFormat = @import("../../Graphics/DirectX.zig").DirectXPixelFormat;
const Rational = @import("../../Foundation/Numerics.zig").Rational;
const IReference = @import("../../Foundation.zig").IReference;
const IBuffer = @import("../../Storage/Streams.zig").IBuffer;
const IMap = @import("../../Foundation/Collections.zig").IMap;
const FactoryCache = @import("../../core.zig").FactoryCache;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const SizeInt32 = @import("../../Graphics.zig").SizeInt32;
const DisplayAdapterId = @import("../../Graphics.zig").DisplayAdapterId;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const RectInt32 = @import("../../Graphics.zig").RectInt32;
const DirectXColorSpace = @import("../../Graphics/DirectX.zig").DirectXColorSpace;
const HResult = @import("../../Foundation.zig").HResult;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
