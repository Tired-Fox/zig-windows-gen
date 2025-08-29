pub const HolographicAdapterId = extern struct {
    LowPart: u32,
    HighPart: i32,
};
pub const HolographicCamera = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRenderTargetSize(self: *@This()) core.HResult!Size {
        const this: *IHolographicCamera = @ptrCast(self);
        return try this.getRenderTargetSize();
    }
    pub fn getViewportScaleFactor(self: *@This()) core.HResult!f64 {
        const this: *IHolographicCamera = @ptrCast(self);
        return try this.getViewportScaleFactor();
    }
    pub fn putViewportScaleFactor(self: *@This(), value: f64) core.HResult!void {
        const this: *IHolographicCamera = @ptrCast(self);
        return try this.putViewportScaleFactor(value);
    }
    pub fn getIsStereo(self: *@This()) core.HResult!bool {
        const this: *IHolographicCamera = @ptrCast(self);
        return try this.getIsStereo();
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IHolographicCamera = @ptrCast(self);
        return try this.getId();
    }
    pub fn SetNearPlaneDistance(self: *@This(), value: f64) core.HResult!void {
        const this: *IHolographicCamera = @ptrCast(self);
        return try this.SetNearPlaneDistance(value);
    }
    pub fn SetFarPlaneDistance(self: *@This(), value: f64) core.HResult!void {
        const this: *IHolographicCamera = @ptrCast(self);
        return try this.SetFarPlaneDistance(value);
    }
    pub fn getLeftViewportParameters(self: *@This()) core.HResult!*HolographicCameraViewportParameters {
        var this: ?*IHolographicCamera2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCamera2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLeftViewportParameters();
    }
    pub fn getRightViewportParameters(self: *@This()) core.HResult!*HolographicCameraViewportParameters {
        var this: ?*IHolographicCamera2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCamera2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRightViewportParameters();
    }
    pub fn getDisplay(self: *@This()) core.HResult!*HolographicDisplay {
        var this: ?*IHolographicCamera2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCamera2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDisplay();
    }
    pub fn getIsPrimaryLayerEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IHolographicCamera3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCamera3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPrimaryLayerEnabled();
    }
    pub fn putIsPrimaryLayerEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IHolographicCamera3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCamera3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsPrimaryLayerEnabled(value);
    }
    pub fn getMaxQuadLayerCount(self: *@This()) core.HResult!u32 {
        var this: ?*IHolographicCamera3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCamera3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxQuadLayerCount();
    }
    pub fn getQuadLayers(self: *@This()) core.HResult!*IVector(HolographicQuadLayer) {
        var this: ?*IHolographicCamera3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCamera3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getQuadLayers();
    }
    pub fn getCanOverrideViewport(self: *@This()) core.HResult!bool {
        var this: ?*IHolographicCamera4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCamera4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanOverrideViewport();
    }
    pub fn getIsHardwareContentProtectionSupported(self: *@This()) core.HResult!bool {
        var this: ?*IHolographicCamera5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCamera5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsHardwareContentProtectionSupported();
    }
    pub fn getIsHardwareContentProtectionEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IHolographicCamera5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCamera5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsHardwareContentProtectionEnabled();
    }
    pub fn putIsHardwareContentProtectionEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IHolographicCamera5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCamera5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsHardwareContentProtectionEnabled(value);
    }
    pub fn getViewConfiguration(self: *@This()) core.HResult!*HolographicViewConfiguration {
        var this: ?*IHolographicCamera6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCamera6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getViewConfiguration();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicCamera";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicCamera.GUID;
    pub const IID: Guid = IHolographicCamera.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicCamera.SIGNATURE);
};
pub const HolographicCameraPose = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHolographicCamera(self: *@This()) core.HResult!*HolographicCamera {
        const this: *IHolographicCameraPose = @ptrCast(self);
        return try this.getHolographicCamera();
    }
    pub fn getViewport(self: *@This()) core.HResult!Rect {
        const this: *IHolographicCameraPose = @ptrCast(self);
        return try this.getViewport();
    }
    pub fn TryGetViewTransform(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*IReference(HolographicStereoTransform) {
        const this: *IHolographicCameraPose = @ptrCast(self);
        return try this.TryGetViewTransform(coordinateSystem);
    }
    pub fn getProjectionTransform(self: *@This()) core.HResult!HolographicStereoTransform {
        const this: *IHolographicCameraPose = @ptrCast(self);
        return try this.getProjectionTransform();
    }
    pub fn TryGetCullingFrustum(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*IReference(SpatialBoundingFrustum) {
        const this: *IHolographicCameraPose = @ptrCast(self);
        return try this.TryGetCullingFrustum(coordinateSystem);
    }
    pub fn TryGetVisibleFrustum(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*IReference(SpatialBoundingFrustum) {
        const this: *IHolographicCameraPose = @ptrCast(self);
        return try this.TryGetVisibleFrustum(coordinateSystem);
    }
    pub fn getNearPlaneDistance(self: *@This()) core.HResult!f64 {
        const this: *IHolographicCameraPose = @ptrCast(self);
        return try this.getNearPlaneDistance();
    }
    pub fn getFarPlaneDistance(self: *@This()) core.HResult!f64 {
        const this: *IHolographicCameraPose = @ptrCast(self);
        return try this.getFarPlaneDistance();
    }
    pub fn OverrideViewTransform(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, coordinateSystemToViewTransform: HolographicStereoTransform) core.HResult!void {
        var this: ?*IHolographicCameraPose2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCameraPose2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OverrideViewTransform(coordinateSystem, coordinateSystemToViewTransform);
    }
    pub fn OverrideProjectionTransform(self: *@This(), projectionTransform: HolographicStereoTransform) core.HResult!void {
        var this: ?*IHolographicCameraPose2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCameraPose2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OverrideProjectionTransform(projectionTransform);
    }
    pub fn OverrideViewport(self: *@This(), leftViewport: Rect, rightViewport: Rect) core.HResult!void {
        var this: ?*IHolographicCameraPose2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCameraPose2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OverrideViewport(leftViewport, rightViewport);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicCameraPose";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicCameraPose.GUID;
    pub const IID: Guid = IHolographicCameraPose.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicCameraPose.SIGNATURE);
};
pub const HolographicCameraRenderingParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetFocusPoint(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, position: Vector3) core.HResult!void {
        const this: *IHolographicCameraRenderingParameters = @ptrCast(self);
        return try this.SetFocusPoint(coordinateSystem, position);
    }
    pub fn SetFocusPointWithPositionWithNormal(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, position: Vector3, normal: Vector3) core.HResult!void {
        const this: *IHolographicCameraRenderingParameters = @ptrCast(self);
        return try this.SetFocusPointWithPositionWithNormal(coordinateSystem, position, normal);
    }
    pub fn SetFocusPointWithNormalWithLinearVelocity(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, position: Vector3, normal: Vector3, linearVelocity: Vector3) core.HResult!void {
        const this: *IHolographicCameraRenderingParameters = @ptrCast(self);
        return try this.SetFocusPointWithNormalWithLinearVelocity(coordinateSystem, position, normal, linearVelocity);
    }
    pub fn getDirect3D11Device(self: *@This()) core.HResult!*IDirect3DDevice {
        const this: *IHolographicCameraRenderingParameters = @ptrCast(self);
        return try this.getDirect3D11Device();
    }
    pub fn getDirect3D11BackBuffer(self: *@This()) core.HResult!*IDirect3DSurface {
        const this: *IHolographicCameraRenderingParameters = @ptrCast(self);
        return try this.getDirect3D11BackBuffer();
    }
    pub fn getReprojectionMode(self: *@This()) core.HResult!HolographicReprojectionMode {
        var this: ?*IHolographicCameraRenderingParameters2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCameraRenderingParameters2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getReprojectionMode();
    }
    pub fn putReprojectionMode(self: *@This(), value: HolographicReprojectionMode) core.HResult!void {
        var this: ?*IHolographicCameraRenderingParameters2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCameraRenderingParameters2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putReprojectionMode(value);
    }
    pub fn CommitDirect3D11DepthBuffer(self: *@This(), value: *IDirect3DSurface) core.HResult!void {
        var this: ?*IHolographicCameraRenderingParameters2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCameraRenderingParameters2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CommitDirect3D11DepthBuffer(value);
    }
    pub fn getIsContentProtectionEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IHolographicCameraRenderingParameters3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCameraRenderingParameters3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsContentProtectionEnabled();
    }
    pub fn putIsContentProtectionEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IHolographicCameraRenderingParameters3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCameraRenderingParameters3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsContentProtectionEnabled(value);
    }
    pub fn getDepthReprojectionMethod(self: *@This()) core.HResult!HolographicDepthReprojectionMethod {
        var this: ?*IHolographicCameraRenderingParameters4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCameraRenderingParameters4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDepthReprojectionMethod();
    }
    pub fn putDepthReprojectionMethod(self: *@This(), value: HolographicDepthReprojectionMethod) core.HResult!void {
        var this: ?*IHolographicCameraRenderingParameters4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicCameraRenderingParameters4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDepthReprojectionMethod(value);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicCameraRenderingParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicCameraRenderingParameters.GUID;
    pub const IID: Guid = IHolographicCameraRenderingParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicCameraRenderingParameters.SIGNATURE);
};
pub const HolographicCameraViewportParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHiddenAreaMesh(self: *@This()) core.HResult![*]Vector2 {
        const this: *IHolographicCameraViewportParameters = @ptrCast(self);
        return try this.getHiddenAreaMesh();
    }
    pub fn getVisibleAreaMesh(self: *@This()) core.HResult![*]Vector2 {
        const this: *IHolographicCameraViewportParameters = @ptrCast(self);
        return try this.getVisibleAreaMesh();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicCameraViewportParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicCameraViewportParameters.GUID;
    pub const IID: Guid = IHolographicCameraViewportParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicCameraViewportParameters.SIGNATURE);
};
pub const HolographicDepthReprojectionMethod = enum(i32) {
    DepthReprojection = 0,
    AutoPlanar = 1,
};
pub const HolographicDisplay = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        const this: *IHolographicDisplay = @ptrCast(self);
        return try this.getDisplayName();
    }
    pub fn getMaxViewportSize(self: *@This()) core.HResult!Size {
        const this: *IHolographicDisplay = @ptrCast(self);
        return try this.getMaxViewportSize();
    }
    pub fn getIsStereo(self: *@This()) core.HResult!bool {
        const this: *IHolographicDisplay = @ptrCast(self);
        return try this.getIsStereo();
    }
    pub fn getIsOpaque(self: *@This()) core.HResult!bool {
        const this: *IHolographicDisplay = @ptrCast(self);
        return try this.getIsOpaque();
    }
    pub fn getAdapterId(self: *@This()) core.HResult!HolographicAdapterId {
        const this: *IHolographicDisplay = @ptrCast(self);
        return try this.getAdapterId();
    }
    pub fn getSpatialLocator(self: *@This()) core.HResult!*SpatialLocator {
        const this: *IHolographicDisplay = @ptrCast(self);
        return try this.getSpatialLocator();
    }
    pub fn getRefreshRate(self: *@This()) core.HResult!f64 {
        var this: ?*IHolographicDisplay2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicDisplay2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRefreshRate();
    }
    pub fn TryGetViewConfiguration(self: *@This(), kind: HolographicViewConfigurationKind) core.HResult!*HolographicViewConfiguration {
        var this: ?*IHolographicDisplay3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicDisplay3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetViewConfiguration(kind);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetDefault() core.HResult!*HolographicDisplay {
        const factory = @This().IHolographicDisplayStaticsCache.get();
        return try factory.GetDefault();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicDisplay";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicDisplay.GUID;
    pub const IID: Guid = IHolographicDisplay.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicDisplay.SIGNATURE);
    var _IHolographicDisplayStaticsCache: FactoryCache(IHolographicDisplayStatics, RUNTIME_NAME) = .{};
};
pub const HolographicFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAddedCameras(self: *@This()) core.HResult!*IVectorView(HolographicCamera) {
        const this: *IHolographicFrame = @ptrCast(self);
        return try this.getAddedCameras();
    }
    pub fn getRemovedCameras(self: *@This()) core.HResult!*IVectorView(HolographicCamera) {
        const this: *IHolographicFrame = @ptrCast(self);
        return try this.getRemovedCameras();
    }
    pub fn GetRenderingParameters(self: *@This(), cameraPose: *HolographicCameraPose) core.HResult!*HolographicCameraRenderingParameters {
        const this: *IHolographicFrame = @ptrCast(self);
        return try this.GetRenderingParameters(cameraPose);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IHolographicFrame = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn getCurrentPrediction(self: *@This()) core.HResult!*HolographicFramePrediction {
        const this: *IHolographicFrame = @ptrCast(self);
        return try this.getCurrentPrediction();
    }
    pub fn UpdateCurrentPrediction(self: *@This()) core.HResult!void {
        const this: *IHolographicFrame = @ptrCast(self);
        return try this.UpdateCurrentPrediction();
    }
    pub fn PresentUsingCurrentPrediction(self: *@This()) core.HResult!HolographicFramePresentResult {
        const this: *IHolographicFrame = @ptrCast(self);
        return try this.PresentUsingCurrentPrediction();
    }
    pub fn PresentUsingCurrentPrediction(self: *@This(), waitBehavior: HolographicFramePresentWaitBehavior) core.HResult!HolographicFramePresentResult {
        const this: *IHolographicFrame = @ptrCast(self);
        return try this.PresentUsingCurrentPrediction(waitBehavior);
    }
    pub fn WaitForFrameToFinish(self: *@This()) core.HResult!void {
        const this: *IHolographicFrame = @ptrCast(self);
        return try this.WaitForFrameToFinish();
    }
    pub fn GetQuadLayerUpdateParameters(self: *@This(), layer: *HolographicQuadLayer) core.HResult!*HolographicQuadLayerUpdateParameters {
        var this: ?*IHolographicFrame2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicFrame2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetQuadLayerUpdateParameters(layer);
    }
    pub fn getId(self: *@This()) core.HResult!HolographicFrameId {
        var this: ?*IHolographicFrame3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicFrame3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getId();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicFrame.GUID;
    pub const IID: Guid = IHolographicFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicFrame.SIGNATURE);
};
pub const HolographicFrameId = extern struct {
    Value: u64,
};
pub const HolographicFramePrediction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCameraPoses(self: *@This()) core.HResult!*IVectorView(HolographicCameraPose) {
        const this: *IHolographicFramePrediction = @ptrCast(self);
        return try this.getCameraPoses();
    }
    pub fn getTimestamp(self: *@This()) core.HResult!*PerceptionTimestamp {
        const this: *IHolographicFramePrediction = @ptrCast(self);
        return try this.getTimestamp();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicFramePrediction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicFramePrediction.GUID;
    pub const IID: Guid = IHolographicFramePrediction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicFramePrediction.SIGNATURE);
};
pub const HolographicFramePresentResult = enum(i32) {
    Success = 0,
    DeviceRemoved = 1,
};
pub const HolographicFramePresentWaitBehavior = enum(i32) {
    WaitForFrameToFinish = 0,
    DoNotWaitForFrameToFinish = 1,
};
pub const HolographicFramePresentationMonitor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadReports(self: *@This()) core.HResult!*IVectorView(HolographicFramePresentationReport) {
        const this: *IHolographicFramePresentationMonitor = @ptrCast(self);
        return try this.ReadReports();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicFramePresentationMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicFramePresentationMonitor.GUID;
    pub const IID: Guid = IHolographicFramePresentationMonitor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicFramePresentationMonitor.SIGNATURE);
};
pub const HolographicFramePresentationReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCompositorGpuDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IHolographicFramePresentationReport = @ptrCast(self);
        return try this.getCompositorGpuDuration();
    }
    pub fn getAppGpuDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IHolographicFramePresentationReport = @ptrCast(self);
        return try this.getAppGpuDuration();
    }
    pub fn getAppGpuOverrun(self: *@This()) core.HResult!TimeSpan {
        const this: *IHolographicFramePresentationReport = @ptrCast(self);
        return try this.getAppGpuOverrun();
    }
    pub fn getMissedPresentationOpportunityCount(self: *@This()) core.HResult!u32 {
        const this: *IHolographicFramePresentationReport = @ptrCast(self);
        return try this.getMissedPresentationOpportunityCount();
    }
    pub fn getPresentationCount(self: *@This()) core.HResult!u32 {
        const this: *IHolographicFramePresentationReport = @ptrCast(self);
        return try this.getPresentationCount();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicFramePresentationReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicFramePresentationReport.GUID;
    pub const IID: Guid = IHolographicFramePresentationReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicFramePresentationReport.SIGNATURE);
};
pub const HolographicFrameRenderingReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameId(self: *@This()) core.HResult!HolographicFrameId {
        const this: *IHolographicFrameRenderingReport = @ptrCast(self);
        return try this.getFrameId();
    }
    pub fn getMissedLatchCount(self: *@This()) core.HResult!u32 {
        const this: *IHolographicFrameRenderingReport = @ptrCast(self);
        return try this.getMissedLatchCount();
    }
    pub fn getSystemRelativeFrameReadyTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IHolographicFrameRenderingReport = @ptrCast(self);
        return try this.getSystemRelativeFrameReadyTime();
    }
    pub fn getSystemRelativeActualGpuFinishTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IHolographicFrameRenderingReport = @ptrCast(self);
        return try this.getSystemRelativeActualGpuFinishTime();
    }
    pub fn getSystemRelativeTargetLatchTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IHolographicFrameRenderingReport = @ptrCast(self);
        return try this.getSystemRelativeTargetLatchTime();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicFrameRenderingReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicFrameRenderingReport.GUID;
    pub const IID: Guid = IHolographicFrameRenderingReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicFrameRenderingReport.SIGNATURE);
};
pub const HolographicFrameScanoutMonitor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ReadReports(self: *@This()) core.HResult!*IVector(HolographicFrameScanoutReport) {
        const this: *IHolographicFrameScanoutMonitor = @ptrCast(self);
        return try this.ReadReports();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicFrameScanoutMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicFrameScanoutMonitor.GUID;
    pub const IID: Guid = IHolographicFrameScanoutMonitor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicFrameScanoutMonitor.SIGNATURE);
};
pub const HolographicFrameScanoutReport = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRenderingReport(self: *@This()) core.HResult!*HolographicFrameRenderingReport {
        const this: *IHolographicFrameScanoutReport = @ptrCast(self);
        return try this.getRenderingReport();
    }
    pub fn getMissedScanoutCount(self: *@This()) core.HResult!u32 {
        const this: *IHolographicFrameScanoutReport = @ptrCast(self);
        return try this.getMissedScanoutCount();
    }
    pub fn getSystemRelativeLatchTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IHolographicFrameScanoutReport = @ptrCast(self);
        return try this.getSystemRelativeLatchTime();
    }
    pub fn getSystemRelativeScanoutStartTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IHolographicFrameScanoutReport = @ptrCast(self);
        return try this.getSystemRelativeScanoutStartTime();
    }
    pub fn getSystemRelativePhotonTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IHolographicFrameScanoutReport = @ptrCast(self);
        return try this.getSystemRelativePhotonTime();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicFrameScanoutReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicFrameScanoutReport.GUID;
    pub const IID: Guid = IHolographicFrameScanoutReport.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicFrameScanoutReport.SIGNATURE);
};
pub const HolographicQuadLayer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn getPixelFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        const this: *IHolographicQuadLayer = @ptrCast(self);
        return try this.getPixelFormat();
    }
    pub fn getSize(self: *@This()) core.HResult!Size {
        const this: *IHolographicQuadLayer = @ptrCast(self);
        return try this.getSize();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(size: Size) core.HResult!*HolographicQuadLayer {
        const factory = @This().IHolographicQuadLayerFactoryCache.get();
        return try factory.Create(size);
    }
    pub fn CreateWithPixelFormat(size: Size, pixelFormat: DirectXPixelFormat) core.HResult!*HolographicQuadLayer {
        const factory = @This().IHolographicQuadLayerFactoryCache.get();
        return try factory.CreateWithPixelFormat(size, pixelFormat);
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicQuadLayer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicQuadLayer.GUID;
    pub const IID: Guid = IHolographicQuadLayer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicQuadLayer.SIGNATURE);
    var _IHolographicQuadLayerFactoryCache: FactoryCache(IHolographicQuadLayerFactory, RUNTIME_NAME) = .{};
};
pub const HolographicQuadLayerUpdateParameters = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AcquireBufferToUpdateContent(self: *@This()) core.HResult!*IDirect3DSurface {
        const this: *IHolographicQuadLayerUpdateParameters = @ptrCast(self);
        return try this.AcquireBufferToUpdateContent();
    }
    pub fn UpdateViewport(self: *@This(), value: Rect) core.HResult!void {
        const this: *IHolographicQuadLayerUpdateParameters = @ptrCast(self);
        return try this.UpdateViewport(value);
    }
    pub fn UpdateContentProtectionEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IHolographicQuadLayerUpdateParameters = @ptrCast(self);
        return try this.UpdateContentProtectionEnabled(value);
    }
    pub fn UpdateExtents(self: *@This(), value: Vector2) core.HResult!void {
        const this: *IHolographicQuadLayerUpdateParameters = @ptrCast(self);
        return try this.UpdateExtents(value);
    }
    pub fn UpdateLocationWithStationaryMode(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, position: Vector3, orientation: Quaternion) core.HResult!void {
        const this: *IHolographicQuadLayerUpdateParameters = @ptrCast(self);
        return try this.UpdateLocationWithStationaryMode(coordinateSystem, position, orientation);
    }
    pub fn UpdateLocationWithDisplayRelativeMode(self: *@This(), position: Vector3, orientation: Quaternion) core.HResult!void {
        const this: *IHolographicQuadLayerUpdateParameters = @ptrCast(self);
        return try this.UpdateLocationWithDisplayRelativeMode(position, orientation);
    }
    pub fn getCanAcquireWithHardwareProtection(self: *@This()) core.HResult!bool {
        var this: ?*IHolographicQuadLayerUpdateParameters2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicQuadLayerUpdateParameters2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanAcquireWithHardwareProtection();
    }
    pub fn AcquireBufferToUpdateContentWithHardwareProtection(self: *@This()) core.HResult!*IDirect3DSurface {
        var this: ?*IHolographicQuadLayerUpdateParameters2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicQuadLayerUpdateParameters2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AcquireBufferToUpdateContentWithHardwareProtection();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicQuadLayerUpdateParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicQuadLayerUpdateParameters.GUID;
    pub const IID: Guid = IHolographicQuadLayerUpdateParameters.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicQuadLayerUpdateParameters.SIGNATURE);
};
pub const HolographicReprojectionMode = enum(i32) {
    PositionAndOrientation = 0,
    OrientationOnly = 1,
    Disabled = 2,
};
pub const HolographicSpace = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPrimaryAdapterId(self: *@This()) core.HResult!HolographicAdapterId {
        const this: *IHolographicSpace = @ptrCast(self);
        return try this.getPrimaryAdapterId();
    }
    pub fn SetDirect3D11Device(self: *@This(), value: *IDirect3DDevice) core.HResult!void {
        const this: *IHolographicSpace = @ptrCast(self);
        return try this.SetDirect3D11Device(value);
    }
    pub fn addCameraAdded(self: *@This(), handler: *TypedEventHandler(HolographicSpace,HolographicSpaceCameraAddedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IHolographicSpace = @ptrCast(self);
        return try this.addCameraAdded(handler);
    }
    pub fn removeCameraAdded(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IHolographicSpace = @ptrCast(self);
        return try this.removeCameraAdded(cookie);
    }
    pub fn addCameraRemoved(self: *@This(), handler: *TypedEventHandler(HolographicSpace,HolographicSpaceCameraRemovedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IHolographicSpace = @ptrCast(self);
        return try this.addCameraRemoved(handler);
    }
    pub fn removeCameraRemoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IHolographicSpace = @ptrCast(self);
        return try this.removeCameraRemoved(cookie);
    }
    pub fn CreateNextFrame(self: *@This()) core.HResult!*HolographicFrame {
        const this: *IHolographicSpace = @ptrCast(self);
        return try this.CreateNextFrame();
    }
    pub fn getUserPresence(self: *@This()) core.HResult!HolographicSpaceUserPresence {
        var this: ?*IHolographicSpace2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicSpace2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUserPresence();
    }
    pub fn addUserPresenceChanged(self: *@This(), handler: *TypedEventHandler(HolographicSpace,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IHolographicSpace2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicSpace2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addUserPresenceChanged(handler);
    }
    pub fn removeUserPresenceChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IHolographicSpace2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicSpace2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeUserPresenceChanged(token);
    }
    pub fn WaitForNextFrameReady(self: *@This()) core.HResult!void {
        var this: ?*IHolographicSpace2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicSpace2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.WaitForNextFrameReady();
    }
    pub fn WaitForNextFrameReadyWithHeadStart(self: *@This(), requestedHeadStartDuration: TimeSpan) core.HResult!void {
        var this: ?*IHolographicSpace2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicSpace2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.WaitForNextFrameReadyWithHeadStart(requestedHeadStartDuration);
    }
    pub fn CreateFramePresentationMonitor(self: *@This(), maxQueuedReports: u32) core.HResult!*HolographicFramePresentationMonitor {
        var this: ?*IHolographicSpace2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicSpace2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFramePresentationMonitor(maxQueuedReports);
    }
    pub fn CreateFrameScanoutMonitor(self: *@This(), maxQueuedReports: u32) core.HResult!*HolographicFrameScanoutMonitor {
        var this: ?*IHolographicSpace3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicSpace3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateFrameScanoutMonitor(maxQueuedReports);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_IsSupported() core.HResult!bool {
        const factory = @This().IHolographicSpaceStatics2Cache.get();
        return try factory.getIsSupported();
    }
    pub fn get_IsAvailable() core.HResult!bool {
        const factory = @This().IHolographicSpaceStatics2Cache.get();
        return try factory.getIsAvailable();
    }
    pub fn add_IsAvailableChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IHolographicSpaceStatics2Cache.get();
        return try factory.addIsAvailableChanged(handler);
    }
    pub fn remove_IsAvailableChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IHolographicSpaceStatics2Cache.get();
        return try factory.removeIsAvailableChanged(token);
    }
    pub fn CreateForCoreWindow(window: *CoreWindow) core.HResult!*HolographicSpace {
        const factory = @This().IHolographicSpaceStaticsCache.get();
        return try factory.CreateForCoreWindow(window);
    }
    pub fn get_IsConfigured() core.HResult!bool {
        const factory = @This().IHolographicSpaceStatics3Cache.get();
        return try factory.getIsConfigured();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicSpace";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicSpace.GUID;
    pub const IID: Guid = IHolographicSpace.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicSpace.SIGNATURE);
    var _IHolographicSpaceStatics2Cache: FactoryCache(IHolographicSpaceStatics2, RUNTIME_NAME) = .{};
    var _IHolographicSpaceStaticsCache: FactoryCache(IHolographicSpaceStatics, RUNTIME_NAME) = .{};
    var _IHolographicSpaceStatics3Cache: FactoryCache(IHolographicSpaceStatics3, RUNTIME_NAME) = .{};
};
pub const HolographicSpaceCameraAddedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCamera(self: *@This()) core.HResult!*HolographicCamera {
        const this: *IHolographicSpaceCameraAddedEventArgs = @ptrCast(self);
        return try this.getCamera();
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IHolographicSpaceCameraAddedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicSpaceCameraAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicSpaceCameraAddedEventArgs.GUID;
    pub const IID: Guid = IHolographicSpaceCameraAddedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicSpaceCameraAddedEventArgs.SIGNATURE);
};
pub const HolographicSpaceCameraRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCamera(self: *@This()) core.HResult!*HolographicCamera {
        const this: *IHolographicSpaceCameraRemovedEventArgs = @ptrCast(self);
        return try this.getCamera();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicSpaceCameraRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicSpaceCameraRemovedEventArgs.GUID;
    pub const IID: Guid = IHolographicSpaceCameraRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicSpaceCameraRemovedEventArgs.SIGNATURE);
};
pub const HolographicSpaceUserPresence = enum(i32) {
    Absent = 0,
    PresentPassive = 1,
    PresentActive = 2,
};
pub const HolographicStereoTransform = extern struct {
    Left: Matrix4x4,
    Right: Matrix4x4,
};
pub const HolographicViewConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNativeRenderTargetSize(self: *@This()) core.HResult!Size {
        const this: *IHolographicViewConfiguration = @ptrCast(self);
        return try this.getNativeRenderTargetSize();
    }
    pub fn getRenderTargetSize(self: *@This()) core.HResult!Size {
        const this: *IHolographicViewConfiguration = @ptrCast(self);
        return try this.getRenderTargetSize();
    }
    pub fn RequestRenderTargetSize(self: *@This(), size: Size) core.HResult!Size {
        const this: *IHolographicViewConfiguration = @ptrCast(self);
        return try this.RequestRenderTargetSize(size);
    }
    pub fn getSupportedPixelFormats(self: *@This()) core.HResult!*IVectorView(DirectXPixelFormat) {
        const this: *IHolographicViewConfiguration = @ptrCast(self);
        return try this.getSupportedPixelFormats();
    }
    pub fn getPixelFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        const this: *IHolographicViewConfiguration = @ptrCast(self);
        return try this.getPixelFormat();
    }
    pub fn putPixelFormat(self: *@This(), value: DirectXPixelFormat) core.HResult!void {
        const this: *IHolographicViewConfiguration = @ptrCast(self);
        return try this.putPixelFormat(value);
    }
    pub fn getIsStereo(self: *@This()) core.HResult!bool {
        const this: *IHolographicViewConfiguration = @ptrCast(self);
        return try this.getIsStereo();
    }
    pub fn getRefreshRate(self: *@This()) core.HResult!f64 {
        const this: *IHolographicViewConfiguration = @ptrCast(self);
        return try this.getRefreshRate();
    }
    pub fn getKind(self: *@This()) core.HResult!HolographicViewConfigurationKind {
        const this: *IHolographicViewConfiguration = @ptrCast(self);
        return try this.getKind();
    }
    pub fn getDisplay(self: *@This()) core.HResult!*HolographicDisplay {
        const this: *IHolographicViewConfiguration = @ptrCast(self);
        return try this.getDisplay();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IHolographicViewConfiguration = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IHolographicViewConfiguration = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn getSupportedDepthReprojectionMethods(self: *@This()) core.HResult!*IVectorView(HolographicDepthReprojectionMethod) {
        var this: ?*IHolographicViewConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHolographicViewConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSupportedDepthReprojectionMethods();
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.HolographicViewConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHolographicViewConfiguration.GUID;
    pub const IID: Guid = IHolographicViewConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHolographicViewConfiguration.SIGNATURE);
};
pub const HolographicViewConfigurationKind = enum(i32) {
    Display = 0,
    PhotoVideoCamera = 1,
};
pub const IHolographicCamera = extern struct {
    vtable: *const VTable,
    pub fn getRenderTargetSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_RenderTargetSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViewportScaleFactor(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ViewportScaleFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putViewportScaleFactor(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ViewportScaleFactor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsStereo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStereo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetNearPlaneDistance(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.SetNearPlaneDistance(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetFarPlaneDistance(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.SetFarPlaneDistance(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicCamera";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4e98445-9bed-4980-9ba0-e87680d1cb74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RenderTargetSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_ViewportScaleFactor: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ViewportScaleFactor: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_IsStereo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        SetNearPlaneDistance: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        SetFarPlaneDistance: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicCamera2 = extern struct {
    vtable: *const VTable,
    pub fn getLeftViewportParameters(self: *@This()) core.HResult!*HolographicCameraViewportParameters {
        var _r: *HolographicCameraViewportParameters = undefined;
        const _c = self.vtable.get_LeftViewportParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRightViewportParameters(self: *@This()) core.HResult!*HolographicCameraViewportParameters {
        var _r: *HolographicCameraViewportParameters = undefined;
        const _c = self.vtable.get_RightViewportParameters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplay(self: *@This()) core.HResult!*HolographicDisplay {
        var _r: *HolographicDisplay = undefined;
        const _c = self.vtable.get_Display(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicCamera2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b55b9f1a-ba8c-4f84-ad79-2e7e1e2450f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LeftViewportParameters: *const fn(self: *anyopaque, _r: **HolographicCameraViewportParameters) callconv(.winapi) HRESULT,
        get_RightViewportParameters: *const fn(self: *anyopaque, _r: **HolographicCameraViewportParameters) callconv(.winapi) HRESULT,
        get_Display: *const fn(self: *anyopaque, _r: **HolographicDisplay) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicCamera3 = extern struct {
    vtable: *const VTable,
    pub fn getIsPrimaryLayerEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPrimaryLayerEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPrimaryLayerEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPrimaryLayerEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxQuadLayerCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MaxQuadLayerCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getQuadLayers(self: *@This()) core.HResult!*IVector(HolographicQuadLayer) {
        var _r: *IVector(HolographicQuadLayer) = undefined;
        const _c = self.vtable.get_QuadLayers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicCamera3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45aa4fb3-7b59-524e-4a3f-4a6ad6650477";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPrimaryLayerEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPrimaryLayerEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_MaxQuadLayerCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_QuadLayers: *const fn(self: *anyopaque, _r: **IVector(HolographicQuadLayer)) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicCamera4 = extern struct {
    vtable: *const VTable,
    pub fn getCanOverrideViewport(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanOverrideViewport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicCamera4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a2531d6-4723-4f39-a9a5-9d05181d9b44";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanOverrideViewport: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicCamera5 = extern struct {
    vtable: *const VTable,
    pub fn getIsHardwareContentProtectionSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHardwareContentProtectionSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHardwareContentProtectionEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHardwareContentProtectionEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsHardwareContentProtectionEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsHardwareContentProtectionEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicCamera5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "229706f2-628d-4ef5-9c08-a63fdd7787c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsHardwareContentProtectionSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsHardwareContentProtectionEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsHardwareContentProtectionEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicCamera6 = extern struct {
    vtable: *const VTable,
    pub fn getViewConfiguration(self: *@This()) core.HResult!*HolographicViewConfiguration {
        var _r: *HolographicViewConfiguration = undefined;
        const _c = self.vtable.get_ViewConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicCamera6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0209194f-632d-5154-ab52-0b5d15b12505";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ViewConfiguration: *const fn(self: *anyopaque, _r: **HolographicViewConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicCameraPose = extern struct {
    vtable: *const VTable,
    pub fn getHolographicCamera(self: *@This()) core.HResult!*HolographicCamera {
        var _r: *HolographicCamera = undefined;
        const _c = self.vtable.get_HolographicCamera(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViewport(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_Viewport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetViewTransform(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*IReference(HolographicStereoTransform) {
        var _r: *IReference(HolographicStereoTransform) = undefined;
        const _c = self.vtable.TryGetViewTransform(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProjectionTransform(self: *@This()) core.HResult!HolographicStereoTransform {
        var _r: HolographicStereoTransform = undefined;
        const _c = self.vtable.get_ProjectionTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetCullingFrustum(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*IReference(SpatialBoundingFrustum) {
        var _r: *IReference(SpatialBoundingFrustum) = undefined;
        const _c = self.vtable.TryGetCullingFrustum(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetVisibleFrustum(self: *@This(), coordinateSystem: *SpatialCoordinateSystem) core.HResult!*IReference(SpatialBoundingFrustum) {
        var _r: *IReference(SpatialBoundingFrustum) = undefined;
        const _c = self.vtable.TryGetVisibleFrustum(@ptrCast(self), coordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNearPlaneDistance(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NearPlaneDistance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFarPlaneDistance(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FarPlaneDistance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicCameraPose";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d7d7e30-12de-45bd-912b-c7f6561599d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HolographicCamera: *const fn(self: *anyopaque, _r: **HolographicCamera) callconv(.winapi) HRESULT,
        get_Viewport: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        TryGetViewTransform: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **IReference(HolographicStereoTransform)) callconv(.winapi) HRESULT,
        get_ProjectionTransform: *const fn(self: *anyopaque, _r: *HolographicStereoTransform) callconv(.winapi) HRESULT,
        TryGetCullingFrustum: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **IReference(SpatialBoundingFrustum)) callconv(.winapi) HRESULT,
        TryGetVisibleFrustum: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, _r: **IReference(SpatialBoundingFrustum)) callconv(.winapi) HRESULT,
        get_NearPlaneDistance: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_FarPlaneDistance: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicCameraPose2 = extern struct {
    vtable: *const VTable,
    pub fn OverrideViewTransform(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, coordinateSystemToViewTransform: HolographicStereoTransform) core.HResult!void {
        const _c = self.vtable.OverrideViewTransform(@ptrCast(self), coordinateSystem, coordinateSystemToViewTransform);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OverrideProjectionTransform(self: *@This(), projectionTransform: HolographicStereoTransform) core.HResult!void {
        const _c = self.vtable.OverrideProjectionTransform(@ptrCast(self), projectionTransform);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OverrideViewport(self: *@This(), leftViewport: Rect, rightViewport: Rect) core.HResult!void {
        const _c = self.vtable.OverrideViewport(@ptrCast(self), leftViewport, rightViewport);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicCameraPose2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "232be073-5d2d-4560-814e-2697c4fce16b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OverrideViewTransform: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, coordinateSystemToViewTransform: HolographicStereoTransform) callconv(.winapi) HRESULT,
        OverrideProjectionTransform: *const fn(self: *anyopaque, projectionTransform: HolographicStereoTransform) callconv(.winapi) HRESULT,
        OverrideViewport: *const fn(self: *anyopaque, leftViewport: Rect, rightViewport: Rect) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicCameraRenderingParameters = extern struct {
    vtable: *const VTable,
    pub fn SetFocusPoint(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, position: Vector3) core.HResult!void {
        const _c = self.vtable.SetFocusPoint(@ptrCast(self), coordinateSystem, position);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetFocusPointWithPositionWithNormal(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, position: Vector3, normal: Vector3) core.HResult!void {
        const _c = self.vtable.SetFocusPointWithPositionWithNormal(@ptrCast(self), coordinateSystem, position, normal);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetFocusPointWithNormalWithLinearVelocity(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, position: Vector3, normal: Vector3, linearVelocity: Vector3) core.HResult!void {
        const _c = self.vtable.SetFocusPointWithNormalWithLinearVelocity(@ptrCast(self), coordinateSystem, position, normal, linearVelocity);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDirect3D11Device(self: *@This()) core.HResult!*IDirect3DDevice {
        var _r: *IDirect3DDevice = undefined;
        const _c = self.vtable.get_Direct3D11Device(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDirect3D11BackBuffer(self: *@This()) core.HResult!*IDirect3DSurface {
        var _r: *IDirect3DSurface = undefined;
        const _c = self.vtable.get_Direct3D11BackBuffer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicCameraRenderingParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8eac2ed1-5bf4-4e16-8236-ae0800c11d0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetFocusPoint: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, position: Vector3) callconv(.winapi) HRESULT,
        SetFocusPointWithPositionWithNormal: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, position: Vector3, normal: Vector3) callconv(.winapi) HRESULT,
        SetFocusPointWithNormalWithLinearVelocity: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, position: Vector3, normal: Vector3, linearVelocity: Vector3) callconv(.winapi) HRESULT,
        get_Direct3D11Device: *const fn(self: *anyopaque, _r: **IDirect3DDevice) callconv(.winapi) HRESULT,
        get_Direct3D11BackBuffer: *const fn(self: *anyopaque, _r: **IDirect3DSurface) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicCameraRenderingParameters2 = extern struct {
    vtable: *const VTable,
    pub fn getReprojectionMode(self: *@This()) core.HResult!HolographicReprojectionMode {
        var _r: HolographicReprojectionMode = undefined;
        const _c = self.vtable.get_ReprojectionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReprojectionMode(self: *@This(), value: HolographicReprojectionMode) core.HResult!void {
        const _c = self.vtable.put_ReprojectionMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CommitDirect3D11DepthBuffer(self: *@This(), value: *IDirect3DSurface) core.HResult!void {
        const _c = self.vtable.CommitDirect3D11DepthBuffer(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicCameraRenderingParameters2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "261270e3-b696-4634-94d6-be0681643599";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReprojectionMode: *const fn(self: *anyopaque, _r: *HolographicReprojectionMode) callconv(.winapi) HRESULT,
        put_ReprojectionMode: *const fn(self: *anyopaque, value: HolographicReprojectionMode) callconv(.winapi) HRESULT,
        CommitDirect3D11DepthBuffer: *const fn(self: *anyopaque, value: *IDirect3DSurface) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicCameraRenderingParameters3 = extern struct {
    vtable: *const VTable,
    pub fn getIsContentProtectionEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsContentProtectionEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsContentProtectionEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsContentProtectionEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicCameraRenderingParameters3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1aa513f-136d-4b06-b9d4-e4b914cd0683";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsContentProtectionEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsContentProtectionEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicCameraRenderingParameters4 = extern struct {
    vtable: *const VTable,
    pub fn getDepthReprojectionMethod(self: *@This()) core.HResult!HolographicDepthReprojectionMethod {
        var _r: HolographicDepthReprojectionMethod = undefined;
        const _c = self.vtable.get_DepthReprojectionMethod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDepthReprojectionMethod(self: *@This(), value: HolographicDepthReprojectionMethod) core.HResult!void {
        const _c = self.vtable.put_DepthReprojectionMethod(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicCameraRenderingParameters4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0878fa4c-e163-57dc-82b7-c406ab3e0537";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DepthReprojectionMethod: *const fn(self: *anyopaque, _r: *HolographicDepthReprojectionMethod) callconv(.winapi) HRESULT,
        put_DepthReprojectionMethod: *const fn(self: *anyopaque, value: HolographicDepthReprojectionMethod) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicCameraViewportParameters = extern struct {
    vtable: *const VTable,
    pub fn getHiddenAreaMesh(self: *@This()) core.HResult![*]Vector2 {
        var _r: [*]Vector2 = undefined;
        const _c = self.vtable.get_HiddenAreaMesh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVisibleAreaMesh(self: *@This()) core.HResult![*]Vector2 {
        var _r: [*]Vector2 = undefined;
        const _c = self.vtable.get_VisibleAreaMesh(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicCameraViewportParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80cdf3f7-842a-41e1-93ed-5692ab1fbb10";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HiddenAreaMesh: *const fn(self: *anyopaque, _r: *[*]Vector2) callconv(.winapi) HRESULT,
        get_VisibleAreaMesh: *const fn(self: *anyopaque, _r: *[*]Vector2) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicDisplay = extern struct {
    vtable: *const VTable,
    pub fn getDisplayName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxViewportSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_MaxViewportSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStereo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStereo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOpaque(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOpaque(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdapterId(self: *@This()) core.HResult!HolographicAdapterId {
        var _r: HolographicAdapterId = undefined;
        const _c = self.vtable.get_AdapterId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpatialLocator(self: *@This()) core.HResult!*SpatialLocator {
        var _r: *SpatialLocator = undefined;
        const _c = self.vtable.get_SpatialLocator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicDisplay";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9acea414-1d9f-4090-a388-90c06f6eae9c";
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
        get_MaxViewportSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_IsStereo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsOpaque: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AdapterId: *const fn(self: *anyopaque, _r: *HolographicAdapterId) callconv(.winapi) HRESULT,
        get_SpatialLocator: *const fn(self: *anyopaque, _r: **SpatialLocator) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicDisplay2 = extern struct {
    vtable: *const VTable,
    pub fn getRefreshRate(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RefreshRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicDisplay2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75ac3f82-e755-436c-8d96-4d32d131473e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RefreshRate: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicDisplay3 = extern struct {
    vtable: *const VTable,
    pub fn TryGetViewConfiguration(self: *@This(), kind: HolographicViewConfigurationKind) core.HResult!*HolographicViewConfiguration {
        var _r: *HolographicViewConfiguration = undefined;
        const _c = self.vtable.TryGetViewConfiguration(@ptrCast(self), kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicDisplay3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc4c6ac6-6480-5008-b29e-157d77c843f7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetViewConfiguration: *const fn(self: *anyopaque, kind: HolographicViewConfigurationKind, _r: **HolographicViewConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicDisplayStatics = extern struct {
    vtable: *const VTable,
    pub fn GetDefault(self: *@This()) core.HResult!*HolographicDisplay {
        var _r: *HolographicDisplay = undefined;
        const _c = self.vtable.GetDefault(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicDisplayStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb374983-e7b0-4841-8355-3ae5b536e9a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDefault: *const fn(self: *anyopaque, _r: **HolographicDisplay) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicFrame = extern struct {
    vtable: *const VTable,
    pub fn getAddedCameras(self: *@This()) core.HResult!*IVectorView(HolographicCamera) {
        var _r: *IVectorView(HolographicCamera) = undefined;
        const _c = self.vtable.get_AddedCameras(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRemovedCameras(self: *@This()) core.HResult!*IVectorView(HolographicCamera) {
        var _r: *IVectorView(HolographicCamera) = undefined;
        const _c = self.vtable.get_RemovedCameras(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRenderingParameters(self: *@This(), cameraPose: *HolographicCameraPose) core.HResult!*HolographicCameraRenderingParameters {
        var _r: *HolographicCameraRenderingParameters = undefined;
        const _c = self.vtable.GetRenderingParameters(@ptrCast(self), cameraPose, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentPrediction(self: *@This()) core.HResult!*HolographicFramePrediction {
        var _r: *HolographicFramePrediction = undefined;
        const _c = self.vtable.get_CurrentPrediction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateCurrentPrediction(self: *@This()) core.HResult!void {
        const _c = self.vtable.UpdateCurrentPrediction(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PresentUsingCurrentPrediction(self: *@This()) core.HResult!HolographicFramePresentResult {
        var _r: HolographicFramePresentResult = undefined;
        const _c = self.vtable.PresentUsingCurrentPrediction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PresentUsingCurrentPrediction(self: *@This(), waitBehavior: HolographicFramePresentWaitBehavior) core.HResult!HolographicFramePresentResult {
        var _r: HolographicFramePresentResult = undefined;
        const _c = self.vtable.PresentUsingCurrentPrediction(@ptrCast(self), waitBehavior, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn WaitForFrameToFinish(self: *@This()) core.HResult!void {
        const _c = self.vtable.WaitForFrameToFinish(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c6988eb6-a8b9-3054-a6eb-d624b6536375";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AddedCameras: *const fn(self: *anyopaque, _r: **IVectorView(HolographicCamera)) callconv(.winapi) HRESULT,
        get_RemovedCameras: *const fn(self: *anyopaque, _r: **IVectorView(HolographicCamera)) callconv(.winapi) HRESULT,
        GetRenderingParameters: *const fn(self: *anyopaque, cameraPose: *HolographicCameraPose, _r: **HolographicCameraRenderingParameters) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_CurrentPrediction: *const fn(self: *anyopaque, _r: **HolographicFramePrediction) callconv(.winapi) HRESULT,
        UpdateCurrentPrediction: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PresentUsingCurrentPrediction: *const fn(self: *anyopaque, _r: *HolographicFramePresentResult) callconv(.winapi) HRESULT,
        PresentUsingCurrentPrediction: *const fn(self: *anyopaque, waitBehavior: HolographicFramePresentWaitBehavior, _r: *HolographicFramePresentResult) callconv(.winapi) HRESULT,
        WaitForFrameToFinish: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicFrame2 = extern struct {
    vtable: *const VTable,
    pub fn GetQuadLayerUpdateParameters(self: *@This(), layer: *HolographicQuadLayer) core.HResult!*HolographicQuadLayerUpdateParameters {
        var _r: *HolographicQuadLayerUpdateParameters = undefined;
        const _c = self.vtable.GetQuadLayerUpdateParameters(@ptrCast(self), layer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicFrame2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "283f37bf-3bf2-5e91-6633-870574e6f217";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetQuadLayerUpdateParameters: *const fn(self: *anyopaque, layer: *HolographicQuadLayer, _r: **HolographicQuadLayerUpdateParameters) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicFrame3 = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HolographicFrameId {
        var _r: HolographicFrameId = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicFrame3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5e964c9-8a27-55d3-9f98-94530d369052";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HolographicFrameId) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicFramePrediction = extern struct {
    vtable: *const VTable,
    pub fn getCameraPoses(self: *@This()) core.HResult!*IVectorView(HolographicCameraPose) {
        var _r: *IVectorView(HolographicCameraPose) = undefined;
        const _c = self.vtable.get_CameraPoses(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTimestamp(self: *@This()) core.HResult!*PerceptionTimestamp {
        var _r: *PerceptionTimestamp = undefined;
        const _c = self.vtable.get_Timestamp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicFramePrediction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "520f4de1-5c0a-4e79-a81e-6abe02bb2739";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CameraPoses: *const fn(self: *anyopaque, _r: **IVectorView(HolographicCameraPose)) callconv(.winapi) HRESULT,
        get_Timestamp: *const fn(self: *anyopaque, _r: **PerceptionTimestamp) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicFramePresentationMonitor = extern struct {
    vtable: *const VTable,
    pub fn ReadReports(self: *@This()) core.HResult!*IVectorView(HolographicFramePresentationReport) {
        var _r: *IVectorView(HolographicFramePresentationReport) = undefined;
        const _c = self.vtable.ReadReports(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicFramePresentationMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca87256c-6fae-428e-bb83-25dfee51136b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadReports: *const fn(self: *anyopaque, _r: **IVectorView(HolographicFramePresentationReport)) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicFramePresentationReport = extern struct {
    vtable: *const VTable,
    pub fn getCompositorGpuDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_CompositorGpuDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppGpuDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_AppGpuDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppGpuOverrun(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_AppGpuOverrun(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMissedPresentationOpportunityCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MissedPresentationOpportunityCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPresentationCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PresentationCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicFramePresentationReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80baf614-f2f4-4c8a-8de3-065c78f6d5de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CompositorGpuDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_AppGpuDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_AppGpuOverrun: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_MissedPresentationOpportunityCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PresentationCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicFrameRenderingReport = extern struct {
    vtable: *const VTable,
    pub fn getFrameId(self: *@This()) core.HResult!HolographicFrameId {
        var _r: HolographicFrameId = undefined;
        const _c = self.vtable.get_FrameId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMissedLatchCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MissedLatchCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemRelativeFrameReadyTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SystemRelativeFrameReadyTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemRelativeActualGpuFinishTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SystemRelativeActualGpuFinishTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemRelativeTargetLatchTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SystemRelativeTargetLatchTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicFrameRenderingReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "05f32de4-e384-51b3-b934-f0d3a0f78606";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameId: *const fn(self: *anyopaque, _r: *HolographicFrameId) callconv(.winapi) HRESULT,
        get_MissedLatchCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SystemRelativeFrameReadyTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_SystemRelativeActualGpuFinishTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_SystemRelativeTargetLatchTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicFrameScanoutMonitor = extern struct {
    vtable: *const VTable,
    pub fn ReadReports(self: *@This()) core.HResult!*IVector(HolographicFrameScanoutReport) {
        var _r: *IVector(HolographicFrameScanoutReport) = undefined;
        const _c = self.vtable.ReadReports(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicFrameScanoutMonitor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e83efa9-843c-5401-8095-9bc1b8b08638";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ReadReports: *const fn(self: *anyopaque, _r: **IVector(HolographicFrameScanoutReport)) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicFrameScanoutReport = extern struct {
    vtable: *const VTable,
    pub fn getRenderingReport(self: *@This()) core.HResult!*HolographicFrameRenderingReport {
        var _r: *HolographicFrameRenderingReport = undefined;
        const _c = self.vtable.get_RenderingReport(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMissedScanoutCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MissedScanoutCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemRelativeLatchTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SystemRelativeLatchTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemRelativeScanoutStartTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SystemRelativeScanoutStartTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemRelativePhotonTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_SystemRelativePhotonTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicFrameScanoutReport";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ebbe606-03a0-5ca0-b46e-bba068d7233f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RenderingReport: *const fn(self: *anyopaque, _r: **HolographicFrameRenderingReport) callconv(.winapi) HRESULT,
        get_MissedScanoutCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_SystemRelativeLatchTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_SystemRelativeScanoutStartTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_SystemRelativePhotonTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicQuadLayer = extern struct {
    vtable: *const VTable,
    pub fn getPixelFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        var _r: DirectXPixelFormat = undefined;
        const _c = self.vtable.get_PixelFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicQuadLayer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "903460c9-c9d9-5d5c-41ac-a2d5ab0fd331";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PixelFormat: *const fn(self: *anyopaque, _r: *DirectXPixelFormat) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicQuadLayerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), size: Size) core.HResult!*HolographicQuadLayer {
        var _r: *HolographicQuadLayer = undefined;
        const _c = self.vtable.Create(@ptrCast(self), size, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithPixelFormat(self: *@This(), size: Size, pixelFormat: DirectXPixelFormat) core.HResult!*HolographicQuadLayer {
        var _r: *HolographicQuadLayer = undefined;
        const _c = self.vtable.CreateWithPixelFormat(@ptrCast(self), size, pixelFormat, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicQuadLayerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a67538f3-5a14-5a10-489a-455065b37b76";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, size: Size, _r: **HolographicQuadLayer) callconv(.winapi) HRESULT,
        CreateWithPixelFormat: *const fn(self: *anyopaque, size: Size, pixelFormat: DirectXPixelFormat, _r: **HolographicQuadLayer) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicQuadLayerUpdateParameters = extern struct {
    vtable: *const VTable,
    pub fn AcquireBufferToUpdateContent(self: *@This()) core.HResult!*IDirect3DSurface {
        var _r: *IDirect3DSurface = undefined;
        const _c = self.vtable.AcquireBufferToUpdateContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateViewport(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.UpdateViewport(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UpdateContentProtectionEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.UpdateContentProtectionEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UpdateExtents(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.UpdateExtents(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UpdateLocationWithStationaryMode(self: *@This(), coordinateSystem: *SpatialCoordinateSystem, position: Vector3, orientation: Quaternion) core.HResult!void {
        const _c = self.vtable.UpdateLocationWithStationaryMode(@ptrCast(self), coordinateSystem, position, orientation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UpdateLocationWithDisplayRelativeMode(self: *@This(), position: Vector3, orientation: Quaternion) core.HResult!void {
        const _c = self.vtable.UpdateLocationWithDisplayRelativeMode(@ptrCast(self), position, orientation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicQuadLayerUpdateParameters";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b0ea3b0-798d-5bca-55c2-2c0c762ebb08";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AcquireBufferToUpdateContent: *const fn(self: *anyopaque, _r: **IDirect3DSurface) callconv(.winapi) HRESULT,
        UpdateViewport: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
        UpdateContentProtectionEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        UpdateExtents: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        UpdateLocationWithStationaryMode: *const fn(self: *anyopaque, coordinateSystem: *SpatialCoordinateSystem, position: Vector3, orientation: Quaternion) callconv(.winapi) HRESULT,
        UpdateLocationWithDisplayRelativeMode: *const fn(self: *anyopaque, position: Vector3, orientation: Quaternion) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicQuadLayerUpdateParameters2 = extern struct {
    vtable: *const VTable,
    pub fn getCanAcquireWithHardwareProtection(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanAcquireWithHardwareProtection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AcquireBufferToUpdateContentWithHardwareProtection(self: *@This()) core.HResult!*IDirect3DSurface {
        var _r: *IDirect3DSurface = undefined;
        const _c = self.vtable.AcquireBufferToUpdateContentWithHardwareProtection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicQuadLayerUpdateParameters2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f33d32d-82c1-46c1-8980-3cb70d98182b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanAcquireWithHardwareProtection: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        AcquireBufferToUpdateContentWithHardwareProtection: *const fn(self: *anyopaque, _r: **IDirect3DSurface) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicSpace = extern struct {
    vtable: *const VTable,
    pub fn getPrimaryAdapterId(self: *@This()) core.HResult!HolographicAdapterId {
        var _r: HolographicAdapterId = undefined;
        const _c = self.vtable.get_PrimaryAdapterId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDirect3D11Device(self: *@This(), value: *IDirect3DDevice) core.HResult!void {
        const _c = self.vtable.SetDirect3D11Device(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCameraAdded(self: *@This(), handler: *TypedEventHandler(HolographicSpace,HolographicSpaceCameraAddedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CameraAdded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCameraAdded(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CameraAdded(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCameraRemoved(self: *@This(), handler: *TypedEventHandler(HolographicSpace,HolographicSpaceCameraRemovedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CameraRemoved(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCameraRemoved(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CameraRemoved(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateNextFrame(self: *@This()) core.HResult!*HolographicFrame {
        var _r: *HolographicFrame = undefined;
        const _c = self.vtable.CreateNextFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicSpace";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4380dba6-5e78-434f-807c-3433d1efe8b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PrimaryAdapterId: *const fn(self: *anyopaque, _r: *HolographicAdapterId) callconv(.winapi) HRESULT,
        SetDirect3D11Device: *const fn(self: *anyopaque, value: *IDirect3DDevice) callconv(.winapi) HRESULT,
        add_CameraAdded: *const fn(self: *anyopaque, handler: *TypedEventHandler(HolographicSpace,HolographicSpaceCameraAddedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CameraAdded: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CameraRemoved: *const fn(self: *anyopaque, handler: *TypedEventHandler(HolographicSpace,HolographicSpaceCameraRemovedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CameraRemoved: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
        CreateNextFrame: *const fn(self: *anyopaque, _r: **HolographicFrame) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicSpace2 = extern struct {
    vtable: *const VTable,
    pub fn getUserPresence(self: *@This()) core.HResult!HolographicSpaceUserPresence {
        var _r: HolographicSpaceUserPresence = undefined;
        const _c = self.vtable.get_UserPresence(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addUserPresenceChanged(self: *@This(), handler: *TypedEventHandler(HolographicSpace,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UserPresenceChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUserPresenceChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UserPresenceChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WaitForNextFrameReady(self: *@This()) core.HResult!void {
        const _c = self.vtable.WaitForNextFrameReady(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn WaitForNextFrameReadyWithHeadStart(self: *@This(), requestedHeadStartDuration: TimeSpan) core.HResult!void {
        const _c = self.vtable.WaitForNextFrameReadyWithHeadStart(@ptrCast(self), requestedHeadStartDuration);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateFramePresentationMonitor(self: *@This(), maxQueuedReports: u32) core.HResult!*HolographicFramePresentationMonitor {
        var _r: *HolographicFramePresentationMonitor = undefined;
        const _c = self.vtable.CreateFramePresentationMonitor(@ptrCast(self), maxQueuedReports, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicSpace2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f81a9a8-b7ff-4883-9827-7d677287ea70";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserPresence: *const fn(self: *anyopaque, _r: *HolographicSpaceUserPresence) callconv(.winapi) HRESULT,
        add_UserPresenceChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(HolographicSpace,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UserPresenceChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        WaitForNextFrameReady: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        WaitForNextFrameReadyWithHeadStart: *const fn(self: *anyopaque, requestedHeadStartDuration: TimeSpan) callconv(.winapi) HRESULT,
        CreateFramePresentationMonitor: *const fn(self: *anyopaque, maxQueuedReports: u32, _r: **HolographicFramePresentationMonitor) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicSpace3 = extern struct {
    vtable: *const VTable,
    pub fn CreateFrameScanoutMonitor(self: *@This(), maxQueuedReports: u32) core.HResult!*HolographicFrameScanoutMonitor {
        var _r: *HolographicFrameScanoutMonitor = undefined;
        const _c = self.vtable.CreateFrameScanoutMonitor(@ptrCast(self), maxQueuedReports, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicSpace3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df1733d1-f224-587e-8d71-1e8fc8f07b1f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateFrameScanoutMonitor: *const fn(self: *anyopaque, maxQueuedReports: u32, _r: **HolographicFrameScanoutMonitor) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicSpaceCameraAddedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCamera(self: *@This()) core.HResult!*HolographicCamera {
        var _r: *HolographicCamera = undefined;
        const _c = self.vtable.get_Camera(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicSpaceCameraAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "58f1da35-bbb3-3c8f-993d-6c80e7feb99f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Camera: *const fn(self: *anyopaque, _r: **HolographicCamera) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicSpaceCameraRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCamera(self: *@This()) core.HResult!*HolographicCamera {
        var _r: *HolographicCamera = undefined;
        const _c = self.vtable.get_Camera(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicSpaceCameraRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "805444a8-f2ae-322e-8da9-836a0a95a4c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Camera: *const fn(self: *anyopaque, _r: **HolographicCamera) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicSpaceStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateForCoreWindow(self: *@This(), window: *CoreWindow) core.HResult!*HolographicSpace {
        var _r: *HolographicSpace = undefined;
        const _c = self.vtable.CreateForCoreWindow(@ptrCast(self), window, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicSpaceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "364e6064-c8f2-3ba1-8391-66b8489e67fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateForCoreWindow: *const fn(self: *anyopaque, window: *CoreWindow, _r: **HolographicSpace) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicSpaceStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getIsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addIsAvailableChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsAvailableChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsAvailableChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsAvailableChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicSpaceStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e777088-75fc-48af-8758-0652f6f07c59";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsAvailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_IsAvailableChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsAvailableChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicSpaceStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getIsConfigured(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConfigured(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicSpaceStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b00de3d-b1a3-4dfe-8e79-fec5909e6df8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsConfigured: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicViewConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getNativeRenderTargetSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_NativeRenderTargetSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRenderTargetSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_RenderTargetSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestRenderTargetSize(self: *@This(), size: Size) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.RequestRenderTargetSize(@ptrCast(self), size, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedPixelFormats(self: *@This()) core.HResult!*IVectorView(DirectXPixelFormat) {
        var _r: *IVectorView(DirectXPixelFormat) = undefined;
        const _c = self.vtable.get_SupportedPixelFormats(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPixelFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        var _r: DirectXPixelFormat = undefined;
        const _c = self.vtable.get_PixelFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPixelFormat(self: *@This(), value: DirectXPixelFormat) core.HResult!void {
        const _c = self.vtable.put_PixelFormat(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsStereo(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStereo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRefreshRate(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RefreshRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!HolographicViewConfigurationKind {
        var _r: HolographicViewConfigurationKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisplay(self: *@This()) core.HResult!*HolographicDisplay {
        var _r: *HolographicDisplay = undefined;
        const _c = self.vtable.get_Display(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicViewConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c1de6e6-67e9-5004-b02c-67a3a122b576";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NativeRenderTargetSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_RenderTargetSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        RequestRenderTargetSize: *const fn(self: *anyopaque, size: Size, _r: *Size) callconv(.winapi) HRESULT,
        get_SupportedPixelFormats: *const fn(self: *anyopaque, _r: **IVectorView(DirectXPixelFormat)) callconv(.winapi) HRESULT,
        get_PixelFormat: *const fn(self: *anyopaque, _r: *DirectXPixelFormat) callconv(.winapi) HRESULT,
        put_PixelFormat: *const fn(self: *anyopaque, value: DirectXPixelFormat) callconv(.winapi) HRESULT,
        get_IsStereo: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_RefreshRate: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *HolographicViewConfigurationKind) callconv(.winapi) HRESULT,
        get_Display: *const fn(self: *anyopaque, _r: **HolographicDisplay) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IHolographicViewConfiguration2 = extern struct {
    vtable: *const VTable,
    pub fn getSupportedDepthReprojectionMethods(self: *@This()) core.HResult!*IVectorView(HolographicDepthReprojectionMethod) {
        var _r: *IVectorView(HolographicDepthReprojectionMethod) = undefined;
        const _c = self.vtable.get_SupportedDepthReprojectionMethods(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Graphics.Holographic.IHolographicViewConfiguration2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e241756e-e0d0-5019-9af5-1b165bc2f54e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SupportedDepthReprojectionMethods: *const fn(self: *anyopaque, _r: **IVectorView(HolographicDepthReprojectionMethod)) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../root.zig").IUnknown;
const SpatialLocator = @import("../Perception/Spatial.zig").SpatialLocator;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IVector = @import("../Foundation/Collections.zig").IVector;
const Size = @import("../Foundation.zig").Size;
const DirectXPixelFormat = @import("./DirectX.zig").DirectXPixelFormat;
const IReference = @import("../Foundation.zig").IReference;
const IDirect3DSurface = @import("./DirectX/Direct3D11.zig").IDirect3DSurface;
const SpatialCoordinateSystem = @import("../Perception/Spatial.zig").SpatialCoordinateSystem;
const Deferral = @import("../Foundation.zig").Deferral;
const CoreWindow = @import("../UI/Core.zig").CoreWindow;
const FactoryCache = @import("../core.zig").FactoryCache;
const Vector2 = @import("../Foundation/Numerics.zig").Vector2;
const IDirect3DDevice = @import("./DirectX/Direct3D11.zig").IDirect3DDevice;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const IClosable = @import("../Foundation.zig").IClosable;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const SpatialBoundingFrustum = @import("../Perception/Spatial.zig").SpatialBoundingFrustum;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Vector3 = @import("../Foundation/Numerics.zig").Vector3;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const Matrix4x4 = @import("../Foundation/Numerics.zig").Matrix4x4;
const Quaternion = @import("../Foundation/Numerics.zig").Quaternion;
const EventHandler = @import("../Foundation.zig").EventHandler;
const PerceptionTimestamp = @import("../Perception.zig").PerceptionTimestamp;
const HRESULT = @import("../root.zig").HRESULT;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
