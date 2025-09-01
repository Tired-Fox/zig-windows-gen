pub const CompositionObject = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCompositor(self: *@This()) core.HResult!*Compositor {
        const this: *ICompositionObject = @ptrCast(self);
        return try this.getCompositor();
    }
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        const this: *ICompositionObject = @ptrCast(self);
        return try this.getDispatcher();
    }
    pub fn getProperties(self: *@This()) core.HResult!*CompositionPropertySet {
        const this: *ICompositionObject = @ptrCast(self);
        return try this.getProperties();
    }
    pub fn StartAnimation(self: *@This(), propertyName: HSTRING, animation: *CompositionAnimation) core.HResult!void {
        const this: *ICompositionObject = @ptrCast(self);
        return try this.StartAnimation(propertyName, animation);
    }
    pub fn StopAnimation(self: *@This(), propertyName: HSTRING) core.HResult!void {
        const this: *ICompositionObject = @ptrCast(self);
        return try this.StopAnimation(propertyName);
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICompositionObject2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionObject2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getComment();
    }
    pub fn putComment(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ICompositionObject2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionObject2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putComment(value);
    }
    pub fn getImplicitAnimations(self: *@This()) core.HResult!*ImplicitAnimationCollection {
        var this: ?*ICompositionObject2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionObject2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getImplicitAnimations();
    }
    pub fn putImplicitAnimations(self: *@This(), value: *ImplicitAnimationCollection) core.HResult!void {
        var this: ?*ICompositionObject2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionObject2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putImplicitAnimations(value);
    }
    pub fn StartAnimationGroup(self: *@This(), value: *ICompositionAnimationBase) core.HResult!void {
        var this: ?*ICompositionObject2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionObject2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartAnimationGroup(value);
    }
    pub fn StopAnimationGroup(self: *@This(), value: *ICompositionAnimationBase) core.HResult!void {
        var this: ?*ICompositionObject2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionObject2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StopAnimationGroup(value);
    }
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var this: ?*ICompositionObject3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionObject3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDispatcherQueue();
    }
    pub fn TryGetAnimationController(self: *@This(), propertyName: HSTRING) core.HResult!*AnimationController {
        var this: ?*ICompositionObject4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionObject4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetAnimationController(propertyName);
    }
    pub fn StartAnimationWithAnimationController(self: *@This(), propertyName: HSTRING, animation: *CompositionAnimation, animationController: *AnimationController) core.HResult!void {
        var this: ?*ICompositionObject5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionObject5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.StartAnimationWithAnimationController(propertyName, animation, animationController);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn PopulatePropertyInfo(self: *@This(), propertyName: HSTRING, propertyInfo: *AnimationPropertyInfo) core.HResult!void {
        var this: ?*IAnimationObject = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAnimationObject.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PopulatePropertyInfo(propertyName, propertyInfo);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn StartAnimationWithIAnimationObject(target: *IAnimationObject, propertyName: HSTRING, animation: *CompositionAnimation) core.HResult!void {
        const _f = @This().ICompositionObjectStaticsCache.get();
        return try _f.StartAnimationWithIAnimationObject(target, propertyName, animation);
    }
    pub fn StartAnimationGroupWithIAnimationObject(target: *IAnimationObject, animation: *ICompositionAnimationBase) core.HResult!void {
        const _f = @This().ICompositionObjectStaticsCache.get();
        return try _f.StartAnimationGroupWithIAnimationObject(target, animation);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionObject.GUID;
    pub const IID: Guid = ICompositionObject.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionObject.SIGNATURE);
    var _ICompositionObjectStaticsCache: FactoryCache(ICompositionObjectStatics, RUNTIME_NAME) = .{};
    var _ICompositionObjectFactoryCache: FactoryCache(ICompositionObjectFactory, RUNTIME_NAME) = .{};
};
pub const CompositionLight = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargets(self: *@This()) core.HResult!*VisualUnorderedCollection {
        const this: *ICompositionLight = @ptrCast(self);
        return try this.getTargets();
    }
    pub fn getExclusionsFromTargets(self: *@This()) core.HResult!*VisualUnorderedCollection {
        var this: ?*ICompositionLight2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionLight2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExclusionsFromTargets();
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ICompositionLight3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionLight3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICompositionLight3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionLight3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsEnabled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionLight";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionLight.GUID;
    pub const IID: Guid = ICompositionLight.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionLight.SIGNATURE);
    var _ICompositionLightFactoryCache: FactoryCache(ICompositionLightFactory, RUNTIME_NAME) = .{};
};
pub const AmbientLight = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *IAmbientLight = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IAmbientLight = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn getIntensity(self: *@This()) core.HResult!f32 {
        var this: ?*IAmbientLight2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAmbientLight2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIntensity();
    }
    pub fn putIntensity(self: *@This(), value: f32) core.HResult!void {
        var this: ?*IAmbientLight2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAmbientLight2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIntensity(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.AmbientLight";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAmbientLight.GUID;
    pub const IID: Guid = IAmbientLight.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAmbientLight.SIGNATURE);
};
pub const AnimationController = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPlaybackRate(self: *@This()) core.HResult!f32 {
        const this: *IAnimationController = @ptrCast(self);
        return try this.getPlaybackRate();
    }
    pub fn putPlaybackRate(self: *@This(), value: f32) core.HResult!void {
        const this: *IAnimationController = @ptrCast(self);
        return try this.putPlaybackRate(value);
    }
    pub fn getProgress(self: *@This()) core.HResult!f32 {
        const this: *IAnimationController = @ptrCast(self);
        return try this.getProgress();
    }
    pub fn putProgress(self: *@This(), value: f32) core.HResult!void {
        const this: *IAnimationController = @ptrCast(self);
        return try this.putProgress(value);
    }
    pub fn getProgressBehavior(self: *@This()) core.HResult!AnimationControllerProgressBehavior {
        const this: *IAnimationController = @ptrCast(self);
        return try this.getProgressBehavior();
    }
    pub fn putProgressBehavior(self: *@This(), value: AnimationControllerProgressBehavior) core.HResult!void {
        const this: *IAnimationController = @ptrCast(self);
        return try this.putProgressBehavior(value);
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const this: *IAnimationController = @ptrCast(self);
        return try this.Pause();
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const this: *IAnimationController = @ptrCast(self);
        return try this.Resume();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getMaxPlaybackRate() core.HResult!f32 {
        const _f = @This().IAnimationControllerStaticsCache.get();
        return try _f.getMaxPlaybackRate();
    }
    pub fn getMinPlaybackRate() core.HResult!f32 {
        const _f = @This().IAnimationControllerStaticsCache.get();
        return try _f.getMinPlaybackRate();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.AnimationController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAnimationController.GUID;
    pub const IID: Guid = IAnimationController.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAnimationController.SIGNATURE);
    var _IAnimationControllerStaticsCache: FactoryCache(IAnimationControllerStatics, RUNTIME_NAME) = .{};
};
pub const AnimationControllerProgressBehavior = enum(i32) {
    Default = 0,
    IncludesDelayTime = 1,
};
pub const AnimationDelayBehavior = enum(i32) {
    SetInitialValueAfterDelay = 0,
    SetInitialValueBeforeDelay = 1,
};
pub const AnimationDirection = enum(i32) {
    Normal = 0,
    Reverse = 1,
    Alternate = 2,
    AlternateReverse = 3,
};
pub const AnimationIterationBehavior = enum(i32) {
    Count = 0,
    Forever = 1,
};
pub const AnimationPropertyAccessMode = enum(i32) {
    None = 0,
    ReadOnly = 1,
    WriteOnly = 2,
    ReadWrite = 3,
};
pub const AnimationPropertyInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAccessMode(self: *@This()) core.HResult!AnimationPropertyAccessMode {
        const this: *IAnimationPropertyInfo = @ptrCast(self);
        return try this.getAccessMode();
    }
    pub fn putAccessMode(self: *@This(), value: AnimationPropertyAccessMode) core.HResult!void {
        const this: *IAnimationPropertyInfo = @ptrCast(self);
        return try this.putAccessMode(value);
    }
    pub fn GetResolvedCompositionObject(self: *@This()) core.HResult!*CompositionObject {
        var this: ?*IAnimationPropertyInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAnimationPropertyInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetResolvedCompositionObject();
    }
    pub fn GetResolvedCompositionObjectProperty(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAnimationPropertyInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAnimationPropertyInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetResolvedCompositionObjectProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.AnimationPropertyInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAnimationPropertyInfo.GUID;
    pub const IID: Guid = IAnimationPropertyInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAnimationPropertyInfo.SIGNATURE);
};
pub const AnimationStopBehavior = enum(i32) {
    LeaveCurrentValue = 0,
    SetToInitialValue = 1,
    SetToFinalValue = 2,
};
pub const CompositionEasingFunction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateCubicBezierEasingFunction(owner: *Compositor, controlPoint1: Vector2, controlPoint2: Vector2) core.HResult!*CubicBezierEasingFunction {
        const _f = @This().ICompositionEasingFunctionStaticsCache.get();
        return try _f.CreateCubicBezierEasingFunction(owner, controlPoint1, controlPoint2);
    }
    pub fn CreateLinearEasingFunction(owner: *Compositor) core.HResult!*LinearEasingFunction {
        const _f = @This().ICompositionEasingFunctionStaticsCache.get();
        return try _f.CreateLinearEasingFunction(owner);
    }
    pub fn CreateStepEasingFunction(owner: *Compositor) core.HResult!*StepEasingFunction {
        const _f = @This().ICompositionEasingFunctionStaticsCache.get();
        return try _f.CreateStepEasingFunction(owner);
    }
    pub fn CreateStepEasingFunctionWithStepCount(owner: *Compositor, stepCount: i32) core.HResult!*StepEasingFunction {
        const _f = @This().ICompositionEasingFunctionStaticsCache.get();
        return try _f.CreateStepEasingFunctionWithStepCount(owner, stepCount);
    }
    pub fn CreateBackEasingFunction(owner: *Compositor, mode: CompositionEasingFunctionMode, amplitude: f32) core.HResult!*BackEasingFunction {
        const _f = @This().ICompositionEasingFunctionStaticsCache.get();
        return try _f.CreateBackEasingFunction(owner, mode, amplitude);
    }
    pub fn CreateBounceEasingFunction(owner: *Compositor, mode: CompositionEasingFunctionMode, bounces: i32, bounciness: f32) core.HResult!*BounceEasingFunction {
        const _f = @This().ICompositionEasingFunctionStaticsCache.get();
        return try _f.CreateBounceEasingFunction(owner, mode, bounces, bounciness);
    }
    pub fn CreateCircleEasingFunction(owner: *Compositor, mode: CompositionEasingFunctionMode) core.HResult!*CircleEasingFunction {
        const _f = @This().ICompositionEasingFunctionStaticsCache.get();
        return try _f.CreateCircleEasingFunction(owner, mode);
    }
    pub fn CreateElasticEasingFunction(owner: *Compositor, mode: CompositionEasingFunctionMode, oscillations: i32, springiness: f32) core.HResult!*ElasticEasingFunction {
        const _f = @This().ICompositionEasingFunctionStaticsCache.get();
        return try _f.CreateElasticEasingFunction(owner, mode, oscillations, springiness);
    }
    pub fn CreateExponentialEasingFunction(owner: *Compositor, mode: CompositionEasingFunctionMode, exponent: f32) core.HResult!*ExponentialEasingFunction {
        const _f = @This().ICompositionEasingFunctionStaticsCache.get();
        return try _f.CreateExponentialEasingFunction(owner, mode, exponent);
    }
    pub fn CreatePowerEasingFunction(owner: *Compositor, mode: CompositionEasingFunctionMode, power: f32) core.HResult!*PowerEasingFunction {
        const _f = @This().ICompositionEasingFunctionStaticsCache.get();
        return try _f.CreatePowerEasingFunction(owner, mode, power);
    }
    pub fn CreateSineEasingFunction(owner: *Compositor, mode: CompositionEasingFunctionMode) core.HResult!*SineEasingFunction {
        const _f = @This().ICompositionEasingFunctionStaticsCache.get();
        return try _f.CreateSineEasingFunction(owner, mode);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionEasingFunction.GUID;
    pub const IID: Guid = ICompositionEasingFunction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionEasingFunction.SIGNATURE);
    var _ICompositionEasingFunctionStaticsCache: FactoryCache(ICompositionEasingFunctionStatics, RUNTIME_NAME) = .{};
    var _ICompositionEasingFunctionFactoryCache: FactoryCache(ICompositionEasingFunctionFactory, RUNTIME_NAME) = .{};
};
pub const BackEasingFunction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        const this: *IBackEasingFunction = @ptrCast(self);
        return try this.getMode();
    }
    pub fn getAmplitude(self: *@This()) core.HResult!f32 {
        const this: *IBackEasingFunction = @ptrCast(self);
        return try this.getAmplitude();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.BackEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackEasingFunction.GUID;
    pub const IID: Guid = IBackEasingFunction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackEasingFunction.SIGNATURE);
};
pub const CompositionAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ClearAllParameters(self: *@This()) core.HResult!void {
        const this: *ICompositionAnimation = @ptrCast(self);
        return try this.ClearAllParameters();
    }
    pub fn ClearParameter(self: *@This(), key: HSTRING) core.HResult!void {
        const this: *ICompositionAnimation = @ptrCast(self);
        return try this.ClearParameter(key);
    }
    pub fn SetColorParameter(self: *@This(), key: HSTRING, value: Color) core.HResult!void {
        const this: *ICompositionAnimation = @ptrCast(self);
        return try this.SetColorParameter(key, value);
    }
    pub fn SetMatrix3x2Parameter(self: *@This(), key: HSTRING, value: Matrix3x2) core.HResult!void {
        const this: *ICompositionAnimation = @ptrCast(self);
        return try this.SetMatrix3x2Parameter(key, value);
    }
    pub fn SetMatrix4x4Parameter(self: *@This(), key: HSTRING, value: Matrix4x4) core.HResult!void {
        const this: *ICompositionAnimation = @ptrCast(self);
        return try this.SetMatrix4x4Parameter(key, value);
    }
    pub fn SetQuaternionParameter(self: *@This(), key: HSTRING, value: Quaternion) core.HResult!void {
        const this: *ICompositionAnimation = @ptrCast(self);
        return try this.SetQuaternionParameter(key, value);
    }
    pub fn SetReferenceParameter(self: *@This(), key: HSTRING, compositionObject: *CompositionObject) core.HResult!void {
        const this: *ICompositionAnimation = @ptrCast(self);
        return try this.SetReferenceParameter(key, compositionObject);
    }
    pub fn SetScalarParameter(self: *@This(), key: HSTRING, value: f32) core.HResult!void {
        const this: *ICompositionAnimation = @ptrCast(self);
        return try this.SetScalarParameter(key, value);
    }
    pub fn SetVector2Parameter(self: *@This(), key: HSTRING, value: Vector2) core.HResult!void {
        const this: *ICompositionAnimation = @ptrCast(self);
        return try this.SetVector2Parameter(key, value);
    }
    pub fn SetVector3Parameter(self: *@This(), key: HSTRING, value: Vector3) core.HResult!void {
        const this: *ICompositionAnimation = @ptrCast(self);
        return try this.SetVector3Parameter(key, value);
    }
    pub fn SetVector4Parameter(self: *@This(), key: HSTRING, value: Vector4) core.HResult!void {
        const this: *ICompositionAnimation = @ptrCast(self);
        return try this.SetVector4Parameter(key, value);
    }
    pub fn SetBooleanParameter(self: *@This(), key: HSTRING, value: bool) core.HResult!void {
        var this: ?*ICompositionAnimation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionAnimation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetBooleanParameter(key, value);
    }
    pub fn getTarget(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICompositionAnimation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionAnimation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTarget();
    }
    pub fn putTarget(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ICompositionAnimation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionAnimation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTarget(value);
    }
    pub fn getInitialValueExpressions(self: *@This()) core.HResult!*InitialValueExpressionCollection {
        var this: ?*ICompositionAnimation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionAnimation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInitialValueExpressions();
    }
    pub fn SetExpressionReferenceParameter(self: *@This(), parameterName: HSTRING, source: *IAnimationObject) core.HResult!void {
        var this: ?*ICompositionAnimation4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionAnimation4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetExpressionReferenceParameter(parameterName, source);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionAnimation.GUID;
    pub const IID: Guid = ICompositionAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionAnimation.SIGNATURE);
    var _ICompositionAnimationFactoryCache: FactoryCache(ICompositionAnimationFactory, RUNTIME_NAME) = .{};
};
pub const KeyFrameAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDelayTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IKeyFrameAnimation = @ptrCast(self);
        return try this.getDelayTime();
    }
    pub fn putDelayTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IKeyFrameAnimation = @ptrCast(self);
        return try this.putDelayTime(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IKeyFrameAnimation = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IKeyFrameAnimation = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn getIterationBehavior(self: *@This()) core.HResult!AnimationIterationBehavior {
        const this: *IKeyFrameAnimation = @ptrCast(self);
        return try this.getIterationBehavior();
    }
    pub fn putIterationBehavior(self: *@This(), value: AnimationIterationBehavior) core.HResult!void {
        const this: *IKeyFrameAnimation = @ptrCast(self);
        return try this.putIterationBehavior(value);
    }
    pub fn getIterationCount(self: *@This()) core.HResult!i32 {
        const this: *IKeyFrameAnimation = @ptrCast(self);
        return try this.getIterationCount();
    }
    pub fn putIterationCount(self: *@This(), value: i32) core.HResult!void {
        const this: *IKeyFrameAnimation = @ptrCast(self);
        return try this.putIterationCount(value);
    }
    pub fn getKeyFrameCount(self: *@This()) core.HResult!i32 {
        const this: *IKeyFrameAnimation = @ptrCast(self);
        return try this.getKeyFrameCount();
    }
    pub fn getStopBehavior(self: *@This()) core.HResult!AnimationStopBehavior {
        const this: *IKeyFrameAnimation = @ptrCast(self);
        return try this.getStopBehavior();
    }
    pub fn putStopBehavior(self: *@This(), value: AnimationStopBehavior) core.HResult!void {
        const this: *IKeyFrameAnimation = @ptrCast(self);
        return try this.putStopBehavior(value);
    }
    pub fn InsertExpressionKeyFrame(self: *@This(), normalizedProgressKey: f32, value: HSTRING) core.HResult!void {
        const this: *IKeyFrameAnimation = @ptrCast(self);
        return try this.InsertExpressionKeyFrame(normalizedProgressKey, value);
    }
    pub fn InsertExpressionKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: HSTRING, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const this: *IKeyFrameAnimation = @ptrCast(self);
        return try this.InsertExpressionKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction);
    }
    pub fn getDirection(self: *@This()) core.HResult!AnimationDirection {
        var this: ?*IKeyFrameAnimation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IKeyFrameAnimation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDirection();
    }
    pub fn putDirection(self: *@This(), value: AnimationDirection) core.HResult!void {
        var this: ?*IKeyFrameAnimation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IKeyFrameAnimation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDirection(value);
    }
    pub fn getDelayBehavior(self: *@This()) core.HResult!AnimationDelayBehavior {
        var this: ?*IKeyFrameAnimation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IKeyFrameAnimation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDelayBehavior();
    }
    pub fn putDelayBehavior(self: *@This(), value: AnimationDelayBehavior) core.HResult!void {
        var this: ?*IKeyFrameAnimation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IKeyFrameAnimation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDelayBehavior(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.KeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyFrameAnimation.GUID;
    pub const IID: Guid = IKeyFrameAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyFrameAnimation.SIGNATURE);
    var _IKeyFrameAnimationFactoryCache: FactoryCache(IKeyFrameAnimationFactory, RUNTIME_NAME) = .{};
};
pub const BooleanKeyFrameAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: bool) core.HResult!void {
        const this: *IBooleanKeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrame(normalizedProgressKey, value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.BooleanKeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBooleanKeyFrameAnimation.GUID;
    pub const IID: Guid = IBooleanKeyFrameAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBooleanKeyFrameAnimation.SIGNATURE);
};
pub const BounceEasingFunction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        const this: *IBounceEasingFunction = @ptrCast(self);
        return try this.getMode();
    }
    pub fn getBounces(self: *@This()) core.HResult!i32 {
        const this: *IBounceEasingFunction = @ptrCast(self);
        return try this.getBounces();
    }
    pub fn getBounciness(self: *@This()) core.HResult!f32 {
        const this: *IBounceEasingFunction = @ptrCast(self);
        return try this.getBounciness();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.BounceEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBounceEasingFunction.GUID;
    pub const IID: Guid = IBounceEasingFunction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBounceEasingFunction.SIGNATURE);
};
pub const NaturalMotionAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDelayBehavior(self: *@This()) core.HResult!AnimationDelayBehavior {
        const this: *INaturalMotionAnimation = @ptrCast(self);
        return try this.getDelayBehavior();
    }
    pub fn putDelayBehavior(self: *@This(), value: AnimationDelayBehavior) core.HResult!void {
        const this: *INaturalMotionAnimation = @ptrCast(self);
        return try this.putDelayBehavior(value);
    }
    pub fn getDelayTime(self: *@This()) core.HResult!TimeSpan {
        const this: *INaturalMotionAnimation = @ptrCast(self);
        return try this.getDelayTime();
    }
    pub fn putDelayTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *INaturalMotionAnimation = @ptrCast(self);
        return try this.putDelayTime(value);
    }
    pub fn getStopBehavior(self: *@This()) core.HResult!AnimationStopBehavior {
        const this: *INaturalMotionAnimation = @ptrCast(self);
        return try this.getStopBehavior();
    }
    pub fn putStopBehavior(self: *@This(), value: AnimationStopBehavior) core.HResult!void {
        const this: *INaturalMotionAnimation = @ptrCast(self);
        return try this.putStopBehavior(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.NaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INaturalMotionAnimation.GUID;
    pub const IID: Guid = INaturalMotionAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INaturalMotionAnimation.SIGNATURE);
    var _INaturalMotionAnimationFactoryCache: FactoryCache(INaturalMotionAnimationFactory, RUNTIME_NAME) = .{};
};
pub const ScalarNaturalMotionAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFinalValue(self: *@This()) core.HResult!*IReference(f32) {
        const this: *IScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.getFinalValue();
    }
    pub fn putFinalValue(self: *@This(), value: *IReference(f32)) core.HResult!void {
        const this: *IScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.putFinalValue(value);
    }
    pub fn getInitialValue(self: *@This()) core.HResult!*IReference(f32) {
        const this: *IScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.getInitialValue();
    }
    pub fn putInitialValue(self: *@This(), value: *IReference(f32)) core.HResult!void {
        const this: *IScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.putInitialValue(value);
    }
    pub fn getInitialVelocity(self: *@This()) core.HResult!f32 {
        const this: *IScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.getInitialVelocity();
    }
    pub fn putInitialVelocity(self: *@This(), value: f32) core.HResult!void {
        const this: *IScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.putInitialVelocity(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ScalarNaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScalarNaturalMotionAnimation.GUID;
    pub const IID: Guid = IScalarNaturalMotionAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScalarNaturalMotionAnimation.SIGNATURE);
    var _IScalarNaturalMotionAnimationFactoryCache: FactoryCache(IScalarNaturalMotionAnimationFactory, RUNTIME_NAME) = .{};
};
pub const BounceScalarNaturalMotionAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAcceleration(self: *@This()) core.HResult!f32 {
        const this: *IBounceScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.getAcceleration();
    }
    pub fn putAcceleration(self: *@This(), value: f32) core.HResult!void {
        const this: *IBounceScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.putAcceleration(value);
    }
    pub fn getRestitution(self: *@This()) core.HResult!f32 {
        const this: *IBounceScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.getRestitution();
    }
    pub fn putRestitution(self: *@This(), value: f32) core.HResult!void {
        const this: *IBounceScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.putRestitution(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.BounceScalarNaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBounceScalarNaturalMotionAnimation.GUID;
    pub const IID: Guid = IBounceScalarNaturalMotionAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBounceScalarNaturalMotionAnimation.SIGNATURE);
};
pub const Vector2NaturalMotionAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFinalValue(self: *@This()) core.HResult!*IReference(Vector2) {
        const this: *IVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.getFinalValue();
    }
    pub fn putFinalValue(self: *@This(), value: *IReference(Vector2)) core.HResult!void {
        const this: *IVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.putFinalValue(value);
    }
    pub fn getInitialValue(self: *@This()) core.HResult!*IReference(Vector2) {
        const this: *IVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.getInitialValue();
    }
    pub fn putInitialValue(self: *@This(), value: *IReference(Vector2)) core.HResult!void {
        const this: *IVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.putInitialValue(value);
    }
    pub fn getInitialVelocity(self: *@This()) core.HResult!Vector2 {
        const this: *IVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.getInitialVelocity();
    }
    pub fn putInitialVelocity(self: *@This(), value: Vector2) core.HResult!void {
        const this: *IVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.putInitialVelocity(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Vector2NaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector2NaturalMotionAnimation.GUID;
    pub const IID: Guid = IVector2NaturalMotionAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector2NaturalMotionAnimation.SIGNATURE);
    var _IVector2NaturalMotionAnimationFactoryCache: FactoryCache(IVector2NaturalMotionAnimationFactory, RUNTIME_NAME) = .{};
};
pub const BounceVector2NaturalMotionAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAcceleration(self: *@This()) core.HResult!f32 {
        const this: *IBounceVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.getAcceleration();
    }
    pub fn putAcceleration(self: *@This(), value: f32) core.HResult!void {
        const this: *IBounceVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.putAcceleration(value);
    }
    pub fn getRestitution(self: *@This()) core.HResult!f32 {
        const this: *IBounceVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.getRestitution();
    }
    pub fn putRestitution(self: *@This(), value: f32) core.HResult!void {
        const this: *IBounceVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.putRestitution(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.BounceVector2NaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBounceVector2NaturalMotionAnimation.GUID;
    pub const IID: Guid = IBounceVector2NaturalMotionAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBounceVector2NaturalMotionAnimation.SIGNATURE);
};
pub const Vector3NaturalMotionAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFinalValue(self: *@This()) core.HResult!*IReference(Vector3) {
        const this: *IVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.getFinalValue();
    }
    pub fn putFinalValue(self: *@This(), value: *IReference(Vector3)) core.HResult!void {
        const this: *IVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.putFinalValue(value);
    }
    pub fn getInitialValue(self: *@This()) core.HResult!*IReference(Vector3) {
        const this: *IVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.getInitialValue();
    }
    pub fn putInitialValue(self: *@This(), value: *IReference(Vector3)) core.HResult!void {
        const this: *IVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.putInitialValue(value);
    }
    pub fn getInitialVelocity(self: *@This()) core.HResult!Vector3 {
        const this: *IVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.getInitialVelocity();
    }
    pub fn putInitialVelocity(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.putInitialVelocity(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Vector3NaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector3NaturalMotionAnimation.GUID;
    pub const IID: Guid = IVector3NaturalMotionAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector3NaturalMotionAnimation.SIGNATURE);
    var _IVector3NaturalMotionAnimationFactoryCache: FactoryCache(IVector3NaturalMotionAnimationFactory, RUNTIME_NAME) = .{};
};
pub const BounceVector3NaturalMotionAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAcceleration(self: *@This()) core.HResult!f32 {
        const this: *IBounceVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.getAcceleration();
    }
    pub fn putAcceleration(self: *@This(), value: f32) core.HResult!void {
        const this: *IBounceVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.putAcceleration(value);
    }
    pub fn getRestitution(self: *@This()) core.HResult!f32 {
        const this: *IBounceVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.getRestitution();
    }
    pub fn putRestitution(self: *@This(), value: f32) core.HResult!void {
        const this: *IBounceVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.putRestitution(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.BounceVector3NaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBounceVector3NaturalMotionAnimation.GUID;
    pub const IID: Guid = IBounceVector3NaturalMotionAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBounceVector3NaturalMotionAnimation.SIGNATURE);
};
pub const CircleEasingFunction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        const this: *ICircleEasingFunction = @ptrCast(self);
        return try this.getMode();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CircleEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICircleEasingFunction.GUID;
    pub const IID: Guid = ICircleEasingFunction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICircleEasingFunction.SIGNATURE);
};
pub const ColorKeyFrameAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInterpolationColorSpace(self: *@This()) core.HResult!CompositionColorSpace {
        const this: *IColorKeyFrameAnimation = @ptrCast(self);
        return try this.getInterpolationColorSpace();
    }
    pub fn putInterpolationColorSpace(self: *@This(), value: CompositionColorSpace) core.HResult!void {
        const this: *IColorKeyFrameAnimation = @ptrCast(self);
        return try this.putInterpolationColorSpace(value);
    }
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: Color) core.HResult!void {
        const this: *IColorKeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrame(normalizedProgressKey, value);
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: Color, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const this: *IColorKeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ColorKeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IColorKeyFrameAnimation.GUID;
    pub const IID: Guid = IColorKeyFrameAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IColorKeyFrameAnimation.SIGNATURE);
};
pub const CompositionAnimationGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCount(self: *@This()) core.HResult!i32 {
        const this: *ICompositionAnimationGroup = @ptrCast(self);
        return try this.getCount();
    }
    pub fn Add(self: *@This(), value: *CompositionAnimation) core.HResult!void {
        const this: *ICompositionAnimationGroup = @ptrCast(self);
        return try this.Add(value);
    }
    pub fn Remove(self: *@This(), value: *CompositionAnimation) core.HResult!void {
        const this: *ICompositionAnimationGroup = @ptrCast(self);
        return try this.Remove(value);
    }
    pub fn RemoveAll(self: *@This()) core.HResult!void {
        const this: *ICompositionAnimationGroup = @ptrCast(self);
        return try this.RemoveAll();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(CompositionAnimation) {
        var this: ?*IIterable(CompositionAnimation) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionAnimationGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionAnimationGroup.GUID;
    pub const IID: Guid = ICompositionAnimationGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionAnimationGroup.SIGNATURE);
};
pub const CompositionBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionBrush.GUID;
    pub const IID: Guid = ICompositionBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionBrush.SIGNATURE);
    var _ICompositionBrushFactoryCache: FactoryCache(ICompositionBrushFactory, RUNTIME_NAME) = .{};
};
pub const CompositionBackdropBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionBackdropBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionBackdropBrush.GUID;
    pub const IID: Guid = ICompositionBackdropBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionBackdropBrush.SIGNATURE);
};
pub const CompositionBackfaceVisibility = enum(i32) {
    Inherit = 0,
    Visible = 1,
    Hidden = 2,
};
pub const CompositionBatchCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionBatchCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionBatchCompletedEventArgs.GUID;
    pub const IID: Guid = ICompositionBatchCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionBatchCompletedEventArgs.SIGNATURE);
};
pub const CompositionBatchTypes = enum(i32) {
    None = 0,
    Animation = 1,
    Effect = 2,
    InfiniteAnimation = 4,
    AllAnimations = 5,
};
pub const CompositionBitmapInterpolationMode = enum(i32) {
    NearestNeighbor = 0,
    Linear = 1,
    MagLinearMinLinearMipLinear = 2,
    MagLinearMinLinearMipNearest = 3,
    MagLinearMinNearestMipLinear = 4,
    MagLinearMinNearestMipNearest = 5,
    MagNearestMinLinearMipLinear = 6,
    MagNearestMinLinearMipNearest = 7,
    MagNearestMinNearestMipLinear = 8,
    MagNearestMinNearestMipNearest = 9,
};
pub const CompositionBorderMode = enum(i32) {
    Inherit = 0,
    Soft = 1,
    Hard = 2,
};
pub const CompositionCapabilities = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AreEffectsSupported(self: *@This()) core.HResult!bool {
        const this: *ICompositionCapabilities = @ptrCast(self);
        return try this.AreEffectsSupported();
    }
    pub fn AreEffectsFast(self: *@This()) core.HResult!bool {
        const this: *ICompositionCapabilities = @ptrCast(self);
        return try this.AreEffectsFast();
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(CompositionCapabilities,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ICompositionCapabilities = @ptrCast(self);
        return try this.addChanged(handler);
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICompositionCapabilities = @ptrCast(self);
        return try this.removeChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*CompositionCapabilities {
        const _f = @This().ICompositionCapabilitiesStaticsCache.get();
        return try _f.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionCapabilities.GUID;
    pub const IID: Guid = ICompositionCapabilities.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionCapabilities.SIGNATURE);
    var _ICompositionCapabilitiesStaticsCache: FactoryCache(ICompositionCapabilitiesStatics, RUNTIME_NAME) = .{};
};
pub const CompositionClip = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAnchorPoint(self: *@This()) core.HResult!Vector2 {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAnchorPoint();
    }
    pub fn putAnchorPoint(self: *@This(), value: Vector2) core.HResult!void {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAnchorPoint(value);
    }
    pub fn getCenterPoint(self: *@This()) core.HResult!Vector2 {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCenterPoint();
    }
    pub fn putCenterPoint(self: *@This(), value: Vector2) core.HResult!void {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCenterPoint(value);
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOffset();
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOffset(value);
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f32 {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotationAngle();
    }
    pub fn putRotationAngle(self: *@This(), value: f32) core.HResult!void {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRotationAngle(value);
    }
    pub fn getRotationAngleInDegrees(self: *@This()) core.HResult!f32 {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotationAngleInDegrees();
    }
    pub fn putRotationAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRotationAngleInDegrees(value);
    }
    pub fn getScale(self: *@This()) core.HResult!Vector2 {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getScale();
    }
    pub fn putScale(self: *@This(), value: Vector2) core.HResult!void {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putScale(value);
    }
    pub fn getTransformMatrix(self: *@This()) core.HResult!Matrix3x2 {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransformMatrix();
    }
    pub fn putTransformMatrix(self: *@This(), value: Matrix3x2) core.HResult!void {
        var this: ?*ICompositionClip2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionClip2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTransformMatrix(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionClip";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionClip.GUID;
    pub const IID: Guid = ICompositionClip.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionClip.SIGNATURE);
    var _ICompositionClipFactoryCache: FactoryCache(ICompositionClipFactory, RUNTIME_NAME) = .{};
};
pub const CompositionColorBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *ICompositionColorBrush = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *ICompositionColorBrush = @ptrCast(self);
        return try this.putColor(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionColorBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionColorBrush.GUID;
    pub const IID: Guid = ICompositionColorBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionColorBrush.SIGNATURE);
};
pub const CompositionColorGradientStop = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *ICompositionColorGradientStop = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *ICompositionColorGradientStop = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn getOffset(self: *@This()) core.HResult!f32 {
        const this: *ICompositionColorGradientStop = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn putOffset(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionColorGradientStop = @ptrCast(self);
        return try this.putOffset(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionColorGradientStop";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionColorGradientStop.GUID;
    pub const IID: Guid = ICompositionColorGradientStop.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionColorGradientStop.SIGNATURE);
};
pub const CompositionColorGradientStopCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn First(self: *@This()) core.HResult!*IIterator(CompositionColorGradientStop) {
        var this: ?*IIterable(CompositionColorGradientStop) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector(CompositionColorGradientStop) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(CompositionColorGradientStop) {
        var this: ?*IVector(CompositionColorGradientStop) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector(CompositionColorGradientStop) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector(CompositionColorGradientStop) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector(CompositionColorGradientStop) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionColorGradientStopCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionColorGradientStopCollection.GUID;
    pub const IID: Guid = ICompositionColorGradientStopCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionColorGradientStopCollection.SIGNATURE);
};
pub const CompositionColorSpace = enum(i32) {
    Auto = 0,
    Hsl = 1,
    Rgb = 2,
    HslLinear = 3,
    RgbLinear = 4,
};
pub const CompositionCommitBatch = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *ICompositionCommitBatch = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn getIsEnded(self: *@This()) core.HResult!bool {
        const this: *ICompositionCommitBatch = @ptrCast(self);
        return try this.getIsEnded();
    }
    pub fn addCompleted(self: *@This(), handler: *TypedEventHandler(IInspectable,CompositionBatchCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICompositionCommitBatch = @ptrCast(self);
        return try this.addCompleted(handler);
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICompositionCommitBatch = @ptrCast(self);
        return try this.removeCompleted(token);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionCommitBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionCommitBatch.GUID;
    pub const IID: Guid = ICompositionCommitBatch.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionCommitBatch.SIGNATURE);
};
pub const CompositionCompositeMode = enum(i32) {
    Inherit = 0,
    SourceOver = 1,
    DestinationInvert = 2,
    MinBlend = 3,
};
pub const CompositionShape = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCenterPoint(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionShape = @ptrCast(self);
        return try this.getCenterPoint();
    }
    pub fn putCenterPoint(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionShape = @ptrCast(self);
        return try this.putCenterPoint(value);
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionShape = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionShape = @ptrCast(self);
        return try this.putOffset(value);
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f32 {
        const this: *ICompositionShape = @ptrCast(self);
        return try this.getRotationAngle();
    }
    pub fn putRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionShape = @ptrCast(self);
        return try this.putRotationAngle(value);
    }
    pub fn getRotationAngleInDegrees(self: *@This()) core.HResult!f32 {
        const this: *ICompositionShape = @ptrCast(self);
        return try this.getRotationAngleInDegrees();
    }
    pub fn putRotationAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionShape = @ptrCast(self);
        return try this.putRotationAngleInDegrees(value);
    }
    pub fn getScale(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionShape = @ptrCast(self);
        return try this.getScale();
    }
    pub fn putScale(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionShape = @ptrCast(self);
        return try this.putScale(value);
    }
    pub fn getTransformMatrix(self: *@This()) core.HResult!Matrix3x2 {
        const this: *ICompositionShape = @ptrCast(self);
        return try this.getTransformMatrix();
    }
    pub fn putTransformMatrix(self: *@This(), value: Matrix3x2) core.HResult!void {
        const this: *ICompositionShape = @ptrCast(self);
        return try this.putTransformMatrix(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionShape";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionShape.GUID;
    pub const IID: Guid = ICompositionShape.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionShape.SIGNATURE);
    var _ICompositionShapeFactoryCache: FactoryCache(ICompositionShapeFactory, RUNTIME_NAME) = .{};
};
pub const CompositionContainerShape = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getShapes(self: *@This()) core.HResult!*CompositionShapeCollection {
        const this: *ICompositionContainerShape = @ptrCast(self);
        return try this.getShapes();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionContainerShape";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionContainerShape.GUID;
    pub const IID: Guid = ICompositionContainerShape.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionContainerShape.SIGNATURE);
};
pub const CompositionDrawingSurface = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAlphaMode(self: *@This()) core.HResult!DirectXAlphaMode {
        const this: *ICompositionDrawingSurface = @ptrCast(self);
        return try this.getAlphaMode();
    }
    pub fn getPixelFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        const this: *ICompositionDrawingSurface = @ptrCast(self);
        return try this.getPixelFormat();
    }
    pub fn getSize(self: *@This()) core.HResult!Size {
        const this: *ICompositionDrawingSurface = @ptrCast(self);
        return try this.getSize();
    }
    pub fn getSizeInt32(self: *@This()) core.HResult!SizeInt32 {
        var this: ?*ICompositionDrawingSurface2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionDrawingSurface2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSizeInt32();
    }
    pub fn Resize(self: *@This(), sizePixels: SizeInt32) core.HResult!void {
        var this: ?*ICompositionDrawingSurface2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionDrawingSurface2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Resize(sizePixels);
    }
    pub fn Scroll(self: *@This(), offset: PointInt32) core.HResult!void {
        var this: ?*ICompositionDrawingSurface2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionDrawingSurface2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Scroll(offset);
    }
    pub fn ScrollWithScrollRect(self: *@This(), offset: PointInt32, scrollRect: RectInt32) core.HResult!void {
        var this: ?*ICompositionDrawingSurface2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionDrawingSurface2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ScrollWithScrollRect(offset, scrollRect);
    }
    pub fn ScrollWithClip(self: *@This(), offset: PointInt32, clipRect: RectInt32) core.HResult!void {
        var this: ?*ICompositionDrawingSurface2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionDrawingSurface2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ScrollWithClip(offset, clipRect);
    }
    pub fn ScrollWithClipWithScrollRect(self: *@This(), offset: PointInt32, clipRect: RectInt32, scrollRect: RectInt32) core.HResult!void {
        var this: ?*ICompositionDrawingSurface2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionDrawingSurface2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ScrollWithClipWithScrollRect(offset, clipRect, scrollRect);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionDrawingSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionDrawingSurface.GUID;
    pub const IID: Guid = ICompositionDrawingSurface.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionDrawingSurface.SIGNATURE);
    var _ICompositionDrawingSurfaceFactoryCache: FactoryCache(ICompositionDrawingSurfaceFactory, RUNTIME_NAME) = .{};
};
pub const CompositionDropShadowSourcePolicy = enum(i32) {
    Default = 0,
    InheritFromVisualContent = 1,
};
pub const CompositionEasingFunctionMode = enum(i32) {
    In = 0,
    Out = 1,
    InOut = 2,
};
pub const CompositionEffectBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetSourceParameter(self: *@This(), name: HSTRING) core.HResult!*CompositionBrush {
        const this: *ICompositionEffectBrush = @ptrCast(self);
        return try this.GetSourceParameter(name);
    }
    pub fn SetSourceParameter(self: *@This(), name: HSTRING, source: *CompositionBrush) core.HResult!void {
        const this: *ICompositionEffectBrush = @ptrCast(self);
        return try this.SetSourceParameter(name, source);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionEffectBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionEffectBrush.GUID;
    pub const IID: Guid = ICompositionEffectBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionEffectBrush.SIGNATURE);
};
pub const CompositionEffectFactory = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateBrush(self: *@This()) core.HResult!*CompositionEffectBrush {
        const this: *ICompositionEffectFactory = @ptrCast(self);
        return try this.CreateBrush();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        const this: *ICompositionEffectFactory = @ptrCast(self);
        return try this.getExtendedError();
    }
    pub fn getLoadStatus(self: *@This()) core.HResult!CompositionEffectFactoryLoadStatus {
        const this: *ICompositionEffectFactory = @ptrCast(self);
        return try this.getLoadStatus();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionEffectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionEffectFactory.GUID;
    pub const IID: Guid = ICompositionEffectFactory.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionEffectFactory.SIGNATURE);
};
pub const CompositionEffectFactoryLoadStatus = enum(i32) {
    Success = 0,
    EffectTooComplex = 1,
    Pending = 2,
    Other = -1,
};
pub const CompositionEffectSourceParameter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ICompositionEffectSourceParameter = @ptrCast(self);
        return try this.getName();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(name: HSTRING) core.HResult!*CompositionEffectSourceParameter {
        const _f = @This().ICompositionEffectSourceParameterFactoryCache.get();
        return try _f.Create(name);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionEffectSourceParameter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionEffectSourceParameter.GUID;
    pub const IID: Guid = ICompositionEffectSourceParameter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionEffectSourceParameter.SIGNATURE);
    var _ICompositionEffectSourceParameterFactoryCache: FactoryCache(ICompositionEffectSourceParameterFactory, RUNTIME_NAME) = .{};
};
pub const CompositionGeometry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTrimEnd(self: *@This()) core.HResult!f32 {
        const this: *ICompositionGeometry = @ptrCast(self);
        return try this.getTrimEnd();
    }
    pub fn putTrimEnd(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionGeometry = @ptrCast(self);
        return try this.putTrimEnd(value);
    }
    pub fn getTrimOffset(self: *@This()) core.HResult!f32 {
        const this: *ICompositionGeometry = @ptrCast(self);
        return try this.getTrimOffset();
    }
    pub fn putTrimOffset(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionGeometry = @ptrCast(self);
        return try this.putTrimOffset(value);
    }
    pub fn getTrimStart(self: *@This()) core.HResult!f32 {
        const this: *ICompositionGeometry = @ptrCast(self);
        return try this.getTrimStart();
    }
    pub fn putTrimStart(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionGeometry = @ptrCast(self);
        return try this.putTrimStart(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionGeometry.GUID;
    pub const IID: Guid = ICompositionGeometry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionGeometry.SIGNATURE);
    var _ICompositionGeometryFactoryCache: FactoryCache(ICompositionGeometryFactory, RUNTIME_NAME) = .{};
};
pub const CompositionEllipseGeometry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCenter(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionEllipseGeometry = @ptrCast(self);
        return try this.getCenter();
    }
    pub fn putCenter(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionEllipseGeometry = @ptrCast(self);
        return try this.putCenter(value);
    }
    pub fn getRadius(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionEllipseGeometry = @ptrCast(self);
        return try this.getRadius();
    }
    pub fn putRadius(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionEllipseGeometry = @ptrCast(self);
        return try this.putRadius(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionEllipseGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionEllipseGeometry.GUID;
    pub const IID: Guid = ICompositionEllipseGeometry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionEllipseGeometry.SIGNATURE);
};
pub const CompositionGeometricClip = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGeometry(self: *@This()) core.HResult!*CompositionGeometry {
        const this: *ICompositionGeometricClip = @ptrCast(self);
        return try this.getGeometry();
    }
    pub fn putGeometry(self: *@This(), value: *CompositionGeometry) core.HResult!void {
        const this: *ICompositionGeometricClip = @ptrCast(self);
        return try this.putGeometry(value);
    }
    pub fn getViewBox(self: *@This()) core.HResult!*CompositionViewBox {
        const this: *ICompositionGeometricClip = @ptrCast(self);
        return try this.getViewBox();
    }
    pub fn putViewBox(self: *@This(), value: *CompositionViewBox) core.HResult!void {
        const this: *ICompositionGeometricClip = @ptrCast(self);
        return try this.putViewBox(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionGeometricClip";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionGeometricClip.GUID;
    pub const IID: Guid = ICompositionGeometricClip.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionGeometricClip.SIGNATURE);
};
pub const CompositionGetValueStatus = enum(i32) {
    Succeeded = 0,
    TypeMismatch = 1,
    NotFound = 2,
};
pub const CompositionGradientBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAnchorPoint(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.getAnchorPoint();
    }
    pub fn putAnchorPoint(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.putAnchorPoint(value);
    }
    pub fn getCenterPoint(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.getCenterPoint();
    }
    pub fn putCenterPoint(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.putCenterPoint(value);
    }
    pub fn getColorStops(self: *@This()) core.HResult!*CompositionColorGradientStopCollection {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.getColorStops();
    }
    pub fn getExtendMode(self: *@This()) core.HResult!CompositionGradientExtendMode {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.getExtendMode();
    }
    pub fn putExtendMode(self: *@This(), value: CompositionGradientExtendMode) core.HResult!void {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.putExtendMode(value);
    }
    pub fn getInterpolationSpace(self: *@This()) core.HResult!CompositionColorSpace {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.getInterpolationSpace();
    }
    pub fn putInterpolationSpace(self: *@This(), value: CompositionColorSpace) core.HResult!void {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.putInterpolationSpace(value);
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.putOffset(value);
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f32 {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.getRotationAngle();
    }
    pub fn putRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.putRotationAngle(value);
    }
    pub fn getRotationAngleInDegrees(self: *@This()) core.HResult!f32 {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.getRotationAngleInDegrees();
    }
    pub fn putRotationAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.putRotationAngleInDegrees(value);
    }
    pub fn getScale(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.getScale();
    }
    pub fn putScale(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.putScale(value);
    }
    pub fn getTransformMatrix(self: *@This()) core.HResult!Matrix3x2 {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.getTransformMatrix();
    }
    pub fn putTransformMatrix(self: *@This(), value: Matrix3x2) core.HResult!void {
        const this: *ICompositionGradientBrush = @ptrCast(self);
        return try this.putTransformMatrix(value);
    }
    pub fn getMappingMode(self: *@This()) core.HResult!CompositionMappingMode {
        var this: ?*ICompositionGradientBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionGradientBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMappingMode();
    }
    pub fn putMappingMode(self: *@This(), value: CompositionMappingMode) core.HResult!void {
        var this: ?*ICompositionGradientBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionGradientBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMappingMode(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionGradientBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionGradientBrush.GUID;
    pub const IID: Guid = ICompositionGradientBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionGradientBrush.SIGNATURE);
    var _ICompositionGradientBrushFactoryCache: FactoryCache(ICompositionGradientBrushFactory, RUNTIME_NAME) = .{};
};
pub const CompositionGradientExtendMode = enum(i32) {
    Clamp = 0,
    Wrap = 1,
    Mirror = 2,
};
pub const CompositionGraphicsDevice = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateDrawingSurface(self: *@This(), sizePixels: Size, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode) core.HResult!*CompositionDrawingSurface {
        const this: *ICompositionGraphicsDevice = @ptrCast(self);
        return try this.CreateDrawingSurface(sizePixels, pixelFormat, alphaMode);
    }
    pub fn addRenderingDeviceReplaced(self: *@This(), handler: *TypedEventHandler(CompositionGraphicsDevice,RenderingDeviceReplacedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICompositionGraphicsDevice = @ptrCast(self);
        return try this.addRenderingDeviceReplaced(handler);
    }
    pub fn removeRenderingDeviceReplaced(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICompositionGraphicsDevice = @ptrCast(self);
        return try this.removeRenderingDeviceReplaced(token);
    }
    pub fn CreateDrawingSurface2(self: *@This(), sizePixels: SizeInt32, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode) core.HResult!*CompositionDrawingSurface {
        var this: ?*ICompositionGraphicsDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionGraphicsDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateDrawingSurface2(sizePixels, pixelFormat, alphaMode);
    }
    pub fn CreateVirtualDrawingSurface(self: *@This(), sizePixels: SizeInt32, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode) core.HResult!*CompositionVirtualDrawingSurface {
        var this: ?*ICompositionGraphicsDevice2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionGraphicsDevice2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateVirtualDrawingSurface(sizePixels, pixelFormat, alphaMode);
    }
    pub fn CreateMipmapSurface(self: *@This(), sizePixels: SizeInt32, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode) core.HResult!*CompositionMipmapSurface {
        var this: ?*ICompositionGraphicsDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionGraphicsDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateMipmapSurface(sizePixels, pixelFormat, alphaMode);
    }
    pub fn Trim(self: *@This()) core.HResult!void {
        var this: ?*ICompositionGraphicsDevice3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionGraphicsDevice3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Trim();
    }
    pub fn CaptureAsync(self: *@This(), captureVisual: *Visual, size: SizeInt32, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode, sdrBoost: f32) core.HResult!*IAsyncOperation(ICompositionSurface) {
        var this: ?*ICompositionGraphicsDevice4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionGraphicsDevice4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CaptureAsync(captureVisual, size, pixelFormat, alphaMode, sdrBoost);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionGraphicsDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionGraphicsDevice.GUID;
    pub const IID: Guid = ICompositionGraphicsDevice.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionGraphicsDevice.SIGNATURE);
};
pub const CompositionLineGeometry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStart(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionLineGeometry = @ptrCast(self);
        return try this.getStart();
    }
    pub fn putStart(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionLineGeometry = @ptrCast(self);
        return try this.putStart(value);
    }
    pub fn getEnd(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionLineGeometry = @ptrCast(self);
        return try this.getEnd();
    }
    pub fn putEnd(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionLineGeometry = @ptrCast(self);
        return try this.putEnd(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionLineGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionLineGeometry.GUID;
    pub const IID: Guid = ICompositionLineGeometry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionLineGeometry.SIGNATURE);
};
pub const CompositionLinearGradientBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEndPoint(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionLinearGradientBrush = @ptrCast(self);
        return try this.getEndPoint();
    }
    pub fn putEndPoint(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionLinearGradientBrush = @ptrCast(self);
        return try this.putEndPoint(value);
    }
    pub fn getStartPoint(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionLinearGradientBrush = @ptrCast(self);
        return try this.getStartPoint();
    }
    pub fn putStartPoint(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionLinearGradientBrush = @ptrCast(self);
        return try this.putStartPoint(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionLinearGradientBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionLinearGradientBrush.GUID;
    pub const IID: Guid = ICompositionLinearGradientBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionLinearGradientBrush.SIGNATURE);
};
pub const CompositionMappingMode = enum(i32) {
    Absolute = 0,
    Relative = 1,
};
pub const CompositionMaskBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMask(self: *@This()) core.HResult!*CompositionBrush {
        const this: *ICompositionMaskBrush = @ptrCast(self);
        return try this.getMask();
    }
    pub fn putMask(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const this: *ICompositionMaskBrush = @ptrCast(self);
        return try this.putMask(value);
    }
    pub fn getSource(self: *@This()) core.HResult!*CompositionBrush {
        const this: *ICompositionMaskBrush = @ptrCast(self);
        return try this.getSource();
    }
    pub fn putSource(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const this: *ICompositionMaskBrush = @ptrCast(self);
        return try this.putSource(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionMaskBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionMaskBrush.GUID;
    pub const IID: Guid = ICompositionMaskBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionMaskBrush.SIGNATURE);
};
pub const CompositionMipmapSurface = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLevelCount(self: *@This()) core.HResult!u32 {
        const this: *ICompositionMipmapSurface = @ptrCast(self);
        return try this.getLevelCount();
    }
    pub fn getAlphaMode(self: *@This()) core.HResult!DirectXAlphaMode {
        const this: *ICompositionMipmapSurface = @ptrCast(self);
        return try this.getAlphaMode();
    }
    pub fn getPixelFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        const this: *ICompositionMipmapSurface = @ptrCast(self);
        return try this.getPixelFormat();
    }
    pub fn getSizeInt32(self: *@This()) core.HResult!SizeInt32 {
        const this: *ICompositionMipmapSurface = @ptrCast(self);
        return try this.getSizeInt32();
    }
    pub fn GetDrawingSurfaceForLevel(self: *@This(), level: u32) core.HResult!*CompositionDrawingSurface {
        const this: *ICompositionMipmapSurface = @ptrCast(self);
        return try this.GetDrawingSurfaceForLevel(level);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionMipmapSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionMipmapSurface.GUID;
    pub const IID: Guid = ICompositionMipmapSurface.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionMipmapSurface.SIGNATURE);
};
pub const CompositionNineGridBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBottomInset(self: *@This()) core.HResult!f32 {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.getBottomInset();
    }
    pub fn putBottomInset(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.putBottomInset(value);
    }
    pub fn getBottomInsetScale(self: *@This()) core.HResult!f32 {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.getBottomInsetScale();
    }
    pub fn putBottomInsetScale(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.putBottomInsetScale(value);
    }
    pub fn getIsCenterHollow(self: *@This()) core.HResult!bool {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.getIsCenterHollow();
    }
    pub fn putIsCenterHollow(self: *@This(), value: bool) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.putIsCenterHollow(value);
    }
    pub fn getLeftInset(self: *@This()) core.HResult!f32 {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.getLeftInset();
    }
    pub fn putLeftInset(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.putLeftInset(value);
    }
    pub fn getLeftInsetScale(self: *@This()) core.HResult!f32 {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.getLeftInsetScale();
    }
    pub fn putLeftInsetScale(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.putLeftInsetScale(value);
    }
    pub fn getRightInset(self: *@This()) core.HResult!f32 {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.getRightInset();
    }
    pub fn putRightInset(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.putRightInset(value);
    }
    pub fn getRightInsetScale(self: *@This()) core.HResult!f32 {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.getRightInsetScale();
    }
    pub fn putRightInsetScale(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.putRightInsetScale(value);
    }
    pub fn getSource(self: *@This()) core.HResult!*CompositionBrush {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.getSource();
    }
    pub fn putSource(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.putSource(value);
    }
    pub fn getTopInset(self: *@This()) core.HResult!f32 {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.getTopInset();
    }
    pub fn putTopInset(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.putTopInset(value);
    }
    pub fn getTopInsetScale(self: *@This()) core.HResult!f32 {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.getTopInsetScale();
    }
    pub fn putTopInsetScale(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.putTopInsetScale(value);
    }
    pub fn SetInsets(self: *@This(), inset: f32) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.SetInsets(inset);
    }
    pub fn SetInsetsWithTopAndRightAndBottom(self: *@This(), left: f32, top: f32, right: f32, bottom: f32) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.SetInsetsWithTopAndRightAndBottom(left, top, right, bottom);
    }
    pub fn SetInsetScales(self: *@This(), scale: f32) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.SetInsetScales(scale);
    }
    pub fn SetInsetScalesWithTopAndRightAndBottom(self: *@This(), left: f32, top: f32, right: f32, bottom: f32) core.HResult!void {
        const this: *ICompositionNineGridBrush = @ptrCast(self);
        return try this.SetInsetScalesWithTopAndRightAndBottom(left, top, right, bottom);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionNineGridBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionNineGridBrush.GUID;
    pub const IID: Guid = ICompositionNineGridBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionNineGridBrush.SIGNATURE);
};
pub const CompositionPath = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(source: *IGeometrySource2D) core.HResult!*CompositionPath {
        const _f = @This().ICompositionPathFactoryCache.get();
        return try _f.Create(source);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionPath";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionPath.GUID;
    pub const IID: Guid = ICompositionPath.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionPath.SIGNATURE);
    var _ICompositionPathFactoryCache: FactoryCache(ICompositionPathFactory, RUNTIME_NAME) = .{};
};
pub const CompositionPathGeometry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPath(self: *@This()) core.HResult!*CompositionPath {
        const this: *ICompositionPathGeometry = @ptrCast(self);
        return try this.getPath();
    }
    pub fn putPath(self: *@This(), value: *CompositionPath) core.HResult!void {
        const this: *ICompositionPathGeometry = @ptrCast(self);
        return try this.putPath(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionPathGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionPathGeometry.GUID;
    pub const IID: Guid = ICompositionPathGeometry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionPathGeometry.SIGNATURE);
};
pub const CompositionProjectedShadow = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBlurRadiusMultiplier(self: *@This()) core.HResult!f32 {
        const this: *ICompositionProjectedShadow = @ptrCast(self);
        return try this.getBlurRadiusMultiplier();
    }
    pub fn putBlurRadiusMultiplier(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionProjectedShadow = @ptrCast(self);
        return try this.putBlurRadiusMultiplier(value);
    }
    pub fn getCasters(self: *@This()) core.HResult!*CompositionProjectedShadowCasterCollection {
        const this: *ICompositionProjectedShadow = @ptrCast(self);
        return try this.getCasters();
    }
    pub fn getLightSource(self: *@This()) core.HResult!*CompositionLight {
        const this: *ICompositionProjectedShadow = @ptrCast(self);
        return try this.getLightSource();
    }
    pub fn putLightSource(self: *@This(), value: *CompositionLight) core.HResult!void {
        const this: *ICompositionProjectedShadow = @ptrCast(self);
        return try this.putLightSource(value);
    }
    pub fn getMaxBlurRadius(self: *@This()) core.HResult!f32 {
        const this: *ICompositionProjectedShadow = @ptrCast(self);
        return try this.getMaxBlurRadius();
    }
    pub fn putMaxBlurRadius(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionProjectedShadow = @ptrCast(self);
        return try this.putMaxBlurRadius(value);
    }
    pub fn getMinBlurRadius(self: *@This()) core.HResult!f32 {
        const this: *ICompositionProjectedShadow = @ptrCast(self);
        return try this.getMinBlurRadius();
    }
    pub fn putMinBlurRadius(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionProjectedShadow = @ptrCast(self);
        return try this.putMinBlurRadius(value);
    }
    pub fn getReceivers(self: *@This()) core.HResult!*CompositionProjectedShadowReceiverUnorderedCollection {
        const this: *ICompositionProjectedShadow = @ptrCast(self);
        return try this.getReceivers();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionProjectedShadow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionProjectedShadow.GUID;
    pub const IID: Guid = ICompositionProjectedShadow.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionProjectedShadow.SIGNATURE);
};
pub const CompositionProjectedShadowCaster = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBrush(self: *@This()) core.HResult!*CompositionBrush {
        const this: *ICompositionProjectedShadowCaster = @ptrCast(self);
        return try this.getBrush();
    }
    pub fn putBrush(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const this: *ICompositionProjectedShadowCaster = @ptrCast(self);
        return try this.putBrush(value);
    }
    pub fn getCastingVisual(self: *@This()) core.HResult!*Visual {
        const this: *ICompositionProjectedShadowCaster = @ptrCast(self);
        return try this.getCastingVisual();
    }
    pub fn putCastingVisual(self: *@This(), value: *Visual) core.HResult!void {
        const this: *ICompositionProjectedShadowCaster = @ptrCast(self);
        return try this.putCastingVisual(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionProjectedShadowCaster";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionProjectedShadowCaster.GUID;
    pub const IID: Guid = ICompositionProjectedShadowCaster.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionProjectedShadowCaster.SIGNATURE);
};
pub const CompositionProjectedShadowCasterCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCount(self: *@This()) core.HResult!i32 {
        const this: *ICompositionProjectedShadowCasterCollection = @ptrCast(self);
        return try this.getCount();
    }
    pub fn InsertAbove(self: *@This(), newCaster: *CompositionProjectedShadowCaster, reference: *CompositionProjectedShadowCaster) core.HResult!void {
        const this: *ICompositionProjectedShadowCasterCollection = @ptrCast(self);
        return try this.InsertAbove(newCaster, reference);
    }
    pub fn InsertAtBottom(self: *@This(), newCaster: *CompositionProjectedShadowCaster) core.HResult!void {
        const this: *ICompositionProjectedShadowCasterCollection = @ptrCast(self);
        return try this.InsertAtBottom(newCaster);
    }
    pub fn InsertAtTop(self: *@This(), newCaster: *CompositionProjectedShadowCaster) core.HResult!void {
        const this: *ICompositionProjectedShadowCasterCollection = @ptrCast(self);
        return try this.InsertAtTop(newCaster);
    }
    pub fn InsertBelow(self: *@This(), newCaster: *CompositionProjectedShadowCaster, reference: *CompositionProjectedShadowCaster) core.HResult!void {
        const this: *ICompositionProjectedShadowCasterCollection = @ptrCast(self);
        return try this.InsertBelow(newCaster, reference);
    }
    pub fn Remove(self: *@This(), caster: *CompositionProjectedShadowCaster) core.HResult!void {
        const this: *ICompositionProjectedShadowCasterCollection = @ptrCast(self);
        return try this.Remove(caster);
    }
    pub fn RemoveAll(self: *@This()) core.HResult!void {
        const this: *ICompositionProjectedShadowCasterCollection = @ptrCast(self);
        return try this.RemoveAll();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(CompositionProjectedShadowCaster) {
        var this: ?*IIterable(CompositionProjectedShadowCaster) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getMaxRespectedCasters() core.HResult!i32 {
        const _f = @This().ICompositionProjectedShadowCasterCollectionStaticsCache.get();
        return try _f.getMaxRespectedCasters();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionProjectedShadowCasterCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionProjectedShadowCasterCollection.GUID;
    pub const IID: Guid = ICompositionProjectedShadowCasterCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionProjectedShadowCasterCollection.SIGNATURE);
    var _ICompositionProjectedShadowCasterCollectionStaticsCache: FactoryCache(ICompositionProjectedShadowCasterCollectionStatics, RUNTIME_NAME) = .{};
};
pub const CompositionProjectedShadowReceiver = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReceivingVisual(self: *@This()) core.HResult!*Visual {
        const this: *ICompositionProjectedShadowReceiver = @ptrCast(self);
        return try this.getReceivingVisual();
    }
    pub fn putReceivingVisual(self: *@This(), value: *Visual) core.HResult!void {
        const this: *ICompositionProjectedShadowReceiver = @ptrCast(self);
        return try this.putReceivingVisual(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionProjectedShadowReceiver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionProjectedShadowReceiver.GUID;
    pub const IID: Guid = ICompositionProjectedShadowReceiver.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionProjectedShadowReceiver.SIGNATURE);
};
pub const CompositionProjectedShadowReceiverUnorderedCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Add(self: *@This(), value: *CompositionProjectedShadowReceiver) core.HResult!void {
        const this: *ICompositionProjectedShadowReceiverUnorderedCollection = @ptrCast(self);
        return try this.Add(value);
    }
    pub fn getCount(self: *@This()) core.HResult!i32 {
        const this: *ICompositionProjectedShadowReceiverUnorderedCollection = @ptrCast(self);
        return try this.getCount();
    }
    pub fn Remove(self: *@This(), value: *CompositionProjectedShadowReceiver) core.HResult!void {
        const this: *ICompositionProjectedShadowReceiverUnorderedCollection = @ptrCast(self);
        return try this.Remove(value);
    }
    pub fn RemoveAll(self: *@This()) core.HResult!void {
        const this: *ICompositionProjectedShadowReceiverUnorderedCollection = @ptrCast(self);
        return try this.RemoveAll();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(CompositionProjectedShadowReceiver) {
        var this: ?*IIterable(CompositionProjectedShadowReceiver) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionProjectedShadowReceiverUnorderedCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionProjectedShadowReceiverUnorderedCollection.GUID;
    pub const IID: Guid = ICompositionProjectedShadowReceiverUnorderedCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionProjectedShadowReceiverUnorderedCollection.SIGNATURE);
};
pub const CompositionPropertySet = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn InsertColor(self: *@This(), propertyName: HSTRING, value: Color) core.HResult!void {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.InsertColor(propertyName, value);
    }
    pub fn InsertMatrix3x2(self: *@This(), propertyName: HSTRING, value: Matrix3x2) core.HResult!void {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.InsertMatrix3x2(propertyName, value);
    }
    pub fn InsertMatrix4x4(self: *@This(), propertyName: HSTRING, value: Matrix4x4) core.HResult!void {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.InsertMatrix4x4(propertyName, value);
    }
    pub fn InsertQuaternion(self: *@This(), propertyName: HSTRING, value: Quaternion) core.HResult!void {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.InsertQuaternion(propertyName, value);
    }
    pub fn InsertScalar(self: *@This(), propertyName: HSTRING, value: f32) core.HResult!void {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.InsertScalar(propertyName, value);
    }
    pub fn InsertVector2(self: *@This(), propertyName: HSTRING, value: Vector2) core.HResult!void {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.InsertVector2(propertyName, value);
    }
    pub fn InsertVector3(self: *@This(), propertyName: HSTRING, value: Vector3) core.HResult!void {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.InsertVector3(propertyName, value);
    }
    pub fn InsertVector4(self: *@This(), propertyName: HSTRING, value: Vector4) core.HResult!void {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.InsertVector4(propertyName, value);
    }
    pub fn TryGetColor(self: *@This(), propertyName: HSTRING, value: Color) core.HResult!CompositionGetValueStatus {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.TryGetColor(propertyName, value);
    }
    pub fn TryGetMatrix3x2(self: *@This(), propertyName: HSTRING, value: Matrix3x2) core.HResult!CompositionGetValueStatus {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.TryGetMatrix3x2(propertyName, value);
    }
    pub fn TryGetMatrix4x4(self: *@This(), propertyName: HSTRING, value: Matrix4x4) core.HResult!CompositionGetValueStatus {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.TryGetMatrix4x4(propertyName, value);
    }
    pub fn TryGetQuaternion(self: *@This(), propertyName: HSTRING, value: Quaternion) core.HResult!CompositionGetValueStatus {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.TryGetQuaternion(propertyName, value);
    }
    pub fn TryGetScalar(self: *@This(), propertyName: HSTRING, value: f32) core.HResult!CompositionGetValueStatus {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.TryGetScalar(propertyName, value);
    }
    pub fn TryGetVector2(self: *@This(), propertyName: HSTRING, value: Vector2) core.HResult!CompositionGetValueStatus {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.TryGetVector2(propertyName, value);
    }
    pub fn TryGetVector3(self: *@This(), propertyName: HSTRING, value: Vector3) core.HResult!CompositionGetValueStatus {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.TryGetVector3(propertyName, value);
    }
    pub fn TryGetVector4(self: *@This(), propertyName: HSTRING, value: Vector4) core.HResult!CompositionGetValueStatus {
        const this: *ICompositionPropertySet = @ptrCast(self);
        return try this.TryGetVector4(propertyName, value);
    }
    pub fn InsertBoolean(self: *@This(), propertyName: HSTRING, value: bool) core.HResult!void {
        var this: ?*ICompositionPropertySet2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionPropertySet2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertBoolean(propertyName, value);
    }
    pub fn TryGetBoolean(self: *@This(), propertyName: HSTRING, value: bool) core.HResult!CompositionGetValueStatus {
        var this: ?*ICompositionPropertySet2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionPropertySet2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryGetBoolean(propertyName, value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionPropertySet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionPropertySet.GUID;
    pub const IID: Guid = ICompositionPropertySet.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionPropertySet.SIGNATURE);
};
pub const CompositionRadialGradientBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEllipseCenter(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionRadialGradientBrush = @ptrCast(self);
        return try this.getEllipseCenter();
    }
    pub fn putEllipseCenter(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionRadialGradientBrush = @ptrCast(self);
        return try this.putEllipseCenter(value);
    }
    pub fn getEllipseRadius(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionRadialGradientBrush = @ptrCast(self);
        return try this.getEllipseRadius();
    }
    pub fn putEllipseRadius(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionRadialGradientBrush = @ptrCast(self);
        return try this.putEllipseRadius(value);
    }
    pub fn getGradientOriginOffset(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionRadialGradientBrush = @ptrCast(self);
        return try this.getGradientOriginOffset();
    }
    pub fn putGradientOriginOffset(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionRadialGradientBrush = @ptrCast(self);
        return try this.putGradientOriginOffset(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionRadialGradientBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionRadialGradientBrush.GUID;
    pub const IID: Guid = ICompositionRadialGradientBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionRadialGradientBrush.SIGNATURE);
};
pub const CompositionRectangleGeometry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionRectangleGeometry = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionRectangleGeometry = @ptrCast(self);
        return try this.putOffset(value);
    }
    pub fn getSize(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionRectangleGeometry = @ptrCast(self);
        return try this.getSize();
    }
    pub fn putSize(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionRectangleGeometry = @ptrCast(self);
        return try this.putSize(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionRectangleGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionRectangleGeometry.GUID;
    pub const IID: Guid = ICompositionRectangleGeometry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionRectangleGeometry.SIGNATURE);
};
pub const CompositionRoundedRectangleGeometry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCornerRadius(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionRoundedRectangleGeometry = @ptrCast(self);
        return try this.getCornerRadius();
    }
    pub fn putCornerRadius(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionRoundedRectangleGeometry = @ptrCast(self);
        return try this.putCornerRadius(value);
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionRoundedRectangleGeometry = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionRoundedRectangleGeometry = @ptrCast(self);
        return try this.putOffset(value);
    }
    pub fn getSize(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionRoundedRectangleGeometry = @ptrCast(self);
        return try this.getSize();
    }
    pub fn putSize(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionRoundedRectangleGeometry = @ptrCast(self);
        return try this.putSize(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionRoundedRectangleGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionRoundedRectangleGeometry.GUID;
    pub const IID: Guid = ICompositionRoundedRectangleGeometry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionRoundedRectangleGeometry.SIGNATURE);
};
pub const CompositionScopedBatch = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        const this: *ICompositionScopedBatch = @ptrCast(self);
        return try this.getIsActive();
    }
    pub fn getIsEnded(self: *@This()) core.HResult!bool {
        const this: *ICompositionScopedBatch = @ptrCast(self);
        return try this.getIsEnded();
    }
    pub fn End(self: *@This()) core.HResult!void {
        const this: *ICompositionScopedBatch = @ptrCast(self);
        return try this.End();
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const this: *ICompositionScopedBatch = @ptrCast(self);
        return try this.Resume();
    }
    pub fn Suspend(self: *@This()) core.HResult!void {
        const this: *ICompositionScopedBatch = @ptrCast(self);
        return try this.Suspend();
    }
    pub fn addCompleted(self: *@This(), handler: *TypedEventHandler(IInspectable,CompositionBatchCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICompositionScopedBatch = @ptrCast(self);
        return try this.addCompleted(handler);
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICompositionScopedBatch = @ptrCast(self);
        return try this.removeCompleted(token);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionScopedBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionScopedBatch.GUID;
    pub const IID: Guid = ICompositionScopedBatch.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionScopedBatch.SIGNATURE);
};
pub const CompositionShadow = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionShadow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionShadow.GUID;
    pub const IID: Guid = ICompositionShadow.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionShadow.SIGNATURE);
    var _ICompositionShadowFactoryCache: FactoryCache(ICompositionShadowFactory, RUNTIME_NAME) = .{};
};
pub const CompositionShapeCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(CompositionShape) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(CompositionShape) {
        const this: *IVector(CompositionShape) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(CompositionShape) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(CompositionShape) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(CompositionShape) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(CompositionShape) {
        var this: ?*IIterable(CompositionShape) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionShapeCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
};
pub const CompositionSpriteShape = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFillBrush(self: *@This()) core.HResult!*CompositionBrush {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.getFillBrush();
    }
    pub fn putFillBrush(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.putFillBrush(value);
    }
    pub fn getGeometry(self: *@This()) core.HResult!*CompositionGeometry {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.getGeometry();
    }
    pub fn putGeometry(self: *@This(), value: *CompositionGeometry) core.HResult!void {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.putGeometry(value);
    }
    pub fn getIsStrokeNonScaling(self: *@This()) core.HResult!bool {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.getIsStrokeNonScaling();
    }
    pub fn putIsStrokeNonScaling(self: *@This(), value: bool) core.HResult!void {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.putIsStrokeNonScaling(value);
    }
    pub fn getStrokeBrush(self: *@This()) core.HResult!*CompositionBrush {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.getStrokeBrush();
    }
    pub fn putStrokeBrush(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.putStrokeBrush(value);
    }
    pub fn getStrokeDashArray(self: *@This()) core.HResult!*CompositionStrokeDashArray {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.getStrokeDashArray();
    }
    pub fn getStrokeDashCap(self: *@This()) core.HResult!CompositionStrokeCap {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.getStrokeDashCap();
    }
    pub fn putStrokeDashCap(self: *@This(), value: CompositionStrokeCap) core.HResult!void {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.putStrokeDashCap(value);
    }
    pub fn getStrokeDashOffset(self: *@This()) core.HResult!f32 {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.getStrokeDashOffset();
    }
    pub fn putStrokeDashOffset(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.putStrokeDashOffset(value);
    }
    pub fn getStrokeEndCap(self: *@This()) core.HResult!CompositionStrokeCap {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.getStrokeEndCap();
    }
    pub fn putStrokeEndCap(self: *@This(), value: CompositionStrokeCap) core.HResult!void {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.putStrokeEndCap(value);
    }
    pub fn getStrokeLineJoin(self: *@This()) core.HResult!CompositionStrokeLineJoin {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.getStrokeLineJoin();
    }
    pub fn putStrokeLineJoin(self: *@This(), value: CompositionStrokeLineJoin) core.HResult!void {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.putStrokeLineJoin(value);
    }
    pub fn getStrokeMiterLimit(self: *@This()) core.HResult!f32 {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.getStrokeMiterLimit();
    }
    pub fn putStrokeMiterLimit(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.putStrokeMiterLimit(value);
    }
    pub fn getStrokeStartCap(self: *@This()) core.HResult!CompositionStrokeCap {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.getStrokeStartCap();
    }
    pub fn putStrokeStartCap(self: *@This(), value: CompositionStrokeCap) core.HResult!void {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.putStrokeStartCap(value);
    }
    pub fn getStrokeThickness(self: *@This()) core.HResult!f32 {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.getStrokeThickness();
    }
    pub fn putStrokeThickness(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionSpriteShape = @ptrCast(self);
        return try this.putStrokeThickness(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionSpriteShape";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionSpriteShape.GUID;
    pub const IID: Guid = ICompositionSpriteShape.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionSpriteShape.SIGNATURE);
};
pub const CompositionStretch = enum(i32) {
    None = 0,
    Fill = 1,
    Uniform = 2,
    UniformToFill = 3,
};
pub const CompositionStrokeCap = enum(i32) {
    Flat = 0,
    Square = 1,
    Round = 2,
    Triangle = 3,
};
pub const CompositionStrokeDashArray = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(f32) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(f32) {
        const this: *IVector(f32) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(f32) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(f32) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(f32) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(f32) {
        var this: ?*IIterable(f32) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionStrokeDashArray";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
};
pub const CompositionStrokeLineJoin = enum(i32) {
    Miter = 0,
    Bevel = 1,
    Round = 2,
    MiterOrBevel = 3,
};
pub const CompositionSurfaceBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBitmapInterpolationMode(self: *@This()) core.HResult!CompositionBitmapInterpolationMode {
        const this: *ICompositionSurfaceBrush = @ptrCast(self);
        return try this.getBitmapInterpolationMode();
    }
    pub fn putBitmapInterpolationMode(self: *@This(), value: CompositionBitmapInterpolationMode) core.HResult!void {
        const this: *ICompositionSurfaceBrush = @ptrCast(self);
        return try this.putBitmapInterpolationMode(value);
    }
    pub fn getHorizontalAlignmentRatio(self: *@This()) core.HResult!f32 {
        const this: *ICompositionSurfaceBrush = @ptrCast(self);
        return try this.getHorizontalAlignmentRatio();
    }
    pub fn putHorizontalAlignmentRatio(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionSurfaceBrush = @ptrCast(self);
        return try this.putHorizontalAlignmentRatio(value);
    }
    pub fn getStretch(self: *@This()) core.HResult!CompositionStretch {
        const this: *ICompositionSurfaceBrush = @ptrCast(self);
        return try this.getStretch();
    }
    pub fn putStretch(self: *@This(), value: CompositionStretch) core.HResult!void {
        const this: *ICompositionSurfaceBrush = @ptrCast(self);
        return try this.putStretch(value);
    }
    pub fn getSurface(self: *@This()) core.HResult!*ICompositionSurface {
        const this: *ICompositionSurfaceBrush = @ptrCast(self);
        return try this.getSurface();
    }
    pub fn putSurface(self: *@This(), value: *ICompositionSurface) core.HResult!void {
        const this: *ICompositionSurfaceBrush = @ptrCast(self);
        return try this.putSurface(value);
    }
    pub fn getVerticalAlignmentRatio(self: *@This()) core.HResult!f32 {
        const this: *ICompositionSurfaceBrush = @ptrCast(self);
        return try this.getVerticalAlignmentRatio();
    }
    pub fn putVerticalAlignmentRatio(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionSurfaceBrush = @ptrCast(self);
        return try this.putVerticalAlignmentRatio(value);
    }
    pub fn getAnchorPoint(self: *@This()) core.HResult!Vector2 {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAnchorPoint();
    }
    pub fn putAnchorPoint(self: *@This(), value: Vector2) core.HResult!void {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAnchorPoint(value);
    }
    pub fn getCenterPoint(self: *@This()) core.HResult!Vector2 {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCenterPoint();
    }
    pub fn putCenterPoint(self: *@This(), value: Vector2) core.HResult!void {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCenterPoint(value);
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOffset();
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOffset(value);
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f32 {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotationAngle();
    }
    pub fn putRotationAngle(self: *@This(), value: f32) core.HResult!void {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRotationAngle(value);
    }
    pub fn getRotationAngleInDegrees(self: *@This()) core.HResult!f32 {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRotationAngleInDegrees();
    }
    pub fn putRotationAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRotationAngleInDegrees(value);
    }
    pub fn getScale(self: *@This()) core.HResult!Vector2 {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getScale();
    }
    pub fn putScale(self: *@This(), value: Vector2) core.HResult!void {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putScale(value);
    }
    pub fn getTransformMatrix(self: *@This()) core.HResult!Matrix3x2 {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTransformMatrix();
    }
    pub fn putTransformMatrix(self: *@This(), value: Matrix3x2) core.HResult!void {
        var this: ?*ICompositionSurfaceBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTransformMatrix(value);
    }
    pub fn getSnapToPixels(self: *@This()) core.HResult!bool {
        var this: ?*ICompositionSurfaceBrush3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSnapToPixels();
    }
    pub fn putSnapToPixels(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ICompositionSurfaceBrush3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositionSurfaceBrush3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSnapToPixels(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionSurfaceBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionSurfaceBrush.GUID;
    pub const IID: Guid = ICompositionSurfaceBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionSurfaceBrush.SIGNATURE);
};
pub const CompositionTarget = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRoot(self: *@This()) core.HResult!*Visual {
        const this: *ICompositionTarget = @ptrCast(self);
        return try this.getRoot();
    }
    pub fn putRoot(self: *@This(), value: *Visual) core.HResult!void {
        const this: *ICompositionTarget = @ptrCast(self);
        return try this.putRoot(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionTarget.GUID;
    pub const IID: Guid = ICompositionTarget.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionTarget.SIGNATURE);
    var _ICompositionTargetFactoryCache: FactoryCache(ICompositionTargetFactory, RUNTIME_NAME) = .{};
};
pub const CompositionTexture = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceRect(self: *@This()) core.HResult!RectInt32 {
        const this: *ICompositionTexture = @ptrCast(self);
        return try this.getSourceRect();
    }
    pub fn putSourceRect(self: *@This(), value: RectInt32) core.HResult!void {
        const this: *ICompositionTexture = @ptrCast(self);
        return try this.putSourceRect(value);
    }
    pub fn getAlphaMode(self: *@This()) core.HResult!DirectXAlphaMode {
        const this: *ICompositionTexture = @ptrCast(self);
        return try this.getAlphaMode();
    }
    pub fn putAlphaMode(self: *@This(), value: DirectXAlphaMode) core.HResult!void {
        const this: *ICompositionTexture = @ptrCast(self);
        return try this.putAlphaMode(value);
    }
    pub fn getColorSpace(self: *@This()) core.HResult!DirectXColorSpace {
        const this: *ICompositionTexture = @ptrCast(self);
        return try this.getColorSpace();
    }
    pub fn putColorSpace(self: *@This(), value: DirectXColorSpace) core.HResult!void {
        const this: *ICompositionTexture = @ptrCast(self);
        return try this.putColorSpace(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionTexture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionTexture.GUID;
    pub const IID: Guid = ICompositionTexture.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionTexture.SIGNATURE);
    var _ICompositionTextureFactoryCache: FactoryCache(ICompositionTextureFactory, RUNTIME_NAME) = .{};
};
pub const CompositionTransform = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionTransform.GUID;
    pub const IID: Guid = ICompositionTransform.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionTransform.SIGNATURE);
    var _ICompositionTransformFactoryCache: FactoryCache(ICompositionTransformFactory, RUNTIME_NAME) = .{};
};
pub const CompositionViewBox = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHorizontalAlignmentRatio(self: *@This()) core.HResult!f32 {
        const this: *ICompositionViewBox = @ptrCast(self);
        return try this.getHorizontalAlignmentRatio();
    }
    pub fn putHorizontalAlignmentRatio(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionViewBox = @ptrCast(self);
        return try this.putHorizontalAlignmentRatio(value);
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionViewBox = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionViewBox = @ptrCast(self);
        return try this.putOffset(value);
    }
    pub fn getSize(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionViewBox = @ptrCast(self);
        return try this.getSize();
    }
    pub fn putSize(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionViewBox = @ptrCast(self);
        return try this.putSize(value);
    }
    pub fn getStretch(self: *@This()) core.HResult!CompositionStretch {
        const this: *ICompositionViewBox = @ptrCast(self);
        return try this.getStretch();
    }
    pub fn putStretch(self: *@This(), value: CompositionStretch) core.HResult!void {
        const this: *ICompositionViewBox = @ptrCast(self);
        return try this.putStretch(value);
    }
    pub fn getVerticalAlignmentRatio(self: *@This()) core.HResult!f32 {
        const this: *ICompositionViewBox = @ptrCast(self);
        return try this.getVerticalAlignmentRatio();
    }
    pub fn putVerticalAlignmentRatio(self: *@This(), value: f32) core.HResult!void {
        const this: *ICompositionViewBox = @ptrCast(self);
        return try this.putVerticalAlignmentRatio(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionViewBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionViewBox.GUID;
    pub const IID: Guid = ICompositionViewBox.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionViewBox.SIGNATURE);
};
pub const CompositionVirtualDrawingSurface = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Trim(self: *@This(), rects: [*]RectInt32) core.HResult!void {
        const this: *ICompositionVirtualDrawingSurface = @ptrCast(self);
        return try this.Trim(rects);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionVirtualDrawingSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionVirtualDrawingSurface.GUID;
    pub const IID: Guid = ICompositionVirtualDrawingSurface.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionVirtualDrawingSurface.SIGNATURE);
    var _ICompositionVirtualDrawingSurfaceFactoryCache: FactoryCache(ICompositionVirtualDrawingSurfaceFactory, RUNTIME_NAME) = .{};
};
pub const CompositionVisualSurface = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSourceVisual(self: *@This()) core.HResult!*Visual {
        const this: *ICompositionVisualSurface = @ptrCast(self);
        return try this.getSourceVisual();
    }
    pub fn putSourceVisual(self: *@This(), value: *Visual) core.HResult!void {
        const this: *ICompositionVisualSurface = @ptrCast(self);
        return try this.putSourceVisual(value);
    }
    pub fn getSourceOffset(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionVisualSurface = @ptrCast(self);
        return try this.getSourceOffset();
    }
    pub fn putSourceOffset(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionVisualSurface = @ptrCast(self);
        return try this.putSourceOffset(value);
    }
    pub fn getSourceSize(self: *@This()) core.HResult!Vector2 {
        const this: *ICompositionVisualSurface = @ptrCast(self);
        return try this.getSourceSize();
    }
    pub fn putSourceSize(self: *@This(), value: Vector2) core.HResult!void {
        const this: *ICompositionVisualSurface = @ptrCast(self);
        return try this.putSourceSize(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CompositionVisualSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionVisualSurface.GUID;
    pub const IID: Guid = ICompositionVisualSurface.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionVisualSurface.SIGNATURE);
};
pub const Compositor = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateColorKeyFrameAnimation(self: *@This()) core.HResult!*ColorKeyFrameAnimation {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateColorKeyFrameAnimation();
    }
    pub fn CreateColorBrush(self: *@This()) core.HResult!*CompositionColorBrush {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateColorBrush();
    }
    pub fn CreateColorBrushWithColor(self: *@This(), color: Color) core.HResult!*CompositionColorBrush {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateColorBrushWithColor(color);
    }
    pub fn CreateContainerVisual(self: *@This()) core.HResult!*ContainerVisual {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateContainerVisual();
    }
    pub fn CreateCubicBezierEasingFunction(self: *@This(), controlPoint1: Vector2, controlPoint2: Vector2) core.HResult!*CubicBezierEasingFunction {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateCubicBezierEasingFunction(controlPoint1, controlPoint2);
    }
    pub fn CreateEffectFactory(self: *@This(), graphicsEffect: *IGraphicsEffect) core.HResult!*CompositionEffectFactory {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateEffectFactory(graphicsEffect);
    }
    pub fn CreateEffectFactoryWithAnimatableProperties(self: *@This(), graphicsEffect: *IGraphicsEffect, animatableProperties: *IIterable(HSTRING)) core.HResult!*CompositionEffectFactory {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateEffectFactoryWithAnimatableProperties(graphicsEffect, animatableProperties);
    }
    pub fn CreateExpressionAnimation(self: *@This()) core.HResult!*ExpressionAnimation {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateExpressionAnimation();
    }
    pub fn CreateExpressionAnimationWithExpression(self: *@This(), expression: HSTRING) core.HResult!*ExpressionAnimation {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateExpressionAnimationWithExpression(expression);
    }
    pub fn CreateInsetClip(self: *@This()) core.HResult!*InsetClip {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateInsetClip();
    }
    pub fn CreateInsetClipWithLeftInsetAndTopInsetAndRightInsetAndBottomInset(self: *@This(), leftInset: f32, topInset: f32, rightInset: f32, bottomInset: f32) core.HResult!*InsetClip {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateInsetClipWithLeftInsetAndTopInsetAndRightInsetAndBottomInset(leftInset, topInset, rightInset, bottomInset);
    }
    pub fn CreateLinearEasingFunction(self: *@This()) core.HResult!*LinearEasingFunction {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateLinearEasingFunction();
    }
    pub fn CreatePropertySet(self: *@This()) core.HResult!*CompositionPropertySet {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreatePropertySet();
    }
    pub fn CreateQuaternionKeyFrameAnimation(self: *@This()) core.HResult!*QuaternionKeyFrameAnimation {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateQuaternionKeyFrameAnimation();
    }
    pub fn CreateScalarKeyFrameAnimation(self: *@This()) core.HResult!*ScalarKeyFrameAnimation {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateScalarKeyFrameAnimation();
    }
    pub fn CreateScopedBatch(self: *@This(), batchType: CompositionBatchTypes) core.HResult!*CompositionScopedBatch {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateScopedBatch(batchType);
    }
    pub fn CreateSpriteVisual(self: *@This()) core.HResult!*SpriteVisual {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateSpriteVisual();
    }
    pub fn CreateSurfaceBrush(self: *@This()) core.HResult!*CompositionSurfaceBrush {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateSurfaceBrush();
    }
    pub fn CreateSurfaceBrushWithSurface(self: *@This(), surface: *ICompositionSurface) core.HResult!*CompositionSurfaceBrush {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateSurfaceBrushWithSurface(surface);
    }
    pub fn CreateTargetForCurrentView(self: *@This()) core.HResult!*CompositionTarget {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateTargetForCurrentView();
    }
    pub fn CreateVector2KeyFrameAnimation(self: *@This()) core.HResult!*Vector2KeyFrameAnimation {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateVector2KeyFrameAnimation();
    }
    pub fn CreateVector3KeyFrameAnimation(self: *@This()) core.HResult!*Vector3KeyFrameAnimation {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateVector3KeyFrameAnimation();
    }
    pub fn CreateVector4KeyFrameAnimation(self: *@This()) core.HResult!*Vector4KeyFrameAnimation {
        const this: *ICompositor = @ptrCast(self);
        return try this.CreateVector4KeyFrameAnimation();
    }
    pub fn GetCommitBatch(self: *@This(), batchType: CompositionBatchTypes) core.HResult!*CompositionCommitBatch {
        const this: *ICompositor = @ptrCast(self);
        return try this.GetCommitBatch(batchType);
    }
    pub fn CreateAmbientLight(self: *@This()) core.HResult!*AmbientLight {
        var this: ?*ICompositor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateAmbientLight();
    }
    pub fn CreateAnimationGroup(self: *@This()) core.HResult!*CompositionAnimationGroup {
        var this: ?*ICompositor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateAnimationGroup();
    }
    pub fn CreateBackdropBrush(self: *@This()) core.HResult!*CompositionBackdropBrush {
        var this: ?*ICompositor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateBackdropBrush();
    }
    pub fn CreateDistantLight(self: *@This()) core.HResult!*DistantLight {
        var this: ?*ICompositor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateDistantLight();
    }
    pub fn CreateDropShadow(self: *@This()) core.HResult!*DropShadow {
        var this: ?*ICompositor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateDropShadow();
    }
    pub fn CreateImplicitAnimationCollection(self: *@This()) core.HResult!*ImplicitAnimationCollection {
        var this: ?*ICompositor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateImplicitAnimationCollection();
    }
    pub fn CreateLayerVisual(self: *@This()) core.HResult!*LayerVisual {
        var this: ?*ICompositor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateLayerVisual();
    }
    pub fn CreateMaskBrush(self: *@This()) core.HResult!*CompositionMaskBrush {
        var this: ?*ICompositor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateMaskBrush();
    }
    pub fn CreateNineGridBrush(self: *@This()) core.HResult!*CompositionNineGridBrush {
        var this: ?*ICompositor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateNineGridBrush();
    }
    pub fn CreatePointLight(self: *@This()) core.HResult!*PointLight {
        var this: ?*ICompositor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreatePointLight();
    }
    pub fn CreateSpotLight(self: *@This()) core.HResult!*SpotLight {
        var this: ?*ICompositor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateSpotLight();
    }
    pub fn CreateStepEasingFunction(self: *@This()) core.HResult!*StepEasingFunction {
        var this: ?*ICompositor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateStepEasingFunction();
    }
    pub fn CreateStepEasingFunctionWithStepCount(self: *@This(), stepCount: i32) core.HResult!*StepEasingFunction {
        var this: ?*ICompositor2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateStepEasingFunctionWithStepCount(stepCount);
    }
    pub fn CreateHostBackdropBrush(self: *@This()) core.HResult!*CompositionBackdropBrush {
        var this: ?*ICompositor3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateHostBackdropBrush();
    }
    pub fn CreateColorGradientStop(self: *@This()) core.HResult!*CompositionColorGradientStop {
        var this: ?*ICompositor4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateColorGradientStop();
    }
    pub fn CreateColorGradientStopWithOffsetAndColor(self: *@This(), offset: f32, color: Color) core.HResult!*CompositionColorGradientStop {
        var this: ?*ICompositor4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateColorGradientStopWithOffsetAndColor(offset, color);
    }
    pub fn CreateLinearGradientBrush(self: *@This()) core.HResult!*CompositionLinearGradientBrush {
        var this: ?*ICompositor4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateLinearGradientBrush();
    }
    pub fn CreateSpringScalarAnimation(self: *@This()) core.HResult!*SpringScalarNaturalMotionAnimation {
        var this: ?*ICompositor4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateSpringScalarAnimation();
    }
    pub fn CreateSpringVector2Animation(self: *@This()) core.HResult!*SpringVector2NaturalMotionAnimation {
        var this: ?*ICompositor4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateSpringVector2Animation();
    }
    pub fn CreateSpringVector3Animation(self: *@This()) core.HResult!*SpringVector3NaturalMotionAnimation {
        var this: ?*ICompositor4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateSpringVector3Animation();
    }
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getComment();
    }
    pub fn putComment(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putComment(value);
    }
    pub fn getGlobalPlaybackRate(self: *@This()) core.HResult!f32 {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getGlobalPlaybackRate();
    }
    pub fn putGlobalPlaybackRate(self: *@This(), value: f32) core.HResult!void {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putGlobalPlaybackRate(value);
    }
    pub fn CreateBounceScalarAnimation(self: *@This()) core.HResult!*BounceScalarNaturalMotionAnimation {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateBounceScalarAnimation();
    }
    pub fn CreateBounceVector2Animation(self: *@This()) core.HResult!*BounceVector2NaturalMotionAnimation {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateBounceVector2Animation();
    }
    pub fn CreateBounceVector3Animation(self: *@This()) core.HResult!*BounceVector3NaturalMotionAnimation {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateBounceVector3Animation();
    }
    pub fn CreateContainerShape(self: *@This()) core.HResult!*CompositionContainerShape {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateContainerShape();
    }
    pub fn CreateEllipseGeometry(self: *@This()) core.HResult!*CompositionEllipseGeometry {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateEllipseGeometry();
    }
    pub fn CreateLineGeometry(self: *@This()) core.HResult!*CompositionLineGeometry {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateLineGeometry();
    }
    pub fn CreatePathGeometry(self: *@This()) core.HResult!*CompositionPathGeometry {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreatePathGeometry();
    }
    pub fn CreatePathGeometryWithPath(self: *@This(), path: *CompositionPath) core.HResult!*CompositionPathGeometry {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreatePathGeometryWithPath(path);
    }
    pub fn CreatePathKeyFrameAnimation(self: *@This()) core.HResult!*PathKeyFrameAnimation {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreatePathKeyFrameAnimation();
    }
    pub fn CreateRectangleGeometry(self: *@This()) core.HResult!*CompositionRectangleGeometry {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateRectangleGeometry();
    }
    pub fn CreateRoundedRectangleGeometry(self: *@This()) core.HResult!*CompositionRoundedRectangleGeometry {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateRoundedRectangleGeometry();
    }
    pub fn CreateShapeVisual(self: *@This()) core.HResult!*ShapeVisual {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateShapeVisual();
    }
    pub fn CreateSpriteShape(self: *@This()) core.HResult!*CompositionSpriteShape {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateSpriteShape();
    }
    pub fn CreateSpriteShapeWithGeometry(self: *@This(), geometry: *CompositionGeometry) core.HResult!*CompositionSpriteShape {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateSpriteShapeWithGeometry(geometry);
    }
    pub fn CreateViewBox(self: *@This()) core.HResult!*CompositionViewBox {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateViewBox();
    }
    pub fn RequestCommitAsync(self: *@This()) core.HResult!*IAsyncAction {
        var this: ?*ICompositor5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RequestCommitAsync();
    }
    pub fn CreateGeometricClip(self: *@This()) core.HResult!*CompositionGeometricClip {
        var this: ?*ICompositor6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateGeometricClip();
    }
    pub fn CreateGeometricClipWithGeometry(self: *@This(), geometry: *CompositionGeometry) core.HResult!*CompositionGeometricClip {
        var this: ?*ICompositor6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateGeometricClipWithGeometry(geometry);
    }
    pub fn CreateRedirectVisual(self: *@This()) core.HResult!*RedirectVisual {
        var this: ?*ICompositor6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateRedirectVisual();
    }
    pub fn CreateRedirectVisualWithSource(self: *@This(), source: *Visual) core.HResult!*RedirectVisual {
        var this: ?*ICompositor6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateRedirectVisualWithSource(source);
    }
    pub fn CreateBooleanKeyFrameAnimation(self: *@This()) core.HResult!*BooleanKeyFrameAnimation {
        var this: ?*ICompositor6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateBooleanKeyFrameAnimation();
    }
    pub fn CreateProjectedShadowCaster(self: *@This()) core.HResult!*CompositionProjectedShadowCaster {
        var this: ?*ICompositorWithProjectedShadow = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositorWithProjectedShadow.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateProjectedShadowCaster();
    }
    pub fn CreateProjectedShadow(self: *@This()) core.HResult!*CompositionProjectedShadow {
        var this: ?*ICompositorWithProjectedShadow = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositorWithProjectedShadow.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateProjectedShadow();
    }
    pub fn CreateProjectedShadowReceiver(self: *@This()) core.HResult!*CompositionProjectedShadowReceiver {
        var this: ?*ICompositorWithProjectedShadow = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositorWithProjectedShadow.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateProjectedShadowReceiver();
    }
    pub fn CreateRadialGradientBrush(self: *@This()) core.HResult!*CompositionRadialGradientBrush {
        var this: ?*ICompositorWithRadialGradient = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositorWithRadialGradient.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateRadialGradientBrush();
    }
    pub fn CreateVisualSurface(self: *@This()) core.HResult!*CompositionVisualSurface {
        var this: ?*ICompositorWithVisualSurface = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositorWithVisualSurface.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateVisualSurface();
    }
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var this: ?*ICompositor7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDispatcherQueue();
    }
    pub fn CreateAnimationPropertyInfo(self: *@This()) core.HResult!*AnimationPropertyInfo {
        var this: ?*ICompositor7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateAnimationPropertyInfo();
    }
    pub fn CreateRectangleClip(self: *@This()) core.HResult!*RectangleClip {
        var this: ?*ICompositor7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateRectangleClip();
    }
    pub fn CreateRectangleClipWithLeftAndTopAndRightAndBottom(self: *@This(), left: f32, top: f32, right: f32, bottom: f32) core.HResult!*RectangleClip {
        var this: ?*ICompositor7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateRectangleClipWithLeftAndTopAndRightAndBottom(left, top, right, bottom);
    }
    pub fn CreateRectangleClipWithLeftAndTopAndRightAndBottomAndTopLeftRadiusAndTopRightRadiusAndBottomRightRadiusAndBottomLeftRadius(self: *@This(), left: f32, top: f32, right: f32, bottom: f32, topLeftRadius: Vector2, topRightRadius: Vector2, bottomRightRadius: Vector2, bottomLeftRadius: Vector2) core.HResult!*RectangleClip {
        var this: ?*ICompositor7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateRectangleClipWithLeftAndTopAndRightAndBottomAndTopLeftRadiusAndTopRightRadiusAndBottomRightRadiusAndBottomLeftRadius(left, top, right, bottom, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius);
    }
    pub fn TryCreateBlurredWallpaperBackdropBrush(self: *@This()) core.HResult!*CompositionBackdropBrush {
        var this: ?*ICompositorWithBlurredWallpaperBackdropBrush = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositorWithBlurredWallpaperBackdropBrush.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryCreateBlurredWallpaperBackdropBrush();
    }
    pub fn CreateAnimationController(self: *@This()) core.HResult!*AnimationController {
        var this: ?*ICompositor8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICompositor8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateAnimationController();
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
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICompositor.IID)));
    }
    pub fn getMaxGlobalPlaybackRate() core.HResult!f32 {
        const _f = @This().ICompositorStaticsCache.get();
        return try _f.getMaxGlobalPlaybackRate();
    }
    pub fn getMinGlobalPlaybackRate() core.HResult!f32 {
        const _f = @This().ICompositorStaticsCache.get();
        return try _f.getMinGlobalPlaybackRate();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Compositor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositor.GUID;
    pub const IID: Guid = ICompositor.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositor.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ICompositorStaticsCache: FactoryCache(ICompositorStatics, RUNTIME_NAME) = .{};
};
pub const Visual = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAnchorPoint(self: *@This()) core.HResult!Vector2 {
        const this: *IVisual = @ptrCast(self);
        return try this.getAnchorPoint();
    }
    pub fn putAnchorPoint(self: *@This(), value: Vector2) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putAnchorPoint(value);
    }
    pub fn getBackfaceVisibility(self: *@This()) core.HResult!CompositionBackfaceVisibility {
        const this: *IVisual = @ptrCast(self);
        return try this.getBackfaceVisibility();
    }
    pub fn putBackfaceVisibility(self: *@This(), value: CompositionBackfaceVisibility) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putBackfaceVisibility(value);
    }
    pub fn getBorderMode(self: *@This()) core.HResult!CompositionBorderMode {
        const this: *IVisual = @ptrCast(self);
        return try this.getBorderMode();
    }
    pub fn putBorderMode(self: *@This(), value: CompositionBorderMode) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putBorderMode(value);
    }
    pub fn getCenterPoint(self: *@This()) core.HResult!Vector3 {
        const this: *IVisual = @ptrCast(self);
        return try this.getCenterPoint();
    }
    pub fn putCenterPoint(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putCenterPoint(value);
    }
    pub fn getClip(self: *@This()) core.HResult!*CompositionClip {
        const this: *IVisual = @ptrCast(self);
        return try this.getClip();
    }
    pub fn putClip(self: *@This(), value: *CompositionClip) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putClip(value);
    }
    pub fn getCompositeMode(self: *@This()) core.HResult!CompositionCompositeMode {
        const this: *IVisual = @ptrCast(self);
        return try this.getCompositeMode();
    }
    pub fn putCompositeMode(self: *@This(), value: CompositionCompositeMode) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putCompositeMode(value);
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        const this: *IVisual = @ptrCast(self);
        return try this.getIsVisible();
    }
    pub fn putIsVisible(self: *@This(), value: bool) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putIsVisible(value);
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector3 {
        const this: *IVisual = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn putOffset(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putOffset(value);
    }
    pub fn getOpacity(self: *@This()) core.HResult!f32 {
        const this: *IVisual = @ptrCast(self);
        return try this.getOpacity();
    }
    pub fn putOpacity(self: *@This(), value: f32) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putOpacity(value);
    }
    pub fn getOrientation(self: *@This()) core.HResult!Quaternion {
        const this: *IVisual = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn putOrientation(self: *@This(), value: Quaternion) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putOrientation(value);
    }
    pub fn getParent(self: *@This()) core.HResult!*ContainerVisual {
        const this: *IVisual = @ptrCast(self);
        return try this.getParent();
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f32 {
        const this: *IVisual = @ptrCast(self);
        return try this.getRotationAngle();
    }
    pub fn putRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putRotationAngle(value);
    }
    pub fn getRotationAngleInDegrees(self: *@This()) core.HResult!f32 {
        const this: *IVisual = @ptrCast(self);
        return try this.getRotationAngleInDegrees();
    }
    pub fn putRotationAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putRotationAngleInDegrees(value);
    }
    pub fn getRotationAxis(self: *@This()) core.HResult!Vector3 {
        const this: *IVisual = @ptrCast(self);
        return try this.getRotationAxis();
    }
    pub fn putRotationAxis(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putRotationAxis(value);
    }
    pub fn getScale(self: *@This()) core.HResult!Vector3 {
        const this: *IVisual = @ptrCast(self);
        return try this.getScale();
    }
    pub fn putScale(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putScale(value);
    }
    pub fn getSize(self: *@This()) core.HResult!Vector2 {
        const this: *IVisual = @ptrCast(self);
        return try this.getSize();
    }
    pub fn putSize(self: *@This(), value: Vector2) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putSize(value);
    }
    pub fn getTransformMatrix(self: *@This()) core.HResult!Matrix4x4 {
        const this: *IVisual = @ptrCast(self);
        return try this.getTransformMatrix();
    }
    pub fn putTransformMatrix(self: *@This(), value: Matrix4x4) core.HResult!void {
        const this: *IVisual = @ptrCast(self);
        return try this.putTransformMatrix(value);
    }
    pub fn getParentForTransform(self: *@This()) core.HResult!*Visual {
        var this: ?*IVisual2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisual2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getParentForTransform();
    }
    pub fn putParentForTransform(self: *@This(), value: *Visual) core.HResult!void {
        var this: ?*IVisual2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisual2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putParentForTransform(value);
    }
    pub fn getRelativeOffsetAdjustment(self: *@This()) core.HResult!Vector3 {
        var this: ?*IVisual2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisual2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRelativeOffsetAdjustment();
    }
    pub fn putRelativeOffsetAdjustment(self: *@This(), value: Vector3) core.HResult!void {
        var this: ?*IVisual2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisual2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRelativeOffsetAdjustment(value);
    }
    pub fn getRelativeSizeAdjustment(self: *@This()) core.HResult!Vector2 {
        var this: ?*IVisual2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisual2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRelativeSizeAdjustment();
    }
    pub fn putRelativeSizeAdjustment(self: *@This(), value: Vector2) core.HResult!void {
        var this: ?*IVisual2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisual2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRelativeSizeAdjustment(value);
    }
    pub fn getIsHitTestVisible(self: *@This()) core.HResult!bool {
        var this: ?*IVisual3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisual3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsHitTestVisible();
    }
    pub fn putIsHitTestVisible(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVisual3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisual3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsHitTestVisible(value);
    }
    pub fn getIsPixelSnappingEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IVisual4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisual4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsPixelSnappingEnabled();
    }
    pub fn putIsPixelSnappingEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IVisual4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVisual4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsPixelSnappingEnabled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Visual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisual.GUID;
    pub const IID: Guid = IVisual.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisual.SIGNATURE);
    var _IVisualFactoryCache: FactoryCache(IVisualFactory, RUNTIME_NAME) = .{};
};
pub const ContainerVisual = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChildren(self: *@This()) core.HResult!*VisualCollection {
        const this: *IContainerVisual = @ptrCast(self);
        return try this.getChildren();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ContainerVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContainerVisual.GUID;
    pub const IID: Guid = IContainerVisual.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContainerVisual.SIGNATURE);
    var _IContainerVisualFactoryCache: FactoryCache(IContainerVisualFactory, RUNTIME_NAME) = .{};
};
pub const CubicBezierEasingFunction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getControlPoint1(self: *@This()) core.HResult!Vector2 {
        const this: *ICubicBezierEasingFunction = @ptrCast(self);
        return try this.getControlPoint1();
    }
    pub fn getControlPoint2(self: *@This()) core.HResult!Vector2 {
        const this: *ICubicBezierEasingFunction = @ptrCast(self);
        return try this.getControlPoint2();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.CubicBezierEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICubicBezierEasingFunction.GUID;
    pub const IID: Guid = ICubicBezierEasingFunction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICubicBezierEasingFunction.SIGNATURE);
};
pub const DelegatedInkTrailVisual = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn AddTrailPoints(self: *@This(), inkPoints: [*]InkTrailPoint) core.HResult!u32 {
        const this: *IDelegatedInkTrailVisual = @ptrCast(self);
        return try this.AddTrailPoints(inkPoints);
    }
    pub fn AddTrailPointsWithPrediction(self: *@This(), inkPoints: [*]InkTrailPoint, predictedInkPoints: [*]InkTrailPoint) core.HResult!u32 {
        const this: *IDelegatedInkTrailVisual = @ptrCast(self);
        return try this.AddTrailPointsWithPrediction(inkPoints, predictedInkPoints);
    }
    pub fn RemoveTrailPoints(self: *@This(), generationId: u32) core.HResult!void {
        const this: *IDelegatedInkTrailVisual = @ptrCast(self);
        return try this.RemoveTrailPoints(generationId);
    }
    pub fn StartNewTrail(self: *@This(), color: Color) core.HResult!void {
        const this: *IDelegatedInkTrailVisual = @ptrCast(self);
        return try this.StartNewTrail(color);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn Create(compositor: *Compositor) core.HResult!*DelegatedInkTrailVisual {
        const _f = @This().IDelegatedInkTrailVisualStaticsCache.get();
        return try _f.Create(compositor);
    }
    pub fn CreateForSwapChain(compositor: *Compositor, swapChain: *ICompositionSurface) core.HResult!*DelegatedInkTrailVisual {
        const _f = @This().IDelegatedInkTrailVisualStaticsCache.get();
        return try _f.CreateForSwapChain(compositor, swapChain);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.DelegatedInkTrailVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDelegatedInkTrailVisual.GUID;
    pub const IID: Guid = IDelegatedInkTrailVisual.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDelegatedInkTrailVisual.SIGNATURE);
    var _IDelegatedInkTrailVisualStaticsCache: FactoryCache(IDelegatedInkTrailVisualStatics, RUNTIME_NAME) = .{};
};
pub const DistantLight = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *IDistantLight = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IDistantLight = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn getCoordinateSpace(self: *@This()) core.HResult!*Visual {
        const this: *IDistantLight = @ptrCast(self);
        return try this.getCoordinateSpace();
    }
    pub fn putCoordinateSpace(self: *@This(), value: *Visual) core.HResult!void {
        const this: *IDistantLight = @ptrCast(self);
        return try this.putCoordinateSpace(value);
    }
    pub fn getDirection(self: *@This()) core.HResult!Vector3 {
        const this: *IDistantLight = @ptrCast(self);
        return try this.getDirection();
    }
    pub fn putDirection(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IDistantLight = @ptrCast(self);
        return try this.putDirection(value);
    }
    pub fn getIntensity(self: *@This()) core.HResult!f32 {
        var this: ?*IDistantLight2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDistantLight2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIntensity();
    }
    pub fn putIntensity(self: *@This(), value: f32) core.HResult!void {
        var this: ?*IDistantLight2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDistantLight2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIntensity(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.DistantLight";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDistantLight.GUID;
    pub const IID: Guid = IDistantLight.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDistantLight.SIGNATURE);
};
pub const DropShadow = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBlurRadius(self: *@This()) core.HResult!f32 {
        const this: *IDropShadow = @ptrCast(self);
        return try this.getBlurRadius();
    }
    pub fn putBlurRadius(self: *@This(), value: f32) core.HResult!void {
        const this: *IDropShadow = @ptrCast(self);
        return try this.putBlurRadius(value);
    }
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *IDropShadow = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IDropShadow = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn getMask(self: *@This()) core.HResult!*CompositionBrush {
        const this: *IDropShadow = @ptrCast(self);
        return try this.getMask();
    }
    pub fn putMask(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const this: *IDropShadow = @ptrCast(self);
        return try this.putMask(value);
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector3 {
        const this: *IDropShadow = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn putOffset(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IDropShadow = @ptrCast(self);
        return try this.putOffset(value);
    }
    pub fn getOpacity(self: *@This()) core.HResult!f32 {
        const this: *IDropShadow = @ptrCast(self);
        return try this.getOpacity();
    }
    pub fn putOpacity(self: *@This(), value: f32) core.HResult!void {
        const this: *IDropShadow = @ptrCast(self);
        return try this.putOpacity(value);
    }
    pub fn getSourcePolicy(self: *@This()) core.HResult!CompositionDropShadowSourcePolicy {
        var this: ?*IDropShadow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDropShadow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSourcePolicy();
    }
    pub fn putSourcePolicy(self: *@This(), value: CompositionDropShadowSourcePolicy) core.HResult!void {
        var this: ?*IDropShadow2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDropShadow2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSourcePolicy(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.DropShadow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDropShadow.GUID;
    pub const IID: Guid = IDropShadow.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDropShadow.SIGNATURE);
};
pub const ElasticEasingFunction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        const this: *IElasticEasingFunction = @ptrCast(self);
        return try this.getMode();
    }
    pub fn getOscillations(self: *@This()) core.HResult!i32 {
        const this: *IElasticEasingFunction = @ptrCast(self);
        return try this.getOscillations();
    }
    pub fn getSpringiness(self: *@This()) core.HResult!f32 {
        const this: *IElasticEasingFunction = @ptrCast(self);
        return try this.getSpringiness();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ElasticEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IElasticEasingFunction.GUID;
    pub const IID: Guid = IElasticEasingFunction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IElasticEasingFunction.SIGNATURE);
};
pub const ExponentialEasingFunction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        const this: *IExponentialEasingFunction = @ptrCast(self);
        return try this.getMode();
    }
    pub fn getExponent(self: *@This()) core.HResult!f32 {
        const this: *IExponentialEasingFunction = @ptrCast(self);
        return try this.getExponent();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ExponentialEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IExponentialEasingFunction.GUID;
    pub const IID: Guid = IExponentialEasingFunction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IExponentialEasingFunction.SIGNATURE);
};
pub const ExpressionAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExpression(self: *@This()) core.HResult!HSTRING {
        const this: *IExpressionAnimation = @ptrCast(self);
        return try this.getExpression();
    }
    pub fn putExpression(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IExpressionAnimation = @ptrCast(self);
        return try this.putExpression(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ExpressionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IExpressionAnimation.GUID;
    pub const IID: Guid = IExpressionAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IExpressionAnimation.SIGNATURE);
};
pub const IAmbientLight = extern struct {
    vtable: *const VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Color(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Color(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IAmbientLight";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a48130a1-b7c4-46f7-b9bf-daf43a44e6ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
    };
};
pub const IAmbientLight2 = extern struct {
    vtable: *const VTable,
    pub fn getIntensity(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Intensity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIntensity(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Intensity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IAmbientLight2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b64a6bf-5f97-4c94-86e5-042dd386b27d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Intensity: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Intensity: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IAnimationController = extern struct {
    vtable: *const VTable,
    pub fn getPlaybackRate(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_PlaybackRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPlaybackRate(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_PlaybackRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProgress(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Progress(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProgress(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Progress(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProgressBehavior(self: *@This()) core.HResult!AnimationControllerProgressBehavior {
        var _r: AnimationControllerProgressBehavior = undefined;
        const _c = self.vtable.get_ProgressBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProgressBehavior(self: *@This(), value: AnimationControllerProgressBehavior) core.HResult!void {
        const _c = self.vtable.put_ProgressBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const _c = self.vtable.Pause(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const _c = self.vtable.Resume(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IAnimationController";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c934efd2-0722-4f5f-a4e2-9510f3d43bf7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PlaybackRate: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_PlaybackRate: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Progress: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Progress: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_ProgressBehavior: *const fn(self: *anyopaque, _r: *AnimationControllerProgressBehavior) callconv(.winapi) HRESULT,
        put_ProgressBehavior: *const fn(self: *anyopaque, value: AnimationControllerProgressBehavior) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Resume: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAnimationControllerStatics = extern struct {
    vtable: *const VTable,
    pub fn getMaxPlaybackRate(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MaxPlaybackRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinPlaybackRate(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MinPlaybackRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IAnimationControllerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e71164df-651b-4800-b9e5-6a3bcfed3365";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxPlaybackRate: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_MinPlaybackRate: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IAnimationObject = extern struct {
    vtable: *const VTable,
    pub fn PopulatePropertyInfo(self: *@This(), propertyName: HSTRING, propertyInfo: *AnimationPropertyInfo) core.HResult!void {
        const _c = self.vtable.PopulatePropertyInfo(@ptrCast(self), propertyName, propertyInfo);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IAnimationObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7141e0a-04b8-4fc5-a4dc-195392e57807";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PopulatePropertyInfo: *const fn(self: *anyopaque, propertyName: HSTRING, propertyInfo: *AnimationPropertyInfo) callconv(.winapi) HRESULT,
    };
};
pub const IAnimationPropertyInfo = extern struct {
    vtable: *const VTable,
    pub fn getAccessMode(self: *@This()) core.HResult!AnimationPropertyAccessMode {
        var _r: AnimationPropertyAccessMode = undefined;
        const _c = self.vtable.get_AccessMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAccessMode(self: *@This(), value: AnimationPropertyAccessMode) core.HResult!void {
        const _c = self.vtable.put_AccessMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IAnimationPropertyInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f4716f05-ed77-4e3c-b328-5c3985b3738f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AccessMode: *const fn(self: *anyopaque, _r: *AnimationPropertyAccessMode) callconv(.winapi) HRESULT,
        put_AccessMode: *const fn(self: *anyopaque, value: AnimationPropertyAccessMode) callconv(.winapi) HRESULT,
    };
};
pub const IAnimationPropertyInfo2 = extern struct {
    vtable: *const VTable,
    pub fn GetResolvedCompositionObject(self: *@This()) core.HResult!*CompositionObject {
        var _r: *CompositionObject = undefined;
        const _c = self.vtable.GetResolvedCompositionObject(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetResolvedCompositionObjectProperty(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetResolvedCompositionObjectProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IAnimationPropertyInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "591720b4-7472-5218-8b39-dffe615ae6da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetResolvedCompositionObject: *const fn(self: *anyopaque, _r: **CompositionObject) callconv(.winapi) HRESULT,
        GetResolvedCompositionObjectProperty: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IBackEasingFunction = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        var _r: CompositionEasingFunctionMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAmplitude(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Amplitude(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IBackEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8560da4-5e3c-545d-b263-7987a2bd27cb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *CompositionEasingFunctionMode) callconv(.winapi) HRESULT,
        get_Amplitude: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IBooleanKeyFrameAnimation = extern struct {
    vtable: *const VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: bool) core.HResult!void {
        const _c = self.vtable.InsertKeyFrame(@ptrCast(self), normalizedProgressKey, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IBooleanKeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95e23a08-d1f4-4972-9770-3efe68d82e14";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InsertKeyFrame: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IBounceEasingFunction = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        var _r: CompositionEasingFunctionMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBounces(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Bounces(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBounciness(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Bounciness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IBounceEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7fdb44b-aad5-5174-9421-eef8b75a6a43";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *CompositionEasingFunctionMode) callconv(.winapi) HRESULT,
        get_Bounces: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Bounciness: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IBounceScalarNaturalMotionAnimation = extern struct {
    vtable: *const VTable,
    pub fn getAcceleration(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Acceleration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAcceleration(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Acceleration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRestitution(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Restitution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRestitution(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Restitution(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IBounceScalarNaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "baa30dcc-a633-4618-9b06-7f7c72c87cff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Acceleration: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Acceleration: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Restitution: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Restitution: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IBounceVector2NaturalMotionAnimation = extern struct {
    vtable: *const VTable,
    pub fn getAcceleration(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Acceleration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAcceleration(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Acceleration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRestitution(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Restitution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRestitution(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Restitution(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IBounceVector2NaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da344196-2154-4b3c-88aa-47361204eccd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Acceleration: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Acceleration: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Restitution: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Restitution: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IBounceVector3NaturalMotionAnimation = extern struct {
    vtable: *const VTable,
    pub fn getAcceleration(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Acceleration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAcceleration(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Acceleration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRestitution(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Restitution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRestitution(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Restitution(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IBounceVector3NaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "47dabc31-10d3-4518-86f1-09caf742d113";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Acceleration: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Acceleration: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Restitution: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Restitution: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const ICircleEasingFunction = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        var _r: CompositionEasingFunctionMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICircleEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e07222a-6f82-5a28-8748-2e92fc46ee2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *CompositionEasingFunctionMode) callconv(.winapi) HRESULT,
    };
};
pub const IColorKeyFrameAnimation = extern struct {
    vtable: *const VTable,
    pub fn getInterpolationColorSpace(self: *@This()) core.HResult!CompositionColorSpace {
        var _r: CompositionColorSpace = undefined;
        const _c = self.vtable.get_InterpolationColorSpace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInterpolationColorSpace(self: *@This(), value: CompositionColorSpace) core.HResult!void {
        const _c = self.vtable.put_InterpolationColorSpace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: Color) core.HResult!void {
        const _c = self.vtable.InsertKeyFrame(@ptrCast(self), normalizedProgressKey, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: Color, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const _c = self.vtable.InsertKeyFrameWithEasingFunction(@ptrCast(self), normalizedProgressKey, value, easingFunction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IColorKeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93adb5e9-8e05-4593-84a3-dca152781e56";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InterpolationColorSpace: *const fn(self: *anyopaque, _r: *CompositionColorSpace) callconv(.winapi) HRESULT,
        put_InterpolationColorSpace: *const fn(self: *anyopaque, value: CompositionColorSpace) callconv(.winapi) HRESULT,
        InsertKeyFrame: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: Color) callconv(.winapi) HRESULT,
        InsertKeyFrameWithEasingFunction: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: Color, easingFunction: *CompositionEasingFunction) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionAnimation = extern struct {
    vtable: *const VTable,
    pub fn ClearAllParameters(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearAllParameters(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearParameter(self: *@This(), key: HSTRING) core.HResult!void {
        const _c = self.vtable.ClearParameter(@ptrCast(self), key);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetColorParameter(self: *@This(), key: HSTRING, value: Color) core.HResult!void {
        const _c = self.vtable.SetColorParameter(@ptrCast(self), key, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetMatrix3x2Parameter(self: *@This(), key: HSTRING, value: Matrix3x2) core.HResult!void {
        const _c = self.vtable.SetMatrix3x2Parameter(@ptrCast(self), key, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetMatrix4x4Parameter(self: *@This(), key: HSTRING, value: Matrix4x4) core.HResult!void {
        const _c = self.vtable.SetMatrix4x4Parameter(@ptrCast(self), key, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetQuaternionParameter(self: *@This(), key: HSTRING, value: Quaternion) core.HResult!void {
        const _c = self.vtable.SetQuaternionParameter(@ptrCast(self), key, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetReferenceParameter(self: *@This(), key: HSTRING, compositionObject: *CompositionObject) core.HResult!void {
        const _c = self.vtable.SetReferenceParameter(@ptrCast(self), key, compositionObject);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetScalarParameter(self: *@This(), key: HSTRING, value: f32) core.HResult!void {
        const _c = self.vtable.SetScalarParameter(@ptrCast(self), key, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetVector2Parameter(self: *@This(), key: HSTRING, value: Vector2) core.HResult!void {
        const _c = self.vtable.SetVector2Parameter(@ptrCast(self), key, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetVector3Parameter(self: *@This(), key: HSTRING, value: Vector3) core.HResult!void {
        const _c = self.vtable.SetVector3Parameter(@ptrCast(self), key, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetVector4Parameter(self: *@This(), key: HSTRING, value: Vector4) core.HResult!void {
        const _c = self.vtable.SetVector4Parameter(@ptrCast(self), key, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "464c4c2c-1caa-4061-9b40-e13fde1503ca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ClearAllParameters: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ClearParameter: *const fn(self: *anyopaque, key: HSTRING) callconv(.winapi) HRESULT,
        SetColorParameter: *const fn(self: *anyopaque, key: HSTRING, value: Color) callconv(.winapi) HRESULT,
        SetMatrix3x2Parameter: *const fn(self: *anyopaque, key: HSTRING, value: Matrix3x2) callconv(.winapi) HRESULT,
        SetMatrix4x4Parameter: *const fn(self: *anyopaque, key: HSTRING, value: Matrix4x4) callconv(.winapi) HRESULT,
        SetQuaternionParameter: *const fn(self: *anyopaque, key: HSTRING, value: Quaternion) callconv(.winapi) HRESULT,
        SetReferenceParameter: *const fn(self: *anyopaque, key: HSTRING, compositionObject: *CompositionObject) callconv(.winapi) HRESULT,
        SetScalarParameter: *const fn(self: *anyopaque, key: HSTRING, value: f32) callconv(.winapi) HRESULT,
        SetVector2Parameter: *const fn(self: *anyopaque, key: HSTRING, value: Vector2) callconv(.winapi) HRESULT,
        SetVector3Parameter: *const fn(self: *anyopaque, key: HSTRING, value: Vector3) callconv(.winapi) HRESULT,
        SetVector4Parameter: *const fn(self: *anyopaque, key: HSTRING, value: Vector4) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionAnimation2 = extern struct {
    vtable: *const VTable,
    pub fn SetBooleanParameter(self: *@This(), key: HSTRING, value: bool) core.HResult!void {
        const _c = self.vtable.SetBooleanParameter(@ptrCast(self), key, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTarget(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Target(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTarget(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Target(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionAnimation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "369b603e-a80f-4948-93e3-ed23fb38c6cb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetBooleanParameter: *const fn(self: *anyopaque, key: HSTRING, value: bool) callconv(.winapi) HRESULT,
        get_Target: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Target: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionAnimation3 = extern struct {
    vtable: *const VTable,
    pub fn getInitialValueExpressions(self: *@This()) core.HResult!*InitialValueExpressionCollection {
        var _r: *InitialValueExpressionCollection = undefined;
        const _c = self.vtable.get_InitialValueExpressions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionAnimation3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d51e030d-7da4-4bd7-bc2d-f4517529f43a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InitialValueExpressions: *const fn(self: *anyopaque, _r: **InitialValueExpressionCollection) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionAnimation4 = extern struct {
    vtable: *const VTable,
    pub fn SetExpressionReferenceParameter(self: *@This(), parameterName: HSTRING, source: *IAnimationObject) core.HResult!void {
        const _c = self.vtable.SetExpressionReferenceParameter(@ptrCast(self), parameterName, source);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionAnimation4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "770137be-76bc-4e23-bfed-fe9cc20f6ec9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetExpressionReferenceParameter: *const fn(self: *anyopaque, parameterName: HSTRING, source: *IAnimationObject) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionAnimationBase = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionAnimationBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c2c2999-e818-48d3-a6dd-d78c82f8ace9";
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
pub const ICompositionAnimationFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionAnimationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10f6c4fb-6e51-4c25-bbd3-586a9bec3ef4";
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
pub const ICompositionAnimationGroup = extern struct {
    vtable: *const VTable,
    pub fn getCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Count(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Add(self: *@This(), value: *CompositionAnimation) core.HResult!void {
        const _c = self.vtable.Add(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Remove(self: *@This(), value: *CompositionAnimation) core.HResult!void {
        const _c = self.vtable.Remove(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveAll(self: *@This()) core.HResult!void {
        const _c = self.vtable.RemoveAll(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionAnimationGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5e7cc90c-cd14-4e07-8a55-c72527aabdac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Count: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        Add: *const fn(self: *anyopaque, value: *CompositionAnimation) callconv(.winapi) HRESULT,
        Remove: *const fn(self: *anyopaque, value: *CompositionAnimation) callconv(.winapi) HRESULT,
        RemoveAll: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionBackdropBrush = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionBackdropBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c5acae58-3898-499e-8d7f-224e91286a5d";
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
pub const ICompositionBatchCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionBatchCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d00dad0-9464-450a-a562-2e2698b0a812";
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
pub const ICompositionBrush = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab0d7608-30c0-40e9-b568-b60a6bd1fb46";
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
pub const ICompositionBrushFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionBrushFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da53fb4c-4650-47c4-ad76-765379607ed6";
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
pub const ICompositionCapabilities = extern struct {
    vtable: *const VTable,
    pub fn AreEffectsSupported(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.AreEffectsSupported(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AreEffectsFast(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.AreEffectsFast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(CompositionCapabilities,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Changed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Changed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionCapabilities";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8253353e-b517-48bc-b1e8-4b3561a2e181";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AreEffectsSupported: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        AreEffectsFast: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_Changed: *const fn(self: *anyopaque, handler: *TypedEventHandler(CompositionCapabilities,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Changed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionCapabilitiesStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*CompositionCapabilities {
        var _r: *CompositionCapabilities = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionCapabilitiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7b7a86e-6416-49e5-8ddf-afe949e20562";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **CompositionCapabilities) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionClip = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionClip";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ccd2a52-cfc7-4ace-9983-146bb8eb6a3c";
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
pub const ICompositionClip2 = extern struct {
    vtable: *const VTable,
    pub fn getAnchorPoint(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_AnchorPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAnchorPoint(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_AnchorPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterPoint(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_CenterPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterPoint(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_CenterPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RotationAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RotationAngle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAngleInDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RotationAngleInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RotationAngleInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScale(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Scale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScale(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Scale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransformMatrix(self: *@This()) core.HResult!Matrix3x2 {
        var _r: Matrix3x2 = undefined;
        const _c = self.vtable.get_TransformMatrix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransformMatrix(self: *@This(), value: Matrix3x2) core.HResult!void {
        const _c = self.vtable.put_TransformMatrix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionClip2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5893e069-3516-40e1-89e0-5ba924927235";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AnchorPoint: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_AnchorPoint: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_CenterPoint: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_CenterPoint: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_RotationAngle: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RotationAngle: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RotationAngleInDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RotationAngleInDegrees: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Scale: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Scale: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_TransformMatrix: *const fn(self: *anyopaque, _r: *Matrix3x2) callconv(.winapi) HRESULT,
        put_TransformMatrix: *const fn(self: *anyopaque, value: Matrix3x2) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionClipFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionClipFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9484caf-20c7-4aed-ac4a-9c78ba1302cf";
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
pub const ICompositionColorBrush = extern struct {
    vtable: *const VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Color(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Color(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionColorBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b264c5e-bf35-4831-8642-cf70c20fff2f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionColorGradientStop = extern struct {
    vtable: *const VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Color(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Color(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffset(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionColorGradientStop";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f00ca92-c801-4e41-9a8f-a53e20f57778";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionColorGradientStopCollection = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionColorGradientStopCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f1d20ec-7b04-4b1d-90bc-9fa32c0cfd26";
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
pub const ICompositionCommitBatch = extern struct {
    vtable: *const VTable,
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addCompleted(self: *@This(), handler: *TypedEventHandler(IInspectable,CompositionBatchCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Completed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Completed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionCommitBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d00dad0-ca07-4400-8c8e-cb5db08559cc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsEnded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_Completed: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,CompositionBatchCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Completed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionContainerShape = extern struct {
    vtable: *const VTable,
    pub fn getShapes(self: *@This()) core.HResult!*CompositionShapeCollection {
        var _r: *CompositionShapeCollection = undefined;
        const _c = self.vtable.get_Shapes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionContainerShape";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f5e859b-2e5b-44a8-982c-aa0f69c16059";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Shapes: *const fn(self: *anyopaque, _r: **CompositionShapeCollection) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionDrawingSurface = extern struct {
    vtable: *const VTable,
    pub fn getAlphaMode(self: *@This()) core.HResult!DirectXAlphaMode {
        var _r: DirectXAlphaMode = undefined;
        const _c = self.vtable.get_AlphaMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionDrawingSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a166c300-fad0-4d11-9e67-e433162ff49e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlphaMode: *const fn(self: *anyopaque, _r: *DirectXAlphaMode) callconv(.winapi) HRESULT,
        get_PixelFormat: *const fn(self: *anyopaque, _r: *DirectXPixelFormat) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionDrawingSurface2 = extern struct {
    vtable: *const VTable,
    pub fn getSizeInt32(self: *@This()) core.HResult!SizeInt32 {
        var _r: SizeInt32 = undefined;
        const _c = self.vtable.get_SizeInt32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Resize(self: *@This(), sizePixels: SizeInt32) core.HResult!void {
        const _c = self.vtable.Resize(@ptrCast(self), sizePixels);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Scroll(self: *@This(), offset: PointInt32) core.HResult!void {
        const _c = self.vtable.Scroll(@ptrCast(self), offset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ScrollWithScrollRect(self: *@This(), offset: PointInt32, scrollRect: RectInt32) core.HResult!void {
        const _c = self.vtable.ScrollWithScrollRect(@ptrCast(self), offset, scrollRect);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ScrollWithClip(self: *@This(), offset: PointInt32, clipRect: RectInt32) core.HResult!void {
        const _c = self.vtable.ScrollWithClip(@ptrCast(self), offset, clipRect);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ScrollWithClipWithScrollRect(self: *@This(), offset: PointInt32, clipRect: RectInt32, scrollRect: RectInt32) core.HResult!void {
        const _c = self.vtable.ScrollWithClipWithScrollRect(@ptrCast(self), offset, clipRect, scrollRect);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionDrawingSurface2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fad0e88b-e354-44e8-8e3d-c4880d5a213f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SizeInt32: *const fn(self: *anyopaque, _r: *SizeInt32) callconv(.winapi) HRESULT,
        Resize: *const fn(self: *anyopaque, sizePixels: SizeInt32) callconv(.winapi) HRESULT,
        Scroll: *const fn(self: *anyopaque, offset: PointInt32) callconv(.winapi) HRESULT,
        ScrollWithScrollRect: *const fn(self: *anyopaque, offset: PointInt32, scrollRect: RectInt32) callconv(.winapi) HRESULT,
        ScrollWithClip: *const fn(self: *anyopaque, offset: PointInt32, clipRect: RectInt32) callconv(.winapi) HRESULT,
        ScrollWithClipWithScrollRect: *const fn(self: *anyopaque, offset: PointInt32, clipRect: RectInt32, scrollRect: RectInt32) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionDrawingSurfaceFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionDrawingSurfaceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9497b00a-312d-46b9-9db3-412fd79464c8";
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
pub const ICompositionEasingFunction = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5145e356-bf79-4ea8-8cc2-6b5b472e6c9a";
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
pub const ICompositionEasingFunctionFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionEasingFunctionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "60840774-3da0-4949-8200-7206c00190a0";
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
pub const ICompositionEasingFunctionStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateCubicBezierEasingFunction(self: *@This(), owner: *Compositor, controlPoint1: Vector2, controlPoint2: Vector2) core.HResult!*CubicBezierEasingFunction {
        var _r: *CubicBezierEasingFunction = undefined;
        const _c = self.vtable.CreateCubicBezierEasingFunction(@ptrCast(self), owner, controlPoint1, controlPoint2, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateLinearEasingFunction(self: *@This(), owner: *Compositor) core.HResult!*LinearEasingFunction {
        var _r: *LinearEasingFunction = undefined;
        const _c = self.vtable.CreateLinearEasingFunction(@ptrCast(self), owner, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStepEasingFunction(self: *@This(), owner: *Compositor) core.HResult!*StepEasingFunction {
        var _r: *StepEasingFunction = undefined;
        const _c = self.vtable.CreateStepEasingFunction(@ptrCast(self), owner, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStepEasingFunctionWithStepCount(self: *@This(), owner: *Compositor, stepCount: i32) core.HResult!*StepEasingFunction {
        var _r: *StepEasingFunction = undefined;
        const _c = self.vtable.CreateStepEasingFunctionWithStepCount(@ptrCast(self), owner, stepCount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBackEasingFunction(self: *@This(), owner: *Compositor, mode: CompositionEasingFunctionMode, amplitude: f32) core.HResult!*BackEasingFunction {
        var _r: *BackEasingFunction = undefined;
        const _c = self.vtable.CreateBackEasingFunction(@ptrCast(self), owner, mode, amplitude, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBounceEasingFunction(self: *@This(), owner: *Compositor, mode: CompositionEasingFunctionMode, bounces: i32, bounciness: f32) core.HResult!*BounceEasingFunction {
        var _r: *BounceEasingFunction = undefined;
        const _c = self.vtable.CreateBounceEasingFunction(@ptrCast(self), owner, mode, bounces, bounciness, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCircleEasingFunction(self: *@This(), owner: *Compositor, mode: CompositionEasingFunctionMode) core.HResult!*CircleEasingFunction {
        var _r: *CircleEasingFunction = undefined;
        const _c = self.vtable.CreateCircleEasingFunction(@ptrCast(self), owner, mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateElasticEasingFunction(self: *@This(), owner: *Compositor, mode: CompositionEasingFunctionMode, oscillations: i32, springiness: f32) core.HResult!*ElasticEasingFunction {
        var _r: *ElasticEasingFunction = undefined;
        const _c = self.vtable.CreateElasticEasingFunction(@ptrCast(self), owner, mode, oscillations, springiness, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateExponentialEasingFunction(self: *@This(), owner: *Compositor, mode: CompositionEasingFunctionMode, exponent: f32) core.HResult!*ExponentialEasingFunction {
        var _r: *ExponentialEasingFunction = undefined;
        const _c = self.vtable.CreateExponentialEasingFunction(@ptrCast(self), owner, mode, exponent, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePowerEasingFunction(self: *@This(), owner: *Compositor, mode: CompositionEasingFunctionMode, power: f32) core.HResult!*PowerEasingFunction {
        var _r: *PowerEasingFunction = undefined;
        const _c = self.vtable.CreatePowerEasingFunction(@ptrCast(self), owner, mode, power, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSineEasingFunction(self: *@This(), owner: *Compositor, mode: CompositionEasingFunctionMode) core.HResult!*SineEasingFunction {
        var _r: *SineEasingFunction = undefined;
        const _c = self.vtable.CreateSineEasingFunction(@ptrCast(self), owner, mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionEasingFunctionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "17a766b6-2936-53ea-b5af-c642f4a61083";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateCubicBezierEasingFunction: *const fn(self: *anyopaque, owner: *Compositor, controlPoint1: Vector2, controlPoint2: Vector2, _r: **CubicBezierEasingFunction) callconv(.winapi) HRESULT,
        CreateLinearEasingFunction: *const fn(self: *anyopaque, owner: *Compositor, _r: **LinearEasingFunction) callconv(.winapi) HRESULT,
        CreateStepEasingFunction: *const fn(self: *anyopaque, owner: *Compositor, _r: **StepEasingFunction) callconv(.winapi) HRESULT,
        CreateStepEasingFunctionWithStepCount: *const fn(self: *anyopaque, owner: *Compositor, stepCount: i32, _r: **StepEasingFunction) callconv(.winapi) HRESULT,
        CreateBackEasingFunction: *const fn(self: *anyopaque, owner: *Compositor, mode: CompositionEasingFunctionMode, amplitude: f32, _r: **BackEasingFunction) callconv(.winapi) HRESULT,
        CreateBounceEasingFunction: *const fn(self: *anyopaque, owner: *Compositor, mode: CompositionEasingFunctionMode, bounces: i32, bounciness: f32, _r: **BounceEasingFunction) callconv(.winapi) HRESULT,
        CreateCircleEasingFunction: *const fn(self: *anyopaque, owner: *Compositor, mode: CompositionEasingFunctionMode, _r: **CircleEasingFunction) callconv(.winapi) HRESULT,
        CreateElasticEasingFunction: *const fn(self: *anyopaque, owner: *Compositor, mode: CompositionEasingFunctionMode, oscillations: i32, springiness: f32, _r: **ElasticEasingFunction) callconv(.winapi) HRESULT,
        CreateExponentialEasingFunction: *const fn(self: *anyopaque, owner: *Compositor, mode: CompositionEasingFunctionMode, exponent: f32, _r: **ExponentialEasingFunction) callconv(.winapi) HRESULT,
        CreatePowerEasingFunction: *const fn(self: *anyopaque, owner: *Compositor, mode: CompositionEasingFunctionMode, power: f32, _r: **PowerEasingFunction) callconv(.winapi) HRESULT,
        CreateSineEasingFunction: *const fn(self: *anyopaque, owner: *Compositor, mode: CompositionEasingFunctionMode, _r: **SineEasingFunction) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionEffectBrush = extern struct {
    vtable: *const VTable,
    pub fn GetSourceParameter(self: *@This(), name: HSTRING) core.HResult!*CompositionBrush {
        var _r: *CompositionBrush = undefined;
        const _c = self.vtable.GetSourceParameter(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSourceParameter(self: *@This(), name: HSTRING, source: *CompositionBrush) core.HResult!void {
        const _c = self.vtable.SetSourceParameter(@ptrCast(self), name, source);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionEffectBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bf7f795e-83cc-44bf-a447-3e3c071789ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetSourceParameter: *const fn(self: *anyopaque, name: HSTRING, _r: **CompositionBrush) callconv(.winapi) HRESULT,
        SetSourceParameter: *const fn(self: *anyopaque, name: HSTRING, source: *CompositionBrush) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionEffectFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateBrush(self: *@This()) core.HResult!*CompositionEffectBrush {
        var _r: *CompositionEffectBrush = undefined;
        const _c = self.vtable.CreateBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLoadStatus(self: *@This()) core.HResult!CompositionEffectFactoryLoadStatus {
        var _r: CompositionEffectFactoryLoadStatus = undefined;
        const _c = self.vtable.get_LoadStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionEffectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be5624af-ba7e-4510-9850-41c0b4ff74df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateBrush: *const fn(self: *anyopaque, _r: **CompositionEffectBrush) callconv(.winapi) HRESULT,
        get_ExtendedError: *const fn(self: *anyopaque, _r: *HResult) callconv(.winapi) HRESULT,
        get_LoadStatus: *const fn(self: *anyopaque, _r: *CompositionEffectFactoryLoadStatus) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionEffectSourceParameter = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionEffectSourceParameter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "858ab13a-3292-4e4e-b3bb-2b6c6544a6ee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Name: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionEffectSourceParameterFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), name: HSTRING) core.HResult!*CompositionEffectSourceParameter {
        var _r: *CompositionEffectSourceParameter = undefined;
        const _c = self.vtable.Create(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionEffectSourceParameterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3d9f276-aba3-4724-acf3-d0397464db1c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, name: HSTRING, _r: **CompositionEffectSourceParameter) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionEllipseGeometry = extern struct {
    vtable: *const VTable,
    pub fn getCenter(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Center(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenter(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Center(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRadius(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Radius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRadius(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Radius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionEllipseGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4801f884-f6ad-4b93-afa9-897b64e57b1f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Center: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Center: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_Radius: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Radius: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionGeometricClip = extern struct {
    vtable: *const VTable,
    pub fn getGeometry(self: *@This()) core.HResult!*CompositionGeometry {
        var _r: *CompositionGeometry = undefined;
        const _c = self.vtable.get_Geometry(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGeometry(self: *@This(), value: *CompositionGeometry) core.HResult!void {
        const _c = self.vtable.put_Geometry(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getViewBox(self: *@This()) core.HResult!*CompositionViewBox {
        var _r: *CompositionViewBox = undefined;
        const _c = self.vtable.get_ViewBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putViewBox(self: *@This(), value: *CompositionViewBox) core.HResult!void {
        const _c = self.vtable.put_ViewBox(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionGeometricClip";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c840b581-81c9-4444-a2c1-ccaece3a50e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Geometry: *const fn(self: *anyopaque, _r: **CompositionGeometry) callconv(.winapi) HRESULT,
        put_Geometry: *const fn(self: *anyopaque, value: *CompositionGeometry) callconv(.winapi) HRESULT,
        get_ViewBox: *const fn(self: *anyopaque, _r: **CompositionViewBox) callconv(.winapi) HRESULT,
        put_ViewBox: *const fn(self: *anyopaque, value: *CompositionViewBox) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionGeometry = extern struct {
    vtable: *const VTable,
    pub fn getTrimEnd(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_TrimEnd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrimEnd(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_TrimEnd(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTrimOffset(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_TrimOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrimOffset(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_TrimOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTrimStart(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_TrimStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTrimStart(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_TrimStart(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e985217c-6a17-4207-abd8-5fd3dd612a9d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TrimEnd: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_TrimEnd: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_TrimOffset: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_TrimOffset: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_TrimStart: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_TrimStart: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionGeometryFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionGeometryFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bffebfe1-8c25-480b-9f56-fed6b288055d";
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
pub const ICompositionGradientBrush = extern struct {
    vtable: *const VTable,
    pub fn getAnchorPoint(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_AnchorPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAnchorPoint(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_AnchorPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterPoint(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_CenterPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterPoint(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_CenterPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getColorStops(self: *@This()) core.HResult!*CompositionColorGradientStopCollection {
        var _r: *CompositionColorGradientStopCollection = undefined;
        const _c = self.vtable.get_ColorStops(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtendMode(self: *@This()) core.HResult!CompositionGradientExtendMode {
        var _r: CompositionGradientExtendMode = undefined;
        const _c = self.vtable.get_ExtendMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExtendMode(self: *@This(), value: CompositionGradientExtendMode) core.HResult!void {
        const _c = self.vtable.put_ExtendMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInterpolationSpace(self: *@This()) core.HResult!CompositionColorSpace {
        var _r: CompositionColorSpace = undefined;
        const _c = self.vtable.get_InterpolationSpace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInterpolationSpace(self: *@This(), value: CompositionColorSpace) core.HResult!void {
        const _c = self.vtable.put_InterpolationSpace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RotationAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RotationAngle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAngleInDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RotationAngleInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RotationAngleInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScale(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Scale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScale(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Scale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransformMatrix(self: *@This()) core.HResult!Matrix3x2 {
        var _r: Matrix3x2 = undefined;
        const _c = self.vtable.get_TransformMatrix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransformMatrix(self: *@This(), value: Matrix3x2) core.HResult!void {
        const _c = self.vtable.put_TransformMatrix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionGradientBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d9709e0-ffc6-4c0e-a9ab-34144d4c9098";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AnchorPoint: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_AnchorPoint: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_CenterPoint: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_CenterPoint: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_ColorStops: *const fn(self: *anyopaque, _r: **CompositionColorGradientStopCollection) callconv(.winapi) HRESULT,
        get_ExtendMode: *const fn(self: *anyopaque, _r: *CompositionGradientExtendMode) callconv(.winapi) HRESULT,
        put_ExtendMode: *const fn(self: *anyopaque, value: CompositionGradientExtendMode) callconv(.winapi) HRESULT,
        get_InterpolationSpace: *const fn(self: *anyopaque, _r: *CompositionColorSpace) callconv(.winapi) HRESULT,
        put_InterpolationSpace: *const fn(self: *anyopaque, value: CompositionColorSpace) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_RotationAngle: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RotationAngle: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RotationAngleInDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RotationAngleInDegrees: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Scale: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Scale: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_TransformMatrix: *const fn(self: *anyopaque, _r: *Matrix3x2) callconv(.winapi) HRESULT,
        put_TransformMatrix: *const fn(self: *anyopaque, value: Matrix3x2) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionGradientBrush2 = extern struct {
    vtable: *const VTable,
    pub fn getMappingMode(self: *@This()) core.HResult!CompositionMappingMode {
        var _r: CompositionMappingMode = undefined;
        const _c = self.vtable.get_MappingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMappingMode(self: *@This(), value: CompositionMappingMode) core.HResult!void {
        const _c = self.vtable.put_MappingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionGradientBrush2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "899dd5a1-b4c7-4b33-a1b6-264addc26d10";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MappingMode: *const fn(self: *anyopaque, _r: *CompositionMappingMode) callconv(.winapi) HRESULT,
        put_MappingMode: *const fn(self: *anyopaque, value: CompositionMappingMode) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionGradientBrushFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionGradientBrushFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56d765d7-f189-48c9-9c8d-94daf1bec010";
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
pub const ICompositionGraphicsDevice = extern struct {
    vtable: *const VTable,
    pub fn CreateDrawingSurface(self: *@This(), sizePixels: Size, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode) core.HResult!*CompositionDrawingSurface {
        var _r: *CompositionDrawingSurface = undefined;
        const _c = self.vtable.CreateDrawingSurface(@ptrCast(self), sizePixels, pixelFormat, alphaMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addRenderingDeviceReplaced(self: *@This(), handler: *TypedEventHandler(CompositionGraphicsDevice,RenderingDeviceReplacedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_RenderingDeviceReplaced(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRenderingDeviceReplaced(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_RenderingDeviceReplaced(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionGraphicsDevice";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb22c6e1-80a2-4667-9936-dbeaf6eefe95";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateDrawingSurface: *const fn(self: *anyopaque, sizePixels: Size, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode, _r: **CompositionDrawingSurface) callconv(.winapi) HRESULT,
        add_RenderingDeviceReplaced: *const fn(self: *anyopaque, handler: *TypedEventHandler(CompositionGraphicsDevice,RenderingDeviceReplacedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_RenderingDeviceReplaced: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionGraphicsDevice2 = extern struct {
    vtable: *const VTable,
    pub fn CreateDrawingSurface2(self: *@This(), sizePixels: SizeInt32, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode) core.HResult!*CompositionDrawingSurface {
        var _r: *CompositionDrawingSurface = undefined;
        const _c = self.vtable.CreateDrawingSurface2(@ptrCast(self), sizePixels, pixelFormat, alphaMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateVirtualDrawingSurface(self: *@This(), sizePixels: SizeInt32, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode) core.HResult!*CompositionVirtualDrawingSurface {
        var _r: *CompositionVirtualDrawingSurface = undefined;
        const _c = self.vtable.CreateVirtualDrawingSurface(@ptrCast(self), sizePixels, pixelFormat, alphaMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionGraphicsDevice2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0fb8bdf6-c0f0-4bcc-9fb8-084982490d7d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateDrawingSurface2: *const fn(self: *anyopaque, sizePixels: SizeInt32, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode, _r: **CompositionDrawingSurface) callconv(.winapi) HRESULT,
        CreateVirtualDrawingSurface: *const fn(self: *anyopaque, sizePixels: SizeInt32, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode, _r: **CompositionVirtualDrawingSurface) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionGraphicsDevice3 = extern struct {
    vtable: *const VTable,
    pub fn CreateMipmapSurface(self: *@This(), sizePixels: SizeInt32, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode) core.HResult!*CompositionMipmapSurface {
        var _r: *CompositionMipmapSurface = undefined;
        const _c = self.vtable.CreateMipmapSurface(@ptrCast(self), sizePixels, pixelFormat, alphaMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Trim(self: *@This()) core.HResult!void {
        const _c = self.vtable.Trim(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionGraphicsDevice3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "37f67514-d3ef-49d1-b69d-0d8eabeb3626";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateMipmapSurface: *const fn(self: *anyopaque, sizePixels: SizeInt32, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode, _r: **CompositionMipmapSurface) callconv(.winapi) HRESULT,
        Trim: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionGraphicsDevice4 = extern struct {
    vtable: *const VTable,
    pub fn CaptureAsync(self: *@This(), captureVisual: *Visual, size: SizeInt32, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode, sdrBoost: f32) core.HResult!*IAsyncOperation(ICompositionSurface) {
        var _r: *IAsyncOperation(ICompositionSurface) = undefined;
        const _c = self.vtable.CaptureAsync(@ptrCast(self), captureVisual, size, pixelFormat, alphaMode, sdrBoost, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionGraphicsDevice4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a73bff9-a97f-4cf5-ba46-98ef358e71b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CaptureAsync: *const fn(self: *anyopaque, captureVisual: *Visual, size: SizeInt32, pixelFormat: DirectXPixelFormat, alphaMode: DirectXAlphaMode, sdrBoost: f32, _r: **IAsyncOperation(ICompositionSurface)) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionLight = extern struct {
    vtable: *const VTable,
    pub fn getTargets(self: *@This()) core.HResult!*VisualUnorderedCollection {
        var _r: *VisualUnorderedCollection = undefined;
        const _c = self.vtable.get_Targets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionLight";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "41a6d7c2-2e5d-4bc1-b09e-8f0a03e3d8d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Targets: *const fn(self: *anyopaque, _r: **VisualUnorderedCollection) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionLight2 = extern struct {
    vtable: *const VTable,
    pub fn getExclusionsFromTargets(self: *@This()) core.HResult!*VisualUnorderedCollection {
        var _r: *VisualUnorderedCollection = undefined;
        const _c = self.vtable.get_ExclusionsFromTargets(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionLight2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7bcda72-f35d-425d-9b98-23f4205f6669";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExclusionsFromTargets: *const fn(self: *anyopaque, _r: **VisualUnorderedCollection) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionLight3 = extern struct {
    vtable: *const VTable,
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
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionLight3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b0b00e4-df07-4959-b7a4-4f7e4233f838";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionLightFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionLightFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "069cf306-da3c-4b44-838a-5e03d51ace55";
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
pub const ICompositionLineGeometry = extern struct {
    vtable: *const VTable,
    pub fn getStart(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Start(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStart(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Start(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEnd(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_End(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnd(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_End(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionLineGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd7615a4-0c9a-4b67-8dce-440a5bf9cdec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Start: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Start: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_End: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_End: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionLinearGradientBrush = extern struct {
    vtable: *const VTable,
    pub fn getEndPoint(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_EndPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEndPoint(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_EndPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartPoint(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_StartPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartPoint(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_StartPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionLinearGradientBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "983bc519-a9db-413c-a2d8-2a9056fc525e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EndPoint: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_EndPoint: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_StartPoint: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_StartPoint: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionMaskBrush = extern struct {
    vtable: *const VTable,
    pub fn getMask(self: *@This()) core.HResult!*CompositionBrush {
        var _r: *CompositionBrush = undefined;
        const _c = self.vtable.get_Mask(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMask(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const _c = self.vtable.put_Mask(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSource(self: *@This()) core.HResult!*CompositionBrush {
        var _r: *CompositionBrush = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSource(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const _c = self.vtable.put_Source(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionMaskBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "522cf09e-be6b-4f41-be49-f9226d471b4a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mask: *const fn(self: *anyopaque, _r: **CompositionBrush) callconv(.winapi) HRESULT,
        put_Mask: *const fn(self: *anyopaque, value: *CompositionBrush) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **CompositionBrush) callconv(.winapi) HRESULT,
        put_Source: *const fn(self: *anyopaque, value: *CompositionBrush) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionMipmapSurface = extern struct {
    vtable: *const VTable,
    pub fn getLevelCount(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_LevelCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlphaMode(self: *@This()) core.HResult!DirectXAlphaMode {
        var _r: DirectXAlphaMode = undefined;
        const _c = self.vtable.get_AlphaMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPixelFormat(self: *@This()) core.HResult!DirectXPixelFormat {
        var _r: DirectXPixelFormat = undefined;
        const _c = self.vtable.get_PixelFormat(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSizeInt32(self: *@This()) core.HResult!SizeInt32 {
        var _r: SizeInt32 = undefined;
        const _c = self.vtable.get_SizeInt32(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDrawingSurfaceForLevel(self: *@This(), level: u32) core.HResult!*CompositionDrawingSurface {
        var _r: *CompositionDrawingSurface = undefined;
        const _c = self.vtable.GetDrawingSurfaceForLevel(@ptrCast(self), level, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionMipmapSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4863675c-cf4a-4b1c-9ece-c5ec0c2b2fe6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LevelCount: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AlphaMode: *const fn(self: *anyopaque, _r: *DirectXAlphaMode) callconv(.winapi) HRESULT,
        get_PixelFormat: *const fn(self: *anyopaque, _r: *DirectXPixelFormat) callconv(.winapi) HRESULT,
        get_SizeInt32: *const fn(self: *anyopaque, _r: *SizeInt32) callconv(.winapi) HRESULT,
        GetDrawingSurfaceForLevel: *const fn(self: *anyopaque, level: u32, _r: **CompositionDrawingSurface) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionNineGridBrush = extern struct {
    vtable: *const VTable,
    pub fn getBottomInset(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_BottomInset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBottomInset(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_BottomInset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBottomInsetScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_BottomInsetScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBottomInsetScale(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_BottomInsetScale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsCenterHollow(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsCenterHollow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsCenterHollow(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsCenterHollow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLeftInset(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_LeftInset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLeftInset(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_LeftInset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLeftInsetScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_LeftInsetScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLeftInsetScale(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_LeftInsetScale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRightInset(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RightInset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRightInset(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RightInset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRightInsetScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RightInsetScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRightInsetScale(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RightInsetScale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSource(self: *@This()) core.HResult!*CompositionBrush {
        var _r: *CompositionBrush = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSource(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const _c = self.vtable.put_Source(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTopInset(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_TopInset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTopInset(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_TopInset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTopInsetScale(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_TopInsetScale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTopInsetScale(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_TopInsetScale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetInsets(self: *@This(), inset: f32) core.HResult!void {
        const _c = self.vtable.SetInsets(@ptrCast(self), inset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetInsetsWithTopAndRightAndBottom(self: *@This(), left: f32, top: f32, right: f32, bottom: f32) core.HResult!void {
        const _c = self.vtable.SetInsetsWithTopAndRightAndBottom(@ptrCast(self), left, top, right, bottom);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetInsetScales(self: *@This(), scale: f32) core.HResult!void {
        const _c = self.vtable.SetInsetScales(@ptrCast(self), scale);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetInsetScalesWithTopAndRightAndBottom(self: *@This(), left: f32, top: f32, right: f32, bottom: f32) core.HResult!void {
        const _c = self.vtable.SetInsetScalesWithTopAndRightAndBottom(@ptrCast(self), left, top, right, bottom);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionNineGridBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f25154e4-bc8c-4be7-b80f-8685b83c0186";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BottomInset: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_BottomInset: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_BottomInsetScale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_BottomInsetScale: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_IsCenterHollow: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsCenterHollow: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_LeftInset: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_LeftInset: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_LeftInsetScale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_LeftInsetScale: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RightInset: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RightInset: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RightInsetScale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RightInsetScale: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **CompositionBrush) callconv(.winapi) HRESULT,
        put_Source: *const fn(self: *anyopaque, value: *CompositionBrush) callconv(.winapi) HRESULT,
        get_TopInset: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_TopInset: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_TopInsetScale: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_TopInsetScale: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        SetInsets: *const fn(self: *anyopaque, inset: f32) callconv(.winapi) HRESULT,
        SetInsetsWithTopAndRightAndBottom: *const fn(self: *anyopaque, left: f32, top: f32, right: f32, bottom: f32) callconv(.winapi) HRESULT,
        SetInsetScales: *const fn(self: *anyopaque, scale: f32) callconv(.winapi) HRESULT,
        SetInsetScalesWithTopAndRightAndBottom: *const fn(self: *anyopaque, left: f32, top: f32, right: f32, bottom: f32) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionObject = extern struct {
    vtable: *const VTable,
    pub fn getCompositor(self: *@This()) core.HResult!*Compositor {
        var _r: *Compositor = undefined;
        const _c = self.vtable.get_Compositor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        var _r: *CoreDispatcher = undefined;
        const _c = self.vtable.get_Dispatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProperties(self: *@This()) core.HResult!*CompositionPropertySet {
        var _r: *CompositionPropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartAnimation(self: *@This(), propertyName: HSTRING, animation: *CompositionAnimation) core.HResult!void {
        const _c = self.vtable.StartAnimation(@ptrCast(self), propertyName, animation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopAnimation(self: *@This(), propertyName: HSTRING) core.HResult!void {
        const _c = self.vtable.StopAnimation(@ptrCast(self), propertyName);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionObject";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bcb4ad45-7609-4550-934f-16002a68fded";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Compositor: *const fn(self: *anyopaque, _r: **Compositor) callconv(.winapi) HRESULT,
        get_Dispatcher: *const fn(self: *anyopaque, _r: **CoreDispatcher) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **CompositionPropertySet) callconv(.winapi) HRESULT,
        StartAnimation: *const fn(self: *anyopaque, propertyName: HSTRING, animation: *CompositionAnimation) callconv(.winapi) HRESULT,
        StopAnimation: *const fn(self: *anyopaque, propertyName: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionObject2 = extern struct {
    vtable: *const VTable,
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Comment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putComment(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Comment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getImplicitAnimations(self: *@This()) core.HResult!*ImplicitAnimationCollection {
        var _r: *ImplicitAnimationCollection = undefined;
        const _c = self.vtable.get_ImplicitAnimations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putImplicitAnimations(self: *@This(), value: *ImplicitAnimationCollection) core.HResult!void {
        const _c = self.vtable.put_ImplicitAnimations(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartAnimationGroup(self: *@This(), value: *ICompositionAnimationBase) core.HResult!void {
        const _c = self.vtable.StartAnimationGroup(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StopAnimationGroup(self: *@This(), value: *ICompositionAnimationBase) core.HResult!void {
        const _c = self.vtable.StopAnimationGroup(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionObject2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef874ea1-5cff-4b68-9e30-a1519d08ba03";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Comment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Comment: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ImplicitAnimations: *const fn(self: *anyopaque, _r: **ImplicitAnimationCollection) callconv(.winapi) HRESULT,
        put_ImplicitAnimations: *const fn(self: *anyopaque, value: *ImplicitAnimationCollection) callconv(.winapi) HRESULT,
        StartAnimationGroup: *const fn(self: *anyopaque, value: *ICompositionAnimationBase) callconv(.winapi) HRESULT,
        StopAnimationGroup: *const fn(self: *anyopaque, value: *ICompositionAnimationBase) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionObject3 = extern struct {
    vtable: *const VTable,
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var _r: *DispatcherQueue = undefined;
        const _c = self.vtable.get_DispatcherQueue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionObject3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4bc27925-dacd-4cf2-98b1-986b76e7ebe6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DispatcherQueue: *const fn(self: *anyopaque, _r: **DispatcherQueue) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionObject4 = extern struct {
    vtable: *const VTable,
    pub fn TryGetAnimationController(self: *@This(), propertyName: HSTRING) core.HResult!*AnimationController {
        var _r: *AnimationController = undefined;
        const _c = self.vtable.TryGetAnimationController(@ptrCast(self), propertyName, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionObject4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0bb3784c-346b-4a7c-966b-7310966553d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryGetAnimationController: *const fn(self: *anyopaque, propertyName: HSTRING, _r: **AnimationController) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionObject5 = extern struct {
    vtable: *const VTable,
    pub fn StartAnimation(self: *@This(), propertyName: HSTRING, animation: *CompositionAnimation, animationController: *AnimationController) core.HResult!void {
        const _c = self.vtable.StartAnimation(@ptrCast(self), propertyName, animation, animationController);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionObject5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d7f391b-a130-5265-a62b-60b8e668965a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartAnimation: *const fn(self: *anyopaque, propertyName: HSTRING, animation: *CompositionAnimation, animationController: *AnimationController) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionObjectFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionObjectFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "51205c5e-558a-4f2a-8d39-37bfe1e20ddd";
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
pub const ICompositionObjectStatics = extern struct {
    vtable: *const VTable,
    pub fn StartAnimationWithIAnimationObject(self: *@This(), target: *IAnimationObject, propertyName: HSTRING, animation: *CompositionAnimation) core.HResult!void {
        const _c = self.vtable.StartAnimationWithIAnimationObject(@ptrCast(self), target, propertyName, animation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartAnimationGroupWithIAnimationObject(self: *@This(), target: *IAnimationObject, animation: *ICompositionAnimationBase) core.HResult!void {
        const _c = self.vtable.StartAnimationGroupWithIAnimationObject(@ptrCast(self), target, animation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionObjectStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1ed052f-1ba2-44ba-a904-6a882a0a5adb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartAnimationWithIAnimationObject: *const fn(self: *anyopaque, target: *IAnimationObject, propertyName: HSTRING, animation: *CompositionAnimation) callconv(.winapi) HRESULT,
        StartAnimationGroupWithIAnimationObject: *const fn(self: *anyopaque, target: *IAnimationObject, animation: *ICompositionAnimationBase) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionPath = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionPath";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66da1d5f-2e10-4f22-8a06-0a8151919e60";
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
pub const ICompositionPathFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), source: *IGeometrySource2D) core.HResult!*CompositionPath {
        var _r: *CompositionPath = undefined;
        const _c = self.vtable.Create(@ptrCast(self), source, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionPathFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c1e8c6a-0f33-4751-9437-eb3fb9d3ab07";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, source: *IGeometrySource2D, _r: **CompositionPath) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionPathGeometry = extern struct {
    vtable: *const VTable,
    pub fn getPath(self: *@This()) core.HResult!*CompositionPath {
        var _r: *CompositionPath = undefined;
        const _c = self.vtable.get_Path(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPath(self: *@This(), value: *CompositionPath) core.HResult!void {
        const _c = self.vtable.put_Path(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionPathGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0b6a417e-2c77-4c23-af5e-6304c147bb61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Path: *const fn(self: *anyopaque, _r: **CompositionPath) callconv(.winapi) HRESULT,
        put_Path: *const fn(self: *anyopaque, value: *CompositionPath) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionProjectedShadow = extern struct {
    vtable: *const VTable,
    pub fn getBlurRadiusMultiplier(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_BlurRadiusMultiplier(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBlurRadiusMultiplier(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_BlurRadiusMultiplier(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCasters(self: *@This()) core.HResult!*CompositionProjectedShadowCasterCollection {
        var _r: *CompositionProjectedShadowCasterCollection = undefined;
        const _c = self.vtable.get_Casters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightSource(self: *@This()) core.HResult!*CompositionLight {
        var _r: *CompositionLight = undefined;
        const _c = self.vtable.get_LightSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLightSource(self: *@This(), value: *CompositionLight) core.HResult!void {
        const _c = self.vtable.put_LightSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxBlurRadius(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MaxBlurRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxBlurRadius(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_MaxBlurRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinBlurRadius(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MinBlurRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinBlurRadius(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_MinBlurRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReceivers(self: *@This()) core.HResult!*CompositionProjectedShadowReceiverUnorderedCollection {
        var _r: *CompositionProjectedShadowReceiverUnorderedCollection = undefined;
        const _c = self.vtable.get_Receivers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionProjectedShadow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "285b8e72-4328-523f-bcf2-5557c52c3b25";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BlurRadiusMultiplier: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_BlurRadiusMultiplier: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Casters: *const fn(self: *anyopaque, _r: **CompositionProjectedShadowCasterCollection) callconv(.winapi) HRESULT,
        get_LightSource: *const fn(self: *anyopaque, _r: **CompositionLight) callconv(.winapi) HRESULT,
        put_LightSource: *const fn(self: *anyopaque, value: *CompositionLight) callconv(.winapi) HRESULT,
        get_MaxBlurRadius: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_MaxBlurRadius: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_MinBlurRadius: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_MinBlurRadius: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Receivers: *const fn(self: *anyopaque, _r: **CompositionProjectedShadowReceiverUnorderedCollection) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionProjectedShadowCaster = extern struct {
    vtable: *const VTable,
    pub fn getBrush(self: *@This()) core.HResult!*CompositionBrush {
        var _r: *CompositionBrush = undefined;
        const _c = self.vtable.get_Brush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBrush(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const _c = self.vtable.put_Brush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCastingVisual(self: *@This()) core.HResult!*Visual {
        var _r: *Visual = undefined;
        const _c = self.vtable.get_CastingVisual(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCastingVisual(self: *@This(), value: *Visual) core.HResult!void {
        const _c = self.vtable.put_CastingVisual(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionProjectedShadowCaster";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b1d7d426-1e36-5a62-be56-a16112fdd148";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Brush: *const fn(self: *anyopaque, _r: **CompositionBrush) callconv(.winapi) HRESULT,
        put_Brush: *const fn(self: *anyopaque, value: *CompositionBrush) callconv(.winapi) HRESULT,
        get_CastingVisual: *const fn(self: *anyopaque, _r: **Visual) callconv(.winapi) HRESULT,
        put_CastingVisual: *const fn(self: *anyopaque, value: *Visual) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionProjectedShadowCasterCollection = extern struct {
    vtable: *const VTable,
    pub fn getCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Count(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InsertAbove(self: *@This(), newCaster: *CompositionProjectedShadowCaster, reference: *CompositionProjectedShadowCaster) core.HResult!void {
        const _c = self.vtable.InsertAbove(@ptrCast(self), newCaster, reference);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertAtBottom(self: *@This(), newCaster: *CompositionProjectedShadowCaster) core.HResult!void {
        const _c = self.vtable.InsertAtBottom(@ptrCast(self), newCaster);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertAtTop(self: *@This(), newCaster: *CompositionProjectedShadowCaster) core.HResult!void {
        const _c = self.vtable.InsertAtTop(@ptrCast(self), newCaster);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertBelow(self: *@This(), newCaster: *CompositionProjectedShadowCaster, reference: *CompositionProjectedShadowCaster) core.HResult!void {
        const _c = self.vtable.InsertBelow(@ptrCast(self), newCaster, reference);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Remove(self: *@This(), caster: *CompositionProjectedShadowCaster) core.HResult!void {
        const _c = self.vtable.Remove(@ptrCast(self), caster);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveAll(self: *@This()) core.HResult!void {
        const _c = self.vtable.RemoveAll(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionProjectedShadowCasterCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2525c0c-e07f-58a3-ac91-37f73ee91740";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Count: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        InsertAbove: *const fn(self: *anyopaque, newCaster: *CompositionProjectedShadowCaster, reference: *CompositionProjectedShadowCaster) callconv(.winapi) HRESULT,
        InsertAtBottom: *const fn(self: *anyopaque, newCaster: *CompositionProjectedShadowCaster) callconv(.winapi) HRESULT,
        InsertAtTop: *const fn(self: *anyopaque, newCaster: *CompositionProjectedShadowCaster) callconv(.winapi) HRESULT,
        InsertBelow: *const fn(self: *anyopaque, newCaster: *CompositionProjectedShadowCaster, reference: *CompositionProjectedShadowCaster) callconv(.winapi) HRESULT,
        Remove: *const fn(self: *anyopaque, caster: *CompositionProjectedShadowCaster) callconv(.winapi) HRESULT,
        RemoveAll: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionProjectedShadowCasterCollectionStatics = extern struct {
    vtable: *const VTable,
    pub fn getMaxRespectedCasters(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxRespectedCasters(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionProjectedShadowCasterCollectionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56fbb136-e94f-5299-ab5b-6e15e38bd899";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxRespectedCasters: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionProjectedShadowReceiver = extern struct {
    vtable: *const VTable,
    pub fn getReceivingVisual(self: *@This()) core.HResult!*Visual {
        var _r: *Visual = undefined;
        const _c = self.vtable.get_ReceivingVisual(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReceivingVisual(self: *@This(), value: *Visual) core.HResult!void {
        const _c = self.vtable.put_ReceivingVisual(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionProjectedShadowReceiver";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1377985a-6a49-536a-9be4-a96a8e5298a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ReceivingVisual: *const fn(self: *anyopaque, _r: **Visual) callconv(.winapi) HRESULT,
        put_ReceivingVisual: *const fn(self: *anyopaque, value: *Visual) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionProjectedShadowReceiverUnorderedCollection = extern struct {
    vtable: *const VTable,
    pub fn Add(self: *@This(), value: *CompositionProjectedShadowReceiver) core.HResult!void {
        const _c = self.vtable.Add(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Count(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Remove(self: *@This(), value: *CompositionProjectedShadowReceiver) core.HResult!void {
        const _c = self.vtable.Remove(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveAll(self: *@This()) core.HResult!void {
        const _c = self.vtable.RemoveAll(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionProjectedShadowReceiverUnorderedCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "02b3e3b7-27d2-599f-ac4b-ab787cdde6fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Add: *const fn(self: *anyopaque, value: *CompositionProjectedShadowReceiver) callconv(.winapi) HRESULT,
        get_Count: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        Remove: *const fn(self: *anyopaque, value: *CompositionProjectedShadowReceiver) callconv(.winapi) HRESULT,
        RemoveAll: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionPropertySet = extern struct {
    vtable: *const VTable,
    pub fn InsertColor(self: *@This(), propertyName: HSTRING, value: Color) core.HResult!void {
        const _c = self.vtable.InsertColor(@ptrCast(self), propertyName, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertMatrix3x2(self: *@This(), propertyName: HSTRING, value: Matrix3x2) core.HResult!void {
        const _c = self.vtable.InsertMatrix3x2(@ptrCast(self), propertyName, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertMatrix4x4(self: *@This(), propertyName: HSTRING, value: Matrix4x4) core.HResult!void {
        const _c = self.vtable.InsertMatrix4x4(@ptrCast(self), propertyName, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertQuaternion(self: *@This(), propertyName: HSTRING, value: Quaternion) core.HResult!void {
        const _c = self.vtable.InsertQuaternion(@ptrCast(self), propertyName, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertScalar(self: *@This(), propertyName: HSTRING, value: f32) core.HResult!void {
        const _c = self.vtable.InsertScalar(@ptrCast(self), propertyName, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertVector2(self: *@This(), propertyName: HSTRING, value: Vector2) core.HResult!void {
        const _c = self.vtable.InsertVector2(@ptrCast(self), propertyName, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertVector3(self: *@This(), propertyName: HSTRING, value: Vector3) core.HResult!void {
        const _c = self.vtable.InsertVector3(@ptrCast(self), propertyName, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertVector4(self: *@This(), propertyName: HSTRING, value: Vector4) core.HResult!void {
        const _c = self.vtable.InsertVector4(@ptrCast(self), propertyName, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryGetColor(self: *@This(), propertyName: HSTRING, value: Color) core.HResult!CompositionGetValueStatus {
        var _r: CompositionGetValueStatus = undefined;
        const _c = self.vtable.TryGetColor(@ptrCast(self), propertyName, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetMatrix3x2(self: *@This(), propertyName: HSTRING, value: Matrix3x2) core.HResult!CompositionGetValueStatus {
        var _r: CompositionGetValueStatus = undefined;
        const _c = self.vtable.TryGetMatrix3x2(@ptrCast(self), propertyName, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetMatrix4x4(self: *@This(), propertyName: HSTRING, value: Matrix4x4) core.HResult!CompositionGetValueStatus {
        var _r: CompositionGetValueStatus = undefined;
        const _c = self.vtable.TryGetMatrix4x4(@ptrCast(self), propertyName, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetQuaternion(self: *@This(), propertyName: HSTRING, value: Quaternion) core.HResult!CompositionGetValueStatus {
        var _r: CompositionGetValueStatus = undefined;
        const _c = self.vtable.TryGetQuaternion(@ptrCast(self), propertyName, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetScalar(self: *@This(), propertyName: HSTRING, value: f32) core.HResult!CompositionGetValueStatus {
        var _r: CompositionGetValueStatus = undefined;
        const _c = self.vtable.TryGetScalar(@ptrCast(self), propertyName, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetVector2(self: *@This(), propertyName: HSTRING, value: Vector2) core.HResult!CompositionGetValueStatus {
        var _r: CompositionGetValueStatus = undefined;
        const _c = self.vtable.TryGetVector2(@ptrCast(self), propertyName, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetVector3(self: *@This(), propertyName: HSTRING, value: Vector3) core.HResult!CompositionGetValueStatus {
        var _r: CompositionGetValueStatus = undefined;
        const _c = self.vtable.TryGetVector3(@ptrCast(self), propertyName, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryGetVector4(self: *@This(), propertyName: HSTRING, value: Vector4) core.HResult!CompositionGetValueStatus {
        var _r: CompositionGetValueStatus = undefined;
        const _c = self.vtable.TryGetVector4(@ptrCast(self), propertyName, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionPropertySet";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9d6d202-5f67-4453-9117-9eadd430d3c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InsertColor: *const fn(self: *anyopaque, propertyName: HSTRING, value: Color) callconv(.winapi) HRESULT,
        InsertMatrix3x2: *const fn(self: *anyopaque, propertyName: HSTRING, value: Matrix3x2) callconv(.winapi) HRESULT,
        InsertMatrix4x4: *const fn(self: *anyopaque, propertyName: HSTRING, value: Matrix4x4) callconv(.winapi) HRESULT,
        InsertQuaternion: *const fn(self: *anyopaque, propertyName: HSTRING, value: Quaternion) callconv(.winapi) HRESULT,
        InsertScalar: *const fn(self: *anyopaque, propertyName: HSTRING, value: f32) callconv(.winapi) HRESULT,
        InsertVector2: *const fn(self: *anyopaque, propertyName: HSTRING, value: Vector2) callconv(.winapi) HRESULT,
        InsertVector3: *const fn(self: *anyopaque, propertyName: HSTRING, value: Vector3) callconv(.winapi) HRESULT,
        InsertVector4: *const fn(self: *anyopaque, propertyName: HSTRING, value: Vector4) callconv(.winapi) HRESULT,
        TryGetColor: *const fn(self: *anyopaque, propertyName: HSTRING, value: Color, _r: *CompositionGetValueStatus) callconv(.winapi) HRESULT,
        TryGetMatrix3x2: *const fn(self: *anyopaque, propertyName: HSTRING, value: Matrix3x2, _r: *CompositionGetValueStatus) callconv(.winapi) HRESULT,
        TryGetMatrix4x4: *const fn(self: *anyopaque, propertyName: HSTRING, value: Matrix4x4, _r: *CompositionGetValueStatus) callconv(.winapi) HRESULT,
        TryGetQuaternion: *const fn(self: *anyopaque, propertyName: HSTRING, value: Quaternion, _r: *CompositionGetValueStatus) callconv(.winapi) HRESULT,
        TryGetScalar: *const fn(self: *anyopaque, propertyName: HSTRING, value: f32, _r: *CompositionGetValueStatus) callconv(.winapi) HRESULT,
        TryGetVector2: *const fn(self: *anyopaque, propertyName: HSTRING, value: Vector2, _r: *CompositionGetValueStatus) callconv(.winapi) HRESULT,
        TryGetVector3: *const fn(self: *anyopaque, propertyName: HSTRING, value: Vector3, _r: *CompositionGetValueStatus) callconv(.winapi) HRESULT,
        TryGetVector4: *const fn(self: *anyopaque, propertyName: HSTRING, value: Vector4, _r: *CompositionGetValueStatus) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionPropertySet2 = extern struct {
    vtable: *const VTable,
    pub fn InsertBoolean(self: *@This(), propertyName: HSTRING, value: bool) core.HResult!void {
        const _c = self.vtable.InsertBoolean(@ptrCast(self), propertyName, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryGetBoolean(self: *@This(), propertyName: HSTRING, value: bool) core.HResult!CompositionGetValueStatus {
        var _r: CompositionGetValueStatus = undefined;
        const _c = self.vtable.TryGetBoolean(@ptrCast(self), propertyName, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionPropertySet2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de80731e-a211-4455-8880-7d0f3f6a44fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InsertBoolean: *const fn(self: *anyopaque, propertyName: HSTRING, value: bool) callconv(.winapi) HRESULT,
        TryGetBoolean: *const fn(self: *anyopaque, propertyName: HSTRING, value: bool, _r: *CompositionGetValueStatus) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionRadialGradientBrush = extern struct {
    vtable: *const VTable,
    pub fn getEllipseCenter(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_EllipseCenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEllipseCenter(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_EllipseCenter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEllipseRadius(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_EllipseRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEllipseRadius(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_EllipseRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGradientOriginOffset(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_GradientOriginOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGradientOriginOffset(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_GradientOriginOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionRadialGradientBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d3b50c5-e3fa-4ce2-b9fc-3ee12561788f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EllipseCenter: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_EllipseCenter: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_EllipseRadius: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_EllipseRadius: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_GradientOriginOffset: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_GradientOriginOffset: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionRectangleGeometry = extern struct {
    vtable: *const VTable,
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSize(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSize(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Size(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionRectangleGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0cd51428-5356-4246-aecf-7a0b76975400";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Size: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionRoundedRectangleGeometry = extern struct {
    vtable: *const VTable,
    pub fn getCornerRadius(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_CornerRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCornerRadius(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_CornerRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSize(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSize(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Size(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionRoundedRectangleGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8770c822-1d50-4b8b-b013-7c9a0e46935f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CornerRadius: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_CornerRadius: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Size: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionScopedBatch = extern struct {
    vtable: *const VTable,
    pub fn getIsActive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsActive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn End(self: *@This()) core.HResult!void {
        const _c = self.vtable.End(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const _c = self.vtable.Resume(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Suspend(self: *@This()) core.HResult!void {
        const _c = self.vtable.Suspend(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCompleted(self: *@This(), handler: *TypedEventHandler(IInspectable,CompositionBatchCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Completed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Completed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionScopedBatch";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d00dad0-fb07-46fd-8c72-6280d1a3d1dd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsActive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsEnded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        End: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Resume: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Suspend: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_Completed: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,CompositionBatchCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Completed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionShadow = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionShadow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "329e52e2-4335-49cc-b14a-37782d10f0c4";
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
pub const ICompositionShadowFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionShadowFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "221f492f-dcba-4b91-999e-1dc217a01530";
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
pub const ICompositionShape = extern struct {
    vtable: *const VTable,
    pub fn getCenterPoint(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_CenterPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterPoint(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_CenterPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RotationAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RotationAngle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAngleInDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RotationAngleInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RotationAngleInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScale(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Scale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScale(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Scale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransformMatrix(self: *@This()) core.HResult!Matrix3x2 {
        var _r: Matrix3x2 = undefined;
        const _c = self.vtable.get_TransformMatrix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransformMatrix(self: *@This(), value: Matrix3x2) core.HResult!void {
        const _c = self.vtable.put_TransformMatrix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionShape";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b47ce2f7-9a88-42c4-9e87-2e500ca8688c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CenterPoint: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_CenterPoint: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_RotationAngle: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RotationAngle: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RotationAngleInDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RotationAngleInDegrees: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Scale: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Scale: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_TransformMatrix: *const fn(self: *anyopaque, _r: *Matrix3x2) callconv(.winapi) HRESULT,
        put_TransformMatrix: *const fn(self: *anyopaque, value: Matrix3x2) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionShapeFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionShapeFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1dfc36d0-b05a-44ef-82b0-12118bcd4cd0";
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
pub const ICompositionSpriteShape = extern struct {
    vtable: *const VTable,
    pub fn getFillBrush(self: *@This()) core.HResult!*CompositionBrush {
        var _r: *CompositionBrush = undefined;
        const _c = self.vtable.get_FillBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFillBrush(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const _c = self.vtable.put_FillBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGeometry(self: *@This()) core.HResult!*CompositionGeometry {
        var _r: *CompositionGeometry = undefined;
        const _c = self.vtable.get_Geometry(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGeometry(self: *@This(), value: *CompositionGeometry) core.HResult!void {
        const _c = self.vtable.put_Geometry(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsStrokeNonScaling(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStrokeNonScaling(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsStrokeNonScaling(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsStrokeNonScaling(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeBrush(self: *@This()) core.HResult!*CompositionBrush {
        var _r: *CompositionBrush = undefined;
        const _c = self.vtable.get_StrokeBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeBrush(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const _c = self.vtable.put_StrokeBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeDashArray(self: *@This()) core.HResult!*CompositionStrokeDashArray {
        var _r: *CompositionStrokeDashArray = undefined;
        const _c = self.vtable.get_StrokeDashArray(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStrokeDashCap(self: *@This()) core.HResult!CompositionStrokeCap {
        var _r: CompositionStrokeCap = undefined;
        const _c = self.vtable.get_StrokeDashCap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeDashCap(self: *@This(), value: CompositionStrokeCap) core.HResult!void {
        const _c = self.vtable.put_StrokeDashCap(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeDashOffset(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_StrokeDashOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeDashOffset(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_StrokeDashOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeEndCap(self: *@This()) core.HResult!CompositionStrokeCap {
        var _r: CompositionStrokeCap = undefined;
        const _c = self.vtable.get_StrokeEndCap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeEndCap(self: *@This(), value: CompositionStrokeCap) core.HResult!void {
        const _c = self.vtable.put_StrokeEndCap(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeLineJoin(self: *@This()) core.HResult!CompositionStrokeLineJoin {
        var _r: CompositionStrokeLineJoin = undefined;
        const _c = self.vtable.get_StrokeLineJoin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeLineJoin(self: *@This(), value: CompositionStrokeLineJoin) core.HResult!void {
        const _c = self.vtable.put_StrokeLineJoin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeMiterLimit(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_StrokeMiterLimit(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeMiterLimit(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_StrokeMiterLimit(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeStartCap(self: *@This()) core.HResult!CompositionStrokeCap {
        var _r: CompositionStrokeCap = undefined;
        const _c = self.vtable.get_StrokeStartCap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeStartCap(self: *@This(), value: CompositionStrokeCap) core.HResult!void {
        const _c = self.vtable.put_StrokeStartCap(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStrokeThickness(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_StrokeThickness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStrokeThickness(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_StrokeThickness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionSpriteShape";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "401b61bb-0007-4363-b1f3-6bcc003fb83e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FillBrush: *const fn(self: *anyopaque, _r: **CompositionBrush) callconv(.winapi) HRESULT,
        put_FillBrush: *const fn(self: *anyopaque, value: *CompositionBrush) callconv(.winapi) HRESULT,
        get_Geometry: *const fn(self: *anyopaque, _r: **CompositionGeometry) callconv(.winapi) HRESULT,
        put_Geometry: *const fn(self: *anyopaque, value: *CompositionGeometry) callconv(.winapi) HRESULT,
        get_IsStrokeNonScaling: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsStrokeNonScaling: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_StrokeBrush: *const fn(self: *anyopaque, _r: **CompositionBrush) callconv(.winapi) HRESULT,
        put_StrokeBrush: *const fn(self: *anyopaque, value: *CompositionBrush) callconv(.winapi) HRESULT,
        get_StrokeDashArray: *const fn(self: *anyopaque, _r: **CompositionStrokeDashArray) callconv(.winapi) HRESULT,
        get_StrokeDashCap: *const fn(self: *anyopaque, _r: *CompositionStrokeCap) callconv(.winapi) HRESULT,
        put_StrokeDashCap: *const fn(self: *anyopaque, value: CompositionStrokeCap) callconv(.winapi) HRESULT,
        get_StrokeDashOffset: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_StrokeDashOffset: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_StrokeEndCap: *const fn(self: *anyopaque, _r: *CompositionStrokeCap) callconv(.winapi) HRESULT,
        put_StrokeEndCap: *const fn(self: *anyopaque, value: CompositionStrokeCap) callconv(.winapi) HRESULT,
        get_StrokeLineJoin: *const fn(self: *anyopaque, _r: *CompositionStrokeLineJoin) callconv(.winapi) HRESULT,
        put_StrokeLineJoin: *const fn(self: *anyopaque, value: CompositionStrokeLineJoin) callconv(.winapi) HRESULT,
        get_StrokeMiterLimit: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_StrokeMiterLimit: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_StrokeStartCap: *const fn(self: *anyopaque, _r: *CompositionStrokeCap) callconv(.winapi) HRESULT,
        put_StrokeStartCap: *const fn(self: *anyopaque, value: CompositionStrokeCap) callconv(.winapi) HRESULT,
        get_StrokeThickness: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_StrokeThickness: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionSupportsSystemBackdrop = extern struct {
    vtable: *const VTable,
    pub fn getSystemBackdrop(self: *@This()) core.HResult!*CompositionBrush {
        var _r: *CompositionBrush = undefined;
        const _c = self.vtable.get_SystemBackdrop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSystemBackdrop(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const _c = self.vtable.put_SystemBackdrop(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionSupportsSystemBackdrop";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "397dafe4-b6c2-5bb9-951d-f5707de8b7bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SystemBackdrop: *const fn(self: *anyopaque, _r: **CompositionBrush) callconv(.winapi) HRESULT,
        put_SystemBackdrop: *const fn(self: *anyopaque, value: *CompositionBrush) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionSurface = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1527540d-42c7-47a6-a408-668f79a90dfb";
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
pub const ICompositionSurfaceBrush = extern struct {
    vtable: *const VTable,
    pub fn getBitmapInterpolationMode(self: *@This()) core.HResult!CompositionBitmapInterpolationMode {
        var _r: CompositionBitmapInterpolationMode = undefined;
        const _c = self.vtable.get_BitmapInterpolationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBitmapInterpolationMode(self: *@This(), value: CompositionBitmapInterpolationMode) core.HResult!void {
        const _c = self.vtable.put_BitmapInterpolationMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHorizontalAlignmentRatio(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_HorizontalAlignmentRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHorizontalAlignmentRatio(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_HorizontalAlignmentRatio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStretch(self: *@This()) core.HResult!CompositionStretch {
        var _r: CompositionStretch = undefined;
        const _c = self.vtable.get_Stretch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStretch(self: *@This(), value: CompositionStretch) core.HResult!void {
        const _c = self.vtable.put_Stretch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSurface(self: *@This()) core.HResult!*ICompositionSurface {
        var _r: *ICompositionSurface = undefined;
        const _c = self.vtable.get_Surface(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSurface(self: *@This(), value: *ICompositionSurface) core.HResult!void {
        const _c = self.vtable.put_Surface(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVerticalAlignmentRatio(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_VerticalAlignmentRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVerticalAlignmentRatio(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_VerticalAlignmentRatio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionSurfaceBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad016d79-1e4c-4c0d-9c29-83338c87c162";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BitmapInterpolationMode: *const fn(self: *anyopaque, _r: *CompositionBitmapInterpolationMode) callconv(.winapi) HRESULT,
        put_BitmapInterpolationMode: *const fn(self: *anyopaque, value: CompositionBitmapInterpolationMode) callconv(.winapi) HRESULT,
        get_HorizontalAlignmentRatio: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_HorizontalAlignmentRatio: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Stretch: *const fn(self: *anyopaque, _r: *CompositionStretch) callconv(.winapi) HRESULT,
        put_Stretch: *const fn(self: *anyopaque, value: CompositionStretch) callconv(.winapi) HRESULT,
        get_Surface: *const fn(self: *anyopaque, _r: **ICompositionSurface) callconv(.winapi) HRESULT,
        put_Surface: *const fn(self: *anyopaque, value: *ICompositionSurface) callconv(.winapi) HRESULT,
        get_VerticalAlignmentRatio: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_VerticalAlignmentRatio: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionSurfaceBrush2 = extern struct {
    vtable: *const VTable,
    pub fn getAnchorPoint(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_AnchorPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAnchorPoint(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_AnchorPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterPoint(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_CenterPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterPoint(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_CenterPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RotationAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RotationAngle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAngleInDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RotationAngleInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RotationAngleInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScale(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Scale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScale(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Scale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransformMatrix(self: *@This()) core.HResult!Matrix3x2 {
        var _r: Matrix3x2 = undefined;
        const _c = self.vtable.get_TransformMatrix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransformMatrix(self: *@This(), value: Matrix3x2) core.HResult!void {
        const _c = self.vtable.put_TransformMatrix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionSurfaceBrush2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d27174d5-64f5-4692-9dc7-71b61d7e5880";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AnchorPoint: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_AnchorPoint: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_CenterPoint: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_CenterPoint: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_RotationAngle: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RotationAngle: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RotationAngleInDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RotationAngleInDegrees: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Scale: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Scale: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_TransformMatrix: *const fn(self: *anyopaque, _r: *Matrix3x2) callconv(.winapi) HRESULT,
        put_TransformMatrix: *const fn(self: *anyopaque, value: Matrix3x2) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionSurfaceBrush3 = extern struct {
    vtable: *const VTable,
    pub fn getSnapToPixels(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SnapToPixels(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSnapToPixels(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SnapToPixels(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionSurfaceBrush3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "550bb289-1fe0-42e5-8195-1eefa87ff08e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SnapToPixels: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SnapToPixels: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionSurfaceFacade = extern struct {
    vtable: *const VTable,
    pub fn GetRealSurface(self: *@This()) core.HResult!*ICompositionSurface {
        var _r: *ICompositionSurface = undefined;
        const _c = self.vtable.GetRealSurface(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionSurfaceFacade";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e01622c8-2332-55c7-8868-a7312c5c229d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetRealSurface: *const fn(self: *anyopaque, _r: **ICompositionSurface) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionTarget = extern struct {
    vtable: *const VTable,
    pub fn getRoot(self: *@This()) core.HResult!*Visual {
        var _r: *Visual = undefined;
        const _c = self.vtable.get_Root(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRoot(self: *@This(), value: *Visual) core.HResult!void {
        const _c = self.vtable.put_Root(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a1bea8ba-d726-4663-8129-6b5e7927ffa6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Root: *const fn(self: *anyopaque, _r: **Visual) callconv(.winapi) HRESULT,
        put_Root: *const fn(self: *anyopaque, value: *Visual) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionTargetFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionTargetFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93cd9d2b-8516-4b14-a8ce-f49e2119ec42";
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
pub const ICompositionTexture = extern struct {
    vtable: *const VTable,
    pub fn getSourceRect(self: *@This()) core.HResult!RectInt32 {
        var _r: RectInt32 = undefined;
        const _c = self.vtable.get_SourceRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourceRect(self: *@This(), value: RectInt32) core.HResult!void {
        const _c = self.vtable.put_SourceRect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlphaMode(self: *@This()) core.HResult!DirectXAlphaMode {
        var _r: DirectXAlphaMode = undefined;
        const _c = self.vtable.get_AlphaMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlphaMode(self: *@This(), value: DirectXAlphaMode) core.HResult!void {
        const _c = self.vtable.put_AlphaMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getColorSpace(self: *@This()) core.HResult!DirectXColorSpace {
        var _r: DirectXColorSpace = undefined;
        const _c = self.vtable.get_ColorSpace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColorSpace(self: *@This(), value: DirectXColorSpace) core.HResult!void {
        const _c = self.vtable.put_ColorSpace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionTexture";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "347d03a0-1c0a-4c0b-b232-8570b2b1a4ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceRect: *const fn(self: *anyopaque, _r: *RectInt32) callconv(.winapi) HRESULT,
        put_SourceRect: *const fn(self: *anyopaque, value: RectInt32) callconv(.winapi) HRESULT,
        get_AlphaMode: *const fn(self: *anyopaque, _r: *DirectXAlphaMode) callconv(.winapi) HRESULT,
        put_AlphaMode: *const fn(self: *anyopaque, value: DirectXAlphaMode) callconv(.winapi) HRESULT,
        get_ColorSpace: *const fn(self: *anyopaque, _r: *DirectXColorSpace) callconv(.winapi) HRESULT,
        put_ColorSpace: *const fn(self: *anyopaque, value: DirectXColorSpace) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionTextureFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionTextureFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "09d9523d-471c-5ab5-b053-b568ee46ebfb";
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
pub const ICompositionTransform = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7cd54529-fbed-4112-abc5-185906dd927c";
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
pub const ICompositionTransformFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionTransformFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aaaeca26-c149-517a-8f72-6bff7a65ce08";
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
pub const ICompositionViewBox = extern struct {
    vtable: *const VTable,
    pub fn getHorizontalAlignmentRatio(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_HorizontalAlignmentRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHorizontalAlignmentRatio(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_HorizontalAlignmentRatio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSize(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSize(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Size(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStretch(self: *@This()) core.HResult!CompositionStretch {
        var _r: CompositionStretch = undefined;
        const _c = self.vtable.get_Stretch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStretch(self: *@This(), value: CompositionStretch) core.HResult!void {
        const _c = self.vtable.put_Stretch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVerticalAlignmentRatio(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_VerticalAlignmentRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVerticalAlignmentRatio(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_VerticalAlignmentRatio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionViewBox";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b440bf07-068f-4537-84c6-4ecbe019e1f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HorizontalAlignmentRatio: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_HorizontalAlignmentRatio: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Size: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_Stretch: *const fn(self: *anyopaque, _r: *CompositionStretch) callconv(.winapi) HRESULT,
        put_Stretch: *const fn(self: *anyopaque, value: CompositionStretch) callconv(.winapi) HRESULT,
        get_VerticalAlignmentRatio: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_VerticalAlignmentRatio: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionVirtualDrawingSurface = extern struct {
    vtable: *const VTable,
    pub fn Trim(self: *@This(), rects: [*]RectInt32) core.HResult!void {
        const _c = self.vtable.Trim(@ptrCast(self), rects);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionVirtualDrawingSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9c384db-8740-4f94-8b9d-b68521e7863d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Trim: *const fn(self: *anyopaque, rects: [*]RectInt32) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionVirtualDrawingSurfaceFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionVirtualDrawingSurfaceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6766106c-d56b-4a49-b1df-5076a0620768";
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
pub const ICompositionVisualSurface = extern struct {
    vtable: *const VTable,
    pub fn getSourceVisual(self: *@This()) core.HResult!*Visual {
        var _r: *Visual = undefined;
        const _c = self.vtable.get_SourceVisual(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourceVisual(self: *@This(), value: *Visual) core.HResult!void {
        const _c = self.vtable.put_SourceVisual(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSourceOffset(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_SourceOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourceOffset(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_SourceOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSourceSize(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_SourceSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourceSize(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_SourceSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositionVisualSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b224d803-4f6e-4a3f-8cae-3dc1cda74fc6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourceVisual: *const fn(self: *anyopaque, _r: **Visual) callconv(.winapi) HRESULT,
        put_SourceVisual: *const fn(self: *anyopaque, value: *Visual) callconv(.winapi) HRESULT,
        get_SourceOffset: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_SourceOffset: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_SourceSize: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_SourceSize: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
    };
};
pub const ICompositor = extern struct {
    vtable: *const VTable,
    pub fn CreateColorKeyFrameAnimation(self: *@This()) core.HResult!*ColorKeyFrameAnimation {
        var _r: *ColorKeyFrameAnimation = undefined;
        const _c = self.vtable.CreateColorKeyFrameAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateColorBrush(self: *@This()) core.HResult!*CompositionColorBrush {
        var _r: *CompositionColorBrush = undefined;
        const _c = self.vtable.CreateColorBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateColorBrushWithColor(self: *@This(), color: Color) core.HResult!*CompositionColorBrush {
        var _r: *CompositionColorBrush = undefined;
        const _c = self.vtable.CreateColorBrushWithColor(@ptrCast(self), color, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateContainerVisual(self: *@This()) core.HResult!*ContainerVisual {
        var _r: *ContainerVisual = undefined;
        const _c = self.vtable.CreateContainerVisual(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateCubicBezierEasingFunction(self: *@This(), controlPoint1: Vector2, controlPoint2: Vector2) core.HResult!*CubicBezierEasingFunction {
        var _r: *CubicBezierEasingFunction = undefined;
        const _c = self.vtable.CreateCubicBezierEasingFunction(@ptrCast(self), controlPoint1, controlPoint2, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateEffectFactory(self: *@This(), graphicsEffect: *IGraphicsEffect) core.HResult!*CompositionEffectFactory {
        var _r: *CompositionEffectFactory = undefined;
        const _c = self.vtable.CreateEffectFactory(@ptrCast(self), graphicsEffect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateEffectFactoryWithAnimatableProperties(self: *@This(), graphicsEffect: *IGraphicsEffect, animatableProperties: *IIterable(HSTRING)) core.HResult!*CompositionEffectFactory {
        var _r: *CompositionEffectFactory = undefined;
        const _c = self.vtable.CreateEffectFactoryWithAnimatableProperties(@ptrCast(self), graphicsEffect, animatableProperties, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateExpressionAnimation(self: *@This()) core.HResult!*ExpressionAnimation {
        var _r: *ExpressionAnimation = undefined;
        const _c = self.vtable.CreateExpressionAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateExpressionAnimationWithExpression(self: *@This(), expression: HSTRING) core.HResult!*ExpressionAnimation {
        var _r: *ExpressionAnimation = undefined;
        const _c = self.vtable.CreateExpressionAnimationWithExpression(@ptrCast(self), expression, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInsetClip(self: *@This()) core.HResult!*InsetClip {
        var _r: *InsetClip = undefined;
        const _c = self.vtable.CreateInsetClip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInsetClipWithLeftInsetAndTopInsetAndRightInsetAndBottomInset(self: *@This(), leftInset: f32, topInset: f32, rightInset: f32, bottomInset: f32) core.HResult!*InsetClip {
        var _r: *InsetClip = undefined;
        const _c = self.vtable.CreateInsetClipWithLeftInsetAndTopInsetAndRightInsetAndBottomInset(@ptrCast(self), leftInset, topInset, rightInset, bottomInset, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateLinearEasingFunction(self: *@This()) core.HResult!*LinearEasingFunction {
        var _r: *LinearEasingFunction = undefined;
        const _c = self.vtable.CreateLinearEasingFunction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePropertySet(self: *@This()) core.HResult!*CompositionPropertySet {
        var _r: *CompositionPropertySet = undefined;
        const _c = self.vtable.CreatePropertySet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateQuaternionKeyFrameAnimation(self: *@This()) core.HResult!*QuaternionKeyFrameAnimation {
        var _r: *QuaternionKeyFrameAnimation = undefined;
        const _c = self.vtable.CreateQuaternionKeyFrameAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateScalarKeyFrameAnimation(self: *@This()) core.HResult!*ScalarKeyFrameAnimation {
        var _r: *ScalarKeyFrameAnimation = undefined;
        const _c = self.vtable.CreateScalarKeyFrameAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateScopedBatch(self: *@This(), batchType: CompositionBatchTypes) core.HResult!*CompositionScopedBatch {
        var _r: *CompositionScopedBatch = undefined;
        const _c = self.vtable.CreateScopedBatch(@ptrCast(self), batchType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSpriteVisual(self: *@This()) core.HResult!*SpriteVisual {
        var _r: *SpriteVisual = undefined;
        const _c = self.vtable.CreateSpriteVisual(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSurfaceBrush(self: *@This()) core.HResult!*CompositionSurfaceBrush {
        var _r: *CompositionSurfaceBrush = undefined;
        const _c = self.vtable.CreateSurfaceBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSurfaceBrushWithSurface(self: *@This(), surface: *ICompositionSurface) core.HResult!*CompositionSurfaceBrush {
        var _r: *CompositionSurfaceBrush = undefined;
        const _c = self.vtable.CreateSurfaceBrushWithSurface(@ptrCast(self), surface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateTargetForCurrentView(self: *@This()) core.HResult!*CompositionTarget {
        var _r: *CompositionTarget = undefined;
        const _c = self.vtable.CreateTargetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateVector2KeyFrameAnimation(self: *@This()) core.HResult!*Vector2KeyFrameAnimation {
        var _r: *Vector2KeyFrameAnimation = undefined;
        const _c = self.vtable.CreateVector2KeyFrameAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateVector3KeyFrameAnimation(self: *@This()) core.HResult!*Vector3KeyFrameAnimation {
        var _r: *Vector3KeyFrameAnimation = undefined;
        const _c = self.vtable.CreateVector3KeyFrameAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateVector4KeyFrameAnimation(self: *@This()) core.HResult!*Vector4KeyFrameAnimation {
        var _r: *Vector4KeyFrameAnimation = undefined;
        const _c = self.vtable.CreateVector4KeyFrameAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCommitBatch(self: *@This(), batchType: CompositionBatchTypes) core.HResult!*CompositionCommitBatch {
        var _r: *CompositionCommitBatch = undefined;
        const _c = self.vtable.GetCommitBatch(@ptrCast(self), batchType, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositor";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b403ca50-7f8c-4e83-985f-cc45060036d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateColorKeyFrameAnimation: *const fn(self: *anyopaque, _r: **ColorKeyFrameAnimation) callconv(.winapi) HRESULT,
        CreateColorBrush: *const fn(self: *anyopaque, _r: **CompositionColorBrush) callconv(.winapi) HRESULT,
        CreateColorBrushWithColor: *const fn(self: *anyopaque, color: Color, _r: **CompositionColorBrush) callconv(.winapi) HRESULT,
        CreateContainerVisual: *const fn(self: *anyopaque, _r: **ContainerVisual) callconv(.winapi) HRESULT,
        CreateCubicBezierEasingFunction: *const fn(self: *anyopaque, controlPoint1: Vector2, controlPoint2: Vector2, _r: **CubicBezierEasingFunction) callconv(.winapi) HRESULT,
        CreateEffectFactory: *const fn(self: *anyopaque, graphicsEffect: *IGraphicsEffect, _r: **CompositionEffectFactory) callconv(.winapi) HRESULT,
        CreateEffectFactoryWithAnimatableProperties: *const fn(self: *anyopaque, graphicsEffect: *IGraphicsEffect, animatableProperties: *IIterable(HSTRING), _r: **CompositionEffectFactory) callconv(.winapi) HRESULT,
        CreateExpressionAnimation: *const fn(self: *anyopaque, _r: **ExpressionAnimation) callconv(.winapi) HRESULT,
        CreateExpressionAnimationWithExpression: *const fn(self: *anyopaque, expression: HSTRING, _r: **ExpressionAnimation) callconv(.winapi) HRESULT,
        CreateInsetClip: *const fn(self: *anyopaque, _r: **InsetClip) callconv(.winapi) HRESULT,
        CreateInsetClipWithLeftInsetAndTopInsetAndRightInsetAndBottomInset: *const fn(self: *anyopaque, leftInset: f32, topInset: f32, rightInset: f32, bottomInset: f32, _r: **InsetClip) callconv(.winapi) HRESULT,
        CreateLinearEasingFunction: *const fn(self: *anyopaque, _r: **LinearEasingFunction) callconv(.winapi) HRESULT,
        CreatePropertySet: *const fn(self: *anyopaque, _r: **CompositionPropertySet) callconv(.winapi) HRESULT,
        CreateQuaternionKeyFrameAnimation: *const fn(self: *anyopaque, _r: **QuaternionKeyFrameAnimation) callconv(.winapi) HRESULT,
        CreateScalarKeyFrameAnimation: *const fn(self: *anyopaque, _r: **ScalarKeyFrameAnimation) callconv(.winapi) HRESULT,
        CreateScopedBatch: *const fn(self: *anyopaque, batchType: CompositionBatchTypes, _r: **CompositionScopedBatch) callconv(.winapi) HRESULT,
        CreateSpriteVisual: *const fn(self: *anyopaque, _r: **SpriteVisual) callconv(.winapi) HRESULT,
        CreateSurfaceBrush: *const fn(self: *anyopaque, _r: **CompositionSurfaceBrush) callconv(.winapi) HRESULT,
        CreateSurfaceBrushWithSurface: *const fn(self: *anyopaque, surface: *ICompositionSurface, _r: **CompositionSurfaceBrush) callconv(.winapi) HRESULT,
        CreateTargetForCurrentView: *const fn(self: *anyopaque, _r: **CompositionTarget) callconv(.winapi) HRESULT,
        CreateVector2KeyFrameAnimation: *const fn(self: *anyopaque, _r: **Vector2KeyFrameAnimation) callconv(.winapi) HRESULT,
        CreateVector3KeyFrameAnimation: *const fn(self: *anyopaque, _r: **Vector3KeyFrameAnimation) callconv(.winapi) HRESULT,
        CreateVector4KeyFrameAnimation: *const fn(self: *anyopaque, _r: **Vector4KeyFrameAnimation) callconv(.winapi) HRESULT,
        GetCommitBatch: *const fn(self: *anyopaque, batchType: CompositionBatchTypes, _r: **CompositionCommitBatch) callconv(.winapi) HRESULT,
    };
};
pub const ICompositor2 = extern struct {
    vtable: *const VTable,
    pub fn CreateAmbientLight(self: *@This()) core.HResult!*AmbientLight {
        var _r: *AmbientLight = undefined;
        const _c = self.vtable.CreateAmbientLight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAnimationGroup(self: *@This()) core.HResult!*CompositionAnimationGroup {
        var _r: *CompositionAnimationGroup = undefined;
        const _c = self.vtable.CreateAnimationGroup(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBackdropBrush(self: *@This()) core.HResult!*CompositionBackdropBrush {
        var _r: *CompositionBackdropBrush = undefined;
        const _c = self.vtable.CreateBackdropBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDistantLight(self: *@This()) core.HResult!*DistantLight {
        var _r: *DistantLight = undefined;
        const _c = self.vtable.CreateDistantLight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateDropShadow(self: *@This()) core.HResult!*DropShadow {
        var _r: *DropShadow = undefined;
        const _c = self.vtable.CreateDropShadow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateImplicitAnimationCollection(self: *@This()) core.HResult!*ImplicitAnimationCollection {
        var _r: *ImplicitAnimationCollection = undefined;
        const _c = self.vtable.CreateImplicitAnimationCollection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateLayerVisual(self: *@This()) core.HResult!*LayerVisual {
        var _r: *LayerVisual = undefined;
        const _c = self.vtable.CreateLayerVisual(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateMaskBrush(self: *@This()) core.HResult!*CompositionMaskBrush {
        var _r: *CompositionMaskBrush = undefined;
        const _c = self.vtable.CreateMaskBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateNineGridBrush(self: *@This()) core.HResult!*CompositionNineGridBrush {
        var _r: *CompositionNineGridBrush = undefined;
        const _c = self.vtable.CreateNineGridBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePointLight(self: *@This()) core.HResult!*PointLight {
        var _r: *PointLight = undefined;
        const _c = self.vtable.CreatePointLight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSpotLight(self: *@This()) core.HResult!*SpotLight {
        var _r: *SpotLight = undefined;
        const _c = self.vtable.CreateSpotLight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStepEasingFunction(self: *@This()) core.HResult!*StepEasingFunction {
        var _r: *StepEasingFunction = undefined;
        const _c = self.vtable.CreateStepEasingFunction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateStepEasingFunctionWithStepCount(self: *@This(), stepCount: i32) core.HResult!*StepEasingFunction {
        var _r: *StepEasingFunction = undefined;
        const _c = self.vtable.CreateStepEasingFunctionWithStepCount(@ptrCast(self), stepCount, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositor2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "735081dc-5e24-45da-a38f-e32cc349a9a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAmbientLight: *const fn(self: *anyopaque, _r: **AmbientLight) callconv(.winapi) HRESULT,
        CreateAnimationGroup: *const fn(self: *anyopaque, _r: **CompositionAnimationGroup) callconv(.winapi) HRESULT,
        CreateBackdropBrush: *const fn(self: *anyopaque, _r: **CompositionBackdropBrush) callconv(.winapi) HRESULT,
        CreateDistantLight: *const fn(self: *anyopaque, _r: **DistantLight) callconv(.winapi) HRESULT,
        CreateDropShadow: *const fn(self: *anyopaque, _r: **DropShadow) callconv(.winapi) HRESULT,
        CreateImplicitAnimationCollection: *const fn(self: *anyopaque, _r: **ImplicitAnimationCollection) callconv(.winapi) HRESULT,
        CreateLayerVisual: *const fn(self: *anyopaque, _r: **LayerVisual) callconv(.winapi) HRESULT,
        CreateMaskBrush: *const fn(self: *anyopaque, _r: **CompositionMaskBrush) callconv(.winapi) HRESULT,
        CreateNineGridBrush: *const fn(self: *anyopaque, _r: **CompositionNineGridBrush) callconv(.winapi) HRESULT,
        CreatePointLight: *const fn(self: *anyopaque, _r: **PointLight) callconv(.winapi) HRESULT,
        CreateSpotLight: *const fn(self: *anyopaque, _r: **SpotLight) callconv(.winapi) HRESULT,
        CreateStepEasingFunction: *const fn(self: *anyopaque, _r: **StepEasingFunction) callconv(.winapi) HRESULT,
        CreateStepEasingFunctionWithStepCount: *const fn(self: *anyopaque, stepCount: i32, _r: **StepEasingFunction) callconv(.winapi) HRESULT,
    };
};
pub const ICompositor3 = extern struct {
    vtable: *const VTable,
    pub fn CreateHostBackdropBrush(self: *@This()) core.HResult!*CompositionBackdropBrush {
        var _r: *CompositionBackdropBrush = undefined;
        const _c = self.vtable.CreateHostBackdropBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositor3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9dd8ef0-6eb1-4e3c-a658-675d9c64d4ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateHostBackdropBrush: *const fn(self: *anyopaque, _r: **CompositionBackdropBrush) callconv(.winapi) HRESULT,
    };
};
pub const ICompositor4 = extern struct {
    vtable: *const VTable,
    pub fn CreateColorGradientStop(self: *@This()) core.HResult!*CompositionColorGradientStop {
        var _r: *CompositionColorGradientStop = undefined;
        const _c = self.vtable.CreateColorGradientStop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateColorGradientStopWithOffsetAndColor(self: *@This(), offset: f32, color: Color) core.HResult!*CompositionColorGradientStop {
        var _r: *CompositionColorGradientStop = undefined;
        const _c = self.vtable.CreateColorGradientStopWithOffsetAndColor(@ptrCast(self), offset, color, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateLinearGradientBrush(self: *@This()) core.HResult!*CompositionLinearGradientBrush {
        var _r: *CompositionLinearGradientBrush = undefined;
        const _c = self.vtable.CreateLinearGradientBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSpringScalarAnimation(self: *@This()) core.HResult!*SpringScalarNaturalMotionAnimation {
        var _r: *SpringScalarNaturalMotionAnimation = undefined;
        const _c = self.vtable.CreateSpringScalarAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSpringVector2Animation(self: *@This()) core.HResult!*SpringVector2NaturalMotionAnimation {
        var _r: *SpringVector2NaturalMotionAnimation = undefined;
        const _c = self.vtable.CreateSpringVector2Animation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSpringVector3Animation(self: *@This()) core.HResult!*SpringVector3NaturalMotionAnimation {
        var _r: *SpringVector3NaturalMotionAnimation = undefined;
        const _c = self.vtable.CreateSpringVector3Animation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositor4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae47e78a-7910-4425-a482-a05b758adce9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateColorGradientStop: *const fn(self: *anyopaque, _r: **CompositionColorGradientStop) callconv(.winapi) HRESULT,
        CreateColorGradientStopWithOffsetAndColor: *const fn(self: *anyopaque, offset: f32, color: Color, _r: **CompositionColorGradientStop) callconv(.winapi) HRESULT,
        CreateLinearGradientBrush: *const fn(self: *anyopaque, _r: **CompositionLinearGradientBrush) callconv(.winapi) HRESULT,
        CreateSpringScalarAnimation: *const fn(self: *anyopaque, _r: **SpringScalarNaturalMotionAnimation) callconv(.winapi) HRESULT,
        CreateSpringVector2Animation: *const fn(self: *anyopaque, _r: **SpringVector2NaturalMotionAnimation) callconv(.winapi) HRESULT,
        CreateSpringVector3Animation: *const fn(self: *anyopaque, _r: **SpringVector3NaturalMotionAnimation) callconv(.winapi) HRESULT,
    };
};
pub const ICompositor5 = extern struct {
    vtable: *const VTable,
    pub fn getComment(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Comment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putComment(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Comment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGlobalPlaybackRate(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_GlobalPlaybackRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGlobalPlaybackRate(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_GlobalPlaybackRate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateBounceScalarAnimation(self: *@This()) core.HResult!*BounceScalarNaturalMotionAnimation {
        var _r: *BounceScalarNaturalMotionAnimation = undefined;
        const _c = self.vtable.CreateBounceScalarAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBounceVector2Animation(self: *@This()) core.HResult!*BounceVector2NaturalMotionAnimation {
        var _r: *BounceVector2NaturalMotionAnimation = undefined;
        const _c = self.vtable.CreateBounceVector2Animation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBounceVector3Animation(self: *@This()) core.HResult!*BounceVector3NaturalMotionAnimation {
        var _r: *BounceVector3NaturalMotionAnimation = undefined;
        const _c = self.vtable.CreateBounceVector3Animation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateContainerShape(self: *@This()) core.HResult!*CompositionContainerShape {
        var _r: *CompositionContainerShape = undefined;
        const _c = self.vtable.CreateContainerShape(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateEllipseGeometry(self: *@This()) core.HResult!*CompositionEllipseGeometry {
        var _r: *CompositionEllipseGeometry = undefined;
        const _c = self.vtable.CreateEllipseGeometry(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateLineGeometry(self: *@This()) core.HResult!*CompositionLineGeometry {
        var _r: *CompositionLineGeometry = undefined;
        const _c = self.vtable.CreateLineGeometry(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePathGeometry(self: *@This()) core.HResult!*CompositionPathGeometry {
        var _r: *CompositionPathGeometry = undefined;
        const _c = self.vtable.CreatePathGeometry(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePathGeometryWithPath(self: *@This(), path: *CompositionPath) core.HResult!*CompositionPathGeometry {
        var _r: *CompositionPathGeometry = undefined;
        const _c = self.vtable.CreatePathGeometryWithPath(@ptrCast(self), path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePathKeyFrameAnimation(self: *@This()) core.HResult!*PathKeyFrameAnimation {
        var _r: *PathKeyFrameAnimation = undefined;
        const _c = self.vtable.CreatePathKeyFrameAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateRectangleGeometry(self: *@This()) core.HResult!*CompositionRectangleGeometry {
        var _r: *CompositionRectangleGeometry = undefined;
        const _c = self.vtable.CreateRectangleGeometry(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateRoundedRectangleGeometry(self: *@This()) core.HResult!*CompositionRoundedRectangleGeometry {
        var _r: *CompositionRoundedRectangleGeometry = undefined;
        const _c = self.vtable.CreateRoundedRectangleGeometry(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateShapeVisual(self: *@This()) core.HResult!*ShapeVisual {
        var _r: *ShapeVisual = undefined;
        const _c = self.vtable.CreateShapeVisual(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSpriteShape(self: *@This()) core.HResult!*CompositionSpriteShape {
        var _r: *CompositionSpriteShape = undefined;
        const _c = self.vtable.CreateSpriteShape(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateSpriteShapeWithGeometry(self: *@This(), geometry: *CompositionGeometry) core.HResult!*CompositionSpriteShape {
        var _r: *CompositionSpriteShape = undefined;
        const _c = self.vtable.CreateSpriteShapeWithGeometry(@ptrCast(self), geometry, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateViewBox(self: *@This()) core.HResult!*CompositionViewBox {
        var _r: *CompositionViewBox = undefined;
        const _c = self.vtable.CreateViewBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestCommitAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.RequestCommitAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositor5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "48ea31ad-7fcd-4076-a79c-90cc4b852c9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Comment: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Comment: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_GlobalPlaybackRate: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_GlobalPlaybackRate: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        CreateBounceScalarAnimation: *const fn(self: *anyopaque, _r: **BounceScalarNaturalMotionAnimation) callconv(.winapi) HRESULT,
        CreateBounceVector2Animation: *const fn(self: *anyopaque, _r: **BounceVector2NaturalMotionAnimation) callconv(.winapi) HRESULT,
        CreateBounceVector3Animation: *const fn(self: *anyopaque, _r: **BounceVector3NaturalMotionAnimation) callconv(.winapi) HRESULT,
        CreateContainerShape: *const fn(self: *anyopaque, _r: **CompositionContainerShape) callconv(.winapi) HRESULT,
        CreateEllipseGeometry: *const fn(self: *anyopaque, _r: **CompositionEllipseGeometry) callconv(.winapi) HRESULT,
        CreateLineGeometry: *const fn(self: *anyopaque, _r: **CompositionLineGeometry) callconv(.winapi) HRESULT,
        CreatePathGeometry: *const fn(self: *anyopaque, _r: **CompositionPathGeometry) callconv(.winapi) HRESULT,
        CreatePathGeometryWithPath: *const fn(self: *anyopaque, path: *CompositionPath, _r: **CompositionPathGeometry) callconv(.winapi) HRESULT,
        CreatePathKeyFrameAnimation: *const fn(self: *anyopaque, _r: **PathKeyFrameAnimation) callconv(.winapi) HRESULT,
        CreateRectangleGeometry: *const fn(self: *anyopaque, _r: **CompositionRectangleGeometry) callconv(.winapi) HRESULT,
        CreateRoundedRectangleGeometry: *const fn(self: *anyopaque, _r: **CompositionRoundedRectangleGeometry) callconv(.winapi) HRESULT,
        CreateShapeVisual: *const fn(self: *anyopaque, _r: **ShapeVisual) callconv(.winapi) HRESULT,
        CreateSpriteShape: *const fn(self: *anyopaque, _r: **CompositionSpriteShape) callconv(.winapi) HRESULT,
        CreateSpriteShapeWithGeometry: *const fn(self: *anyopaque, geometry: *CompositionGeometry, _r: **CompositionSpriteShape) callconv(.winapi) HRESULT,
        CreateViewBox: *const fn(self: *anyopaque, _r: **CompositionViewBox) callconv(.winapi) HRESULT,
        RequestCommitAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const ICompositor6 = extern struct {
    vtable: *const VTable,
    pub fn CreateGeometricClip(self: *@This()) core.HResult!*CompositionGeometricClip {
        var _r: *CompositionGeometricClip = undefined;
        const _c = self.vtable.CreateGeometricClip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateGeometricClipWithGeometry(self: *@This(), geometry: *CompositionGeometry) core.HResult!*CompositionGeometricClip {
        var _r: *CompositionGeometricClip = undefined;
        const _c = self.vtable.CreateGeometricClipWithGeometry(@ptrCast(self), geometry, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateRedirectVisual(self: *@This()) core.HResult!*RedirectVisual {
        var _r: *RedirectVisual = undefined;
        const _c = self.vtable.CreateRedirectVisual(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateRedirectVisualWithSource(self: *@This(), source: *Visual) core.HResult!*RedirectVisual {
        var _r: *RedirectVisual = undefined;
        const _c = self.vtable.CreateRedirectVisualWithSource(@ptrCast(self), source, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateBooleanKeyFrameAnimation(self: *@This()) core.HResult!*BooleanKeyFrameAnimation {
        var _r: *BooleanKeyFrameAnimation = undefined;
        const _c = self.vtable.CreateBooleanKeyFrameAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositor6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a38b2bd-cec8-4eeb-830f-d8d07aedebc3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateGeometricClip: *const fn(self: *anyopaque, _r: **CompositionGeometricClip) callconv(.winapi) HRESULT,
        CreateGeometricClipWithGeometry: *const fn(self: *anyopaque, geometry: *CompositionGeometry, _r: **CompositionGeometricClip) callconv(.winapi) HRESULT,
        CreateRedirectVisual: *const fn(self: *anyopaque, _r: **RedirectVisual) callconv(.winapi) HRESULT,
        CreateRedirectVisualWithSource: *const fn(self: *anyopaque, source: *Visual, _r: **RedirectVisual) callconv(.winapi) HRESULT,
        CreateBooleanKeyFrameAnimation: *const fn(self: *anyopaque, _r: **BooleanKeyFrameAnimation) callconv(.winapi) HRESULT,
    };
};
pub const ICompositor7 = extern struct {
    vtable: *const VTable,
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var _r: *DispatcherQueue = undefined;
        const _c = self.vtable.get_DispatcherQueue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateAnimationPropertyInfo(self: *@This()) core.HResult!*AnimationPropertyInfo {
        var _r: *AnimationPropertyInfo = undefined;
        const _c = self.vtable.CreateAnimationPropertyInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateRectangleClip(self: *@This()) core.HResult!*RectangleClip {
        var _r: *RectangleClip = undefined;
        const _c = self.vtable.CreateRectangleClip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateRectangleClipWithLeftAndTopAndRightAndBottom(self: *@This(), left: f32, top: f32, right: f32, bottom: f32) core.HResult!*RectangleClip {
        var _r: *RectangleClip = undefined;
        const _c = self.vtable.CreateRectangleClipWithLeftAndTopAndRightAndBottom(@ptrCast(self), left, top, right, bottom, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateRectangleClipWithLeftAndTopAndRightAndBottomAndTopLeftRadiusAndTopRightRadiusAndBottomRightRadiusAndBottomLeftRadius(self: *@This(), left: f32, top: f32, right: f32, bottom: f32, topLeftRadius: Vector2, topRightRadius: Vector2, bottomRightRadius: Vector2, bottomLeftRadius: Vector2) core.HResult!*RectangleClip {
        var _r: *RectangleClip = undefined;
        const _c = self.vtable.CreateRectangleClipWithLeftAndTopAndRightAndBottomAndTopLeftRadiusAndTopRightRadiusAndBottomRightRadiusAndBottomLeftRadius(@ptrCast(self), left, top, right, bottom, topLeftRadius, topRightRadius, bottomRightRadius, bottomLeftRadius, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositor7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d3483fad-9a12-53ba-bfc8-88b7ff7977c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DispatcherQueue: *const fn(self: *anyopaque, _r: **DispatcherQueue) callconv(.winapi) HRESULT,
        CreateAnimationPropertyInfo: *const fn(self: *anyopaque, _r: **AnimationPropertyInfo) callconv(.winapi) HRESULT,
        CreateRectangleClip: *const fn(self: *anyopaque, _r: **RectangleClip) callconv(.winapi) HRESULT,
        CreateRectangleClipWithLeftAndTopAndRightAndBottom: *const fn(self: *anyopaque, left: f32, top: f32, right: f32, bottom: f32, _r: **RectangleClip) callconv(.winapi) HRESULT,
        CreateRectangleClipWithLeftAndTopAndRightAndBottomAndTopLeftRadiusAndTopRightRadiusAndBottomRightRadiusAndBottomLeftRadius: *const fn(self: *anyopaque, left: f32, top: f32, right: f32, bottom: f32, topLeftRadius: Vector2, topRightRadius: Vector2, bottomRightRadius: Vector2, bottomLeftRadius: Vector2, _r: **RectangleClip) callconv(.winapi) HRESULT,
    };
};
pub const ICompositor8 = extern struct {
    vtable: *const VTable,
    pub fn CreateAnimationController(self: *@This()) core.HResult!*AnimationController {
        var _r: *AnimationController = undefined;
        const _c = self.vtable.CreateAnimationController(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositor8";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a0bdee2-fe7b-5f62-a366-9cf8effe2112";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateAnimationController: *const fn(self: *anyopaque, _r: **AnimationController) callconv(.winapi) HRESULT,
    };
};
pub const ICompositorStatics = extern struct {
    vtable: *const VTable,
    pub fn getMaxGlobalPlaybackRate(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MaxGlobalPlaybackRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinGlobalPlaybackRate(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MinGlobalPlaybackRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "080db93e-121e-4d97-8b74-1dfcf91987ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MaxGlobalPlaybackRate: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        get_MinGlobalPlaybackRate: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const ICompositorWithBlurredWallpaperBackdropBrush = extern struct {
    vtable: *const VTable,
    pub fn TryCreateBlurredWallpaperBackdropBrush(self: *@This()) core.HResult!*CompositionBackdropBrush {
        var _r: *CompositionBackdropBrush = undefined;
        const _c = self.vtable.TryCreateBlurredWallpaperBackdropBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositorWithBlurredWallpaperBackdropBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0d8fb190-f122-5b8d-9fdd-543b0d8eb7f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCreateBlurredWallpaperBackdropBrush: *const fn(self: *anyopaque, _r: **CompositionBackdropBrush) callconv(.winapi) HRESULT,
    };
};
pub const ICompositorWithProjectedShadow = extern struct {
    vtable: *const VTable,
    pub fn CreateProjectedShadowCaster(self: *@This()) core.HResult!*CompositionProjectedShadowCaster {
        var _r: *CompositionProjectedShadowCaster = undefined;
        const _c = self.vtable.CreateProjectedShadowCaster(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateProjectedShadow(self: *@This()) core.HResult!*CompositionProjectedShadow {
        var _r: *CompositionProjectedShadow = undefined;
        const _c = self.vtable.CreateProjectedShadow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateProjectedShadowReceiver(self: *@This()) core.HResult!*CompositionProjectedShadowReceiver {
        var _r: *CompositionProjectedShadowReceiver = undefined;
        const _c = self.vtable.CreateProjectedShadowReceiver(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositorWithProjectedShadow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a2e6330e-8a60-5a38-bb85-b44ea901677c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateProjectedShadowCaster: *const fn(self: *anyopaque, _r: **CompositionProjectedShadowCaster) callconv(.winapi) HRESULT,
        CreateProjectedShadow: *const fn(self: *anyopaque, _r: **CompositionProjectedShadow) callconv(.winapi) HRESULT,
        CreateProjectedShadowReceiver: *const fn(self: *anyopaque, _r: **CompositionProjectedShadowReceiver) callconv(.winapi) HRESULT,
    };
};
pub const ICompositorWithRadialGradient = extern struct {
    vtable: *const VTable,
    pub fn CreateRadialGradientBrush(self: *@This()) core.HResult!*CompositionRadialGradientBrush {
        var _r: *CompositionRadialGradientBrush = undefined;
        const _c = self.vtable.CreateRadialGradientBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositorWithRadialGradient";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98b9c1a7-8e71-4b53-b4a8-69ba5d19dc5b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateRadialGradientBrush: *const fn(self: *anyopaque, _r: **CompositionRadialGradientBrush) callconv(.winapi) HRESULT,
    };
};
pub const ICompositorWithVisualSurface = extern struct {
    vtable: *const VTable,
    pub fn CreateVisualSurface(self: *@This()) core.HResult!*CompositionVisualSurface {
        var _r: *CompositionVisualSurface = undefined;
        const _c = self.vtable.CreateVisualSurface(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICompositorWithVisualSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cfa1658b-0123-4551-8891-89bdcc40322b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateVisualSurface: *const fn(self: *anyopaque, _r: **CompositionVisualSurface) callconv(.winapi) HRESULT,
    };
};
pub const IContainerVisual = extern struct {
    vtable: *const VTable,
    pub fn getChildren(self: *@This()) core.HResult!*VisualCollection {
        var _r: *VisualCollection = undefined;
        const _c = self.vtable.get_Children(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IContainerVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "02f6bc74-ed20-4773-afe6-d49b4a93db32";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Children: *const fn(self: *anyopaque, _r: **VisualCollection) callconv(.winapi) HRESULT,
    };
};
pub const IContainerVisualFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.IContainerVisualFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0363a65b-c7da-4d9a-95f4-69b5c8df670b";
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
pub const ICubicBezierEasingFunction = extern struct {
    vtable: *const VTable,
    pub fn getControlPoint1(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_ControlPoint1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getControlPoint2(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_ControlPoint2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ICubicBezierEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "32350666-c1e8-44f9-96b8-c98acf0ae698";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ControlPoint1: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        get_ControlPoint2: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
    };
};
pub const IDelegatedInkTrailVisual = extern struct {
    vtable: *const VTable,
    pub fn AddTrailPoints(self: *@This(), inkPoints: [*]InkTrailPoint) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.AddTrailPoints(@ptrCast(self), inkPoints, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn AddTrailPointsWithPrediction(self: *@This(), inkPoints: [*]InkTrailPoint, predictedInkPoints: [*]InkTrailPoint) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.AddTrailPointsWithPrediction(@ptrCast(self), inkPoints, predictedInkPoints, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RemoveTrailPoints(self: *@This(), generationId: u32) core.HResult!void {
        const _c = self.vtable.RemoveTrailPoints(@ptrCast(self), generationId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn StartNewTrail(self: *@This(), color: Color) core.HResult!void {
        const _c = self.vtable.StartNewTrail(@ptrCast(self), color);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IDelegatedInkTrailVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "856e60b1-e1ab-5b23-8e3d-d513f221c998";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddTrailPoints: *const fn(self: *anyopaque, inkPoints: [*]InkTrailPoint, _r: *u32) callconv(.winapi) HRESULT,
        AddTrailPointsWithPrediction: *const fn(self: *anyopaque, inkPoints: [*]InkTrailPoint, predictedInkPoints: [*]InkTrailPoint, _r: *u32) callconv(.winapi) HRESULT,
        RemoveTrailPoints: *const fn(self: *anyopaque, generationId: u32) callconv(.winapi) HRESULT,
        StartNewTrail: *const fn(self: *anyopaque, color: Color) callconv(.winapi) HRESULT,
    };
};
pub const IDelegatedInkTrailVisualStatics = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), compositor: *Compositor) core.HResult!*DelegatedInkTrailVisual {
        var _r: *DelegatedInkTrailVisual = undefined;
        const _c = self.vtable.Create(@ptrCast(self), compositor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateForSwapChain(self: *@This(), compositor: *Compositor, swapChain: *ICompositionSurface) core.HResult!*DelegatedInkTrailVisual {
        var _r: *DelegatedInkTrailVisual = undefined;
        const _c = self.vtable.CreateForSwapChain(@ptrCast(self), compositor, swapChain, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IDelegatedInkTrailVisualStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0daf6bd5-42c6-555c-9267-e0ac663af836";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, compositor: *Compositor, _r: **DelegatedInkTrailVisual) callconv(.winapi) HRESULT,
        CreateForSwapChain: *const fn(self: *anyopaque, compositor: *Compositor, swapChain: *ICompositionSurface, _r: **DelegatedInkTrailVisual) callconv(.winapi) HRESULT,
    };
};
pub const IDistantLight = extern struct {
    vtable: *const VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Color(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Color(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCoordinateSpace(self: *@This()) core.HResult!*Visual {
        var _r: *Visual = undefined;
        const _c = self.vtable.get_CoordinateSpace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCoordinateSpace(self: *@This(), value: *Visual) core.HResult!void {
        const _c = self.vtable.put_CoordinateSpace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDirection(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Direction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDirection(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Direction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IDistantLight";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "318cfafc-5ce3-4b55-ab5d-07a00353ac99";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_CoordinateSpace: *const fn(self: *anyopaque, _r: **Visual) callconv(.winapi) HRESULT,
        put_CoordinateSpace: *const fn(self: *anyopaque, value: *Visual) callconv(.winapi) HRESULT,
        get_Direction: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_Direction: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
    };
};
pub const IDistantLight2 = extern struct {
    vtable: *const VTable,
    pub fn getIntensity(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Intensity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIntensity(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Intensity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IDistantLight2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dbcdaa1c-294b-48d7-b60e-76df64aa392b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Intensity: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Intensity: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IDropShadow = extern struct {
    vtable: *const VTable,
    pub fn getBlurRadius(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_BlurRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBlurRadius(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_BlurRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Color(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Color(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMask(self: *@This()) core.HResult!*CompositionBrush {
        var _r: *CompositionBrush = undefined;
        const _c = self.vtable.get_Mask(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMask(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const _c = self.vtable.put_Mask(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOpacity(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Opacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpacity(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Opacity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IDropShadow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb977c07-a154-4851-85e7-a8924c84fad8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BlurRadius: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_BlurRadius: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_Mask: *const fn(self: *anyopaque, _r: **CompositionBrush) callconv(.winapi) HRESULT,
        put_Mask: *const fn(self: *anyopaque, value: *CompositionBrush) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_Opacity: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Opacity: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IDropShadow2 = extern struct {
    vtable: *const VTable,
    pub fn getSourcePolicy(self: *@This()) core.HResult!CompositionDropShadowSourcePolicy {
        var _r: CompositionDropShadowSourcePolicy = undefined;
        const _c = self.vtable.get_SourcePolicy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSourcePolicy(self: *@This(), value: CompositionDropShadowSourcePolicy) core.HResult!void {
        const _c = self.vtable.put_SourcePolicy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IDropShadow2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6c4218bc-15b9-4c2d-8d4a-0767df11977a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SourcePolicy: *const fn(self: *anyopaque, _r: *CompositionDropShadowSourcePolicy) callconv(.winapi) HRESULT,
        put_SourcePolicy: *const fn(self: *anyopaque, value: CompositionDropShadowSourcePolicy) callconv(.winapi) HRESULT,
    };
};
pub const IElasticEasingFunction = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        var _r: CompositionEasingFunctionMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOscillations(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Oscillations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpringiness(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Springiness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IElasticEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66de6285-054e-5594-8475-c22cb51f1bd5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *CompositionEasingFunctionMode) callconv(.winapi) HRESULT,
        get_Oscillations: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Springiness: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IExponentialEasingFunction = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        var _r: CompositionEasingFunctionMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExponent(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Exponent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IExponentialEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f7d1a51-98d2-5638-a34a-00486554c750";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *CompositionEasingFunctionMode) callconv(.winapi) HRESULT,
        get_Exponent: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IExpressionAnimation = extern struct {
    vtable: *const VTable,
    pub fn getExpression(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Expression(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpression(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Expression(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IExpressionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6acc5431-7d3d-4bf3-abb6-f44bdc4888c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Expression: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Expression: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IImplicitAnimationCollection = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.IImplicitAnimationCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0598a3ff-0a92-4c9d-a427-b25519250dbf";
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
pub const IInsetClip = extern struct {
    vtable: *const VTable,
    pub fn getBottomInset(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_BottomInset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBottomInset(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_BottomInset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLeftInset(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_LeftInset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLeftInset(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_LeftInset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRightInset(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RightInset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRightInset(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RightInset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTopInset(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_TopInset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTopInset(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_TopInset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IInsetClip";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e73e647-84c7-477a-b474-5880e0442e15";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BottomInset: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_BottomInset: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_LeftInset: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_LeftInset: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RightInset: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RightInset: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_TopInset: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_TopInset: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IKeyFrameAnimation = extern struct {
    vtable: *const VTable,
    pub fn getDelayTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DelayTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDelayTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_DelayTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIterationBehavior(self: *@This()) core.HResult!AnimationIterationBehavior {
        var _r: AnimationIterationBehavior = undefined;
        const _c = self.vtable.get_IterationBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIterationBehavior(self: *@This(), value: AnimationIterationBehavior) core.HResult!void {
        const _c = self.vtable.put_IterationBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIterationCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_IterationCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIterationCount(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_IterationCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyFrameCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_KeyFrameCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStopBehavior(self: *@This()) core.HResult!AnimationStopBehavior {
        var _r: AnimationStopBehavior = undefined;
        const _c = self.vtable.get_StopBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStopBehavior(self: *@This(), value: AnimationStopBehavior) core.HResult!void {
        const _c = self.vtable.put_StopBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertExpressionKeyFrame(self: *@This(), normalizedProgressKey: f32, value: HSTRING) core.HResult!void {
        const _c = self.vtable.InsertExpressionKeyFrame(@ptrCast(self), normalizedProgressKey, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertExpressionKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: HSTRING, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const _c = self.vtable.InsertExpressionKeyFrameWithEasingFunction(@ptrCast(self), normalizedProgressKey, value, easingFunction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IKeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "126e7f22-3ae9-4540-9a8a-deae8a4a4a84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DelayTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_DelayTime: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_IterationBehavior: *const fn(self: *anyopaque, _r: *AnimationIterationBehavior) callconv(.winapi) HRESULT,
        put_IterationBehavior: *const fn(self: *anyopaque, value: AnimationIterationBehavior) callconv(.winapi) HRESULT,
        get_IterationCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_IterationCount: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_KeyFrameCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_StopBehavior: *const fn(self: *anyopaque, _r: *AnimationStopBehavior) callconv(.winapi) HRESULT,
        put_StopBehavior: *const fn(self: *anyopaque, value: AnimationStopBehavior) callconv(.winapi) HRESULT,
        InsertExpressionKeyFrame: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: HSTRING) callconv(.winapi) HRESULT,
        InsertExpressionKeyFrameWithEasingFunction: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: HSTRING, easingFunction: *CompositionEasingFunction) callconv(.winapi) HRESULT,
    };
};
pub const IKeyFrameAnimation2 = extern struct {
    vtable: *const VTable,
    pub fn getDirection(self: *@This()) core.HResult!AnimationDirection {
        var _r: AnimationDirection = undefined;
        const _c = self.vtable.get_Direction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDirection(self: *@This(), value: AnimationDirection) core.HResult!void {
        const _c = self.vtable.put_Direction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IKeyFrameAnimation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f4b488bb-2940-4ec0-a41a-eb6d801a2f18";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Direction: *const fn(self: *anyopaque, _r: *AnimationDirection) callconv(.winapi) HRESULT,
        put_Direction: *const fn(self: *anyopaque, value: AnimationDirection) callconv(.winapi) HRESULT,
    };
};
pub const IKeyFrameAnimation3 = extern struct {
    vtable: *const VTable,
    pub fn getDelayBehavior(self: *@This()) core.HResult!AnimationDelayBehavior {
        var _r: AnimationDelayBehavior = undefined;
        const _c = self.vtable.get_DelayBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDelayBehavior(self: *@This(), value: AnimationDelayBehavior) core.HResult!void {
        const _c = self.vtable.put_DelayBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IKeyFrameAnimation3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "845bf0b4-d8de-462f-8753-c80d43c6ff5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DelayBehavior: *const fn(self: *anyopaque, _r: *AnimationDelayBehavior) callconv(.winapi) HRESULT,
        put_DelayBehavior: *const fn(self: *anyopaque, value: AnimationDelayBehavior) callconv(.winapi) HRESULT,
    };
};
pub const IKeyFrameAnimationFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.IKeyFrameAnimationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bf0803f8-712a-4fc1-8c87-970859ed8d2e";
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
pub const ILayerVisual = extern struct {
    vtable: *const VTable,
    pub fn getEffect(self: *@This()) core.HResult!*CompositionEffectBrush {
        var _r: *CompositionEffectBrush = undefined;
        const _c = self.vtable.get_Effect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEffect(self: *@This(), value: *CompositionEffectBrush) core.HResult!void {
        const _c = self.vtable.put_Effect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ILayerVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af843985-0444-4887-8e83-b40b253f822c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Effect: *const fn(self: *anyopaque, _r: **CompositionEffectBrush) callconv(.winapi) HRESULT,
        put_Effect: *const fn(self: *anyopaque, value: *CompositionEffectBrush) callconv(.winapi) HRESULT,
    };
};
pub const ILayerVisual2 = extern struct {
    vtable: *const VTable,
    pub fn getShadow(self: *@This()) core.HResult!*CompositionShadow {
        var _r: *CompositionShadow = undefined;
        const _c = self.vtable.get_Shadow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShadow(self: *@This(), value: *CompositionShadow) core.HResult!void {
        const _c = self.vtable.put_Shadow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ILayerVisual2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98f9aeeb-6f23-49f1-90b1-1f59a14fbce3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Shadow: *const fn(self: *anyopaque, _r: **CompositionShadow) callconv(.winapi) HRESULT,
        put_Shadow: *const fn(self: *anyopaque, value: *CompositionShadow) callconv(.winapi) HRESULT,
    };
};
pub const ILinearEasingFunction = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.ILinearEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9400975a-c7a6-46b3-acf7-1a268a0a117d";
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
pub const INaturalMotionAnimation = extern struct {
    vtable: *const VTable,
    pub fn getDelayBehavior(self: *@This()) core.HResult!AnimationDelayBehavior {
        var _r: AnimationDelayBehavior = undefined;
        const _c = self.vtable.get_DelayBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDelayBehavior(self: *@This(), value: AnimationDelayBehavior) core.HResult!void {
        const _c = self.vtable.put_DelayBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDelayTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DelayTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDelayTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_DelayTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStopBehavior(self: *@This()) core.HResult!AnimationStopBehavior {
        var _r: AnimationStopBehavior = undefined;
        const _c = self.vtable.get_StopBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStopBehavior(self: *@This(), value: AnimationStopBehavior) core.HResult!void {
        const _c = self.vtable.put_StopBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.INaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "438de12d-769b-4821-a949-284a6547e873";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DelayBehavior: *const fn(self: *anyopaque, _r: *AnimationDelayBehavior) callconv(.winapi) HRESULT,
        put_DelayBehavior: *const fn(self: *anyopaque, value: AnimationDelayBehavior) callconv(.winapi) HRESULT,
        get_DelayTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_DelayTime: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_StopBehavior: *const fn(self: *anyopaque, _r: *AnimationStopBehavior) callconv(.winapi) HRESULT,
        put_StopBehavior: *const fn(self: *anyopaque, value: AnimationStopBehavior) callconv(.winapi) HRESULT,
    };
};
pub const INaturalMotionAnimationFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.INaturalMotionAnimationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f53acb06-cf6a-4387-a3fe-5221f3e7e0e0";
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
pub const IPathKeyFrameAnimation = extern struct {
    vtable: *const VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, path: *CompositionPath) core.HResult!void {
        const _c = self.vtable.InsertKeyFrame(@ptrCast(self), normalizedProgressKey, path);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, path: *CompositionPath, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const _c = self.vtable.InsertKeyFrameWithEasingFunction(@ptrCast(self), normalizedProgressKey, path, easingFunction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IPathKeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d0d18c9-1576-4b3f-be60-1d5031f5e71b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InsertKeyFrame: *const fn(self: *anyopaque, normalizedProgressKey: f32, path: *CompositionPath) callconv(.winapi) HRESULT,
        InsertKeyFrameWithEasingFunction: *const fn(self: *anyopaque, normalizedProgressKey: f32, path: *CompositionPath, easingFunction: *CompositionEasingFunction) callconv(.winapi) HRESULT,
    };
};
pub const IPointLight = extern struct {
    vtable: *const VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Color(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Color(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getConstantAttenuation(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_ConstantAttenuation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putConstantAttenuation(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_ConstantAttenuation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCoordinateSpace(self: *@This()) core.HResult!*Visual {
        var _r: *Visual = undefined;
        const _c = self.vtable.get_CoordinateSpace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCoordinateSpace(self: *@This(), value: *Visual) core.HResult!void {
        const _c = self.vtable.put_CoordinateSpace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLinearAttenuation(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_LinearAttenuation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLinearAttenuation(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_LinearAttenuation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getQuadraticAttenuation(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_QuadraticAttenuation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putQuadraticAttenuation(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_QuadraticAttenuation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IPointLight";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b18545b3-0c5a-4ab0-bedc-4f3546948272";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Color: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Color: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_ConstantAttenuation: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_ConstantAttenuation: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_CoordinateSpace: *const fn(self: *anyopaque, _r: **Visual) callconv(.winapi) HRESULT,
        put_CoordinateSpace: *const fn(self: *anyopaque, value: *Visual) callconv(.winapi) HRESULT,
        get_LinearAttenuation: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_LinearAttenuation: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_QuadraticAttenuation: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_QuadraticAttenuation: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IPointLight2 = extern struct {
    vtable: *const VTable,
    pub fn getIntensity(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Intensity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIntensity(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Intensity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IPointLight2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efe98f2c-0678-4f69-b164-a810d995bcb7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Intensity: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Intensity: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IPointLight3 = extern struct {
    vtable: *const VTable,
    pub fn getMinAttenuationCutoff(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MinAttenuationCutoff(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinAttenuationCutoff(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_MinAttenuationCutoff(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxAttenuationCutoff(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MaxAttenuationCutoff(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxAttenuationCutoff(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_MaxAttenuationCutoff(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IPointLight3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c0a8367-d4e9-468a-87ae-7ba43ab29485";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinAttenuationCutoff: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_MinAttenuationCutoff: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_MaxAttenuationCutoff: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_MaxAttenuationCutoff: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IPowerEasingFunction = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        var _r: CompositionEasingFunctionMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPower(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Power(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IPowerEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3ff53d6-138b-5815-891a-b7f615ccc563";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *CompositionEasingFunctionMode) callconv(.winapi) HRESULT,
        get_Power: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const IQuaternionKeyFrameAnimation = extern struct {
    vtable: *const VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: Quaternion) core.HResult!void {
        const _c = self.vtable.InsertKeyFrame(@ptrCast(self), normalizedProgressKey, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: Quaternion, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const _c = self.vtable.InsertKeyFrameWithEasingFunction(@ptrCast(self), normalizedProgressKey, value, easingFunction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IQuaternionKeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "404e5835-ecf6-4240-8520-671279cf36bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InsertKeyFrame: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: Quaternion) callconv(.winapi) HRESULT,
        InsertKeyFrameWithEasingFunction: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: Quaternion, easingFunction: *CompositionEasingFunction) callconv(.winapi) HRESULT,
    };
};
pub const IRectangleClip = extern struct {
    vtable: *const VTable,
    pub fn getBottom(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Bottom(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBottom(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Bottom(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBottomLeftRadius(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_BottomLeftRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBottomLeftRadius(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_BottomLeftRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBottomRightRadius(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_BottomRightRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBottomRightRadius(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_BottomRightRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLeft(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Left(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLeft(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Left(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRight(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Right(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRight(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Right(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTop(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Top(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTop(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Top(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTopLeftRadius(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_TopLeftRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTopLeftRadius(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_TopLeftRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTopRightRadius(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_TopRightRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTopRightRadius(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_TopRightRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IRectangleClip";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3e7549e-00b4-5b53-8be8-353f6c433101";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Bottom: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Bottom: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_BottomLeftRadius: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_BottomLeftRadius: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_BottomRightRadius: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_BottomRightRadius: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_Left: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Left: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Right: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Right: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Top: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Top: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_TopLeftRadius: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_TopLeftRadius: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_TopRightRadius: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_TopRightRadius: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
    };
};
pub const IRedirectVisual = extern struct {
    vtable: *const VTable,
    pub fn getSource(self: *@This()) core.HResult!*Visual {
        var _r: *Visual = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSource(self: *@This(), value: *Visual) core.HResult!void {
        const _c = self.vtable.put_Source(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IRedirectVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8cc6e340-8b75-5422-b06f-09ffe9f8617e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **Visual) callconv(.winapi) HRESULT,
        put_Source: *const fn(self: *anyopaque, value: *Visual) callconv(.winapi) HRESULT,
    };
};
pub const IRenderingDeviceReplacedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getGraphicsDevice(self: *@This()) core.HResult!*CompositionGraphicsDevice {
        var _r: *CompositionGraphicsDevice = undefined;
        const _c = self.vtable.get_GraphicsDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IRenderingDeviceReplacedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a31ac7d-28bf-4e7a-8524-71679d480f38";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_GraphicsDevice: *const fn(self: *anyopaque, _r: **CompositionGraphicsDevice) callconv(.winapi) HRESULT,
    };
};
pub const IScalarKeyFrameAnimation = extern struct {
    vtable: *const VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: f32) core.HResult!void {
        const _c = self.vtable.InsertKeyFrame(@ptrCast(self), normalizedProgressKey, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: f32, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const _c = self.vtable.InsertKeyFrameWithEasingFunction(@ptrCast(self), normalizedProgressKey, value, easingFunction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IScalarKeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae288fa9-252c-4b95-a725-bf85e38000a1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InsertKeyFrame: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: f32) callconv(.winapi) HRESULT,
        InsertKeyFrameWithEasingFunction: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: f32, easingFunction: *CompositionEasingFunction) callconv(.winapi) HRESULT,
    };
};
pub const IScalarNaturalMotionAnimation = extern struct {
    vtable: *const VTable,
    pub fn getFinalValue(self: *@This()) core.HResult!*IReference(f32) {
        var _r: *IReference(f32) = undefined;
        const _c = self.vtable.get_FinalValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFinalValue(self: *@This(), value: *IReference(f32)) core.HResult!void {
        const _c = self.vtable.put_FinalValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInitialValue(self: *@This()) core.HResult!*IReference(f32) {
        var _r: *IReference(f32) = undefined;
        const _c = self.vtable.get_InitialValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInitialValue(self: *@This(), value: *IReference(f32)) core.HResult!void {
        const _c = self.vtable.put_InitialValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInitialVelocity(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_InitialVelocity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInitialVelocity(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_InitialVelocity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IScalarNaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "94a94581-bf92-495b-b5bd-d2c659430737";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FinalValue: *const fn(self: *anyopaque, _r: **IReference(f32)) callconv(.winapi) HRESULT,
        put_FinalValue: *const fn(self: *anyopaque, value: *IReference(f32)) callconv(.winapi) HRESULT,
        get_InitialValue: *const fn(self: *anyopaque, _r: **IReference(f32)) callconv(.winapi) HRESULT,
        put_InitialValue: *const fn(self: *anyopaque, value: *IReference(f32)) callconv(.winapi) HRESULT,
        get_InitialVelocity: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_InitialVelocity: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const IScalarNaturalMotionAnimationFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.IScalarNaturalMotionAnimationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "835aa4fc-671c-41dd-af48-ae8def8b1529";
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
pub const IShapeVisual = extern struct {
    vtable: *const VTable,
    pub fn getShapes(self: *@This()) core.HResult!*CompositionShapeCollection {
        var _r: *CompositionShapeCollection = undefined;
        const _c = self.vtable.get_Shapes(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViewBox(self: *@This()) core.HResult!*CompositionViewBox {
        var _r: *CompositionViewBox = undefined;
        const _c = self.vtable.get_ViewBox(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putViewBox(self: *@This(), value: *CompositionViewBox) core.HResult!void {
        const _c = self.vtable.put_ViewBox(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IShapeVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2bd13c3-ba7e-4b0f-9126-ffb7536b8176";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Shapes: *const fn(self: *anyopaque, _r: **CompositionShapeCollection) callconv(.winapi) HRESULT,
        get_ViewBox: *const fn(self: *anyopaque, _r: **CompositionViewBox) callconv(.winapi) HRESULT,
        put_ViewBox: *const fn(self: *anyopaque, value: *CompositionViewBox) callconv(.winapi) HRESULT,
    };
};
pub const ISineEasingFunction = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        var _r: CompositionEasingFunctionMode = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ISineEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f1b518bf-9563-5474-bd13-44b2df4b1d58";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *CompositionEasingFunctionMode) callconv(.winapi) HRESULT,
    };
};
pub const ISpotLight = extern struct {
    vtable: *const VTable,
    pub fn getConstantAttenuation(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_ConstantAttenuation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putConstantAttenuation(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_ConstantAttenuation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCoordinateSpace(self: *@This()) core.HResult!*Visual {
        var _r: *Visual = undefined;
        const _c = self.vtable.get_CoordinateSpace(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCoordinateSpace(self: *@This(), value: *Visual) core.HResult!void {
        const _c = self.vtable.put_CoordinateSpace(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDirection(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Direction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDirection(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Direction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInnerConeAngle(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_InnerConeAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInnerConeAngle(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_InnerConeAngle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInnerConeAngleInDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_InnerConeAngleInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInnerConeAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_InnerConeAngleInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInnerConeColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_InnerConeColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInnerConeColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_InnerConeColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLinearAttenuation(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_LinearAttenuation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLinearAttenuation(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_LinearAttenuation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOuterConeAngle(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_OuterConeAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOuterConeAngle(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_OuterConeAngle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOuterConeAngleInDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_OuterConeAngleInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOuterConeAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_OuterConeAngleInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOuterConeColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_OuterConeColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOuterConeColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_OuterConeColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getQuadraticAttenuation(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_QuadraticAttenuation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putQuadraticAttenuation(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_QuadraticAttenuation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ISpotLight";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a9fe273-44a1-4f95-a422-8fa5116bdb44";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ConstantAttenuation: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_ConstantAttenuation: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_CoordinateSpace: *const fn(self: *anyopaque, _r: **Visual) callconv(.winapi) HRESULT,
        put_CoordinateSpace: *const fn(self: *anyopaque, value: *Visual) callconv(.winapi) HRESULT,
        get_Direction: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_Direction: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_InnerConeAngle: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_InnerConeAngle: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_InnerConeAngleInDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_InnerConeAngleInDegrees: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_InnerConeColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_InnerConeColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_LinearAttenuation: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_LinearAttenuation: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_OuterConeAngle: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_OuterConeAngle: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_OuterConeAngleInDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_OuterConeAngleInDegrees: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_OuterConeColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_OuterConeColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_QuadraticAttenuation: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_QuadraticAttenuation: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const ISpotLight2 = extern struct {
    vtable: *const VTable,
    pub fn getInnerConeIntensity(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_InnerConeIntensity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInnerConeIntensity(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_InnerConeIntensity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOuterConeIntensity(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_OuterConeIntensity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOuterConeIntensity(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_OuterConeIntensity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ISpotLight2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64ee615e-0686-4dea-a9e8-bc3a8c701459";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InnerConeIntensity: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_InnerConeIntensity: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_OuterConeIntensity: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_OuterConeIntensity: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const ISpotLight3 = extern struct {
    vtable: *const VTable,
    pub fn getMinAttenuationCutoff(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MinAttenuationCutoff(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinAttenuationCutoff(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_MinAttenuationCutoff(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxAttenuationCutoff(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_MaxAttenuationCutoff(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxAttenuationCutoff(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_MaxAttenuationCutoff(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ISpotLight3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4d03eea-131f-480e-859e-b82705b74360";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinAttenuationCutoff: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_MinAttenuationCutoff: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_MaxAttenuationCutoff: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_MaxAttenuationCutoff: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
    };
};
pub const ISpringScalarNaturalMotionAnimation = extern struct {
    vtable: *const VTable,
    pub fn getDampingRatio(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_DampingRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDampingRatio(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_DampingRatio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPeriod(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Period(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPeriod(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Period(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ISpringScalarNaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0572a95f-37f9-4fbe-b87b-5cd03a89501c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DampingRatio: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_DampingRatio: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Period: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Period: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const ISpringVector2NaturalMotionAnimation = extern struct {
    vtable: *const VTable,
    pub fn getDampingRatio(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_DampingRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDampingRatio(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_DampingRatio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPeriod(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Period(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPeriod(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Period(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ISpringVector2NaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23f494b5-ee73-4f0f-a423-402b946df4b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DampingRatio: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_DampingRatio: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Period: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Period: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const ISpringVector3NaturalMotionAnimation = extern struct {
    vtable: *const VTable,
    pub fn getDampingRatio(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_DampingRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDampingRatio(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_DampingRatio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPeriod(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Period(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPeriod(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Period(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ISpringVector3NaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6c8749df-d57b-4794-8e2d-cecb11e194e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DampingRatio: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_DampingRatio: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Period: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Period: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const ISpriteVisual = extern struct {
    vtable: *const VTable,
    pub fn getBrush(self: *@This()) core.HResult!*CompositionBrush {
        var _r: *CompositionBrush = undefined;
        const _c = self.vtable.get_Brush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBrush(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const _c = self.vtable.put_Brush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ISpriteVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08e05581-1ad1-4f97-9757-402d76e4233b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Brush: *const fn(self: *anyopaque, _r: **CompositionBrush) callconv(.winapi) HRESULT,
        put_Brush: *const fn(self: *anyopaque, value: *CompositionBrush) callconv(.winapi) HRESULT,
    };
};
pub const ISpriteVisual2 = extern struct {
    vtable: *const VTable,
    pub fn getShadow(self: *@This()) core.HResult!*CompositionShadow {
        var _r: *CompositionShadow = undefined;
        const _c = self.vtable.get_Shadow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShadow(self: *@This(), value: *CompositionShadow) core.HResult!void {
        const _c = self.vtable.put_Shadow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ISpriteVisual2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "588c9664-997a-4850-91fe-53cb58f81ce9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Shadow: *const fn(self: *anyopaque, _r: **CompositionShadow) callconv(.winapi) HRESULT,
        put_Shadow: *const fn(self: *anyopaque, value: *CompositionShadow) callconv(.winapi) HRESULT,
    };
};
pub const IStepEasingFunction = extern struct {
    vtable: *const VTable,
    pub fn getFinalStep(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_FinalStep(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFinalStep(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_FinalStep(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInitialStep(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_InitialStep(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInitialStep(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_InitialStep(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsFinalStepSingleFrame(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFinalStepSingleFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsFinalStepSingleFrame(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsFinalStepSingleFrame(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsInitialStepSingleFrame(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInitialStepSingleFrame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsInitialStepSingleFrame(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsInitialStepSingleFrame(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStepCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_StepCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStepCount(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_StepCount(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IStepEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0caa74b-560c-4a0b-a5f6-206ca8c3ecd6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FinalStep: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_FinalStep: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_InitialStep: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_InitialStep: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_IsFinalStepSingleFrame: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsFinalStepSingleFrame: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsInitialStepSingleFrame: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsInitialStepSingleFrame: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_StepCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_StepCount: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IVector2KeyFrameAnimation = extern struct {
    vtable: *const VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: Vector2) core.HResult!void {
        const _c = self.vtable.InsertKeyFrame(@ptrCast(self), normalizedProgressKey, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: Vector2, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const _c = self.vtable.InsertKeyFrameWithEasingFunction(@ptrCast(self), normalizedProgressKey, value, easingFunction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IVector2KeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df414515-4e29-4f11-b55e-bf2a6eb36294";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InsertKeyFrame: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: Vector2) callconv(.winapi) HRESULT,
        InsertKeyFrameWithEasingFunction: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: Vector2, easingFunction: *CompositionEasingFunction) callconv(.winapi) HRESULT,
    };
};
pub const IVector2NaturalMotionAnimation = extern struct {
    vtable: *const VTable,
    pub fn getFinalValue(self: *@This()) core.HResult!*IReference(Vector2) {
        var _r: *IReference(Vector2) = undefined;
        const _c = self.vtable.get_FinalValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFinalValue(self: *@This(), value: *IReference(Vector2)) core.HResult!void {
        const _c = self.vtable.put_FinalValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInitialValue(self: *@This()) core.HResult!*IReference(Vector2) {
        var _r: *IReference(Vector2) = undefined;
        const _c = self.vtable.get_InitialValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInitialValue(self: *@This(), value: *IReference(Vector2)) core.HResult!void {
        const _c = self.vtable.put_InitialValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInitialVelocity(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_InitialVelocity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInitialVelocity(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_InitialVelocity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IVector2NaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f3e0b7d-e512-479d-a00c-77c93a30a395";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FinalValue: *const fn(self: *anyopaque, _r: **IReference(Vector2)) callconv(.winapi) HRESULT,
        put_FinalValue: *const fn(self: *anyopaque, value: *IReference(Vector2)) callconv(.winapi) HRESULT,
        get_InitialValue: *const fn(self: *anyopaque, _r: **IReference(Vector2)) callconv(.winapi) HRESULT,
        put_InitialValue: *const fn(self: *anyopaque, value: *IReference(Vector2)) callconv(.winapi) HRESULT,
        get_InitialVelocity: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_InitialVelocity: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
    };
};
pub const IVector2NaturalMotionAnimationFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.IVector2NaturalMotionAnimationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c74ff61-0761-48a2-bddb-6afcc52b89d8";
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
pub const IVector3KeyFrameAnimation = extern struct {
    vtable: *const VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: Vector3) core.HResult!void {
        const _c = self.vtable.InsertKeyFrame(@ptrCast(self), normalizedProgressKey, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: Vector3, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const _c = self.vtable.InsertKeyFrameWithEasingFunction(@ptrCast(self), normalizedProgressKey, value, easingFunction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IVector3KeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8039daa-a281-43c2-a73d-b68e3c533c40";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InsertKeyFrame: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: Vector3) callconv(.winapi) HRESULT,
        InsertKeyFrameWithEasingFunction: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: Vector3, easingFunction: *CompositionEasingFunction) callconv(.winapi) HRESULT,
    };
};
pub const IVector3NaturalMotionAnimation = extern struct {
    vtable: *const VTable,
    pub fn getFinalValue(self: *@This()) core.HResult!*IReference(Vector3) {
        var _r: *IReference(Vector3) = undefined;
        const _c = self.vtable.get_FinalValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFinalValue(self: *@This(), value: *IReference(Vector3)) core.HResult!void {
        const _c = self.vtable.put_FinalValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInitialValue(self: *@This()) core.HResult!*IReference(Vector3) {
        var _r: *IReference(Vector3) = undefined;
        const _c = self.vtable.get_InitialValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInitialValue(self: *@This(), value: *IReference(Vector3)) core.HResult!void {
        const _c = self.vtable.put_InitialValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInitialVelocity(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_InitialVelocity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInitialVelocity(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_InitialVelocity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IVector3NaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c17042c-e2ca-45ad-969e-4e78b7b9ad41";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FinalValue: *const fn(self: *anyopaque, _r: **IReference(Vector3)) callconv(.winapi) HRESULT,
        put_FinalValue: *const fn(self: *anyopaque, value: *IReference(Vector3)) callconv(.winapi) HRESULT,
        get_InitialValue: *const fn(self: *anyopaque, _r: **IReference(Vector3)) callconv(.winapi) HRESULT,
        put_InitialValue: *const fn(self: *anyopaque, value: *IReference(Vector3)) callconv(.winapi) HRESULT,
        get_InitialVelocity: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_InitialVelocity: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
    };
};
pub const IVector3NaturalMotionAnimationFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.IVector3NaturalMotionAnimationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "21a81d2f-0880-457b-ac87-b609018c876d";
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
pub const IVector4KeyFrameAnimation = extern struct {
    vtable: *const VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: Vector4) core.HResult!void {
        const _c = self.vtable.InsertKeyFrame(@ptrCast(self), normalizedProgressKey, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: Vector4, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const _c = self.vtable.InsertKeyFrameWithEasingFunction(@ptrCast(self), normalizedProgressKey, value, easingFunction);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IVector4KeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2457945b-addd-4385-9606-b6a3d5e4e1b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InsertKeyFrame: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: Vector4) callconv(.winapi) HRESULT,
        InsertKeyFrameWithEasingFunction: *const fn(self: *anyopaque, normalizedProgressKey: f32, value: Vector4, easingFunction: *CompositionEasingFunction) callconv(.winapi) HRESULT,
    };
};
pub const IVisual = extern struct {
    vtable: *const VTable,
    pub fn getAnchorPoint(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_AnchorPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAnchorPoint(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_AnchorPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackfaceVisibility(self: *@This()) core.HResult!CompositionBackfaceVisibility {
        var _r: CompositionBackfaceVisibility = undefined;
        const _c = self.vtable.get_BackfaceVisibility(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackfaceVisibility(self: *@This(), value: CompositionBackfaceVisibility) core.HResult!void {
        const _c = self.vtable.put_BackfaceVisibility(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBorderMode(self: *@This()) core.HResult!CompositionBorderMode {
        var _r: CompositionBorderMode = undefined;
        const _c = self.vtable.get_BorderMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBorderMode(self: *@This(), value: CompositionBorderMode) core.HResult!void {
        const _c = self.vtable.put_BorderMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterPoint(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_CenterPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterPoint(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_CenterPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getClip(self: *@This()) core.HResult!*CompositionClip {
        var _r: *CompositionClip = undefined;
        const _c = self.vtable.get_Clip(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClip(self: *@This(), value: *CompositionClip) core.HResult!void {
        const _c = self.vtable.put_Clip(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCompositeMode(self: *@This()) core.HResult!CompositionCompositeMode {
        var _r: CompositionCompositeMode = undefined;
        const _c = self.vtable.get_CompositeMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompositeMode(self: *@This(), value: CompositionCompositeMode) core.HResult!void {
        const _c = self.vtable.put_CompositeMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOpacity(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_Opacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpacity(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_Opacity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOrientation(self: *@This()) core.HResult!Quaternion {
        var _r: Quaternion = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOrientation(self: *@This(), value: Quaternion) core.HResult!void {
        const _c = self.vtable.put_Orientation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getParent(self: *@This()) core.HResult!*ContainerVisual {
        var _r: *ContainerVisual = undefined;
        const _c = self.vtable.get_Parent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RotationAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAngle(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RotationAngle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAngleInDegrees(self: *@This()) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.get_RotationAngleInDegrees(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const _c = self.vtable.put_RotationAngleInDegrees(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAxis(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_RotationAxis(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAxis(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_RotationAxis(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScale(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_Scale(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScale(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_Scale(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSize(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSize(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_Size(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransformMatrix(self: *@This()) core.HResult!Matrix4x4 {
        var _r: Matrix4x4 = undefined;
        const _c = self.vtable.get_TransformMatrix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransformMatrix(self: *@This(), value: Matrix4x4) core.HResult!void {
        const _c = self.vtable.put_TransformMatrix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "117e202d-a859-4c89-873b-c2aa566788e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AnchorPoint: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_AnchorPoint: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_BackfaceVisibility: *const fn(self: *anyopaque, _r: *CompositionBackfaceVisibility) callconv(.winapi) HRESULT,
        put_BackfaceVisibility: *const fn(self: *anyopaque, value: CompositionBackfaceVisibility) callconv(.winapi) HRESULT,
        get_BorderMode: *const fn(self: *anyopaque, _r: *CompositionBorderMode) callconv(.winapi) HRESULT,
        put_BorderMode: *const fn(self: *anyopaque, value: CompositionBorderMode) callconv(.winapi) HRESULT,
        get_CenterPoint: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_CenterPoint: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_Clip: *const fn(self: *anyopaque, _r: **CompositionClip) callconv(.winapi) HRESULT,
        put_Clip: *const fn(self: *anyopaque, value: *CompositionClip) callconv(.winapi) HRESULT,
        get_CompositeMode: *const fn(self: *anyopaque, _r: *CompositionCompositeMode) callconv(.winapi) HRESULT,
        put_CompositeMode: *const fn(self: *anyopaque, value: CompositionCompositeMode) callconv(.winapi) HRESULT,
        get_IsVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_Opacity: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_Opacity: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *Quaternion) callconv(.winapi) HRESULT,
        put_Orientation: *const fn(self: *anyopaque, value: Quaternion) callconv(.winapi) HRESULT,
        get_Parent: *const fn(self: *anyopaque, _r: **ContainerVisual) callconv(.winapi) HRESULT,
        get_RotationAngle: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RotationAngle: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RotationAngleInDegrees: *const fn(self: *anyopaque, _r: *f32) callconv(.winapi) HRESULT,
        put_RotationAngleInDegrees: *const fn(self: *anyopaque, value: f32) callconv(.winapi) HRESULT,
        get_RotationAxis: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_RotationAxis: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_Scale: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_Scale: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_Size: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
        get_TransformMatrix: *const fn(self: *anyopaque, _r: *Matrix4x4) callconv(.winapi) HRESULT,
        put_TransformMatrix: *const fn(self: *anyopaque, value: Matrix4x4) callconv(.winapi) HRESULT,
    };
};
pub const IVisual2 = extern struct {
    vtable: *const VTable,
    pub fn getParentForTransform(self: *@This()) core.HResult!*Visual {
        var _r: *Visual = undefined;
        const _c = self.vtable.get_ParentForTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putParentForTransform(self: *@This(), value: *Visual) core.HResult!void {
        const _c = self.vtable.put_ParentForTransform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRelativeOffsetAdjustment(self: *@This()) core.HResult!Vector3 {
        var _r: Vector3 = undefined;
        const _c = self.vtable.get_RelativeOffsetAdjustment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelativeOffsetAdjustment(self: *@This(), value: Vector3) core.HResult!void {
        const _c = self.vtable.put_RelativeOffsetAdjustment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRelativeSizeAdjustment(self: *@This()) core.HResult!Vector2 {
        var _r: Vector2 = undefined;
        const _c = self.vtable.get_RelativeSizeAdjustment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelativeSizeAdjustment(self: *@This(), value: Vector2) core.HResult!void {
        const _c = self.vtable.put_RelativeSizeAdjustment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IVisual2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3052b611-56c3-4c3e-8bf3-f6e1ad473f06";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ParentForTransform: *const fn(self: *anyopaque, _r: **Visual) callconv(.winapi) HRESULT,
        put_ParentForTransform: *const fn(self: *anyopaque, value: *Visual) callconv(.winapi) HRESULT,
        get_RelativeOffsetAdjustment: *const fn(self: *anyopaque, _r: *Vector3) callconv(.winapi) HRESULT,
        put_RelativeOffsetAdjustment: *const fn(self: *anyopaque, value: Vector3) callconv(.winapi) HRESULT,
        get_RelativeSizeAdjustment: *const fn(self: *anyopaque, _r: *Vector2) callconv(.winapi) HRESULT,
        put_RelativeSizeAdjustment: *const fn(self: *anyopaque, value: Vector2) callconv(.winapi) HRESULT,
    };
};
pub const IVisual3 = extern struct {
    vtable: *const VTable,
    pub fn getIsHitTestVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHitTestVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsHitTestVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsHitTestVisible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IVisual3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30be580d-f4b6-4ab7-80dd-3738cbac9f2c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsHitTestVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsHitTestVisible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IVisual4 = extern struct {
    vtable: *const VTable,
    pub fn getIsPixelSnappingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPixelSnappingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsPixelSnappingEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsPixelSnappingEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IVisual4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9476bf11-e24b-5bf9-9ebe-6274109b2711";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPixelSnappingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsPixelSnappingEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IVisualCollection = extern struct {
    vtable: *const VTable,
    pub fn getCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Count(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InsertAbove(self: *@This(), newChild: *Visual, sibling: *Visual) core.HResult!void {
        const _c = self.vtable.InsertAbove(@ptrCast(self), newChild, sibling);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertAtBottom(self: *@This(), newChild: *Visual) core.HResult!void {
        const _c = self.vtable.InsertAtBottom(@ptrCast(self), newChild);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertAtTop(self: *@This(), newChild: *Visual) core.HResult!void {
        const _c = self.vtable.InsertAtTop(@ptrCast(self), newChild);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InsertBelow(self: *@This(), newChild: *Visual, sibling: *Visual) core.HResult!void {
        const _c = self.vtable.InsertBelow(@ptrCast(self), newChild, sibling);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Remove(self: *@This(), child: *Visual) core.HResult!void {
        const _c = self.vtable.Remove(@ptrCast(self), child);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveAll(self: *@This()) core.HResult!void {
        const _c = self.vtable.RemoveAll(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IVisualCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8b745505-fd3e-4a98-84a8-e949468c6bcb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Count: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        InsertAbove: *const fn(self: *anyopaque, newChild: *Visual, sibling: *Visual) callconv(.winapi) HRESULT,
        InsertAtBottom: *const fn(self: *anyopaque, newChild: *Visual) callconv(.winapi) HRESULT,
        InsertAtTop: *const fn(self: *anyopaque, newChild: *Visual) callconv(.winapi) HRESULT,
        InsertBelow: *const fn(self: *anyopaque, newChild: *Visual, sibling: *Visual) callconv(.winapi) HRESULT,
        Remove: *const fn(self: *anyopaque, child: *Visual) callconv(.winapi) HRESULT,
        RemoveAll: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IVisualElement = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.IVisualElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "01e64612-1d82-42f4-8e3f-a722ded33fc7";
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
pub const IVisualElement2 = extern struct {
    vtable: *const VTable,
    pub fn GetVisualInternal(self: *@This()) core.HResult!*Visual {
        var _r: *Visual = undefined;
        const _c = self.vtable.GetVisualInternal(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IVisualElement2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "993ae8a0-6057-5e40-918c-e06e0b7e7c64";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetVisualInternal: *const fn(self: *anyopaque, _r: **Visual) callconv(.winapi) HRESULT,
    };
};
pub const IVisualFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.IVisualFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad0ff93e-b502-4eb5-87b4-9a38a71d0137";
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
pub const IVisualUnorderedCollection = extern struct {
    vtable: *const VTable,
    pub fn getCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Count(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Add(self: *@This(), newVisual: *Visual) core.HResult!void {
        const _c = self.vtable.Add(@ptrCast(self), newVisual);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Remove(self: *@This(), visual: *Visual) core.HResult!void {
        const _c = self.vtable.Remove(@ptrCast(self), visual);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveAll(self: *@This()) core.HResult!void {
        const _c = self.vtable.RemoveAll(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.IVisualUnorderedCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "338faa70-54c8-40a7-8029-c9ceeb0aa250";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Count: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        Add: *const fn(self: *anyopaque, newVisual: *Visual) callconv(.winapi) HRESULT,
        Remove: *const fn(self: *anyopaque, visual: *Visual) callconv(.winapi) HRESULT,
        RemoveAll: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ImplicitAnimationCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,ICompositionAnimationBase)) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,ICompositionAnimationBase)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IMap(HSTRING,ICompositionAnimationBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,ICompositionAnimationBase) {
        var this: ?*IMap(HSTRING,ICompositionAnimationBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IMap(HSTRING,ICompositionAnimationBase) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IMap.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ImplicitAnimationCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImplicitAnimationCollection.GUID;
    pub const IID: Guid = IImplicitAnimationCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImplicitAnimationCollection.SIGNATURE);
};
pub const InitialValueExpressionCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IMap(HSTRING,HSTRING) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IMapView(HSTRING,HSTRING) {
        const this: *IMap(HSTRING,HSTRING) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IMap(HSTRING,HSTRING) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(IKeyValuePair(HSTRING,HSTRING)) {
        var this: ?*IIterable(IKeyValuePair(HSTRING,HSTRING)) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.InitialValueExpressionCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMap.GUID;
    pub const IID: Guid = IMap.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMap.SIGNATURE);
};
pub const InkTrailPoint = extern struct {
    Point: Point,
    Radius: f32,
};
pub const InsetClip = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBottomInset(self: *@This()) core.HResult!f32 {
        const this: *IInsetClip = @ptrCast(self);
        return try this.getBottomInset();
    }
    pub fn putBottomInset(self: *@This(), value: f32) core.HResult!void {
        const this: *IInsetClip = @ptrCast(self);
        return try this.putBottomInset(value);
    }
    pub fn getLeftInset(self: *@This()) core.HResult!f32 {
        const this: *IInsetClip = @ptrCast(self);
        return try this.getLeftInset();
    }
    pub fn putLeftInset(self: *@This(), value: f32) core.HResult!void {
        const this: *IInsetClip = @ptrCast(self);
        return try this.putLeftInset(value);
    }
    pub fn getRightInset(self: *@This()) core.HResult!f32 {
        const this: *IInsetClip = @ptrCast(self);
        return try this.getRightInset();
    }
    pub fn putRightInset(self: *@This(), value: f32) core.HResult!void {
        const this: *IInsetClip = @ptrCast(self);
        return try this.putRightInset(value);
    }
    pub fn getTopInset(self: *@This()) core.HResult!f32 {
        const this: *IInsetClip = @ptrCast(self);
        return try this.getTopInset();
    }
    pub fn putTopInset(self: *@This(), value: f32) core.HResult!void {
        const this: *IInsetClip = @ptrCast(self);
        return try this.putTopInset(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.InsetClip";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInsetClip.GUID;
    pub const IID: Guid = IInsetClip.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInsetClip.SIGNATURE);
};
pub const LayerVisual = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEffect(self: *@This()) core.HResult!*CompositionEffectBrush {
        const this: *ILayerVisual = @ptrCast(self);
        return try this.getEffect();
    }
    pub fn putEffect(self: *@This(), value: *CompositionEffectBrush) core.HResult!void {
        const this: *ILayerVisual = @ptrCast(self);
        return try this.putEffect(value);
    }
    pub fn getShadow(self: *@This()) core.HResult!*CompositionShadow {
        var this: ?*ILayerVisual2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILayerVisual2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShadow();
    }
    pub fn putShadow(self: *@This(), value: *CompositionShadow) core.HResult!void {
        var this: ?*ILayerVisual2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILayerVisual2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putShadow(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.LayerVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILayerVisual.GUID;
    pub const IID: Guid = ILayerVisual.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILayerVisual.SIGNATURE);
};
pub const LinearEasingFunction = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Composition.LinearEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILinearEasingFunction.GUID;
    pub const IID: Guid = ILinearEasingFunction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILinearEasingFunction.SIGNATURE);
};
pub const PathKeyFrameAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, path: *CompositionPath) core.HResult!void {
        const this: *IPathKeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrame(normalizedProgressKey, path);
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, path: *CompositionPath, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const this: *IPathKeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrameWithEasingFunction(normalizedProgressKey, path, easingFunction);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.PathKeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPathKeyFrameAnimation.GUID;
    pub const IID: Guid = IPathKeyFrameAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPathKeyFrameAnimation.SIGNATURE);
};
pub const PointLight = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *IPointLight = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IPointLight = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn getConstantAttenuation(self: *@This()) core.HResult!f32 {
        const this: *IPointLight = @ptrCast(self);
        return try this.getConstantAttenuation();
    }
    pub fn putConstantAttenuation(self: *@This(), value: f32) core.HResult!void {
        const this: *IPointLight = @ptrCast(self);
        return try this.putConstantAttenuation(value);
    }
    pub fn getCoordinateSpace(self: *@This()) core.HResult!*Visual {
        const this: *IPointLight = @ptrCast(self);
        return try this.getCoordinateSpace();
    }
    pub fn putCoordinateSpace(self: *@This(), value: *Visual) core.HResult!void {
        const this: *IPointLight = @ptrCast(self);
        return try this.putCoordinateSpace(value);
    }
    pub fn getLinearAttenuation(self: *@This()) core.HResult!f32 {
        const this: *IPointLight = @ptrCast(self);
        return try this.getLinearAttenuation();
    }
    pub fn putLinearAttenuation(self: *@This(), value: f32) core.HResult!void {
        const this: *IPointLight = @ptrCast(self);
        return try this.putLinearAttenuation(value);
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector3 {
        const this: *IPointLight = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn putOffset(self: *@This(), value: Vector3) core.HResult!void {
        const this: *IPointLight = @ptrCast(self);
        return try this.putOffset(value);
    }
    pub fn getQuadraticAttenuation(self: *@This()) core.HResult!f32 {
        const this: *IPointLight = @ptrCast(self);
        return try this.getQuadraticAttenuation();
    }
    pub fn putQuadraticAttenuation(self: *@This(), value: f32) core.HResult!void {
        const this: *IPointLight = @ptrCast(self);
        return try this.putQuadraticAttenuation(value);
    }
    pub fn getIntensity(self: *@This()) core.HResult!f32 {
        var this: ?*IPointLight2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPointLight2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIntensity();
    }
    pub fn putIntensity(self: *@This(), value: f32) core.HResult!void {
        var this: ?*IPointLight2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPointLight2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIntensity(value);
    }
    pub fn getMinAttenuationCutoff(self: *@This()) core.HResult!f32 {
        var this: ?*IPointLight3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPointLight3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinAttenuationCutoff();
    }
    pub fn putMinAttenuationCutoff(self: *@This(), value: f32) core.HResult!void {
        var this: ?*IPointLight3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPointLight3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMinAttenuationCutoff(value);
    }
    pub fn getMaxAttenuationCutoff(self: *@This()) core.HResult!f32 {
        var this: ?*IPointLight3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPointLight3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxAttenuationCutoff();
    }
    pub fn putMaxAttenuationCutoff(self: *@This(), value: f32) core.HResult!void {
        var this: ?*IPointLight3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPointLight3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMaxAttenuationCutoff(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.PointLight";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointLight.GUID;
    pub const IID: Guid = IPointLight.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointLight.SIGNATURE);
};
pub const PowerEasingFunction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        const this: *IPowerEasingFunction = @ptrCast(self);
        return try this.getMode();
    }
    pub fn getPower(self: *@This()) core.HResult!f32 {
        const this: *IPowerEasingFunction = @ptrCast(self);
        return try this.getPower();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.PowerEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPowerEasingFunction.GUID;
    pub const IID: Guid = IPowerEasingFunction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPowerEasingFunction.SIGNATURE);
};
pub const QuaternionKeyFrameAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: Quaternion) core.HResult!void {
        const this: *IQuaternionKeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrame(normalizedProgressKey, value);
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: Quaternion, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const this: *IQuaternionKeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.QuaternionKeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IQuaternionKeyFrameAnimation.GUID;
    pub const IID: Guid = IQuaternionKeyFrameAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IQuaternionKeyFrameAnimation.SIGNATURE);
};
pub const RectangleClip = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBottom(self: *@This()) core.HResult!f32 {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.getBottom();
    }
    pub fn putBottom(self: *@This(), value: f32) core.HResult!void {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.putBottom(value);
    }
    pub fn getBottomLeftRadius(self: *@This()) core.HResult!Vector2 {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.getBottomLeftRadius();
    }
    pub fn putBottomLeftRadius(self: *@This(), value: Vector2) core.HResult!void {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.putBottomLeftRadius(value);
    }
    pub fn getBottomRightRadius(self: *@This()) core.HResult!Vector2 {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.getBottomRightRadius();
    }
    pub fn putBottomRightRadius(self: *@This(), value: Vector2) core.HResult!void {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.putBottomRightRadius(value);
    }
    pub fn getLeft(self: *@This()) core.HResult!f32 {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.getLeft();
    }
    pub fn putLeft(self: *@This(), value: f32) core.HResult!void {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.putLeft(value);
    }
    pub fn getRight(self: *@This()) core.HResult!f32 {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.getRight();
    }
    pub fn putRight(self: *@This(), value: f32) core.HResult!void {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.putRight(value);
    }
    pub fn getTop(self: *@This()) core.HResult!f32 {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.getTop();
    }
    pub fn putTop(self: *@This(), value: f32) core.HResult!void {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.putTop(value);
    }
    pub fn getTopLeftRadius(self: *@This()) core.HResult!Vector2 {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.getTopLeftRadius();
    }
    pub fn putTopLeftRadius(self: *@This(), value: Vector2) core.HResult!void {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.putTopLeftRadius(value);
    }
    pub fn getTopRightRadius(self: *@This()) core.HResult!Vector2 {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.getTopRightRadius();
    }
    pub fn putTopRightRadius(self: *@This(), value: Vector2) core.HResult!void {
        const this: *IRectangleClip = @ptrCast(self);
        return try this.putTopRightRadius(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.RectangleClip";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRectangleClip.GUID;
    pub const IID: Guid = IRectangleClip.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRectangleClip.SIGNATURE);
};
pub const RedirectVisual = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSource(self: *@This()) core.HResult!*Visual {
        const this: *IRedirectVisual = @ptrCast(self);
        return try this.getSource();
    }
    pub fn putSource(self: *@This(), value: *Visual) core.HResult!void {
        const this: *IRedirectVisual = @ptrCast(self);
        return try this.putSource(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.RedirectVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRedirectVisual.GUID;
    pub const IID: Guid = IRedirectVisual.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRedirectVisual.SIGNATURE);
};
pub const RenderingDeviceReplacedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getGraphicsDevice(self: *@This()) core.HResult!*CompositionGraphicsDevice {
        const this: *IRenderingDeviceReplacedEventArgs = @ptrCast(self);
        return try this.getGraphicsDevice();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.RenderingDeviceReplacedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRenderingDeviceReplacedEventArgs.GUID;
    pub const IID: Guid = IRenderingDeviceReplacedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRenderingDeviceReplacedEventArgs.SIGNATURE);
};
pub const ScalarKeyFrameAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: f32) core.HResult!void {
        const this: *IScalarKeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrame(normalizedProgressKey, value);
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: f32, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const this: *IScalarKeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ScalarKeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScalarKeyFrameAnimation.GUID;
    pub const IID: Guid = IScalarKeyFrameAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScalarKeyFrameAnimation.SIGNATURE);
};
pub const ShapeVisual = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getShapes(self: *@This()) core.HResult!*CompositionShapeCollection {
        const this: *IShapeVisual = @ptrCast(self);
        return try this.getShapes();
    }
    pub fn getViewBox(self: *@This()) core.HResult!*CompositionViewBox {
        const this: *IShapeVisual = @ptrCast(self);
        return try this.getViewBox();
    }
    pub fn putViewBox(self: *@This(), value: *CompositionViewBox) core.HResult!void {
        const this: *IShapeVisual = @ptrCast(self);
        return try this.putViewBox(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.ShapeVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShapeVisual.GUID;
    pub const IID: Guid = IShapeVisual.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShapeVisual.SIGNATURE);
};
pub const SineEasingFunction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!CompositionEasingFunctionMode {
        const this: *ISineEasingFunction = @ptrCast(self);
        return try this.getMode();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.SineEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISineEasingFunction.GUID;
    pub const IID: Guid = ISineEasingFunction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISineEasingFunction.SIGNATURE);
};
pub const SpotLight = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getConstantAttenuation(self: *@This()) core.HResult!f32 {
        const this: *ISpotLight = @ptrCast(self);
        return try this.getConstantAttenuation();
    }
    pub fn putConstantAttenuation(self: *@This(), value: f32) core.HResult!void {
        const this: *ISpotLight = @ptrCast(self);
        return try this.putConstantAttenuation(value);
    }
    pub fn getCoordinateSpace(self: *@This()) core.HResult!*Visual {
        const this: *ISpotLight = @ptrCast(self);
        return try this.getCoordinateSpace();
    }
    pub fn putCoordinateSpace(self: *@This(), value: *Visual) core.HResult!void {
        const this: *ISpotLight = @ptrCast(self);
        return try this.putCoordinateSpace(value);
    }
    pub fn getDirection(self: *@This()) core.HResult!Vector3 {
        const this: *ISpotLight = @ptrCast(self);
        return try this.getDirection();
    }
    pub fn putDirection(self: *@This(), value: Vector3) core.HResult!void {
        const this: *ISpotLight = @ptrCast(self);
        return try this.putDirection(value);
    }
    pub fn getInnerConeAngle(self: *@This()) core.HResult!f32 {
        const this: *ISpotLight = @ptrCast(self);
        return try this.getInnerConeAngle();
    }
    pub fn putInnerConeAngle(self: *@This(), value: f32) core.HResult!void {
        const this: *ISpotLight = @ptrCast(self);
        return try this.putInnerConeAngle(value);
    }
    pub fn getInnerConeAngleInDegrees(self: *@This()) core.HResult!f32 {
        const this: *ISpotLight = @ptrCast(self);
        return try this.getInnerConeAngleInDegrees();
    }
    pub fn putInnerConeAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const this: *ISpotLight = @ptrCast(self);
        return try this.putInnerConeAngleInDegrees(value);
    }
    pub fn getInnerConeColor(self: *@This()) core.HResult!Color {
        const this: *ISpotLight = @ptrCast(self);
        return try this.getInnerConeColor();
    }
    pub fn putInnerConeColor(self: *@This(), value: Color) core.HResult!void {
        const this: *ISpotLight = @ptrCast(self);
        return try this.putInnerConeColor(value);
    }
    pub fn getLinearAttenuation(self: *@This()) core.HResult!f32 {
        const this: *ISpotLight = @ptrCast(self);
        return try this.getLinearAttenuation();
    }
    pub fn putLinearAttenuation(self: *@This(), value: f32) core.HResult!void {
        const this: *ISpotLight = @ptrCast(self);
        return try this.putLinearAttenuation(value);
    }
    pub fn getOffset(self: *@This()) core.HResult!Vector3 {
        const this: *ISpotLight = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn putOffset(self: *@This(), value: Vector3) core.HResult!void {
        const this: *ISpotLight = @ptrCast(self);
        return try this.putOffset(value);
    }
    pub fn getOuterConeAngle(self: *@This()) core.HResult!f32 {
        const this: *ISpotLight = @ptrCast(self);
        return try this.getOuterConeAngle();
    }
    pub fn putOuterConeAngle(self: *@This(), value: f32) core.HResult!void {
        const this: *ISpotLight = @ptrCast(self);
        return try this.putOuterConeAngle(value);
    }
    pub fn getOuterConeAngleInDegrees(self: *@This()) core.HResult!f32 {
        const this: *ISpotLight = @ptrCast(self);
        return try this.getOuterConeAngleInDegrees();
    }
    pub fn putOuterConeAngleInDegrees(self: *@This(), value: f32) core.HResult!void {
        const this: *ISpotLight = @ptrCast(self);
        return try this.putOuterConeAngleInDegrees(value);
    }
    pub fn getOuterConeColor(self: *@This()) core.HResult!Color {
        const this: *ISpotLight = @ptrCast(self);
        return try this.getOuterConeColor();
    }
    pub fn putOuterConeColor(self: *@This(), value: Color) core.HResult!void {
        const this: *ISpotLight = @ptrCast(self);
        return try this.putOuterConeColor(value);
    }
    pub fn getQuadraticAttenuation(self: *@This()) core.HResult!f32 {
        const this: *ISpotLight = @ptrCast(self);
        return try this.getQuadraticAttenuation();
    }
    pub fn putQuadraticAttenuation(self: *@This(), value: f32) core.HResult!void {
        const this: *ISpotLight = @ptrCast(self);
        return try this.putQuadraticAttenuation(value);
    }
    pub fn getInnerConeIntensity(self: *@This()) core.HResult!f32 {
        var this: ?*ISpotLight2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpotLight2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInnerConeIntensity();
    }
    pub fn putInnerConeIntensity(self: *@This(), value: f32) core.HResult!void {
        var this: ?*ISpotLight2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpotLight2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putInnerConeIntensity(value);
    }
    pub fn getOuterConeIntensity(self: *@This()) core.HResult!f32 {
        var this: ?*ISpotLight2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpotLight2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOuterConeIntensity();
    }
    pub fn putOuterConeIntensity(self: *@This(), value: f32) core.HResult!void {
        var this: ?*ISpotLight2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpotLight2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOuterConeIntensity(value);
    }
    pub fn getMinAttenuationCutoff(self: *@This()) core.HResult!f32 {
        var this: ?*ISpotLight3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpotLight3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinAttenuationCutoff();
    }
    pub fn putMinAttenuationCutoff(self: *@This(), value: f32) core.HResult!void {
        var this: ?*ISpotLight3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpotLight3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMinAttenuationCutoff(value);
    }
    pub fn getMaxAttenuationCutoff(self: *@This()) core.HResult!f32 {
        var this: ?*ISpotLight3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpotLight3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxAttenuationCutoff();
    }
    pub fn putMaxAttenuationCutoff(self: *@This(), value: f32) core.HResult!void {
        var this: ?*ISpotLight3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpotLight3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putMaxAttenuationCutoff(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.SpotLight";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpotLight.GUID;
    pub const IID: Guid = ISpotLight.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpotLight.SIGNATURE);
};
pub const SpringScalarNaturalMotionAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDampingRatio(self: *@This()) core.HResult!f32 {
        const this: *ISpringScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.getDampingRatio();
    }
    pub fn putDampingRatio(self: *@This(), value: f32) core.HResult!void {
        const this: *ISpringScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.putDampingRatio(value);
    }
    pub fn getPeriod(self: *@This()) core.HResult!TimeSpan {
        const this: *ISpringScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.getPeriod();
    }
    pub fn putPeriod(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISpringScalarNaturalMotionAnimation = @ptrCast(self);
        return try this.putPeriod(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.SpringScalarNaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpringScalarNaturalMotionAnimation.GUID;
    pub const IID: Guid = ISpringScalarNaturalMotionAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpringScalarNaturalMotionAnimation.SIGNATURE);
};
pub const SpringVector2NaturalMotionAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDampingRatio(self: *@This()) core.HResult!f32 {
        const this: *ISpringVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.getDampingRatio();
    }
    pub fn putDampingRatio(self: *@This(), value: f32) core.HResult!void {
        const this: *ISpringVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.putDampingRatio(value);
    }
    pub fn getPeriod(self: *@This()) core.HResult!TimeSpan {
        const this: *ISpringVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.getPeriod();
    }
    pub fn putPeriod(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISpringVector2NaturalMotionAnimation = @ptrCast(self);
        return try this.putPeriod(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.SpringVector2NaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpringVector2NaturalMotionAnimation.GUID;
    pub const IID: Guid = ISpringVector2NaturalMotionAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpringVector2NaturalMotionAnimation.SIGNATURE);
};
pub const SpringVector3NaturalMotionAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDampingRatio(self: *@This()) core.HResult!f32 {
        const this: *ISpringVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.getDampingRatio();
    }
    pub fn putDampingRatio(self: *@This(), value: f32) core.HResult!void {
        const this: *ISpringVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.putDampingRatio(value);
    }
    pub fn getPeriod(self: *@This()) core.HResult!TimeSpan {
        const this: *ISpringVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.getPeriod();
    }
    pub fn putPeriod(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ISpringVector3NaturalMotionAnimation = @ptrCast(self);
        return try this.putPeriod(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.SpringVector3NaturalMotionAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpringVector3NaturalMotionAnimation.GUID;
    pub const IID: Guid = ISpringVector3NaturalMotionAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpringVector3NaturalMotionAnimation.SIGNATURE);
};
pub const SpriteVisual = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBrush(self: *@This()) core.HResult!*CompositionBrush {
        const this: *ISpriteVisual = @ptrCast(self);
        return try this.getBrush();
    }
    pub fn putBrush(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const this: *ISpriteVisual = @ptrCast(self);
        return try this.putBrush(value);
    }
    pub fn getShadow(self: *@This()) core.HResult!*CompositionShadow {
        var this: ?*ISpriteVisual2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpriteVisual2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShadow();
    }
    pub fn putShadow(self: *@This(), value: *CompositionShadow) core.HResult!void {
        var this: ?*ISpriteVisual2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISpriteVisual2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putShadow(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.SpriteVisual";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpriteVisual.GUID;
    pub const IID: Guid = ISpriteVisual.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpriteVisual.SIGNATURE);
};
pub const StepEasingFunction = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFinalStep(self: *@This()) core.HResult!i32 {
        const this: *IStepEasingFunction = @ptrCast(self);
        return try this.getFinalStep();
    }
    pub fn putFinalStep(self: *@This(), value: i32) core.HResult!void {
        const this: *IStepEasingFunction = @ptrCast(self);
        return try this.putFinalStep(value);
    }
    pub fn getInitialStep(self: *@This()) core.HResult!i32 {
        const this: *IStepEasingFunction = @ptrCast(self);
        return try this.getInitialStep();
    }
    pub fn putInitialStep(self: *@This(), value: i32) core.HResult!void {
        const this: *IStepEasingFunction = @ptrCast(self);
        return try this.putInitialStep(value);
    }
    pub fn getIsFinalStepSingleFrame(self: *@This()) core.HResult!bool {
        const this: *IStepEasingFunction = @ptrCast(self);
        return try this.getIsFinalStepSingleFrame();
    }
    pub fn putIsFinalStepSingleFrame(self: *@This(), value: bool) core.HResult!void {
        const this: *IStepEasingFunction = @ptrCast(self);
        return try this.putIsFinalStepSingleFrame(value);
    }
    pub fn getIsInitialStepSingleFrame(self: *@This()) core.HResult!bool {
        const this: *IStepEasingFunction = @ptrCast(self);
        return try this.getIsInitialStepSingleFrame();
    }
    pub fn putIsInitialStepSingleFrame(self: *@This(), value: bool) core.HResult!void {
        const this: *IStepEasingFunction = @ptrCast(self);
        return try this.putIsInitialStepSingleFrame(value);
    }
    pub fn getStepCount(self: *@This()) core.HResult!i32 {
        const this: *IStepEasingFunction = @ptrCast(self);
        return try this.getStepCount();
    }
    pub fn putStepCount(self: *@This(), value: i32) core.HResult!void {
        const this: *IStepEasingFunction = @ptrCast(self);
        return try this.putStepCount(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.StepEasingFunction";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStepEasingFunction.GUID;
    pub const IID: Guid = IStepEasingFunction.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStepEasingFunction.SIGNATURE);
};
pub const Vector2KeyFrameAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: Vector2) core.HResult!void {
        const this: *IVector2KeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrame(normalizedProgressKey, value);
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: Vector2, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const this: *IVector2KeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Vector2KeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector2KeyFrameAnimation.GUID;
    pub const IID: Guid = IVector2KeyFrameAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector2KeyFrameAnimation.SIGNATURE);
};
pub const Vector3KeyFrameAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: Vector3) core.HResult!void {
        const this: *IVector3KeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrame(normalizedProgressKey, value);
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: Vector3, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const this: *IVector3KeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Vector3KeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector3KeyFrameAnimation.GUID;
    pub const IID: Guid = IVector3KeyFrameAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector3KeyFrameAnimation.SIGNATURE);
};
pub const Vector4KeyFrameAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn InsertKeyFrame(self: *@This(), normalizedProgressKey: f32, value: Vector4) core.HResult!void {
        const this: *IVector4KeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrame(normalizedProgressKey, value);
    }
    pub fn InsertKeyFrameWithEasingFunction(self: *@This(), normalizedProgressKey: f32, value: Vector4, easingFunction: *CompositionEasingFunction) core.HResult!void {
        const this: *IVector4KeyFrameAnimation = @ptrCast(self);
        return try this.InsertKeyFrameWithEasingFunction(normalizedProgressKey, value, easingFunction);
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.Vector4KeyFrameAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector4KeyFrameAnimation.GUID;
    pub const IID: Guid = IVector4KeyFrameAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector4KeyFrameAnimation.SIGNATURE);
};
pub const VisualCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCount(self: *@This()) core.HResult!i32 {
        const this: *IVisualCollection = @ptrCast(self);
        return try this.getCount();
    }
    pub fn InsertAbove(self: *@This(), newChild: *Visual, sibling: *Visual) core.HResult!void {
        const this: *IVisualCollection = @ptrCast(self);
        return try this.InsertAbove(newChild, sibling);
    }
    pub fn InsertAtBottom(self: *@This(), newChild: *Visual) core.HResult!void {
        const this: *IVisualCollection = @ptrCast(self);
        return try this.InsertAtBottom(newChild);
    }
    pub fn InsertAtTop(self: *@This(), newChild: *Visual) core.HResult!void {
        const this: *IVisualCollection = @ptrCast(self);
        return try this.InsertAtTop(newChild);
    }
    pub fn InsertBelow(self: *@This(), newChild: *Visual, sibling: *Visual) core.HResult!void {
        const this: *IVisualCollection = @ptrCast(self);
        return try this.InsertBelow(newChild, sibling);
    }
    pub fn Remove(self: *@This(), child: *Visual) core.HResult!void {
        const this: *IVisualCollection = @ptrCast(self);
        return try this.Remove(child);
    }
    pub fn RemoveAll(self: *@This()) core.HResult!void {
        const this: *IVisualCollection = @ptrCast(self);
        return try this.RemoveAll();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(Visual) {
        var this: ?*IIterable(Visual) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.VisualCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisualCollection.GUID;
    pub const IID: Guid = IVisualCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisualCollection.SIGNATURE);
};
pub const VisualUnorderedCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCount(self: *@This()) core.HResult!i32 {
        const this: *IVisualUnorderedCollection = @ptrCast(self);
        return try this.getCount();
    }
    pub fn Add(self: *@This(), newVisual: *Visual) core.HResult!void {
        const this: *IVisualUnorderedCollection = @ptrCast(self);
        return try this.Add(newVisual);
    }
    pub fn Remove(self: *@This(), visual: *Visual) core.HResult!void {
        const this: *IVisualUnorderedCollection = @ptrCast(self);
        return try this.Remove(visual);
    }
    pub fn RemoveAll(self: *@This()) core.HResult!void {
        const this: *IVisualUnorderedCollection = @ptrCast(self);
        return try this.RemoveAll();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(Visual) {
        var this: ?*IIterable(Visual) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Composition.VisualUnorderedCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisualUnorderedCollection.GUID;
    pub const IID: Guid = IVisualUnorderedCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisualUnorderedCollection.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Matrix3x2 = @import("../Foundation/Numerics.zig").Matrix3x2;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IMapView = @import("../Foundation/Collections.zig").IMapView;
const IKeyValuePair = @import("../Foundation/Collections.zig").IKeyValuePair;
const DispatcherQueue = @import("../System.zig").DispatcherQueue;
const IInspectable = @import("../Foundation.zig").IInspectable;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const IGeometrySource2D = @import("../Graphics.zig").IGeometrySource2D;
const DirectXPixelFormat = @import("../Graphics/DirectX.zig").DirectXPixelFormat;
const IReference = @import("../Foundation.zig").IReference;
const IGraphicsEffect = @import("../Graphics/Effects.zig").IGraphicsEffect;
const Point = @import("../Foundation.zig").Point;
const FactoryCache = @import("../core.zig").FactoryCache;
const TrustLevel = @import("../root.zig").TrustLevel;
const SizeInt32 = @import("../Graphics.zig").SizeInt32;
const Vector3 = @import("../Foundation/Numerics.zig").Vector3;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const Matrix4x4 = @import("../Foundation/Numerics.zig").Matrix4x4;
const Quaternion = @import("../Foundation/Numerics.zig").Quaternion;
const DirectXColorSpace = @import("../Graphics/DirectX.zig").DirectXColorSpace;
const HResult = @import("../Foundation.zig").HResult;
const Guid = @import("../root.zig").Guid;
const PointInt32 = @import("../Graphics.zig").PointInt32;
const IVector = @import("../Foundation/Collections.zig").IVector;
const Size = @import("../Foundation.zig").Size;
const IClosable = @import("../Foundation.zig").IClosable;
const HRESULT = @import("../root.zig").HRESULT;
const CoreDispatcher = @import("./Core.zig").CoreDispatcher;
const IGraphicsEffectSource = @import("../Graphics/Effects.zig").IGraphicsEffectSource;
const DirectXAlphaMode = @import("../Graphics/DirectX.zig").DirectXAlphaMode;
const IMap = @import("../Foundation/Collections.zig").IMap;
const IIterator = @import("../Foundation/Collections.zig").IIterator;
const Vector2 = @import("../Foundation/Numerics.zig").Vector2;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const Vector4 = @import("../Foundation/Numerics.zig").Vector4;
const Color = @import("../UI.zig").Color;
const RectInt32 = @import("../Graphics.zig").RectInt32;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
pub const Core = @import("./Composition/Core.zig");
pub const Desktop = @import("./Composition/Desktop.zig");
pub const Diagnostics = @import("./Composition/Diagnostics.zig");
pub const Effects = @import("./Composition/Effects.zig");
pub const Interactions = @import("./Composition/Interactions.zig");
pub const Scenes = @import("./Composition/Scenes.zig");
