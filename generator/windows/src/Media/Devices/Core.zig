pub const CameraIntrinsics = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFocalLength(self: *@This()) core.HResult!Vector2 {
        const this: *ICameraIntrinsics = @ptrCast(self);
        return try this.getFocalLength();
    }
    pub fn getPrincipalPoint(self: *@This()) core.HResult!Vector2 {
        const this: *ICameraIntrinsics = @ptrCast(self);
        return try this.getPrincipalPoint();
    }
    pub fn getRadialDistortion(self: *@This()) core.HResult!Vector3 {
        const this: *ICameraIntrinsics = @ptrCast(self);
        return try this.getRadialDistortion();
    }
    pub fn getTangentialDistortion(self: *@This()) core.HResult!Vector2 {
        const this: *ICameraIntrinsics = @ptrCast(self);
        return try this.getTangentialDistortion();
    }
    pub fn getImageWidth(self: *@This()) core.HResult!u32 {
        const this: *ICameraIntrinsics = @ptrCast(self);
        return try this.getImageWidth();
    }
    pub fn getImageHeight(self: *@This()) core.HResult!u32 {
        const this: *ICameraIntrinsics = @ptrCast(self);
        return try this.getImageHeight();
    }
    pub fn ProjectOntoFrame(self: *@This(), coordinate: Vector3) core.HResult!Point {
        const this: *ICameraIntrinsics = @ptrCast(self);
        return try this.ProjectOntoFrame(coordinate);
    }
    pub fn UnprojectAtUnitDepth(self: *@This(), pixelCoordinate: Point) core.HResult!Vector2 {
        const this: *ICameraIntrinsics = @ptrCast(self);
        return try this.UnprojectAtUnitDepth(pixelCoordinate);
    }
    pub fn ProjectManyOntoFrame(self: *@This(), coordinates: [*]Vector3, results: [*]Point) core.HResult!void {
        const this: *ICameraIntrinsics = @ptrCast(self);
        return try this.ProjectManyOntoFrame(coordinates, results);
    }
    pub fn UnprojectPixelsAtUnitDepth(self: *@This(), pixelCoordinates: [*]Point, results: [*]Vector2) core.HResult!void {
        const this: *ICameraIntrinsics = @ptrCast(self);
        return try this.UnprojectPixelsAtUnitDepth(pixelCoordinates, results);
    }
    pub fn getUndistortedProjectionTransform(self: *@This()) core.HResult!Matrix4x4 {
        var this: ?*ICameraIntrinsics2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICameraIntrinsics2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUndistortedProjectionTransform();
    }
    pub fn DistortPoint(self: *@This(), input: Point) core.HResult!Point {
        var this: ?*ICameraIntrinsics2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICameraIntrinsics2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DistortPoint(input);
    }
    pub fn DistortPoints(self: *@This(), inputs: [*]Point, results: [*]Point) core.HResult!void {
        var this: ?*ICameraIntrinsics2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICameraIntrinsics2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.DistortPoints(inputs, results);
    }
    pub fn UndistortPoint(self: *@This(), input: Point) core.HResult!Point {
        var this: ?*ICameraIntrinsics2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICameraIntrinsics2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UndistortPoint(input);
    }
    pub fn UndistortPoints(self: *@This(), inputs: [*]Point, results: [*]Point) core.HResult!void {
        var this: ?*ICameraIntrinsics2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICameraIntrinsics2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.UndistortPoints(inputs, results);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(focalLength: Vector2, principalPoint: Vector2, radialDistortion: Vector3, tangentialDistortion: Vector2, imageWidth: u32, imageHeight: u32) core.HResult!*CameraIntrinsics {
        const factory = @This().ICameraIntrinsicsFactoryCache.get();
        return try factory.Create(focalLength, principalPoint, radialDistortion, tangentialDistortion, imageWidth, imageHeight);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.CameraIntrinsics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICameraIntrinsics.GUID;
    pub const IID: Guid = ICameraIntrinsics.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICameraIntrinsics.SIGNATURE);
    var _ICameraIntrinsicsFactoryCache: FactoryCache(ICameraIntrinsicsFactory, RUNTIME_NAME) = .{};
};
pub const DepthCorrelatedCoordinateMapper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn UnprojectPoint(self: *@This(), sourcePoint: Point, targetCoordinateSystem: *SpatialCoordinateSystem) core.HResult!Vector3 {
        const this: *IDepthCorrelatedCoordinateMapper = @ptrCast(self);
        return try this.UnprojectPoint(sourcePoint, targetCoordinateSystem);
    }
    pub fn UnprojectPoints(self: *@This(), sourcePoints: [*]Point, targetCoordinateSystem: *SpatialCoordinateSystem, results: [*]Vector3) core.HResult!void {
        const this: *IDepthCorrelatedCoordinateMapper = @ptrCast(self);
        return try this.UnprojectPoints(sourcePoints, targetCoordinateSystem, results);
    }
    pub fn MapPoint(self: *@This(), sourcePoint: Point, targetCoordinateSystem: *SpatialCoordinateSystem, targetCameraIntrinsics: *CameraIntrinsics) core.HResult!Point {
        const this: *IDepthCorrelatedCoordinateMapper = @ptrCast(self);
        return try this.MapPoint(sourcePoint, targetCoordinateSystem, targetCameraIntrinsics);
    }
    pub fn MapPoints(self: *@This(), sourcePoints: [*]Point, targetCoordinateSystem: *SpatialCoordinateSystem, targetCameraIntrinsics: *CameraIntrinsics, results: [*]Point) core.HResult!void {
        const this: *IDepthCorrelatedCoordinateMapper = @ptrCast(self);
        return try this.MapPoints(sourcePoints, targetCoordinateSystem, targetCameraIntrinsics, results);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.DepthCorrelatedCoordinateMapper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDepthCorrelatedCoordinateMapper.GUID;
    pub const IID: Guid = IDepthCorrelatedCoordinateMapper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDepthCorrelatedCoordinateMapper.SIGNATURE);
};
pub const FrameControlCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExposure(self: *@This()) core.HResult!*FrameExposureCapabilities {
        const this: *IFrameControlCapabilities = @ptrCast(self);
        return try this.getExposure();
    }
    pub fn getExposureCompensation(self: *@This()) core.HResult!*FrameExposureCompensationCapabilities {
        const this: *IFrameControlCapabilities = @ptrCast(self);
        return try this.getExposureCompensation();
    }
    pub fn getIsoSpeed(self: *@This()) core.HResult!*FrameIsoSpeedCapabilities {
        const this: *IFrameControlCapabilities = @ptrCast(self);
        return try this.getIsoSpeed();
    }
    pub fn getFocus(self: *@This()) core.HResult!*FrameFocusCapabilities {
        const this: *IFrameControlCapabilities = @ptrCast(self);
        return try this.getFocus();
    }
    pub fn getPhotoConfirmationSupported(self: *@This()) core.HResult!bool {
        const this: *IFrameControlCapabilities = @ptrCast(self);
        return try this.getPhotoConfirmationSupported();
    }
    pub fn getFlash(self: *@This()) core.HResult!*FrameFlashCapabilities {
        var this: ?*IFrameControlCapabilities2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameControlCapabilities2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFlash();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.FrameControlCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameControlCapabilities.GUID;
    pub const IID: Guid = IFrameControlCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameControlCapabilities.SIGNATURE);
};
pub const FrameController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExposureControl(self: *@This()) core.HResult!*FrameExposureControl {
        const this: *IFrameController = @ptrCast(self);
        return try this.getExposureControl();
    }
    pub fn getExposureCompensationControl(self: *@This()) core.HResult!*FrameExposureCompensationControl {
        const this: *IFrameController = @ptrCast(self);
        return try this.getExposureCompensationControl();
    }
    pub fn getIsoSpeedControl(self: *@This()) core.HResult!*FrameIsoSpeedControl {
        const this: *IFrameController = @ptrCast(self);
        return try this.getIsoSpeedControl();
    }
    pub fn getFocusControl(self: *@This()) core.HResult!*FrameFocusControl {
        const this: *IFrameController = @ptrCast(self);
        return try this.getFocusControl();
    }
    pub fn getPhotoConfirmationEnabled(self: *@This()) core.HResult!*IReference(bool) {
        const this: *IFrameController = @ptrCast(self);
        return try this.getPhotoConfirmationEnabled();
    }
    pub fn putPhotoConfirmationEnabled(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const this: *IFrameController = @ptrCast(self);
        return try this.putPhotoConfirmationEnabled(value);
    }
    pub fn getFlashControl(self: *@This()) core.HResult!*FrameFlashControl {
        var this: ?*IFrameController2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFrameController2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFlashControl();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFrameController.IID)));
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.FrameController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameController.GUID;
    pub const IID: Guid = IFrameController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameController.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const FrameExposureCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IFrameExposureCapabilities = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getMin(self: *@This()) core.HResult!TimeSpan {
        const this: *IFrameExposureCapabilities = @ptrCast(self);
        return try this.getMin();
    }
    pub fn getMax(self: *@This()) core.HResult!TimeSpan {
        const this: *IFrameExposureCapabilities = @ptrCast(self);
        return try this.getMax();
    }
    pub fn getStep(self: *@This()) core.HResult!TimeSpan {
        const this: *IFrameExposureCapabilities = @ptrCast(self);
        return try this.getStep();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.FrameExposureCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameExposureCapabilities.GUID;
    pub const IID: Guid = IFrameExposureCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameExposureCapabilities.SIGNATURE);
};
pub const FrameExposureCompensationCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IFrameExposureCompensationCapabilities = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getMin(self: *@This()) core.HResult!f32 {
        const this: *IFrameExposureCompensationCapabilities = @ptrCast(self);
        return try this.getMin();
    }
    pub fn getMax(self: *@This()) core.HResult!f32 {
        const this: *IFrameExposureCompensationCapabilities = @ptrCast(self);
        return try this.getMax();
    }
    pub fn getStep(self: *@This()) core.HResult!f32 {
        const this: *IFrameExposureCompensationCapabilities = @ptrCast(self);
        return try this.getStep();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.FrameExposureCompensationCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameExposureCompensationCapabilities.GUID;
    pub const IID: Guid = IFrameExposureCompensationCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameExposureCompensationCapabilities.SIGNATURE);
};
pub const FrameExposureCompensationControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValue(self: *@This()) core.HResult!*IReference(f32) {
        const this: *IFrameExposureCompensationControl = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: *IReference(f32)) core.HResult!void {
        const this: *IFrameExposureCompensationControl = @ptrCast(self);
        return try this.putValue(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.FrameExposureCompensationControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameExposureCompensationControl.GUID;
    pub const IID: Guid = IFrameExposureCompensationControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameExposureCompensationControl.SIGNATURE);
};
pub const FrameExposureControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAuto(self: *@This()) core.HResult!bool {
        const this: *IFrameExposureControl = @ptrCast(self);
        return try this.getAuto();
    }
    pub fn putAuto(self: *@This(), value: bool) core.HResult!void {
        const this: *IFrameExposureControl = @ptrCast(self);
        return try this.putAuto(value);
    }
    pub fn getValue(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *IFrameExposureControl = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *IFrameExposureControl = @ptrCast(self);
        return try this.putValue(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.FrameExposureControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameExposureControl.GUID;
    pub const IID: Guid = IFrameExposureControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameExposureControl.SIGNATURE);
};
pub const FrameFlashCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IFrameFlashCapabilities = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getRedEyeReductionSupported(self: *@This()) core.HResult!bool {
        const this: *IFrameFlashCapabilities = @ptrCast(self);
        return try this.getRedEyeReductionSupported();
    }
    pub fn getPowerSupported(self: *@This()) core.HResult!bool {
        const this: *IFrameFlashCapabilities = @ptrCast(self);
        return try this.getPowerSupported();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.FrameFlashCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameFlashCapabilities.GUID;
    pub const IID: Guid = IFrameFlashCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameFlashCapabilities.SIGNATURE);
};
pub const FrameFlashControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!FrameFlashMode {
        const this: *IFrameFlashControl = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: FrameFlashMode) core.HResult!void {
        const this: *IFrameFlashControl = @ptrCast(self);
        return try this.putMode(value);
    }
    pub fn getAuto(self: *@This()) core.HResult!bool {
        const this: *IFrameFlashControl = @ptrCast(self);
        return try this.getAuto();
    }
    pub fn putAuto(self: *@This(), value: bool) core.HResult!void {
        const this: *IFrameFlashControl = @ptrCast(self);
        return try this.putAuto(value);
    }
    pub fn getRedEyeReduction(self: *@This()) core.HResult!bool {
        const this: *IFrameFlashControl = @ptrCast(self);
        return try this.getRedEyeReduction();
    }
    pub fn putRedEyeReduction(self: *@This(), value: bool) core.HResult!void {
        const this: *IFrameFlashControl = @ptrCast(self);
        return try this.putRedEyeReduction(value);
    }
    pub fn getPowerPercent(self: *@This()) core.HResult!f32 {
        const this: *IFrameFlashControl = @ptrCast(self);
        return try this.getPowerPercent();
    }
    pub fn putPowerPercent(self: *@This(), value: f32) core.HResult!void {
        const this: *IFrameFlashControl = @ptrCast(self);
        return try this.putPowerPercent(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.FrameFlashControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameFlashControl.GUID;
    pub const IID: Guid = IFrameFlashControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameFlashControl.SIGNATURE);
};
pub const FrameFlashMode = enum(i32) {
    Disable = 0,
    Enable = 1,
    Global = 2,
};
pub const FrameFocusCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IFrameFocusCapabilities = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getMin(self: *@This()) core.HResult!u32 {
        const this: *IFrameFocusCapabilities = @ptrCast(self);
        return try this.getMin();
    }
    pub fn getMax(self: *@This()) core.HResult!u32 {
        const this: *IFrameFocusCapabilities = @ptrCast(self);
        return try this.getMax();
    }
    pub fn getStep(self: *@This()) core.HResult!u32 {
        const this: *IFrameFocusCapabilities = @ptrCast(self);
        return try this.getStep();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.FrameFocusCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameFocusCapabilities.GUID;
    pub const IID: Guid = IFrameFocusCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameFocusCapabilities.SIGNATURE);
};
pub const FrameFocusControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValue(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IFrameFocusControl = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const this: *IFrameFocusControl = @ptrCast(self);
        return try this.putValue(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.FrameFocusControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameFocusControl.GUID;
    pub const IID: Guid = IFrameFocusControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameFocusControl.SIGNATURE);
};
pub const FrameIsoSpeedCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IFrameIsoSpeedCapabilities = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getMin(self: *@This()) core.HResult!u32 {
        const this: *IFrameIsoSpeedCapabilities = @ptrCast(self);
        return try this.getMin();
    }
    pub fn getMax(self: *@This()) core.HResult!u32 {
        const this: *IFrameIsoSpeedCapabilities = @ptrCast(self);
        return try this.getMax();
    }
    pub fn getStep(self: *@This()) core.HResult!u32 {
        const this: *IFrameIsoSpeedCapabilities = @ptrCast(self);
        return try this.getStep();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.FrameIsoSpeedCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameIsoSpeedCapabilities.GUID;
    pub const IID: Guid = IFrameIsoSpeedCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameIsoSpeedCapabilities.SIGNATURE);
};
pub const FrameIsoSpeedControl = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAuto(self: *@This()) core.HResult!bool {
        const this: *IFrameIsoSpeedControl = @ptrCast(self);
        return try this.getAuto();
    }
    pub fn putAuto(self: *@This(), value: bool) core.HResult!void {
        const this: *IFrameIsoSpeedControl = @ptrCast(self);
        return try this.putAuto(value);
    }
    pub fn getValue(self: *@This()) core.HResult!*IReference(u32) {
        const this: *IFrameIsoSpeedControl = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const this: *IFrameIsoSpeedControl = @ptrCast(self);
        return try this.putValue(value);
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.FrameIsoSpeedControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameIsoSpeedControl.GUID;
    pub const IID: Guid = IFrameIsoSpeedControl.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameIsoSpeedControl.SIGNATURE);
};
pub const ICameraIntrinsics = extern struct {
    vtable: *const VTable,
    pub fn getFocalLength(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_FocalLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPrincipalPoint(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_PrincipalPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRadialDistortion(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_RadialDistortion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTangentialDistortion(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_TangentialDistortion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImageWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ImageWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getImageHeight(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ImageHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProjectOntoFrame(self: *@This(), coordinate: Vector3) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.ProjectOntoFrame(@ptrCast(self), coordinate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnprojectAtUnitDepth(self: *@This(), pixelCoordinate: Point) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.UnprojectAtUnitDepth(@ptrCast(self), pixelCoordinate, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProjectManyOntoFrame(self: *@This(), coordinates: [*]Vector3, results: [*]Point) core.HResult!void {
        const _c = self.vtable.ProjectManyOntoFrame(@ptrCast(self), coordinates, results);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UnprojectPixelsAtUnitDepth(self: *@This(), pixelCoordinates: [*]Point, results: [*]Vector2) core.HResult!void {
        const _c = self.vtable.UnprojectPixelsAtUnitDepth(@ptrCast(self), pixelCoordinates, results);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.ICameraIntrinsics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0aa6ed32-6589-49da-afde-594270ca0aac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FocalLength: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        get_PrincipalPoint: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        get_RadialDistortion: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        get_TangentialDistortion: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        get_ImageWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_ImageHeight: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        ProjectOntoFrame: *const fn(self: *anyopaque, coordinate: Vector3, _r: *Point) callconv(.winapi) HRESULT,
        UnprojectAtUnitDepth: *const fn(self: *anyopaque, pixelCoordinate: Point, _r: *Vector2) callconv(.winapi) HRESULT,
        ProjectManyOntoFrame: *const fn(self: *anyopaque, coordinates: [*]Vector3, results: [*]Point) callconv(.winapi) HRESULT,
        UnprojectPixelsAtUnitDepth: *const fn(self: *anyopaque, pixelCoordinates: [*]Point, results: [*]Vector2) callconv(.winapi) HRESULT,
    };
};
pub const ICameraIntrinsics2 = extern struct {
    vtable: *const VTable,
    pub fn getUndistortedProjectionTransform(self: *@This()) core.HResult!Matrix4x4 {
        var _r: Matrix4x4 = undefined;
        const _c = self.vtable.get_UndistortedProjectionTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DistortPoint(self: *@This(), input: Point) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.DistortPoint(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DistortPoints(self: *@This(), inputs: [*]Point, results: [*]Point) core.HResult!void {
        const _c = self.vtable.DistortPoints(@ptrCast(self), inputs, results);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn UndistortPoint(self: *@This(), input: Point) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.UndistortPoint(@ptrCast(self), input, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UndistortPoints(self: *@This(), inputs: [*]Point, results: [*]Point) core.HResult!void {
        const _c = self.vtable.UndistortPoints(@ptrCast(self), inputs, results);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.ICameraIntrinsics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0cdaa447-0798-4b4d-839f-c5ec414db27a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UndistortedProjectionTransform: *const fn(self: *anyopaque, _r: *Matrix4x4) callconv(.winapi) HRESULT,
        DistortPoint: *const fn(self: *anyopaque, input: Point, _r: *Point) callconv(.winapi) HRESULT,
        DistortPoints: *const fn(self: *anyopaque, inputs: [*]Point, results: [*]Point) callconv(.winapi) HRESULT,
        UndistortPoint: *const fn(self: *anyopaque, input: Point, _r: *Point) callconv(.winapi) HRESULT,
        UndistortPoints: *const fn(self: *anyopaque, inputs: [*]Point, results: [*]Point) callconv(.winapi) HRESULT,
    };
};
pub const ICameraIntrinsicsFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), focalLength: Vector2, principalPoint: Vector2, radialDistortion: Vector3, tangentialDistortion: Vector2, imageWidth: u32, imageHeight: u32) core.HResult!*CameraIntrinsics {
        var _r: *CameraIntrinsics = undefined;
        const _c = self.vtable.Create(@ptrCast(self), focalLength, principalPoint, radialDistortion, tangentialDistortion, imageWidth, imageHeight, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.ICameraIntrinsicsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0ddc486-2132-4a34-a659-9bfe2a055712";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, focalLength: Vector2, principalPoint: Vector2, radialDistortion: Vector3, tangentialDistortion: Vector2, imageWidth: u32, imageHeight: u32, _r: **CameraIntrinsics) callconv(.winapi) HRESULT,
    };
};
pub const IDepthCorrelatedCoordinateMapper = extern struct {
    vtable: *const VTable,
    pub fn UnprojectPoint(self: *@This(), sourcePoint: Point, targetCoordinateSystem: *SpatialCoordinateSystem) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.UnprojectPoint(@ptrCast(self), sourcePoint, targetCoordinateSystem, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UnprojectPoints(self: *@This(), sourcePoints: [*]Point, targetCoordinateSystem: *SpatialCoordinateSystem, results: [*]Vector3) core.HResult!void {
        const _c = self.vtable.UnprojectPoints(@ptrCast(self), sourcePoints, targetCoordinateSystem, results);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MapPoint(self: *@This(), sourcePoint: Point, targetCoordinateSystem: *SpatialCoordinateSystem, targetCameraIntrinsics: *CameraIntrinsics) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.MapPoint(@ptrCast(self), sourcePoint, targetCoordinateSystem, targetCameraIntrinsics, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn MapPoints(self: *@This(), sourcePoints: [*]Point, targetCoordinateSystem: *SpatialCoordinateSystem, targetCameraIntrinsics: *CameraIntrinsics, results: [*]Point) core.HResult!void {
        const _c = self.vtable.MapPoints(@ptrCast(self), sourcePoints, targetCoordinateSystem, targetCameraIntrinsics, results);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IDepthCorrelatedCoordinateMapper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f95d89fb-8af0-4cb0-926d-696866e5046a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        UnprojectPoint: *const fn(self: *anyopaque, sourcePoint: Point, targetCoordinateSystem: *SpatialCoordinateSystem, _r: *Vector3) callconv(.winapi) HRESULT,
        UnprojectPoints: *const fn(self: *anyopaque, sourcePoints: [*]Point, targetCoordinateSystem: *SpatialCoordinateSystem, results: [*]Vector3) callconv(.winapi) HRESULT,
        MapPoint: *const fn(self: *anyopaque, sourcePoint: Point, targetCoordinateSystem: *SpatialCoordinateSystem, targetCameraIntrinsics: *CameraIntrinsics, _r: *Point) callconv(.winapi) HRESULT,
        MapPoints: *const fn(self: *anyopaque, sourcePoints: [*]Point, targetCoordinateSystem: *SpatialCoordinateSystem, targetCameraIntrinsics: *CameraIntrinsics, results: [*]Point) callconv(.winapi) HRESULT,
    };
};
pub const IFrameControlCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getExposure(self: *@This()) core.HResult!*FrameExposureCapabilities {
        var _r: *FrameExposureCapabilities = undefined;
        const _c = self.vtable.get_Exposure(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExposureCompensation(self: *@This()) core.HResult!*FrameExposureCompensationCapabilities {
        var _r: *FrameExposureCompensationCapabilities = undefined;
        const _c = self.vtable.get_ExposureCompensation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsoSpeed(self: *@This()) core.HResult!*FrameIsoSpeedCapabilities {
        var _r: *FrameIsoSpeedCapabilities = undefined;
        const _c = self.vtable.get_IsoSpeed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocus(self: *@This()) core.HResult!*FrameFocusCapabilities {
        var _r: *FrameFocusCapabilities = undefined;
        const _c = self.vtable.get_Focus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhotoConfirmationSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PhotoConfirmationSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameControlCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a8ffae60-4e9e-4377-a789-e24c4ae7e544";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Exposure: *const fn(self: *anyopaque, _r: **FrameExposureCapabilities) callconv(.winapi) HRESULT,
        get_ExposureCompensation: *const fn(self: *anyopaque, _r: **FrameExposureCompensationCapabilities) callconv(.winapi) HRESULT,
        get_IsoSpeed: *const fn(self: *anyopaque, _r: **FrameIsoSpeedCapabilities) callconv(.winapi) HRESULT,
        get_Focus: *const fn(self: *anyopaque, _r: **FrameFocusCapabilities) callconv(.winapi) HRESULT,
        get_PhotoConfirmationSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IFrameControlCapabilities2 = extern struct {
    vtable: *const VTable,
    pub fn getFlash(self: *@This()) core.HResult!*FrameFlashCapabilities {
        var _r: *FrameFlashCapabilities = undefined;
        const _c = self.vtable.get_Flash(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameControlCapabilities2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce9b0464-4730-440f-bd3e-efe8a8f230a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Flash: *const fn(self: *anyopaque, _r: **FrameFlashCapabilities) callconv(.winapi) HRESULT,
    };
};
pub const IFrameController = extern struct {
    vtable: *const VTable,
    pub fn getExposureControl(self: *@This()) core.HResult!*FrameExposureControl {
        var _r: *FrameExposureControl = undefined;
        const _c = self.vtable.get_ExposureControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExposureCompensationControl(self: *@This()) core.HResult!*FrameExposureCompensationControl {
        var _r: *FrameExposureCompensationControl = undefined;
        const _c = self.vtable.get_ExposureCompensationControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsoSpeedControl(self: *@This()) core.HResult!*FrameIsoSpeedControl {
        var _r: *FrameIsoSpeedControl = undefined;
        const _c = self.vtable.get_IsoSpeedControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusControl(self: *@This()) core.HResult!*FrameFocusControl {
        var _r: *FrameFocusControl = undefined;
        const _c = self.vtable.get_FocusControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhotoConfirmationEnabled(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_PhotoConfirmationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPhotoConfirmationEnabled(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const _c = self.vtable.put_PhotoConfirmationEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c16459d9-baef-4052-9177-48aff2af7522";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExposureControl: *const fn(self: *anyopaque, _r: **FrameExposureControl) callconv(.winapi) HRESULT,
        get_ExposureCompensationControl: *const fn(self: *anyopaque, _r: **FrameExposureCompensationControl) callconv(.winapi) HRESULT,
        get_IsoSpeedControl: *const fn(self: *anyopaque, _r: **FrameIsoSpeedControl) callconv(.winapi) HRESULT,
        get_FocusControl: *const fn(self: *anyopaque, _r: **FrameFocusControl) callconv(.winapi) HRESULT,
        get_PhotoConfirmationEnabled: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
        put_PhotoConfirmationEnabled: *const fn(self: *anyopaque, value: *IReference(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IFrameController2 = extern struct {
    vtable: *const VTable,
    pub fn getFlashControl(self: *@This()) core.HResult!*FrameFlashControl {
        var _r: *FrameFlashControl = undefined;
        const _c = self.vtable.get_FlashControl(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameController2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00d3bc75-d87c-485b-8a09-5c358568b427";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FlashControl: *const fn(self: *anyopaque, _r: **FrameFlashControl) callconv(.winapi) HRESULT,
    };
};
pub const IFrameExposureCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMin(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Min(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMax(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Max(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStep(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Step(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameExposureCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bdbe9ce3-3985-4e72-97c2-0590d61307a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Min: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Max: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_Step: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IFrameExposureCompensationCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMin(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Min(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMax(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Max(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStep(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Step(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameExposureCompensationCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b988a823-8065-41ee-b04f-722265954500";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Min: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Max: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_Step: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IFrameExposureCompensationControl = extern struct {
    vtable: *const VTable,
    pub fn getValue(self: *@This()) core.HResult!*IReference(f32) {
        var _r: *IReference(f32) = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: *IReference(f32)) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameExposureCompensationControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e95896c9-f7f9-48ca-8591-a26531cb1578";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IReference(f32)) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: *IReference(f32)) callconv(.winapi) HRESULT,
    };
};
pub const IFrameExposureControl = extern struct {
    vtable: *const VTable,
    pub fn getAuto(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Auto(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuto(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Auto(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameExposureControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1605a61-ffaf-4752-b621-f5b6f117f432";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Auto: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Auto: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
    };
};
pub const IFrameFlashCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRedEyeReductionSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RedEyeReductionSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPowerSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_PowerSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameFlashCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bb9341a2-5ebe-4f62-8223-0e2b05bfbbd0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_RedEyeReductionSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PowerSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IFrameFlashControl = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!FrameFlashMode {
        var _r: FrameFlashMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: FrameFlashMode) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAuto(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Auto(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuto(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Auto(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRedEyeReduction(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RedEyeReduction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRedEyeReduction(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RedEyeReduction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPowerPercent(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_PowerPercent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPowerPercent(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_PowerPercent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameFlashControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75d5f6c7-bd45-4fab-9375-45ac04b332c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *FrameFlashMode) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: FrameFlashMode) callconv(.winapi) HRESULT,
        get_Auto: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Auto: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_RedEyeReduction: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RedEyeReduction: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PowerPercent: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_PowerPercent: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IFrameFocusCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMin(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Min(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMax(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Max(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStep(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Step(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameFocusCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b25cd58-01c0-4065-9c40-c1a721425c1a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Min: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Max: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Step: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IFrameFocusControl = extern struct {
    vtable: *const VTable,
    pub fn getValue(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameFocusControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "272df1d0-d912-4214-a67b-e38a8d48d8c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IFrameIsoSpeedCapabilities = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMin(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Min(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMax(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Max(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStep(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Step(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameIsoSpeedCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "16bdff61-6df6-4ac9-b92a-9f6ecd1ad2fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Min: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Max: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Step: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IFrameIsoSpeedControl = extern struct {
    vtable: *const VTable,
    pub fn getAuto(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Auto(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAuto(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Auto(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!*IReference(u32) {
        var _r: *IReference(u32) = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: *IReference(u32)) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IFrameIsoSpeedControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a03efed-786a-4c75-a557-7ab9a85f588c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Auto: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Auto: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IReference(u32)) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: *IReference(u32)) callconv(.winapi) HRESULT,
    };
};
pub const IVariablePhotoSequenceController = extern struct {
    vtable: *const VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Supported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxPhotosPerSecond(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MaxPhotosPerSecond(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPhotosPerSecondLimit(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_PhotosPerSecondLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPhotosPerSecondLimit(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_PhotosPerSecondLimit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetHighestConcurrentFrameRate(self: *@This(), captureProperties: *IMediaEncodingProperties) core.HResult!*MediaRatio {
        var _r: *MediaRatio = undefined;
        const _c = self.vtable.GetHighestConcurrentFrameRate(@ptrCast(self), captureProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentFrameRate(self: *@This()) core.HResult!*MediaRatio {
        var _r: *MediaRatio = undefined;
        const _c = self.vtable.GetCurrentFrameRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrameCapabilities(self: *@This()) core.HResult!*FrameControlCapabilities {
        var _r: *FrameControlCapabilities = undefined;
        const _c = self.vtable.get_FrameCapabilities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesiredFrameControllers(self: *@This()) core.HResult!*IVector(FrameController) {
        var _r: *IVector(FrameController) = undefined;
        const _c = self.vtable.get_DesiredFrameControllers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.IVariablePhotoSequenceController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7fbff880-ed8c-43fd-a7c3-b35809e4229a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Supported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_MaxPhotosPerSecond: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_PhotosPerSecondLimit: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_PhotosPerSecondLimit: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        GetHighestConcurrentFrameRate: *const fn(self: *anyopaque, captureProperties: *IMediaEncodingProperties, _r: **MediaRatio) callconv(.winapi) HRESULT,
        GetCurrentFrameRate: *const fn(self: *anyopaque, _r: **MediaRatio) callconv(.winapi) HRESULT,
        get_FrameCapabilities: *const fn(self: *anyopaque, _r: **FrameControlCapabilities) callconv(.winapi) HRESULT,
        get_DesiredFrameControllers: *const fn(self: *anyopaque, _r: **IVector(FrameController)) callconv(.winapi) HRESULT,
    };
};
pub const VariablePhotoSequenceController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSupported(self: *@This()) core.HResult!bool {
        const this: *IVariablePhotoSequenceController = @ptrCast(self);
        return try this.getSupported();
    }
    pub fn getMaxPhotosPerSecond(self: *@This()) core.HResult!f32 {
        const this: *IVariablePhotoSequenceController = @ptrCast(self);
        return try this.getMaxPhotosPerSecond();
    }
    pub fn getPhotosPerSecondLimit(self: *@This()) core.HResult!f32 {
        const this: *IVariablePhotoSequenceController = @ptrCast(self);
        return try this.getPhotosPerSecondLimit();
    }
    pub fn putPhotosPerSecondLimit(self: *@This(), value: f32) core.HResult!void {
        const this: *IVariablePhotoSequenceController = @ptrCast(self);
        return try this.putPhotosPerSecondLimit(value);
    }
    pub fn GetHighestConcurrentFrameRate(self: *@This(), captureProperties: *IMediaEncodingProperties) core.HResult!*MediaRatio {
        const this: *IVariablePhotoSequenceController = @ptrCast(self);
        return try this.GetHighestConcurrentFrameRate(captureProperties);
    }
    pub fn GetCurrentFrameRate(self: *@This()) core.HResult!*MediaRatio {
        const this: *IVariablePhotoSequenceController = @ptrCast(self);
        return try this.GetCurrentFrameRate();
    }
    pub fn getFrameCapabilities(self: *@This()) core.HResult!*FrameControlCapabilities {
        const this: *IVariablePhotoSequenceController = @ptrCast(self);
        return try this.getFrameCapabilities();
    }
    pub fn getDesiredFrameControllers(self: *@This()) core.HResult!*IVector(FrameController) {
        const this: *IVariablePhotoSequenceController = @ptrCast(self);
        return try this.getDesiredFrameControllers();
    }
    pub const NAME: []const u8 = "Windows.Media.Devices.Core.VariablePhotoSequenceController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVariablePhotoSequenceController.GUID;
    pub const IID: Guid = IVariablePhotoSequenceController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVariablePhotoSequenceController.SIGNATURE);
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const IReference = @import("../../Foundation.zig").IReference;
const Point = @import("../../Foundation.zig").Point;
const SpatialCoordinateSystem = @import("../../Perception/Spatial.zig").SpatialCoordinateSystem;
const FactoryCache = @import("../../core.zig").FactoryCache;
const Vector2 = @import("../../Foundation/Numerics.zig").Vector2;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IClosable = @import("../../Foundation.zig").IClosable;
const HSTRING = @import("../../root.zig").HSTRING;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const Vector3 = @import("../../Foundation/Numerics.zig").Vector3;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const Matrix4x4 = @import("../../Foundation/Numerics.zig").Matrix4x4;
const IMediaEncodingProperties = @import("../MediaProperties.zig").IMediaEncodingProperties;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const MediaRatio = @import("../MediaProperties.zig").MediaRatio;
