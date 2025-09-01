pub const Transition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.Transition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITransition.GUID;
    pub const IID: Guid = ITransition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITransition.SIGNATURE);
    var _ITransitionFactoryCache: FactoryCache(ITransitionFactory, RUNTIME_NAME) = .{};
};
pub const AddDeleteThemeTransition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAddDeleteThemeTransition.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.AddDeleteThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAddDeleteThemeTransition.GUID;
    pub const IID: Guid = IAddDeleteThemeTransition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAddDeleteThemeTransition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const EasingFunctionBase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEasingMode(self: *@This()) core.HResult!EasingMode {
        const this: *IEasingFunctionBase = @ptrCast(self);
        return try this.getEasingMode();
    }
    pub fn putEasingMode(self: *@This(), value: EasingMode) core.HResult!void {
        const this: *IEasingFunctionBase = @ptrCast(self);
        return try this.putEasingMode(value);
    }
    pub fn Ease(self: *@This(), normalizedTime: f64) core.HResult!f64 {
        const this: *IEasingFunctionBase = @ptrCast(self);
        return try this.Ease(normalizedTime);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getEasingModeProperty() core.HResult!*DependencyProperty {
        const _f = @This().IEasingFunctionBaseStaticsCache.get();
        return try _f.getEasingModeProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.EasingFunctionBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEasingFunctionBase.GUID;
    pub const IID: Guid = IEasingFunctionBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEasingFunctionBase.SIGNATURE);
    var _IEasingFunctionBaseStaticsCache: FactoryCache(IEasingFunctionBaseStatics, RUNTIME_NAME) = .{};
    var _IEasingFunctionBaseFactoryCache: FactoryCache(IEasingFunctionBaseFactory, RUNTIME_NAME) = .{};
};
pub const BackEase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAmplitude(self: *@This()) core.HResult!f64 {
        const this: *IBackEase = @ptrCast(self);
        return try this.getAmplitude();
    }
    pub fn putAmplitude(self: *@This(), value: f64) core.HResult!void {
        const this: *IBackEase = @ptrCast(self);
        return try this.putAmplitude(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBackEase.IID)));
    }
    pub fn getAmplitudeProperty() core.HResult!*DependencyProperty {
        const _f = @This().IBackEaseStaticsCache.get();
        return try _f.getAmplitudeProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.BackEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBackEase.GUID;
    pub const IID: Guid = IBackEase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBackEase.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBackEaseStaticsCache: FactoryCache(IBackEaseStatics, RUNTIME_NAME) = .{};
};
pub const ConnectedAnimationConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ConnectedAnimationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConnectedAnimationConfiguration.GUID;
    pub const IID: Guid = IConnectedAnimationConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConnectedAnimationConfiguration.SIGNATURE);
    var _IConnectedAnimationConfigurationFactoryCache: FactoryCache(IConnectedAnimationConfigurationFactory, RUNTIME_NAME) = .{};
};
pub const BasicConnectedAnimationConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*BasicConnectedAnimationConfiguration {
        const _f = @This().IBasicConnectedAnimationConfigurationFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.BasicConnectedAnimationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBasicConnectedAnimationConfiguration.GUID;
    pub const IID: Guid = IBasicConnectedAnimationConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBasicConnectedAnimationConfiguration.SIGNATURE);
    var _IBasicConnectedAnimationConfigurationFactoryCache: FactoryCache(IBasicConnectedAnimationConfigurationFactory, RUNTIME_NAME) = .{};
};
pub const BeginStoryboard = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStoryboard(self: *@This()) core.HResult!*Storyboard {
        const this: *IBeginStoryboard = @ptrCast(self);
        return try this.getStoryboard();
    }
    pub fn putStoryboard(self: *@This(), value: *Storyboard) core.HResult!void {
        const this: *IBeginStoryboard = @ptrCast(self);
        return try this.putStoryboard(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBeginStoryboard.IID)));
    }
    pub fn getStoryboardProperty() core.HResult!*DependencyProperty {
        const _f = @This().IBeginStoryboardStaticsCache.get();
        return try _f.getStoryboardProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.BeginStoryboard";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBeginStoryboard.GUID;
    pub const IID: Guid = IBeginStoryboard.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBeginStoryboard.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBeginStoryboardStaticsCache: FactoryCache(IBeginStoryboardStatics, RUNTIME_NAME) = .{};
};
pub const BounceEase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBounces(self: *@This()) core.HResult!i32 {
        const this: *IBounceEase = @ptrCast(self);
        return try this.getBounces();
    }
    pub fn putBounces(self: *@This(), value: i32) core.HResult!void {
        const this: *IBounceEase = @ptrCast(self);
        return try this.putBounces(value);
    }
    pub fn getBounciness(self: *@This()) core.HResult!f64 {
        const this: *IBounceEase = @ptrCast(self);
        return try this.getBounciness();
    }
    pub fn putBounciness(self: *@This(), value: f64) core.HResult!void {
        const this: *IBounceEase = @ptrCast(self);
        return try this.putBounciness(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBounceEase.IID)));
    }
    pub fn getBouncesProperty() core.HResult!*DependencyProperty {
        const _f = @This().IBounceEaseStaticsCache.get();
        return try _f.getBouncesProperty();
    }
    pub fn getBouncinessProperty() core.HResult!*DependencyProperty {
        const _f = @This().IBounceEaseStaticsCache.get();
        return try _f.getBouncinessProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.BounceEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBounceEase.GUID;
    pub const IID: Guid = IBounceEase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBounceEase.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBounceEaseStaticsCache: FactoryCache(IBounceEaseStatics, RUNTIME_NAME) = .{};
};
pub const CircleEase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICircleEase.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.CircleEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICircleEase.GUID;
    pub const IID: Guid = ICircleEase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICircleEase.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ClockState = enum(i32) {
    Active = 0,
    Filling = 1,
    Stopped = 2,
};
pub const Timeline = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAutoReverse(self: *@This()) core.HResult!bool {
        const this: *ITimeline = @ptrCast(self);
        return try this.getAutoReverse();
    }
    pub fn putAutoReverse(self: *@This(), value: bool) core.HResult!void {
        const this: *ITimeline = @ptrCast(self);
        return try this.putAutoReverse(value);
    }
    pub fn getBeginTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        const this: *ITimeline = @ptrCast(self);
        return try this.getBeginTime();
    }
    pub fn putBeginTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const this: *ITimeline = @ptrCast(self);
        return try this.putBeginTime(value);
    }
    pub fn getDuration(self: *@This()) core.HResult!Duration {
        const this: *ITimeline = @ptrCast(self);
        return try this.getDuration();
    }
    pub fn putDuration(self: *@This(), value: Duration) core.HResult!void {
        const this: *ITimeline = @ptrCast(self);
        return try this.putDuration(value);
    }
    pub fn getSpeedRatio(self: *@This()) core.HResult!f64 {
        const this: *ITimeline = @ptrCast(self);
        return try this.getSpeedRatio();
    }
    pub fn putSpeedRatio(self: *@This(), value: f64) core.HResult!void {
        const this: *ITimeline = @ptrCast(self);
        return try this.putSpeedRatio(value);
    }
    pub fn getFillBehavior(self: *@This()) core.HResult!FillBehavior {
        const this: *ITimeline = @ptrCast(self);
        return try this.getFillBehavior();
    }
    pub fn putFillBehavior(self: *@This(), value: FillBehavior) core.HResult!void {
        const this: *ITimeline = @ptrCast(self);
        return try this.putFillBehavior(value);
    }
    pub fn getRepeatBehavior(self: *@This()) core.HResult!RepeatBehavior {
        const this: *ITimeline = @ptrCast(self);
        return try this.getRepeatBehavior();
    }
    pub fn putRepeatBehavior(self: *@This(), value: RepeatBehavior) core.HResult!void {
        const this: *ITimeline = @ptrCast(self);
        return try this.putRepeatBehavior(value);
    }
    pub fn addCompleted(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ITimeline = @ptrCast(self);
        return try this.addCompleted(handler);
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ITimeline = @ptrCast(self);
        return try this.removeCompleted(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAllowDependentAnimations() core.HResult!bool {
        const _f = @This().ITimelineStaticsCache.get();
        return try _f.getAllowDependentAnimations();
    }
    pub fn putAllowDependentAnimations(value: bool) core.HResult!void {
        const _f = @This().ITimelineStaticsCache.get();
        return try _f.putAllowDependentAnimations(value);
    }
    pub fn getAutoReverseProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITimelineStaticsCache.get();
        return try _f.getAutoReverseProperty();
    }
    pub fn getBeginTimeProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITimelineStaticsCache.get();
        return try _f.getBeginTimeProperty();
    }
    pub fn getDurationProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITimelineStaticsCache.get();
        return try _f.getDurationProperty();
    }
    pub fn getSpeedRatioProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITimelineStaticsCache.get();
        return try _f.getSpeedRatioProperty();
    }
    pub fn getFillBehaviorProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITimelineStaticsCache.get();
        return try _f.getFillBehaviorProperty();
    }
    pub fn getRepeatBehaviorProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITimelineStaticsCache.get();
        return try _f.getRepeatBehaviorProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Timeline {
        const _f = @This().ITimelineFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.Timeline";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimeline.GUID;
    pub const IID: Guid = ITimeline.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimeline.SIGNATURE);
    var _ITimelineStaticsCache: FactoryCache(ITimelineStatics, RUNTIME_NAME) = .{};
    var _ITimelineFactoryCache: FactoryCache(ITimelineFactory, RUNTIME_NAME) = .{};
};
pub const ColorAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrom(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorAnimation = @ptrCast(self);
        return try this.getFrom();
    }
    pub fn putFrom(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorAnimation = @ptrCast(self);
        return try this.putFrom(value);
    }
    pub fn getTo(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorAnimation = @ptrCast(self);
        return try this.getTo();
    }
    pub fn putTo(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorAnimation = @ptrCast(self);
        return try this.putTo(value);
    }
    pub fn getBy(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IColorAnimation = @ptrCast(self);
        return try this.getBy();
    }
    pub fn putBy(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IColorAnimation = @ptrCast(self);
        return try this.putBy(value);
    }
    pub fn getEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        const this: *IColorAnimation = @ptrCast(self);
        return try this.getEasingFunction();
    }
    pub fn putEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const this: *IColorAnimation = @ptrCast(self);
        return try this.putEasingFunction(value);
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        const this: *IColorAnimation = @ptrCast(self);
        return try this.getEnableDependentAnimation();
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const this: *IColorAnimation = @ptrCast(self);
        return try this.putEnableDependentAnimation(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IColorAnimation.IID)));
    }
    pub fn getFromProperty() core.HResult!*DependencyProperty {
        const _f = @This().IColorAnimationStaticsCache.get();
        return try _f.getFromProperty();
    }
    pub fn getToProperty() core.HResult!*DependencyProperty {
        const _f = @This().IColorAnimationStaticsCache.get();
        return try _f.getToProperty();
    }
    pub fn getByProperty() core.HResult!*DependencyProperty {
        const _f = @This().IColorAnimationStaticsCache.get();
        return try _f.getByProperty();
    }
    pub fn getEasingFunctionProperty() core.HResult!*DependencyProperty {
        const _f = @This().IColorAnimationStaticsCache.get();
        return try _f.getEasingFunctionProperty();
    }
    pub fn getEnableDependentAnimationProperty() core.HResult!*DependencyProperty {
        const _f = @This().IColorAnimationStaticsCache.get();
        return try _f.getEnableDependentAnimationProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ColorAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IColorAnimation.GUID;
    pub const IID: Guid = IColorAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IColorAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IColorAnimationStaticsCache: FactoryCache(IColorAnimationStatics, RUNTIME_NAME) = .{};
};
pub const ColorAnimationUsingKeyFrames = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyFrames(self: *@This()) core.HResult!*ColorKeyFrameCollection {
        const this: *IColorAnimationUsingKeyFrames = @ptrCast(self);
        return try this.getKeyFrames();
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        const this: *IColorAnimationUsingKeyFrames = @ptrCast(self);
        return try this.getEnableDependentAnimation();
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const this: *IColorAnimationUsingKeyFrames = @ptrCast(self);
        return try this.putEnableDependentAnimation(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IColorAnimationUsingKeyFrames.IID)));
    }
    pub fn getEnableDependentAnimationProperty() core.HResult!*DependencyProperty {
        const _f = @This().IColorAnimationUsingKeyFramesStaticsCache.get();
        return try _f.getEnableDependentAnimationProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ColorAnimationUsingKeyFrames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IColorAnimationUsingKeyFrames.GUID;
    pub const IID: Guid = IColorAnimationUsingKeyFrames.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IColorAnimationUsingKeyFrames.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IColorAnimationUsingKeyFramesStaticsCache: FactoryCache(IColorAnimationUsingKeyFramesStatics, RUNTIME_NAME) = .{};
};
pub const ColorKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValue(self: *@This()) core.HResult!Color {
        const this: *IColorKeyFrame = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: Color) core.HResult!void {
        const this: *IColorKeyFrame = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getKeyTime(self: *@This()) core.HResult!KeyTime {
        const this: *IColorKeyFrame = @ptrCast(self);
        return try this.getKeyTime();
    }
    pub fn putKeyTime(self: *@This(), value: KeyTime) core.HResult!void {
        const this: *IColorKeyFrame = @ptrCast(self);
        return try this.putKeyTime(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getValueProperty() core.HResult!*DependencyProperty {
        const _f = @This().IColorKeyFrameStaticsCache.get();
        return try _f.getValueProperty();
    }
    pub fn getKeyTimeProperty() core.HResult!*DependencyProperty {
        const _f = @This().IColorKeyFrameStaticsCache.get();
        return try _f.getKeyTimeProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ColorKeyFrame {
        const _f = @This().IColorKeyFrameFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ColorKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IColorKeyFrame.GUID;
    pub const IID: Guid = IColorKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IColorKeyFrame.SIGNATURE);
    var _IColorKeyFrameStaticsCache: FactoryCache(IColorKeyFrameStatics, RUNTIME_NAME) = .{};
    var _IColorKeyFrameFactoryCache: FactoryCache(IColorKeyFrameFactory, RUNTIME_NAME) = .{};
};
pub const ColorKeyFrameCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(ColorKeyFrame) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(ColorKeyFrame) {
        const this: *IVector(ColorKeyFrame) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(ColorKeyFrame) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(ColorKeyFrame) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(ColorKeyFrame) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(ColorKeyFrame) {
        var this: ?*IIterable(ColorKeyFrame) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVector.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ColorKeyFrameCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const NavigationTransitionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetNavigationStateCore(self: *@This()) core.HResult!HSTRING {
        var this: ?*INavigationTransitionInfoOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INavigationTransitionInfoOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNavigationStateCore();
    }
    pub fn SetNavigationStateCore(self: *@This(), navigationState: HSTRING) core.HResult!void {
        var this: ?*INavigationTransitionInfoOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &INavigationTransitionInfoOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetNavigationStateCore(navigationState);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*NavigationTransitionInfo {
        const _f = @This().INavigationTransitionInfoFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.NavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INavigationTransitionInfo.GUID;
    pub const IID: Guid = INavigationTransitionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INavigationTransitionInfo.SIGNATURE);
    var _INavigationTransitionInfoFactoryCache: FactoryCache(INavigationTransitionInfoFactory, RUNTIME_NAME) = .{};
};
pub const CommonNavigationTransitionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsStaggeringEnabled(self: *@This()) core.HResult!bool {
        const this: *ICommonNavigationTransitionInfo = @ptrCast(self);
        return try this.getIsStaggeringEnabled();
    }
    pub fn putIsStaggeringEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *ICommonNavigationTransitionInfo = @ptrCast(self);
        return try this.putIsStaggeringEnabled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICommonNavigationTransitionInfo.IID)));
    }
    pub fn getIsStaggeringEnabledProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICommonNavigationTransitionInfoStaticsCache.get();
        return try _f.getIsStaggeringEnabledProperty();
    }
    pub fn getIsStaggerElementProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICommonNavigationTransitionInfoStaticsCache.get();
        return try _f.getIsStaggerElementProperty();
    }
    pub fn GetIsStaggerElement(element: *UIElement) core.HResult!bool {
        const _f = @This().ICommonNavigationTransitionInfoStaticsCache.get();
        return try _f.GetIsStaggerElement(element);
    }
    pub fn SetIsStaggerElement(element: *UIElement, value: bool) core.HResult!void {
        const _f = @This().ICommonNavigationTransitionInfoStaticsCache.get();
        return try _f.SetIsStaggerElement(element, value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.CommonNavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICommonNavigationTransitionInfo.GUID;
    pub const IID: Guid = ICommonNavigationTransitionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICommonNavigationTransitionInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ICommonNavigationTransitionInfoStaticsCache: FactoryCache(ICommonNavigationTransitionInfoStatics, RUNTIME_NAME) = .{};
};
pub const ConditionallyIndependentlyAnimatableAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ConditionallyIndependentlyAnimatableAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const ConnectedAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addCompleted(self: *@This(), handler: *TypedEventHandler(ConnectedAnimation,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IConnectedAnimation = @ptrCast(self);
        return try this.addCompleted(handler);
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IConnectedAnimation = @ptrCast(self);
        return try this.removeCompleted(token);
    }
    pub fn TryStart(self: *@This(), destination: *UIElement) core.HResult!bool {
        const this: *IConnectedAnimation = @ptrCast(self);
        return try this.TryStart(destination);
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        const this: *IConnectedAnimation = @ptrCast(self);
        return try this.Cancel();
    }
    pub fn getIsScaleAnimationEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IConnectedAnimation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectedAnimation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsScaleAnimationEnabled();
    }
    pub fn putIsScaleAnimationEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IConnectedAnimation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectedAnimation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsScaleAnimationEnabled(value);
    }
    pub fn TryStartWithCoordinatedElements(self: *@This(), destination: *UIElement, coordinatedElements: *IIterable(UIElement)) core.HResult!bool {
        var this: ?*IConnectedAnimation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectedAnimation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryStartWithCoordinatedElements(destination, coordinatedElements);
    }
    pub fn SetAnimationComponent(self: *@This(), component: ConnectedAnimationComponent, animation: *ICompositionAnimationBase) core.HResult!void {
        var this: ?*IConnectedAnimation2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectedAnimation2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetAnimationComponent(component, animation);
    }
    pub fn getConfiguration(self: *@This()) core.HResult!*ConnectedAnimationConfiguration {
        var this: ?*IConnectedAnimation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectedAnimation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getConfiguration();
    }
    pub fn putConfiguration(self: *@This(), value: *ConnectedAnimationConfiguration) core.HResult!void {
        var this: ?*IConnectedAnimation3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IConnectedAnimation3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putConfiguration(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ConnectedAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConnectedAnimation.GUID;
    pub const IID: Guid = IConnectedAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConnectedAnimation.SIGNATURE);
};
pub const ConnectedAnimationComponent = enum(i32) {
    OffsetX = 0,
    OffsetY = 1,
    CrossFade = 2,
    Scale = 3,
};
pub const ConnectedAnimationService = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDefaultDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IConnectedAnimationService = @ptrCast(self);
        return try this.getDefaultDuration();
    }
    pub fn putDefaultDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IConnectedAnimationService = @ptrCast(self);
        return try this.putDefaultDuration(value);
    }
    pub fn getDefaultEasingFunction(self: *@This()) core.HResult!*CompositionEasingFunction {
        const this: *IConnectedAnimationService = @ptrCast(self);
        return try this.getDefaultEasingFunction();
    }
    pub fn putDefaultEasingFunction(self: *@This(), value: *CompositionEasingFunction) core.HResult!void {
        const this: *IConnectedAnimationService = @ptrCast(self);
        return try this.putDefaultEasingFunction(value);
    }
    pub fn PrepareToAnimate(self: *@This(), key: HSTRING, source: *UIElement) core.HResult!*ConnectedAnimation {
        const this: *IConnectedAnimationService = @ptrCast(self);
        return try this.PrepareToAnimate(key, source);
    }
    pub fn GetAnimation(self: *@This(), key: HSTRING) core.HResult!*ConnectedAnimation {
        const this: *IConnectedAnimationService = @ptrCast(self);
        return try this.GetAnimation(key);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*ConnectedAnimationService {
        const _f = @This().IConnectedAnimationServiceStaticsCache.get();
        return try _f.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ConnectedAnimationService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IConnectedAnimationService.GUID;
    pub const IID: Guid = IConnectedAnimationService.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IConnectedAnimationService.SIGNATURE);
    var _IConnectedAnimationServiceStaticsCache: FactoryCache(IConnectedAnimationServiceStatics, RUNTIME_NAME) = .{};
};
pub const ContentThemeTransition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *IContentThemeTransition = @ptrCast(self);
        return try this.getHorizontalOffset();
    }
    pub fn putHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IContentThemeTransition = @ptrCast(self);
        return try this.putHorizontalOffset(value);
    }
    pub fn getVerticalOffset(self: *@This()) core.HResult!f64 {
        const this: *IContentThemeTransition = @ptrCast(self);
        return try this.getVerticalOffset();
    }
    pub fn putVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IContentThemeTransition = @ptrCast(self);
        return try this.putVerticalOffset(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContentThemeTransition.IID)));
    }
    pub fn getHorizontalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IContentThemeTransitionStaticsCache.get();
        return try _f.getHorizontalOffsetProperty();
    }
    pub fn getVerticalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IContentThemeTransitionStaticsCache.get();
        return try _f.getVerticalOffsetProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ContentThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContentThemeTransition.GUID;
    pub const IID: Guid = IContentThemeTransition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContentThemeTransition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IContentThemeTransitionStaticsCache: FactoryCache(IContentThemeTransitionStatics, RUNTIME_NAME) = .{};
};
pub const ContinuumNavigationTransitionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExitElement(self: *@This()) core.HResult!*UIElement {
        const this: *IContinuumNavigationTransitionInfo = @ptrCast(self);
        return try this.getExitElement();
    }
    pub fn putExitElement(self: *@This(), value: *UIElement) core.HResult!void {
        const this: *IContinuumNavigationTransitionInfo = @ptrCast(self);
        return try this.putExitElement(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContinuumNavigationTransitionInfo.IID)));
    }
    pub fn getExitElementProperty() core.HResult!*DependencyProperty {
        const _f = @This().IContinuumNavigationTransitionInfoStaticsCache.get();
        return try _f.getExitElementProperty();
    }
    pub fn getIsEntranceElementProperty() core.HResult!*DependencyProperty {
        const _f = @This().IContinuumNavigationTransitionInfoStaticsCache.get();
        return try _f.getIsEntranceElementProperty();
    }
    pub fn GetIsEntranceElement(element: *UIElement) core.HResult!bool {
        const _f = @This().IContinuumNavigationTransitionInfoStaticsCache.get();
        return try _f.GetIsEntranceElement(element);
    }
    pub fn SetIsEntranceElement(element: *UIElement, value: bool) core.HResult!void {
        const _f = @This().IContinuumNavigationTransitionInfoStaticsCache.get();
        return try _f.SetIsEntranceElement(element, value);
    }
    pub fn getIsExitElementProperty() core.HResult!*DependencyProperty {
        const _f = @This().IContinuumNavigationTransitionInfoStaticsCache.get();
        return try _f.getIsExitElementProperty();
    }
    pub fn GetIsExitElement(element: *UIElement) core.HResult!bool {
        const _f = @This().IContinuumNavigationTransitionInfoStaticsCache.get();
        return try _f.GetIsExitElement(element);
    }
    pub fn SetIsExitElement(element: *UIElement, value: bool) core.HResult!void {
        const _f = @This().IContinuumNavigationTransitionInfoStaticsCache.get();
        return try _f.SetIsExitElement(element, value);
    }
    pub fn getExitElementContainerProperty() core.HResult!*DependencyProperty {
        const _f = @This().IContinuumNavigationTransitionInfoStaticsCache.get();
        return try _f.getExitElementContainerProperty();
    }
    pub fn GetExitElementContainer(element: *ListViewBase) core.HResult!bool {
        const _f = @This().IContinuumNavigationTransitionInfoStaticsCache.get();
        return try _f.GetExitElementContainer(element);
    }
    pub fn SetExitElementContainer(element: *ListViewBase, value: bool) core.HResult!void {
        const _f = @This().IContinuumNavigationTransitionInfoStaticsCache.get();
        return try _f.SetExitElementContainer(element, value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ContinuumNavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContinuumNavigationTransitionInfo.GUID;
    pub const IID: Guid = IContinuumNavigationTransitionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContinuumNavigationTransitionInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IContinuumNavigationTransitionInfoStaticsCache: FactoryCache(IContinuumNavigationTransitionInfoStatics, RUNTIME_NAME) = .{};
};
pub const CubicEase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICubicEase.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.CubicEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICubicEase.GUID;
    pub const IID: Guid = ICubicEase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICubicEase.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DirectConnectedAnimationConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DirectConnectedAnimationConfiguration {
        const _f = @This().IDirectConnectedAnimationConfigurationFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DirectConnectedAnimationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDirectConnectedAnimationConfiguration.GUID;
    pub const IID: Guid = IDirectConnectedAnimationConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDirectConnectedAnimationConfiguration.SIGNATURE);
    var _IDirectConnectedAnimationConfigurationFactoryCache: FactoryCache(IDirectConnectedAnimationConfigurationFactory, RUNTIME_NAME) = .{};
};
pub const DiscreteColorKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDiscreteColorKeyFrame.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DiscreteColorKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDiscreteColorKeyFrame.GUID;
    pub const IID: Guid = IDiscreteColorKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDiscreteColorKeyFrame.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DoubleKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValue(self: *@This()) core.HResult!f64 {
        const this: *IDoubleKeyFrame = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: f64) core.HResult!void {
        const this: *IDoubleKeyFrame = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getKeyTime(self: *@This()) core.HResult!KeyTime {
        const this: *IDoubleKeyFrame = @ptrCast(self);
        return try this.getKeyTime();
    }
    pub fn putKeyTime(self: *@This(), value: KeyTime) core.HResult!void {
        const this: *IDoubleKeyFrame = @ptrCast(self);
        return try this.putKeyTime(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getValueProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDoubleKeyFrameStaticsCache.get();
        return try _f.getValueProperty();
    }
    pub fn getKeyTimeProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDoubleKeyFrameStaticsCache.get();
        return try _f.getKeyTimeProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DoubleKeyFrame {
        const _f = @This().IDoubleKeyFrameFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DoubleKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDoubleKeyFrame.GUID;
    pub const IID: Guid = IDoubleKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDoubleKeyFrame.SIGNATURE);
    var _IDoubleKeyFrameStaticsCache: FactoryCache(IDoubleKeyFrameStatics, RUNTIME_NAME) = .{};
    var _IDoubleKeyFrameFactoryCache: FactoryCache(IDoubleKeyFrameFactory, RUNTIME_NAME) = .{};
};
pub const DiscreteDoubleKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDiscreteDoubleKeyFrame.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DiscreteDoubleKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDiscreteDoubleKeyFrame.GUID;
    pub const IID: Guid = IDiscreteDoubleKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDiscreteDoubleKeyFrame.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ObjectKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        const this: *IObjectKeyFrame = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IObjectKeyFrame = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getKeyTime(self: *@This()) core.HResult!KeyTime {
        const this: *IObjectKeyFrame = @ptrCast(self);
        return try this.getKeyTime();
    }
    pub fn putKeyTime(self: *@This(), value: KeyTime) core.HResult!void {
        const this: *IObjectKeyFrame = @ptrCast(self);
        return try this.putKeyTime(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getValueProperty() core.HResult!*DependencyProperty {
        const _f = @This().IObjectKeyFrameStaticsCache.get();
        return try _f.getValueProperty();
    }
    pub fn getKeyTimeProperty() core.HResult!*DependencyProperty {
        const _f = @This().IObjectKeyFrameStaticsCache.get();
        return try _f.getKeyTimeProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ObjectKeyFrame {
        const _f = @This().IObjectKeyFrameFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ObjectKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IObjectKeyFrame.GUID;
    pub const IID: Guid = IObjectKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IObjectKeyFrame.SIGNATURE);
    var _IObjectKeyFrameStaticsCache: FactoryCache(IObjectKeyFrameStatics, RUNTIME_NAME) = .{};
    var _IObjectKeyFrameFactoryCache: FactoryCache(IObjectKeyFrameFactory, RUNTIME_NAME) = .{};
};
pub const DiscreteObjectKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDiscreteObjectKeyFrame.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DiscreteObjectKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDiscreteObjectKeyFrame.GUID;
    pub const IID: Guid = IDiscreteObjectKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDiscreteObjectKeyFrame.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PointKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getValue(self: *@This()) core.HResult!Point {
        const this: *IPointKeyFrame = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: Point) core.HResult!void {
        const this: *IPointKeyFrame = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn getKeyTime(self: *@This()) core.HResult!KeyTime {
        const this: *IPointKeyFrame = @ptrCast(self);
        return try this.getKeyTime();
    }
    pub fn putKeyTime(self: *@This(), value: KeyTime) core.HResult!void {
        const this: *IPointKeyFrame = @ptrCast(self);
        return try this.putKeyTime(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getValueProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPointKeyFrameStaticsCache.get();
        return try _f.getValueProperty();
    }
    pub fn getKeyTimeProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPointKeyFrameStaticsCache.get();
        return try _f.getKeyTimeProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PointKeyFrame {
        const _f = @This().IPointKeyFrameFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.PointKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointKeyFrame.GUID;
    pub const IID: Guid = IPointKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointKeyFrame.SIGNATURE);
    var _IPointKeyFrameStaticsCache: FactoryCache(IPointKeyFrameStatics, RUNTIME_NAME) = .{};
    var _IPointKeyFrameFactoryCache: FactoryCache(IPointKeyFrameFactory, RUNTIME_NAME) = .{};
};
pub const DiscretePointKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDiscretePointKeyFrame.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DiscretePointKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDiscretePointKeyFrame.GUID;
    pub const IID: Guid = IDiscretePointKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDiscretePointKeyFrame.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DoubleAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrom(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IDoubleAnimation = @ptrCast(self);
        return try this.getFrom();
    }
    pub fn putFrom(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const this: *IDoubleAnimation = @ptrCast(self);
        return try this.putFrom(value);
    }
    pub fn getTo(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IDoubleAnimation = @ptrCast(self);
        return try this.getTo();
    }
    pub fn putTo(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const this: *IDoubleAnimation = @ptrCast(self);
        return try this.putTo(value);
    }
    pub fn getBy(self: *@This()) core.HResult!*IReference(f64) {
        const this: *IDoubleAnimation = @ptrCast(self);
        return try this.getBy();
    }
    pub fn putBy(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const this: *IDoubleAnimation = @ptrCast(self);
        return try this.putBy(value);
    }
    pub fn getEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        const this: *IDoubleAnimation = @ptrCast(self);
        return try this.getEasingFunction();
    }
    pub fn putEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const this: *IDoubleAnimation = @ptrCast(self);
        return try this.putEasingFunction(value);
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        const this: *IDoubleAnimation = @ptrCast(self);
        return try this.getEnableDependentAnimation();
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const this: *IDoubleAnimation = @ptrCast(self);
        return try this.putEnableDependentAnimation(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDoubleAnimation.IID)));
    }
    pub fn getFromProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDoubleAnimationStaticsCache.get();
        return try _f.getFromProperty();
    }
    pub fn getToProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDoubleAnimationStaticsCache.get();
        return try _f.getToProperty();
    }
    pub fn getByProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDoubleAnimationStaticsCache.get();
        return try _f.getByProperty();
    }
    pub fn getEasingFunctionProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDoubleAnimationStaticsCache.get();
        return try _f.getEasingFunctionProperty();
    }
    pub fn getEnableDependentAnimationProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDoubleAnimationStaticsCache.get();
        return try _f.getEnableDependentAnimationProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DoubleAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDoubleAnimation.GUID;
    pub const IID: Guid = IDoubleAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDoubleAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IDoubleAnimationStaticsCache: FactoryCache(IDoubleAnimationStatics, RUNTIME_NAME) = .{};
};
pub const DoubleAnimationUsingKeyFrames = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyFrames(self: *@This()) core.HResult!*DoubleKeyFrameCollection {
        const this: *IDoubleAnimationUsingKeyFrames = @ptrCast(self);
        return try this.getKeyFrames();
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        const this: *IDoubleAnimationUsingKeyFrames = @ptrCast(self);
        return try this.getEnableDependentAnimation();
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const this: *IDoubleAnimationUsingKeyFrames = @ptrCast(self);
        return try this.putEnableDependentAnimation(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDoubleAnimationUsingKeyFrames.IID)));
    }
    pub fn getEnableDependentAnimationProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDoubleAnimationUsingKeyFramesStaticsCache.get();
        return try _f.getEnableDependentAnimationProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DoubleAnimationUsingKeyFrames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDoubleAnimationUsingKeyFrames.GUID;
    pub const IID: Guid = IDoubleAnimationUsingKeyFrames.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDoubleAnimationUsingKeyFrames.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IDoubleAnimationUsingKeyFramesStaticsCache: FactoryCache(IDoubleAnimationUsingKeyFramesStatics, RUNTIME_NAME) = .{};
};
pub const DoubleKeyFrameCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(DoubleKeyFrame) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(DoubleKeyFrame) {
        const this: *IVector(DoubleKeyFrame) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(DoubleKeyFrame) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(DoubleKeyFrame) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(DoubleKeyFrame) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(DoubleKeyFrame) {
        var this: ?*IIterable(DoubleKeyFrame) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVector.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DoubleKeyFrameCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DragItemThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IDragItemThemeAnimation = @ptrCast(self);
        return try this.getTargetName();
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDragItemThemeAnimation = @ptrCast(self);
        return try this.putTargetName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDragItemThemeAnimation.IID)));
    }
    pub fn getTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDragItemThemeAnimationStaticsCache.get();
        return try _f.getTargetNameProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DragItemThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDragItemThemeAnimation.GUID;
    pub const IID: Guid = IDragItemThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDragItemThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IDragItemThemeAnimationStaticsCache: FactoryCache(IDragItemThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const DragOverThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IDragOverThemeAnimation = @ptrCast(self);
        return try this.getTargetName();
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDragOverThemeAnimation = @ptrCast(self);
        return try this.putTargetName(value);
    }
    pub fn getToOffset(self: *@This()) core.HResult!f64 {
        const this: *IDragOverThemeAnimation = @ptrCast(self);
        return try this.getToOffset();
    }
    pub fn putToOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IDragOverThemeAnimation = @ptrCast(self);
        return try this.putToOffset(value);
    }
    pub fn getDirection(self: *@This()) core.HResult!AnimationDirection {
        const this: *IDragOverThemeAnimation = @ptrCast(self);
        return try this.getDirection();
    }
    pub fn putDirection(self: *@This(), value: AnimationDirection) core.HResult!void {
        const this: *IDragOverThemeAnimation = @ptrCast(self);
        return try this.putDirection(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDragOverThemeAnimation.IID)));
    }
    pub fn getTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDragOverThemeAnimationStaticsCache.get();
        return try _f.getTargetNameProperty();
    }
    pub fn getToOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDragOverThemeAnimationStaticsCache.get();
        return try _f.getToOffsetProperty();
    }
    pub fn getDirectionProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDragOverThemeAnimationStaticsCache.get();
        return try _f.getDirectionProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DragOverThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDragOverThemeAnimation.GUID;
    pub const IID: Guid = IDragOverThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDragOverThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IDragOverThemeAnimationStaticsCache: FactoryCache(IDragOverThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const DrillInNavigationTransitionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDrillInNavigationTransitionInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DrillInNavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDrillInNavigationTransitionInfo.GUID;
    pub const IID: Guid = IDrillInNavigationTransitionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDrillInNavigationTransitionInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DrillInThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEntranceTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IDrillInThemeAnimation = @ptrCast(self);
        return try this.getEntranceTargetName();
    }
    pub fn putEntranceTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDrillInThemeAnimation = @ptrCast(self);
        return try this.putEntranceTargetName(value);
    }
    pub fn getEntranceTarget(self: *@This()) core.HResult!*DependencyObject {
        const this: *IDrillInThemeAnimation = @ptrCast(self);
        return try this.getEntranceTarget();
    }
    pub fn putEntranceTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *IDrillInThemeAnimation = @ptrCast(self);
        return try this.putEntranceTarget(value);
    }
    pub fn getExitTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IDrillInThemeAnimation = @ptrCast(self);
        return try this.getExitTargetName();
    }
    pub fn putExitTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDrillInThemeAnimation = @ptrCast(self);
        return try this.putExitTargetName(value);
    }
    pub fn getExitTarget(self: *@This()) core.HResult!*DependencyObject {
        const this: *IDrillInThemeAnimation = @ptrCast(self);
        return try this.getExitTarget();
    }
    pub fn putExitTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *IDrillInThemeAnimation = @ptrCast(self);
        return try this.putExitTarget(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDrillInThemeAnimation.IID)));
    }
    pub fn getEntranceTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDrillInThemeAnimationStaticsCache.get();
        return try _f.getEntranceTargetNameProperty();
    }
    pub fn getEntranceTargetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDrillInThemeAnimationStaticsCache.get();
        return try _f.getEntranceTargetProperty();
    }
    pub fn getExitTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDrillInThemeAnimationStaticsCache.get();
        return try _f.getExitTargetNameProperty();
    }
    pub fn getExitTargetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDrillInThemeAnimationStaticsCache.get();
        return try _f.getExitTargetProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DrillInThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDrillInThemeAnimation.GUID;
    pub const IID: Guid = IDrillInThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDrillInThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IDrillInThemeAnimationStaticsCache: FactoryCache(IDrillInThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const DrillOutThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEntranceTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IDrillOutThemeAnimation = @ptrCast(self);
        return try this.getEntranceTargetName();
    }
    pub fn putEntranceTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDrillOutThemeAnimation = @ptrCast(self);
        return try this.putEntranceTargetName(value);
    }
    pub fn getEntranceTarget(self: *@This()) core.HResult!*DependencyObject {
        const this: *IDrillOutThemeAnimation = @ptrCast(self);
        return try this.getEntranceTarget();
    }
    pub fn putEntranceTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *IDrillOutThemeAnimation = @ptrCast(self);
        return try this.putEntranceTarget(value);
    }
    pub fn getExitTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IDrillOutThemeAnimation = @ptrCast(self);
        return try this.getExitTargetName();
    }
    pub fn putExitTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDrillOutThemeAnimation = @ptrCast(self);
        return try this.putExitTargetName(value);
    }
    pub fn getExitTarget(self: *@This()) core.HResult!*DependencyObject {
        const this: *IDrillOutThemeAnimation = @ptrCast(self);
        return try this.getExitTarget();
    }
    pub fn putExitTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *IDrillOutThemeAnimation = @ptrCast(self);
        return try this.putExitTarget(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDrillOutThemeAnimation.IID)));
    }
    pub fn getEntranceTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDrillOutThemeAnimationStaticsCache.get();
        return try _f.getEntranceTargetNameProperty();
    }
    pub fn getEntranceTargetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDrillOutThemeAnimationStaticsCache.get();
        return try _f.getEntranceTargetProperty();
    }
    pub fn getExitTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDrillOutThemeAnimationStaticsCache.get();
        return try _f.getExitTargetNameProperty();
    }
    pub fn getExitTargetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDrillOutThemeAnimationStaticsCache.get();
        return try _f.getExitTargetProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DrillOutThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDrillOutThemeAnimation.GUID;
    pub const IID: Guid = IDrillOutThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDrillOutThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IDrillOutThemeAnimationStaticsCache: FactoryCache(IDrillOutThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const DropTargetItemThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IDropTargetItemThemeAnimation = @ptrCast(self);
        return try this.getTargetName();
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IDropTargetItemThemeAnimation = @ptrCast(self);
        return try this.putTargetName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDropTargetItemThemeAnimation.IID)));
    }
    pub fn getTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IDropTargetItemThemeAnimationStaticsCache.get();
        return try _f.getTargetNameProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.DropTargetItemThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDropTargetItemThemeAnimation.GUID;
    pub const IID: Guid = IDropTargetItemThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDropTargetItemThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IDropTargetItemThemeAnimationStaticsCache: FactoryCache(IDropTargetItemThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const EasingColorKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        const this: *IEasingColorKeyFrame = @ptrCast(self);
        return try this.getEasingFunction();
    }
    pub fn putEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const this: *IEasingColorKeyFrame = @ptrCast(self);
        return try this.putEasingFunction(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEasingColorKeyFrame.IID)));
    }
    pub fn getEasingFunctionProperty() core.HResult!*DependencyProperty {
        const _f = @This().IEasingColorKeyFrameStaticsCache.get();
        return try _f.getEasingFunctionProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.EasingColorKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEasingColorKeyFrame.GUID;
    pub const IID: Guid = IEasingColorKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEasingColorKeyFrame.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IEasingColorKeyFrameStaticsCache: FactoryCache(IEasingColorKeyFrameStatics, RUNTIME_NAME) = .{};
};
pub const EasingDoubleKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        const this: *IEasingDoubleKeyFrame = @ptrCast(self);
        return try this.getEasingFunction();
    }
    pub fn putEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const this: *IEasingDoubleKeyFrame = @ptrCast(self);
        return try this.putEasingFunction(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEasingDoubleKeyFrame.IID)));
    }
    pub fn getEasingFunctionProperty() core.HResult!*DependencyProperty {
        const _f = @This().IEasingDoubleKeyFrameStaticsCache.get();
        return try _f.getEasingFunctionProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.EasingDoubleKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEasingDoubleKeyFrame.GUID;
    pub const IID: Guid = IEasingDoubleKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEasingDoubleKeyFrame.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IEasingDoubleKeyFrameStaticsCache: FactoryCache(IEasingDoubleKeyFrameStatics, RUNTIME_NAME) = .{};
};
pub const EasingMode = enum(i32) {
    EaseOut = 0,
    EaseIn = 1,
    EaseInOut = 2,
};
pub const EasingPointKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        const this: *IEasingPointKeyFrame = @ptrCast(self);
        return try this.getEasingFunction();
    }
    pub fn putEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const this: *IEasingPointKeyFrame = @ptrCast(self);
        return try this.putEasingFunction(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEasingPointKeyFrame.IID)));
    }
    pub fn getEasingFunctionProperty() core.HResult!*DependencyProperty {
        const _f = @This().IEasingPointKeyFrameStaticsCache.get();
        return try _f.getEasingFunctionProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.EasingPointKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEasingPointKeyFrame.GUID;
    pub const IID: Guid = IEasingPointKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEasingPointKeyFrame.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IEasingPointKeyFrameStaticsCache: FactoryCache(IEasingPointKeyFrameStatics, RUNTIME_NAME) = .{};
};
pub const EdgeUIThemeTransition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEdge(self: *@This()) core.HResult!EdgeTransitionLocation {
        const this: *IEdgeUIThemeTransition = @ptrCast(self);
        return try this.getEdge();
    }
    pub fn putEdge(self: *@This(), value: EdgeTransitionLocation) core.HResult!void {
        const this: *IEdgeUIThemeTransition = @ptrCast(self);
        return try this.putEdge(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEdgeUIThemeTransition.IID)));
    }
    pub fn getEdgeProperty() core.HResult!*DependencyProperty {
        const _f = @This().IEdgeUIThemeTransitionStaticsCache.get();
        return try _f.getEdgeProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.EdgeUIThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEdgeUIThemeTransition.GUID;
    pub const IID: Guid = IEdgeUIThemeTransition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEdgeUIThemeTransition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IEdgeUIThemeTransitionStaticsCache: FactoryCache(IEdgeUIThemeTransitionStatics, RUNTIME_NAME) = .{};
};
pub const ElasticEase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOscillations(self: *@This()) core.HResult!i32 {
        const this: *IElasticEase = @ptrCast(self);
        return try this.getOscillations();
    }
    pub fn putOscillations(self: *@This(), value: i32) core.HResult!void {
        const this: *IElasticEase = @ptrCast(self);
        return try this.putOscillations(value);
    }
    pub fn getSpringiness(self: *@This()) core.HResult!f64 {
        const this: *IElasticEase = @ptrCast(self);
        return try this.getSpringiness();
    }
    pub fn putSpringiness(self: *@This(), value: f64) core.HResult!void {
        const this: *IElasticEase = @ptrCast(self);
        return try this.putSpringiness(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IElasticEase.IID)));
    }
    pub fn getOscillationsProperty() core.HResult!*DependencyProperty {
        const _f = @This().IElasticEaseStaticsCache.get();
        return try _f.getOscillationsProperty();
    }
    pub fn getSpringinessProperty() core.HResult!*DependencyProperty {
        const _f = @This().IElasticEaseStaticsCache.get();
        return try _f.getSpringinessProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ElasticEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IElasticEase.GUID;
    pub const IID: Guid = IElasticEase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IElasticEase.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IElasticEaseStaticsCache: FactoryCache(IElasticEaseStatics, RUNTIME_NAME) = .{};
};
pub const EntranceNavigationTransitionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEntranceNavigationTransitionInfo.IID)));
    }
    pub fn getIsTargetElementProperty() core.HResult!*DependencyProperty {
        const _f = @This().IEntranceNavigationTransitionInfoStaticsCache.get();
        return try _f.getIsTargetElementProperty();
    }
    pub fn GetIsTargetElement(element: *UIElement) core.HResult!bool {
        const _f = @This().IEntranceNavigationTransitionInfoStaticsCache.get();
        return try _f.GetIsTargetElement(element);
    }
    pub fn SetIsTargetElement(element: *UIElement, value: bool) core.HResult!void {
        const _f = @This().IEntranceNavigationTransitionInfoStaticsCache.get();
        return try _f.SetIsTargetElement(element, value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.EntranceNavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEntranceNavigationTransitionInfo.GUID;
    pub const IID: Guid = IEntranceNavigationTransitionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEntranceNavigationTransitionInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IEntranceNavigationTransitionInfoStaticsCache: FactoryCache(IEntranceNavigationTransitionInfoStatics, RUNTIME_NAME) = .{};
};
pub const EntranceThemeTransition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFromHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *IEntranceThemeTransition = @ptrCast(self);
        return try this.getFromHorizontalOffset();
    }
    pub fn putFromHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IEntranceThemeTransition = @ptrCast(self);
        return try this.putFromHorizontalOffset(value);
    }
    pub fn getFromVerticalOffset(self: *@This()) core.HResult!f64 {
        const this: *IEntranceThemeTransition = @ptrCast(self);
        return try this.getFromVerticalOffset();
    }
    pub fn putFromVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IEntranceThemeTransition = @ptrCast(self);
        return try this.putFromVerticalOffset(value);
    }
    pub fn getIsStaggeringEnabled(self: *@This()) core.HResult!bool {
        const this: *IEntranceThemeTransition = @ptrCast(self);
        return try this.getIsStaggeringEnabled();
    }
    pub fn putIsStaggeringEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IEntranceThemeTransition = @ptrCast(self);
        return try this.putIsStaggeringEnabled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEntranceThemeTransition.IID)));
    }
    pub fn getFromHorizontalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IEntranceThemeTransitionStaticsCache.get();
        return try _f.getFromHorizontalOffsetProperty();
    }
    pub fn getFromVerticalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IEntranceThemeTransitionStaticsCache.get();
        return try _f.getFromVerticalOffsetProperty();
    }
    pub fn getIsStaggeringEnabledProperty() core.HResult!*DependencyProperty {
        const _f = @This().IEntranceThemeTransitionStaticsCache.get();
        return try _f.getIsStaggeringEnabledProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.EntranceThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEntranceThemeTransition.GUID;
    pub const IID: Guid = IEntranceThemeTransition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEntranceThemeTransition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IEntranceThemeTransitionStaticsCache: FactoryCache(IEntranceThemeTransitionStatics, RUNTIME_NAME) = .{};
};
pub const ExponentialEase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExponent(self: *@This()) core.HResult!f64 {
        const this: *IExponentialEase = @ptrCast(self);
        return try this.getExponent();
    }
    pub fn putExponent(self: *@This(), value: f64) core.HResult!void {
        const this: *IExponentialEase = @ptrCast(self);
        return try this.putExponent(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IExponentialEase.IID)));
    }
    pub fn getExponentProperty() core.HResult!*DependencyProperty {
        const _f = @This().IExponentialEaseStaticsCache.get();
        return try _f.getExponentProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ExponentialEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IExponentialEase.GUID;
    pub const IID: Guid = IExponentialEase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IExponentialEase.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IExponentialEaseStaticsCache: FactoryCache(IExponentialEaseStatics, RUNTIME_NAME) = .{};
};
pub const FadeInThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IFadeInThemeAnimation = @ptrCast(self);
        return try this.getTargetName();
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFadeInThemeAnimation = @ptrCast(self);
        return try this.putTargetName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFadeInThemeAnimation.IID)));
    }
    pub fn getTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IFadeInThemeAnimationStaticsCache.get();
        return try _f.getTargetNameProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.FadeInThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFadeInThemeAnimation.GUID;
    pub const IID: Guid = IFadeInThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFadeInThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IFadeInThemeAnimationStaticsCache: FactoryCache(IFadeInThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const FadeOutThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IFadeOutThemeAnimation = @ptrCast(self);
        return try this.getTargetName();
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IFadeOutThemeAnimation = @ptrCast(self);
        return try this.putTargetName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFadeOutThemeAnimation.IID)));
    }
    pub fn getTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IFadeOutThemeAnimationStaticsCache.get();
        return try _f.getTargetNameProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.FadeOutThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFadeOutThemeAnimation.GUID;
    pub const IID: Guid = IFadeOutThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFadeOutThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IFadeOutThemeAnimationStaticsCache: FactoryCache(IFadeOutThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const FillBehavior = enum(i32) {
    HoldEnd = 0,
    Stop = 1,
};
pub const GravityConnectedAnimationConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsShadowEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IGravityConnectedAnimationConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGravityConnectedAnimationConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsShadowEnabled();
    }
    pub fn putIsShadowEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IGravityConnectedAnimationConfiguration2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGravityConnectedAnimationConfiguration2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsShadowEnabled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GravityConnectedAnimationConfiguration {
        const _f = @This().IGravityConnectedAnimationConfigurationFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.GravityConnectedAnimationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGravityConnectedAnimationConfiguration.GUID;
    pub const IID: Guid = IGravityConnectedAnimationConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGravityConnectedAnimationConfiguration.SIGNATURE);
    var _IGravityConnectedAnimationConfigurationFactoryCache: FactoryCache(IGravityConnectedAnimationConfigurationFactory, RUNTIME_NAME) = .{};
};
pub const IAddDeleteThemeTransition = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IAddDeleteThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "adec852e-4424-4dab-99c1-3a04e36a3c48";
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
pub const IBackEase = extern struct {
    vtable: *const VTable,
    pub fn getAmplitude(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Amplitude(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAmplitude(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Amplitude(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IBackEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e47796e7-f805-4a8f-81c9-38e6472caa94";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Amplitude: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Amplitude: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IBackEaseStatics = extern struct {
    vtable: *const VTable,
    pub fn getAmplitudeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AmplitudeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IBackEaseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c70a2ff-a0a0-4786-926c-22321f8f25b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AmplitudeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IBasicConnectedAnimationConfiguration = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IBasicConnectedAnimationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e675f9b5-a4d6-5353-83e6-c89e7cf8d456";
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
pub const IBasicConnectedAnimationConfigurationFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*BasicConnectedAnimationConfiguration {
        var _r: *BasicConnectedAnimationConfiguration = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IBasicConnectedAnimationConfigurationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95e6844a-4377-503c-bee2-11dfcd5570e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **BasicConnectedAnimationConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IBeginStoryboard = extern struct {
    vtable: *const VTable,
    pub fn getStoryboard(self: *@This()) core.HResult!*Storyboard {
        var _r: *Storyboard = undefined;
        const _c = self.vtable.get_Storyboard(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStoryboard(self: *@This(), value: *Storyboard) core.HResult!void {
        const _c = self.vtable.put_Storyboard(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IBeginStoryboard";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "64189fcd-49ec-4e52-a6f6-55324c921053";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Storyboard: *const fn(self: *anyopaque, _r: **Storyboard) callconv(.winapi) HRESULT,
        put_Storyboard: *const fn(self: *anyopaque, value: *Storyboard) callconv(.winapi) HRESULT,
    };
};
pub const IBeginStoryboardStatics = extern struct {
    vtable: *const VTable,
    pub fn getStoryboardProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StoryboardProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IBeginStoryboardStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12cff18c-aa91-4c4a-b82f-df34fc57f94b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StoryboardProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IBounceEase = extern struct {
    vtable: *const VTable,
    pub fn getBounces(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Bounces(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBounces(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Bounces(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBounciness(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Bounciness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBounciness(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Bounciness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IBounceEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2bf1464e-fc71-47ed-85a1-3ba9577718b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Bounces: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Bounces: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Bounciness: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Bounciness: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IBounceEaseStatics = extern struct {
    vtable: *const VTable,
    pub fn getBouncesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_BouncesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBouncinessProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_BouncinessProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IBounceEaseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0701da2-4f73-41c9-b2cb-2ea3105107ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BouncesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_BouncinessProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ICircleEase = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ICircleEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53a3bdb2-9177-4e6e-a043-5082d889ab1f";
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
pub const IColorAnimation = extern struct {
    vtable: *const VTable,
    pub fn getFrom(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_From(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFrom(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_From(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTo(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_To(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTo(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_To(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBy(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_By(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBy(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_By(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        var _r: *EasingFunctionBase = undefined;
        const _c = self.vtable.get_EasingFunction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const _c = self.vtable.put_EasingFunction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_EnableDependentAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_EnableDependentAnimation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IColorAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b8ae8a15-0f63-4694-9467-bdafac1253ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_From: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_From: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_To: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_To: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_By: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_By: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_EasingFunction: *const fn(self: *anyopaque, _r: **EasingFunctionBase) callconv(.winapi) HRESULT,
        put_EasingFunction: *const fn(self: *anyopaque, value: *EasingFunctionBase) callconv(.winapi) HRESULT,
        get_EnableDependentAnimation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_EnableDependentAnimation: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IColorAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getFromProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FromProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getToProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ToProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getByProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ByProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEasingFunctionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EasingFunctionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnableDependentAnimationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EnableDependentAnimationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IColorAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55eaf6e2-87e3-4f48-958f-855b2f9ea9ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FromProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ToProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ByProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_EasingFunctionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_EnableDependentAnimationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IColorAnimationUsingKeyFrames = extern struct {
    vtable: *const VTable,
    pub fn getKeyFrames(self: *@This()) core.HResult!*ColorKeyFrameCollection {
        var _r: *ColorKeyFrameCollection = undefined;
        const _c = self.vtable.get_KeyFrames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_EnableDependentAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_EnableDependentAnimation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IColorAnimationUsingKeyFrames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5c82640-13c3-42aa-9ae2-7e6b51c92f95";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyFrames: *const fn(self: *anyopaque, _r: **ColorKeyFrameCollection) callconv(.winapi) HRESULT,
        get_EnableDependentAnimation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_EnableDependentAnimation: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IColorAnimationUsingKeyFramesStatics = extern struct {
    vtable: *const VTable,
    pub fn getEnableDependentAnimationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EnableDependentAnimationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IColorAnimationUsingKeyFramesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b4723cdc-96e9-48f9-8d92-9b648b2f1cc6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnableDependentAnimationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IColorKeyFrame = extern struct {
    vtable: *const VTable,
    pub fn getValue(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyTime(self: *@This()) core.HResult!KeyTime {
        var _r: KeyTime = undefined;
        const _c = self.vtable.get_KeyTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyTime(self: *@This(), value: KeyTime) core.HResult!void {
        const _c = self.vtable.put_KeyTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IColorKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b51d82d9-0910-4589-a284-b0c9205858e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_KeyTime: *const fn(self: *anyopaque, _r: *KeyTime) callconv(.winapi) HRESULT,
        put_KeyTime: *const fn(self: *anyopaque, value: KeyTime) callconv(.winapi) HRESULT,
    };
};
pub const IColorKeyFrameFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ColorKeyFrame {
        var _r: *ColorKeyFrame = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IColorKeyFrameFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "769bd88a-9cfb-4a7d-96c4-a1e7de6fdb4b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ColorKeyFrame) callconv(.winapi) HRESULT,
    };
};
pub const IColorKeyFrameStatics = extern struct {
    vtable: *const VTable,
    pub fn getValueProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ValueProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyTimeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyTimeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IColorKeyFrameStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c043ae99-210c-430f-9da5-df1082692055";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ValueProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_KeyTimeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ICommonNavigationTransitionInfo = extern struct {
    vtable: *const VTable,
    pub fn getIsStaggeringEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStaggeringEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsStaggeringEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsStaggeringEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ICommonNavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50345692-a555-4624-a361-0a91c1706473";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsStaggeringEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsStaggeringEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICommonNavigationTransitionInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsStaggeringEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsStaggeringEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStaggerElementProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsStaggerElementProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsStaggerElement(self: *@This(), element: *UIElement) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsStaggerElement(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetIsStaggerElement(self: *@This(), element: *UIElement, value: bool) core.HResult!void {
        const _c = self.vtable.SetIsStaggerElement(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ICommonNavigationTransitionInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1e3efe33-50be-4443-883c-e5627201c2e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsStaggeringEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsStaggerElementProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetIsStaggerElement: *const fn(self: *anyopaque, element: *UIElement, _r: *bool) callconv(.winapi) HRESULT,
        SetIsStaggerElement: *const fn(self: *anyopaque, element: *UIElement, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IConnectedAnimation = extern struct {
    vtable: *const VTable,
    pub fn addCompleted(self: *@This(), handler: *TypedEventHandler(ConnectedAnimation,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Completed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Completed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryStart(self: *@This(), destination: *UIElement) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryStart(@ptrCast(self), destination, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Cancel(self: *@This()) core.HResult!void {
        const _c = self.vtable.Cancel(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IConnectedAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3518628c-f387-4c25-ac98-44e86c3cadf0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Completed: *const fn(self: *anyopaque, handler: *TypedEventHandler(ConnectedAnimation,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Completed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        TryStart: *const fn(self: *anyopaque, destination: *UIElement, _r: *bool) callconv(.winapi) HRESULT,
        Cancel: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IConnectedAnimation2 = extern struct {
    vtable: *const VTable,
    pub fn getIsScaleAnimationEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsScaleAnimationEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsScaleAnimationEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsScaleAnimationEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryStart(self: *@This(), destination: *UIElement, coordinatedElements: *IIterable(UIElement)) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryStart(@ptrCast(self), destination, coordinatedElements, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAnimationComponent(self: *@This(), component: ConnectedAnimationComponent, animation: *ICompositionAnimationBase) core.HResult!void {
        const _c = self.vtable.SetAnimationComponent(@ptrCast(self), component, animation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IConnectedAnimation2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d2f8e5c-584b-4ddd-b668-973891431459";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsScaleAnimationEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsScaleAnimationEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        TryStart: *const fn(self: *anyopaque, destination: *UIElement, coordinatedElements: *IIterable(UIElement), _r: *bool) callconv(.winapi) HRESULT,
        SetAnimationComponent: *const fn(self: *anyopaque, component: ConnectedAnimationComponent, animation: *ICompositionAnimationBase) callconv(.winapi) HRESULT,
    };
};
pub const IConnectedAnimation3 = extern struct {
    vtable: *const VTable,
    pub fn getConfiguration(self: *@This()) core.HResult!*ConnectedAnimationConfiguration {
        var _r: *ConnectedAnimationConfiguration = undefined;
        const _c = self.vtable.get_Configuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putConfiguration(self: *@This(), value: *ConnectedAnimationConfiguration) core.HResult!void {
        const _c = self.vtable.put_Configuration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IConnectedAnimation3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6e3040c6-0430-59c0-a80c-cceed2e778dd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Configuration: *const fn(self: *anyopaque, _r: **ConnectedAnimationConfiguration) callconv(.winapi) HRESULT,
        put_Configuration: *const fn(self: *anyopaque, value: *ConnectedAnimationConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IConnectedAnimationConfiguration = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IConnectedAnimationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00218aae-cd8c-5651-92a0-c1db95c03998";
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
pub const IConnectedAnimationConfigurationFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IConnectedAnimationConfigurationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30f9b84b-dd7e-593e-bf75-e959dc0ec52a";
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
pub const IConnectedAnimationService = extern struct {
    vtable: *const VTable,
    pub fn getDefaultDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_DefaultDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDefaultDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_DefaultDuration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDefaultEasingFunction(self: *@This()) core.HResult!*CompositionEasingFunction {
        var _r: *CompositionEasingFunction = undefined;
        const _c = self.vtable.get_DefaultEasingFunction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDefaultEasingFunction(self: *@This(), value: *CompositionEasingFunction) core.HResult!void {
        const _c = self.vtable.put_DefaultEasingFunction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PrepareToAnimate(self: *@This(), key: HSTRING, source: *UIElement) core.HResult!*ConnectedAnimation {
        var _r: *ConnectedAnimation = undefined;
        const _c = self.vtable.PrepareToAnimate(@ptrCast(self), key, source, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAnimation(self: *@This(), key: HSTRING) core.HResult!*ConnectedAnimation {
        var _r: *ConnectedAnimation = undefined;
        const _c = self.vtable.GetAnimation(@ptrCast(self), key, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IConnectedAnimationService";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c6875c9-19bb-4d47-b9aa-66c802dcb9ff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DefaultDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_DefaultDuration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_DefaultEasingFunction: *const fn(self: *anyopaque, _r: **CompositionEasingFunction) callconv(.winapi) HRESULT,
        put_DefaultEasingFunction: *const fn(self: *anyopaque, value: *CompositionEasingFunction) callconv(.winapi) HRESULT,
        PrepareToAnimate: *const fn(self: *anyopaque, key: HSTRING, source: *UIElement, _r: **ConnectedAnimation) callconv(.winapi) HRESULT,
        GetAnimation: *const fn(self: *anyopaque, key: HSTRING, _r: **ConnectedAnimation) callconv(.winapi) HRESULT,
    };
};
pub const IConnectedAnimationServiceStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*ConnectedAnimationService {
        var _r: *ConnectedAnimationService = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IConnectedAnimationServiceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c7078ea5-d688-40e8-8f90-96a6279273d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **ConnectedAnimationService) callconv(.winapi) HRESULT,
    };
};
pub const IContentThemeTransition = extern struct {
    vtable: *const VTable,
    pub fn getHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_HorizontalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_VerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_VerticalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IContentThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f66fc5c3-5915-437d-8e3b-adf8e7f0ab57";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_HorizontalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_VerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_VerticalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IContentThemeTransitionStatics = extern struct {
    vtable: *const VTable,
    pub fn getHorizontalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_HorizontalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_VerticalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IContentThemeTransitionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e8ee385-9a42-4459-afa9-337dc41e1587";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HorizontalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_VerticalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IContinuumNavigationTransitionInfo = extern struct {
    vtable: *const VTable,
    pub fn getExitElement(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_ExitElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExitElement(self: *@This(), value: *UIElement) core.HResult!void {
        const _c = self.vtable.put_ExitElement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IContinuumNavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4be1dbad-8ba6-4004-8438-8a9017978543";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExitElement: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        put_ExitElement: *const fn(self: *anyopaque, value: *UIElement) callconv(.winapi) HRESULT,
    };
};
pub const IContinuumNavigationTransitionInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn getExitElementProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ExitElementProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEntranceElementProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsEntranceElementProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsEntranceElement(self: *@This(), element: *UIElement) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsEntranceElement(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetIsEntranceElement(self: *@This(), element: *UIElement, value: bool) core.HResult!void {
        const _c = self.vtable.SetIsEntranceElement(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsExitElementProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsExitElementProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsExitElement(self: *@This(), element: *UIElement) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsExitElement(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetIsExitElement(self: *@This(), element: *UIElement, value: bool) core.HResult!void {
        const _c = self.vtable.SetIsExitElement(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExitElementContainerProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ExitElementContainerProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetExitElementContainer(self: *@This(), element: *ListViewBase) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetExitElementContainer(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetExitElementContainer(self: *@This(), element: *ListViewBase, value: bool) core.HResult!void {
        const _c = self.vtable.SetExitElementContainer(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IContinuumNavigationTransitionInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e25dd53-b18f-4bf1-b3bc-92f516f29903";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExitElementProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsEntranceElementProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetIsEntranceElement: *const fn(self: *anyopaque, element: *UIElement, _r: *bool) callconv(.winapi) HRESULT,
        SetIsEntranceElement: *const fn(self: *anyopaque, element: *UIElement, value: bool) callconv(.winapi) HRESULT,
        get_IsExitElementProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetIsExitElement: *const fn(self: *anyopaque, element: *UIElement, _r: *bool) callconv(.winapi) HRESULT,
        SetIsExitElement: *const fn(self: *anyopaque, element: *UIElement, value: bool) callconv(.winapi) HRESULT,
        get_ExitElementContainerProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetExitElementContainer: *const fn(self: *anyopaque, element: *ListViewBase, _r: *bool) callconv(.winapi) HRESULT,
        SetExitElementContainer: *const fn(self: *anyopaque, element: *ListViewBase, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICubicEase = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ICubicEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b94fc76-dad7-4354-b1a2-7969fbf6a70d";
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
pub const IDirectConnectedAnimationConfiguration = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDirectConnectedAnimationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ee5d736f-5738-5d86-b770-151948cf365e";
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
pub const IDirectConnectedAnimationConfigurationFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DirectConnectedAnimationConfiguration {
        var _r: *DirectConnectedAnimationConfiguration = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDirectConnectedAnimationConfigurationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "059263e9-d2b3-5a77-9cf4-e26d8b542608";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **DirectConnectedAnimationConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IDiscreteColorKeyFrame = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDiscreteColorKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "230c08f4-e062-4cb1-8e2a-14093d73ed8c";
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
pub const IDiscreteDoubleKeyFrame = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDiscreteDoubleKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5f51f3a-ad11-49ce-8e1c-08fdf1447446";
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
pub const IDiscreteObjectKeyFrame = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDiscreteObjectKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c7dcde89-f12d-4a9c-8199-e7a9ece3a473";
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
pub const IDiscretePointKeyFrame = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDiscretePointKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0a9070d-4c42-4a90-983a-75f5a83a2fbe";
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
pub const IDoubleAnimation = extern struct {
    vtable: *const VTable,
    pub fn getFrom(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_From(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFrom(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const _c = self.vtable.put_From(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTo(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_To(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTo(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const _c = self.vtable.put_To(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBy(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_By(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBy(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const _c = self.vtable.put_By(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        var _r: *EasingFunctionBase = undefined;
        const _c = self.vtable.get_EasingFunction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const _c = self.vtable.put_EasingFunction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_EnableDependentAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_EnableDependentAnimation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDoubleAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e9f3d59-0f07-4bc9-977d-03763ff8154f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_From: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        put_From: *const fn(self: *anyopaque, value: *IReference(f64)) callconv(.winapi) HRESULT,
        get_To: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        put_To: *const fn(self: *anyopaque, value: *IReference(f64)) callconv(.winapi) HRESULT,
        get_By: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        put_By: *const fn(self: *anyopaque, value: *IReference(f64)) callconv(.winapi) HRESULT,
        get_EasingFunction: *const fn(self: *anyopaque, _r: **EasingFunctionBase) callconv(.winapi) HRESULT,
        put_EasingFunction: *const fn(self: *anyopaque, value: *EasingFunctionBase) callconv(.winapi) HRESULT,
        get_EnableDependentAnimation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_EnableDependentAnimation: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IDoubleAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getFromProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FromProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getToProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ToProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getByProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ByProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEasingFunctionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EasingFunctionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnableDependentAnimationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EnableDependentAnimationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDoubleAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e27a935d-f111-43b7-b824-832b58d7786b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FromProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ToProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ByProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_EasingFunctionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_EnableDependentAnimationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IDoubleAnimationUsingKeyFrames = extern struct {
    vtable: *const VTable,
    pub fn getKeyFrames(self: *@This()) core.HResult!*DoubleKeyFrameCollection {
        var _r: *DoubleKeyFrameCollection = undefined;
        const _c = self.vtable.get_KeyFrames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_EnableDependentAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_EnableDependentAnimation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDoubleAnimationUsingKeyFrames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4fee628f-bfee-4f75-83c2-a93b39488473";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyFrames: *const fn(self: *anyopaque, _r: **DoubleKeyFrameCollection) callconv(.winapi) HRESULT,
        get_EnableDependentAnimation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_EnableDependentAnimation: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IDoubleAnimationUsingKeyFramesStatics = extern struct {
    vtable: *const VTable,
    pub fn getEnableDependentAnimationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EnableDependentAnimationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDoubleAnimationUsingKeyFramesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "109bf2f6-c60f-49aa-abf6-f696d492116b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnableDependentAnimationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IDoubleKeyFrame = extern struct {
    vtable: *const VTable,
    pub fn getValue(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyTime(self: *@This()) core.HResult!KeyTime {
        var _r: KeyTime = undefined;
        const _c = self.vtable.get_KeyTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyTime(self: *@This(), value: KeyTime) core.HResult!void {
        const _c = self.vtable.put_KeyTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDoubleKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "674456fd-e81e-4f4e-b4ad-0acfed9ecd68";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_KeyTime: *const fn(self: *anyopaque, _r: *KeyTime) callconv(.winapi) HRESULT,
        put_KeyTime: *const fn(self: *anyopaque, value: KeyTime) callconv(.winapi) HRESULT,
    };
};
pub const IDoubleKeyFrameFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DoubleKeyFrame {
        var _r: *DoubleKeyFrame = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDoubleKeyFrameFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac97dec3-7538-40b9-b152-696f7fbf4722";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **DoubleKeyFrame) callconv(.winapi) HRESULT,
    };
};
pub const IDoubleKeyFrameStatics = extern struct {
    vtable: *const VTable,
    pub fn getValueProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ValueProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyTimeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyTimeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDoubleKeyFrameStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "324641b0-7d37-427a-adeb-43f38bb61a4d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ValueProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_KeyTimeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IDragItemThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDragItemThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c7d5db5-7ed6-4949-b4e6-a78c9f4f978d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDragItemThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDragItemThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6218b9f5-013a-4fb1-86fc-92bc4e8d0241";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IDragOverThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ToOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putToOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ToOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDragOverThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72f762f7-7e51-4a6b-b937-dc4b4c1c5458";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ToOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ToOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Direction: *const fn(self: *anyopaque, _r: *AnimationDirection) callconv(.winapi) HRESULT,
        put_Direction: *const fn(self: *anyopaque, value: AnimationDirection) callconv(.winapi) HRESULT,
    };
};
pub const IDragOverThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getToOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ToOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDirectionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DirectionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDragOverThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "146ffe57-3c9d-41d9-a5ff-8d7239516810";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ToOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DirectionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IDrillInNavigationTransitionInfo = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDrillInNavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3b86201a-45d3-463b-939e-c8595f439bcc";
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
pub const IDrillInThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getEntranceTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EntranceTargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEntranceTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_EntranceTargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEntranceTarget(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_EntranceTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEntranceTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_EntranceTarget(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExitTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExitTargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExitTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ExitTargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExitTarget(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_ExitTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExitTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_ExitTarget(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDrillInThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b090b824-f1d2-41b8-87ba-78034126594c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EntranceTargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_EntranceTargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_EntranceTarget: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_EntranceTarget: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_ExitTargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ExitTargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ExitTarget: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_ExitTarget: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
    };
};
pub const IDrillInThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getEntranceTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EntranceTargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEntranceTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EntranceTargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExitTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ExitTargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExitTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ExitTargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDrillInThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c61fe488-a17a-4b11-b53b-a4f1a07d4ba9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EntranceTargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_EntranceTargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ExitTargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ExitTargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IDrillOutThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getEntranceTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_EntranceTargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEntranceTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_EntranceTargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEntranceTarget(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_EntranceTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEntranceTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_EntranceTarget(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExitTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ExitTargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExitTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ExitTargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExitTarget(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_ExitTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExitTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_ExitTarget(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDrillOutThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d890ccdf-06d3-4f7e-8e4a-4fb76e256139";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EntranceTargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_EntranceTargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_EntranceTarget: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_EntranceTarget: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_ExitTargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ExitTargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ExitTarget: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_ExitTarget: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
    };
};
pub const IDrillOutThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getEntranceTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EntranceTargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEntranceTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EntranceTargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExitTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ExitTargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExitTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ExitTargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDrillOutThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "beb5db9b-2617-4888-80dd-72fa7bb6fac3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EntranceTargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_EntranceTargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ExitTargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ExitTargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IDropTargetItemThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDropTargetItemThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1881c968-1824-462b-87e8-c357212b977b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IDropTargetItemThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IDropTargetItemThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae80f486-2e56-4513-bf18-d77470164ae5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IEasingColorKeyFrame = extern struct {
    vtable: *const VTable,
    pub fn getEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        var _r: *EasingFunctionBase = undefined;
        const _c = self.vtable.get_EasingFunction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const _c = self.vtable.put_EasingFunction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEasingColorKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c733d630-f4b9-4934-9bdd-27ac5ed1cfd8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EasingFunction: *const fn(self: *anyopaque, _r: **EasingFunctionBase) callconv(.winapi) HRESULT,
        put_EasingFunction: *const fn(self: *anyopaque, value: *EasingFunctionBase) callconv(.winapi) HRESULT,
    };
};
pub const IEasingColorKeyFrameStatics = extern struct {
    vtable: *const VTable,
    pub fn getEasingFunctionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EasingFunctionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEasingColorKeyFrameStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f3837fc-8e3d-4522-9b0f-003db8609851";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EasingFunctionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IEasingDoubleKeyFrame = extern struct {
    vtable: *const VTable,
    pub fn getEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        var _r: *EasingFunctionBase = undefined;
        const _c = self.vtable.get_EasingFunction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const _c = self.vtable.put_EasingFunction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEasingDoubleKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "965adb8d-9a54-4108-b4ff-b5a5212cb338";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EasingFunction: *const fn(self: *anyopaque, _r: **EasingFunctionBase) callconv(.winapi) HRESULT,
        put_EasingFunction: *const fn(self: *anyopaque, value: *EasingFunctionBase) callconv(.winapi) HRESULT,
    };
};
pub const IEasingDoubleKeyFrameStatics = extern struct {
    vtable: *const VTable,
    pub fn getEasingFunctionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EasingFunctionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEasingDoubleKeyFrameStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8d3d845-dbae-4e5b-8b84-d9537398e5b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EasingFunctionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IEasingFunctionBase = extern struct {
    vtable: *const VTable,
    pub fn getEasingMode(self: *@This()) core.HResult!EasingMode {
        var _r: EasingMode = undefined;
        const _c = self.vtable.get_EasingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEasingMode(self: *@This(), value: EasingMode) core.HResult!void {
        const _c = self.vtable.put_EasingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Ease(self: *@This(), normalizedTime: f64) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.Ease(@ptrCast(self), normalizedTime, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEasingFunctionBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c108383f-2c02-4151-8ecd-68ddaa3f0d9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EasingMode: *const fn(self: *anyopaque, _r: *EasingMode) callconv(.winapi) HRESULT,
        put_EasingMode: *const fn(self: *anyopaque, value: EasingMode) callconv(.winapi) HRESULT,
        Ease: *const fn(self: *anyopaque, normalizedTime: f64, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IEasingFunctionBaseFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEasingFunctionBaseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1830fe6a-f01b-43e0-b61f-b452a1c66fd2";
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
pub const IEasingFunctionBaseStatics = extern struct {
    vtable: *const VTable,
    pub fn getEasingModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EasingModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEasingFunctionBaseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a5031aa-2c50-4a1d-bb04-d75e07b71548";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EasingModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IEasingPointKeyFrame = extern struct {
    vtable: *const VTable,
    pub fn getEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        var _r: *EasingFunctionBase = undefined;
        const _c = self.vtable.get_EasingFunction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const _c = self.vtable.put_EasingFunction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEasingPointKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3c91380-6868-4225-a70b-3981cc0b2947";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EasingFunction: *const fn(self: *anyopaque, _r: **EasingFunctionBase) callconv(.winapi) HRESULT,
        put_EasingFunction: *const fn(self: *anyopaque, value: *EasingFunctionBase) callconv(.winapi) HRESULT,
    };
};
pub const IEasingPointKeyFrameStatics = extern struct {
    vtable: *const VTable,
    pub fn getEasingFunctionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EasingFunctionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEasingPointKeyFrameStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e22dbfc4-080c-402c-a6b5-f48d0a98116b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EasingFunctionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IEdgeUIThemeTransition = extern struct {
    vtable: *const VTable,
    pub fn getEdge(self: *@This()) core.HResult!EdgeTransitionLocation {
        var _r: EdgeTransitionLocation = undefined;
        const _c = self.vtable.get_Edge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEdge(self: *@This(), value: EdgeTransitionLocation) core.HResult!void {
        const _c = self.vtable.put_Edge(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEdgeUIThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c86c19b-49d7-19ec-cf19-83a73c6de75e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Edge: *const fn(self: *anyopaque, _r: *EdgeTransitionLocation) callconv(.winapi) HRESULT,
        put_Edge: *const fn(self: *anyopaque, value: EdgeTransitionLocation) callconv(.winapi) HRESULT,
    };
};
pub const IEdgeUIThemeTransitionStatics = extern struct {
    vtable: *const VTable,
    pub fn getEdgeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EdgeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEdgeUIThemeTransitionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "16a2b13b-4705-302b-27c6-2aac92f645ac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EdgeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IElasticEase = extern struct {
    vtable: *const VTable,
    pub fn getOscillations(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Oscillations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOscillations(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Oscillations(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSpringiness(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Springiness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpringiness(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Springiness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IElasticEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef5ba58c-b0b6-4a6c-9ca8-fb4233f12459";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Oscillations: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Oscillations: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Springiness: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Springiness: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IElasticEaseStatics = extern struct {
    vtable: *const VTable,
    pub fn getOscillationsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OscillationsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpringinessProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SpringinessProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IElasticEaseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9f566ec-fe9c-4b2b-8e52-bb785d562185";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OscillationsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SpringinessProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IEntranceNavigationTransitionInfo = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEntranceNavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "720a256b-1c8a-41ee-82ec-8a87c0cf47da";
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
pub const IEntranceNavigationTransitionInfoStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsTargetElementProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsTargetElementProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsTargetElement(self: *@This(), element: *UIElement) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsTargetElement(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetIsTargetElement(self: *@This(), element: *UIElement, value: bool) core.HResult!void {
        const _c = self.vtable.SetIsTargetElement(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEntranceNavigationTransitionInfoStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f948c27a-40c9-469f-8f33-bf45c8811f21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTargetElementProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetIsTargetElement: *const fn(self: *anyopaque, element: *UIElement, _r: *bool) callconv(.winapi) HRESULT,
        SetIsTargetElement: *const fn(self: *anyopaque, element: *UIElement, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IEntranceThemeTransition = extern struct {
    vtable: *const VTable,
    pub fn getFromHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FromHorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFromHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FromHorizontalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFromVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FromVerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFromVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FromVerticalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsStaggeringEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStaggeringEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsStaggeringEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsStaggeringEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEntranceThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "07698c09-a8e3-419a-a01d-7410a0ae8ec8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FromHorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FromHorizontalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_FromVerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FromVerticalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_IsStaggeringEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsStaggeringEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IEntranceThemeTransitionStatics = extern struct {
    vtable: *const VTable,
    pub fn getFromHorizontalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FromHorizontalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFromVerticalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FromVerticalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsStaggeringEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsStaggeringEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IEntranceThemeTransitionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "37cc0577-ff98-4aed-b86e-5ec23702f877";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FromHorizontalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FromVerticalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsStaggeringEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IExponentialEase = extern struct {
    vtable: *const VTable,
    pub fn getExponent(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Exponent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExponent(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Exponent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IExponentialEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7cb9e41d-f0bb-4bca-9da5-9ba3a11734c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Exponent: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Exponent: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IExponentialEaseStatics = extern struct {
    vtable: *const VTable,
    pub fn getExponentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ExponentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IExponentialEaseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f37ee7e3-a761-4352-9ad6-70794567581a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExponentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IFadeInThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IFadeInThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d4bc8f5-a918-4477-8078-554c68812ab8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFadeInThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IFadeInThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7f0117e1-bea9-4923-b23a-0ddf4d7b8737";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IFadeOutThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IFadeOutThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "89276ba9-ffd4-45b6-9b9a-ced48951e712";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFadeOutThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IFadeOutThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe17a81a-4168-4f68-a28c-e5dd98cf680f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IGravityConnectedAnimationConfiguration = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IGravityConnectedAnimationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c751a4b7-0459-5142-b891-aeaac1d41822";
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
pub const IGravityConnectedAnimationConfiguration2 = extern struct {
    vtable: *const VTable,
    pub fn getIsShadowEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsShadowEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsShadowEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsShadowEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IGravityConnectedAnimationConfiguration2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "62333add-aed4-5fed-95ff-d128acce8be4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsShadowEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsShadowEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IGravityConnectedAnimationConfigurationFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GravityConnectedAnimationConfiguration {
        var _r: *GravityConnectedAnimationConfiguration = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IGravityConnectedAnimationConfigurationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e822c41f-3656-5090-92f5-c217eaacb682";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **GravityConnectedAnimationConfiguration) callconv(.winapi) HRESULT,
    };
};
pub const IKeySpline = extern struct {
    vtable: *const VTable,
    pub fn getControlPoint1(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_ControlPoint1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putControlPoint1(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_ControlPoint1(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getControlPoint2(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_ControlPoint2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putControlPoint2(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_ControlPoint2(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IKeySpline";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "77a163bb-d5ca-4a32-ba0b-7dff988e58a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ControlPoint1: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_ControlPoint1: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_ControlPoint2: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_ControlPoint2: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
    };
};
pub const IKeyTimeHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IKeyTimeHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3643e480-4823-466a-abe5-5e79c8ed77ed";
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
pub const IKeyTimeHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn FromTimeSpan(self: *@This(), timeSpan: TimeSpan) core.HResult!KeyTime {
        var _r: KeyTime = undefined;
        const _c = self.vtable.FromTimeSpan(@ptrCast(self), timeSpan, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IKeyTimeHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7fa2612c-22a9-45e9-9af7-c7416efff7a5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromTimeSpan: *const fn(self: *anyopaque, timeSpan: TimeSpan, _r: *KeyTime) callconv(.winapi) HRESULT,
    };
};
pub const ILinearColorKeyFrame = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ILinearColorKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66fdb6ef-ac81-4611-b1d2-61f545983f03";
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
pub const ILinearDoubleKeyFrame = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ILinearDoubleKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8efdf265-9a7b-431d-8f0c-14c56b5ea4d9";
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
pub const ILinearPointKeyFrame = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ILinearPointKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e7c9b8ef-af24-49ee-84f1-a86600a4e319";
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
pub const INavigationThemeTransition = extern struct {
    vtable: *const VTable,
    pub fn getDefaultNavigationTransitionInfo(self: *@This()) core.HResult!*NavigationTransitionInfo {
        var _r: *NavigationTransitionInfo = undefined;
        const _c = self.vtable.get_DefaultNavigationTransitionInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDefaultNavigationTransitionInfo(self: *@This(), value: *NavigationTransitionInfo) core.HResult!void {
        const _c = self.vtable.put_DefaultNavigationTransitionInfo(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.INavigationThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8833848c-4eb7-41f2-8799-9eef0a213b73";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DefaultNavigationTransitionInfo: *const fn(self: *anyopaque, _r: **NavigationTransitionInfo) callconv(.winapi) HRESULT,
        put_DefaultNavigationTransitionInfo: *const fn(self: *anyopaque, value: *NavigationTransitionInfo) callconv(.winapi) HRESULT,
    };
};
pub const INavigationThemeTransitionStatics = extern struct {
    vtable: *const VTable,
    pub fn getDefaultNavigationTransitionInfoProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DefaultNavigationTransitionInfoProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.INavigationThemeTransitionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea2f06e0-5e60-4f8e-bcaf-431487a294ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DefaultNavigationTransitionInfoProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const INavigationTransitionInfo = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.INavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9b05091-ae4a-4372-8625-21b7a8b98ca4";
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
pub const INavigationTransitionInfoFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*NavigationTransitionInfo {
        var _r: *NavigationTransitionInfo = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.INavigationTransitionInfoFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "edf4f8d5-af63-4fab-9d4a-87927f82dd6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **NavigationTransitionInfo) callconv(.winapi) HRESULT,
    };
};
pub const INavigationTransitionInfoOverrides = extern struct {
    vtable: *const VTable,
    pub fn GetNavigationStateCore(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetNavigationStateCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetNavigationStateCore(self: *@This(), navigationState: HSTRING) core.HResult!void {
        const _c = self.vtable.SetNavigationStateCore(@ptrCast(self), navigationState);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.INavigationTransitionInfoOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d9517e6a-a9d0-4bf7-9db0-4633a69daff2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetNavigationStateCore: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetNavigationStateCore: *const fn(self: *anyopaque, navigationState: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IObjectAnimationUsingKeyFrames = extern struct {
    vtable: *const VTable,
    pub fn getKeyFrames(self: *@This()) core.HResult!*ObjectKeyFrameCollection {
        var _r: *ObjectKeyFrameCollection = undefined;
        const _c = self.vtable.get_KeyFrames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_EnableDependentAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_EnableDependentAnimation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IObjectAnimationUsingKeyFrames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "334a2d92-b74a-4c64-b9a6-58bcfa314f22";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyFrames: *const fn(self: *anyopaque, _r: **ObjectKeyFrameCollection) callconv(.winapi) HRESULT,
        get_EnableDependentAnimation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_EnableDependentAnimation: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IObjectAnimationUsingKeyFramesStatics = extern struct {
    vtable: *const VTable,
    pub fn getEnableDependentAnimationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EnableDependentAnimationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IObjectAnimationUsingKeyFramesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb736182-6af1-49a3-97b6-783ed97400fe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnableDependentAnimationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IObjectKeyFrame = extern struct {
    vtable: *const VTable,
    pub fn getValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyTime(self: *@This()) core.HResult!KeyTime {
        var _r: KeyTime = undefined;
        const _c = self.vtable.get_KeyTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyTime(self: *@This(), value: KeyTime) core.HResult!void {
        const _c = self.vtable.put_KeyTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IObjectKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9852a851-8593-48ee-a6a4-d5d4720f029a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_KeyTime: *const fn(self: *anyopaque, _r: *KeyTime) callconv(.winapi) HRESULT,
        put_KeyTime: *const fn(self: *anyopaque, value: KeyTime) callconv(.winapi) HRESULT,
    };
};
pub const IObjectKeyFrameFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ObjectKeyFrame {
        var _r: *ObjectKeyFrame = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IObjectKeyFrameFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1626143e-3e6d-44d8-9b9a-04aea70f8492";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ObjectKeyFrame) callconv(.winapi) HRESULT,
    };
};
pub const IObjectKeyFrameStatics = extern struct {
    vtable: *const VTable,
    pub fn getValueProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ValueProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyTimeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyTimeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IObjectKeyFrameStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2cd6ab00-5319-4286-8eed-4e755ea0cf9c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ValueProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_KeyTimeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPaneThemeTransition = extern struct {
    vtable: *const VTable,
    pub fn getEdge(self: *@This()) core.HResult!EdgeTransitionLocation {
        var _r: EdgeTransitionLocation = undefined;
        const _c = self.vtable.get_Edge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEdge(self: *@This(), value: EdgeTransitionLocation) core.HResult!void {
        const _c = self.vtable.put_Edge(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPaneThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4708eb8e-4bfc-ee46-d4f9-708def3fbb2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Edge: *const fn(self: *anyopaque, _r: *EdgeTransitionLocation) callconv(.winapi) HRESULT,
        put_Edge: *const fn(self: *anyopaque, value: EdgeTransitionLocation) callconv(.winapi) HRESULT,
    };
};
pub const IPaneThemeTransitionStatics = extern struct {
    vtable: *const VTable,
    pub fn getEdgeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EdgeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPaneThemeTransitionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "316b382f-4be4-1797-b45c-cd900bbe0caa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EdgeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPointAnimation = extern struct {
    vtable: *const VTable,
    pub fn getFrom(self: *@This()) core.HResult!*IReference(Point) {
        var _r: *IReference(Point) = undefined;
        const _c = self.vtable.get_From(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFrom(self: *@This(), value: *IReference(Point)) core.HResult!void {
        const _c = self.vtable.put_From(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTo(self: *@This()) core.HResult!*IReference(Point) {
        var _r: *IReference(Point) = undefined;
        const _c = self.vtable.get_To(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTo(self: *@This(), value: *IReference(Point)) core.HResult!void {
        const _c = self.vtable.put_To(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBy(self: *@This()) core.HResult!*IReference(Point) {
        var _r: *IReference(Point) = undefined;
        const _c = self.vtable.get_By(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBy(self: *@This(), value: *IReference(Point)) core.HResult!void {
        const _c = self.vtable.put_By(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        var _r: *EasingFunctionBase = undefined;
        const _c = self.vtable.get_EasingFunction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const _c = self.vtable.put_EasingFunction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_EnableDependentAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_EnableDependentAnimation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPointAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30f04312-7726-4f88-b8e2-2fa54518963b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_From: *const fn(self: *anyopaque, _r: **IReference(Point)) callconv(.winapi) HRESULT,
        put_From: *const fn(self: *anyopaque, value: *IReference(Point)) callconv(.winapi) HRESULT,
        get_To: *const fn(self: *anyopaque, _r: **IReference(Point)) callconv(.winapi) HRESULT,
        put_To: *const fn(self: *anyopaque, value: *IReference(Point)) callconv(.winapi) HRESULT,
        get_By: *const fn(self: *anyopaque, _r: **IReference(Point)) callconv(.winapi) HRESULT,
        put_By: *const fn(self: *anyopaque, value: *IReference(Point)) callconv(.winapi) HRESULT,
        get_EasingFunction: *const fn(self: *anyopaque, _r: **EasingFunctionBase) callconv(.winapi) HRESULT,
        put_EasingFunction: *const fn(self: *anyopaque, value: *EasingFunctionBase) callconv(.winapi) HRESULT,
        get_EnableDependentAnimation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_EnableDependentAnimation: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IPointAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getFromProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FromProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getToProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ToProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getByProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ByProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEasingFunctionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EasingFunctionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnableDependentAnimationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EnableDependentAnimationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPointAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f99b356-e737-408b-a0fd-327826d32255";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FromProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ToProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ByProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_EasingFunctionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_EnableDependentAnimationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPointAnimationUsingKeyFrames = extern struct {
    vtable: *const VTable,
    pub fn getKeyFrames(self: *@This()) core.HResult!*PointKeyFrameCollection {
        var _r: *PointKeyFrameCollection = undefined;
        const _c = self.vtable.get_KeyFrames(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_EnableDependentAnimation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_EnableDependentAnimation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPointAnimationUsingKeyFrames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b944f72-446a-41d0-a129-41a620f4595d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyFrames: *const fn(self: *anyopaque, _r: **PointKeyFrameCollection) callconv(.winapi) HRESULT,
        get_EnableDependentAnimation: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_EnableDependentAnimation: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IPointAnimationUsingKeyFramesStatics = extern struct {
    vtable: *const VTable,
    pub fn getEnableDependentAnimationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EnableDependentAnimationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPointAnimationUsingKeyFramesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5f454c87-2390-46ea-baa7-762f4bc30d04";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnableDependentAnimationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPointKeyFrame = extern struct {
    vtable: *const VTable,
    pub fn getValue(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putValue(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_Value(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyTime(self: *@This()) core.HResult!KeyTime {
        var _r: KeyTime = undefined;
        const _c = self.vtable.get_KeyTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyTime(self: *@This(), value: KeyTime) core.HResult!void {
        const _c = self.vtable.put_KeyTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPointKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcc88d01-7f82-4dae-8026-7b7e086878b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_KeyTime: *const fn(self: *anyopaque, _r: *KeyTime) callconv(.winapi) HRESULT,
        put_KeyTime: *const fn(self: *anyopaque, value: KeyTime) callconv(.winapi) HRESULT,
    };
};
pub const IPointKeyFrameFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PointKeyFrame {
        var _r: *PointKeyFrame = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPointKeyFrameFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cb214bdf-426a-4392-8355-c2ae52852623";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **PointKeyFrame) callconv(.winapi) HRESULT,
    };
};
pub const IPointKeyFrameStatics = extern struct {
    vtable: *const VTable,
    pub fn getValueProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ValueProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyTimeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyTimeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPointKeyFrameStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95cf1b27-7965-4bec-b9fb-fbe94b65518e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ValueProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_KeyTimeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPointerDownThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPointerDownThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b58e714e-c49d-4788-a233-0ae85d99dd5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPointerDownThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPointerDownThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63a7cb7b-6d46-4494-b94a-e72f3b492a61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPointerUpThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPointerUpThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e9e9d07d-6340-4828-ad12-690694b9910b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPointerUpThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPointerUpThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c618f9c-7992-4139-8bfc-0883b9727a7e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPopInThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFromHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FromHorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFromHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FromHorizontalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFromVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FromVerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFromVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FromVerticalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPopInThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "196938c1-1c07-4c28-8847-f9f055b32855";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FromHorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FromHorizontalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_FromVerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FromVerticalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IPopInThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFromHorizontalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FromHorizontalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFromVerticalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FromVerticalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPopInThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "efaa99d3-218a-4701-977f-f1bfae8ba649";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FromHorizontalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FromVerticalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPopOutThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPopOutThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4786ab49-0e48-4e81-a2e5-cc5aa19e48d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPopOutThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPopOutThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d492c09-03c1-4490-99dc-909feab357fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPopupThemeTransition = extern struct {
    vtable: *const VTable,
    pub fn getFromHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FromHorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFromHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FromHorizontalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFromVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FromVerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFromVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FromVerticalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPopupThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "47843552-4283-545e-c791-268dca22ce4b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FromHorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FromHorizontalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_FromVerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FromVerticalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IPopupThemeTransitionStatics = extern struct {
    vtable: *const VTable,
    pub fn getFromHorizontalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FromHorizontalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFromVerticalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FromVerticalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPopupThemeTransitionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5a1640e-490d-1505-9f6b-8fafc044dec5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FromHorizontalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FromVerticalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPowerEase = extern struct {
    vtable: *const VTable,
    pub fn getPower(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Power(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPower(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Power(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPowerEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69c80579-eedf-405b-8680-d9606880c937";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Power: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Power: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IPowerEaseStatics = extern struct {
    vtable: *const VTable,
    pub fn getPowerProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PowerProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IPowerEaseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5955103-91a2-460c-9c41-d28f6a939bda";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PowerProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IQuadraticEase = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IQuadraticEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e1510e91-ef6d-44f0-803d-68d16de0ddfc";
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
pub const IQuarticEase = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IQuarticEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8698814-fe42-4a05-b5b8-081f41157815";
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
pub const IQuinticEase = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IQuinticEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92ee793b-3c49-4108-aa11-ab786603da21";
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
pub const IReorderThemeTransition = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IReorderThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2065c6c-d052-4ad1-8362-b71b36df7497";
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
pub const IRepeatBehaviorHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IRepeatBehaviorHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6863ab72-4997-47f9-87ad-37efb75993ea";
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
pub const IRepeatBehaviorHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn getForever(self: *@This()) core.HResult!RepeatBehavior {
        var _r: RepeatBehavior = undefined;
        const _c = self.vtable.get_Forever(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromCount(self: *@This(), count: f64) core.HResult!RepeatBehavior {
        var _r: RepeatBehavior = undefined;
        const _c = self.vtable.FromCount(@ptrCast(self), count, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromDuration(self: *@This(), duration: TimeSpan) core.HResult!RepeatBehavior {
        var _r: RepeatBehavior = undefined;
        const _c = self.vtable.FromDuration(@ptrCast(self), duration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHasCount(self: *@This(), target: RepeatBehavior) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetHasCount(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHasDuration(self: *@This(), target: RepeatBehavior) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetHasDuration(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Equals(self: *@This(), target: RepeatBehavior, value: RepeatBehavior) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Equals(@ptrCast(self), target, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IRepeatBehaviorHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a795033-79f3-4dd9-b267-9cf50fb51f84";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Forever: *const fn(self: *anyopaque, _r: *RepeatBehavior) callconv(.winapi) HRESULT,
        FromCount: *const fn(self: *anyopaque, count: f64, _r: *RepeatBehavior) callconv(.winapi) HRESULT,
        FromDuration: *const fn(self: *anyopaque, duration: TimeSpan, _r: *RepeatBehavior) callconv(.winapi) HRESULT,
        GetHasCount: *const fn(self: *anyopaque, target: RepeatBehavior, _r: *bool) callconv(.winapi) HRESULT,
        GetHasDuration: *const fn(self: *anyopaque, target: RepeatBehavior, _r: *bool) callconv(.winapi) HRESULT,
        Equals: *const fn(self: *anyopaque, target: RepeatBehavior, value: RepeatBehavior, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IRepositionThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFromHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FromHorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFromHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FromHorizontalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFromVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FromVerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFromVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FromVerticalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IRepositionThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ecda24e8-8945-4949-a1bf-62109965a7e9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FromHorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FromHorizontalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_FromVerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FromVerticalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IRepositionThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFromHorizontalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FromHorizontalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFromVerticalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FromVerticalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IRepositionThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d92b1b1-860b-4bf9-a59d-1eb1ccbe8fe0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FromHorizontalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FromVerticalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IRepositionThemeTransition = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IRepositionThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88329b82-98f3-455a-ac53-2e7083b6e22c";
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
pub const IRepositionThemeTransition2 = extern struct {
    vtable: *const VTable,
    pub fn getIsStaggeringEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsStaggeringEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsStaggeringEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsStaggeringEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IRepositionThemeTransition2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cebfe864-dbea-4404-8e6e-de55ada75239";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsStaggeringEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsStaggeringEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IRepositionThemeTransitionStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getIsStaggeringEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsStaggeringEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IRepositionThemeTransitionStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9240e930-0a19-468b-8c2a-68fab4500027";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsStaggeringEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISineEase = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISineEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9382962-230b-49da-9e0d-664987892343";
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
pub const ISlideNavigationTransitionInfo = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISlideNavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d6ac9d77-2e03-405f-80ed-e62beef3668f";
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
pub const ISlideNavigationTransitionInfo2 = extern struct {
    vtable: *const VTable,
    pub fn getEffect(self: *@This()) core.HResult!SlideNavigationTransitionEffect {
        var _r: SlideNavigationTransitionEffect = undefined;
        const _c = self.vtable.get_Effect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEffect(self: *@This(), value: SlideNavigationTransitionEffect) core.HResult!void {
        const _c = self.vtable.put_Effect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISlideNavigationTransitionInfo2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90e2d9c0-5c81-5001-8013-4fbfea4bf139";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Effect: *const fn(self: *anyopaque, _r: *SlideNavigationTransitionEffect) callconv(.winapi) HRESULT,
        put_Effect: *const fn(self: *anyopaque, value: SlideNavigationTransitionEffect) callconv(.winapi) HRESULT,
    };
};
pub const ISlideNavigationTransitionInfoStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getEffectProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EffectProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISlideNavigationTransitionInfoStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a861baa-981a-5ace-9f85-cb7fde648a67";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EffectProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISplineColorKeyFrame = extern struct {
    vtable: *const VTable,
    pub fn getKeySpline(self: *@This()) core.HResult!*KeySpline {
        var _r: *KeySpline = undefined;
        const _c = self.vtable.get_KeySpline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeySpline(self: *@This(), value: *KeySpline) core.HResult!void {
        const _c = self.vtable.put_KeySpline(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISplineColorKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a4a5941-1fe0-473a-8efe-4316d8c86229";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeySpline: *const fn(self: *anyopaque, _r: **KeySpline) callconv(.winapi) HRESULT,
        put_KeySpline: *const fn(self: *anyopaque, value: *KeySpline) callconv(.winapi) HRESULT,
    };
};
pub const ISplineColorKeyFrameStatics = extern struct {
    vtable: *const VTable,
    pub fn getKeySplineProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeySplineProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISplineColorKeyFrameStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61d1d997-8589-4f2f-8fbb-7d03edc98dd3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeySplineProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISplineDoubleKeyFrame = extern struct {
    vtable: *const VTable,
    pub fn getKeySpline(self: *@This()) core.HResult!*KeySpline {
        var _r: *KeySpline = undefined;
        const _c = self.vtable.get_KeySpline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeySpline(self: *@This(), value: *KeySpline) core.HResult!void {
        const _c = self.vtable.put_KeySpline(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISplineDoubleKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00d72d38-6b2b-4843-838e-c8b115eec801";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeySpline: *const fn(self: *anyopaque, _r: **KeySpline) callconv(.winapi) HRESULT,
        put_KeySpline: *const fn(self: *anyopaque, value: *KeySpline) callconv(.winapi) HRESULT,
    };
};
pub const ISplineDoubleKeyFrameStatics = extern struct {
    vtable: *const VTable,
    pub fn getKeySplineProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeySplineProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISplineDoubleKeyFrameStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "060a8ffc-975f-4e4e-9ec7-13c5aee02062";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeySplineProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISplinePointKeyFrame = extern struct {
    vtable: *const VTable,
    pub fn getKeySpline(self: *@This()) core.HResult!*KeySpline {
        var _r: *KeySpline = undefined;
        const _c = self.vtable.get_KeySpline(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeySpline(self: *@This(), value: *KeySpline) core.HResult!void {
        const _c = self.vtable.put_KeySpline(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISplinePointKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f19f306-7036-494f-bc3c-780df0cc524a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeySpline: *const fn(self: *anyopaque, _r: **KeySpline) callconv(.winapi) HRESULT,
        put_KeySpline: *const fn(self: *anyopaque, value: *KeySpline) callconv(.winapi) HRESULT,
    };
};
pub const ISplinePointKeyFrameStatics = extern struct {
    vtable: *const VTable,
    pub fn getKeySplineProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeySplineProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISplinePointKeyFrameStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e97a32c2-0a7a-4766-95cb-0d692611cb4c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeySplineProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISplitCloseThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getOpenedTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OpenedTargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpenedTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_OpenedTargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOpenedTarget(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_OpenedTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpenedTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_OpenedTarget(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getClosedTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ClosedTargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClosedTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ClosedTargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getClosedTarget(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_ClosedTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClosedTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_ClosedTarget(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentTargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContentTargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentTarget(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_ContentTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_ContentTarget(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOpenedLength(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OpenedLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpenedLength(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_OpenedLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getClosedLength(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ClosedLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClosedLength(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ClosedLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffsetFromCenter(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OffsetFromCenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffsetFromCenter(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_OffsetFromCenter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentTranslationDirection(self: *@This()) core.HResult!AnimationDirection {
        var _r: AnimationDirection = undefined;
        const _c = self.vtable.get_ContentTranslationDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentTranslationDirection(self: *@This(), value: AnimationDirection) core.HResult!void {
        const _c = self.vtable.put_ContentTranslationDirection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentTranslationOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ContentTranslationOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentTranslationOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ContentTranslationOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f799518-ff39-4e90-bb74-2abd56027402";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OpenedTargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_OpenedTargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_OpenedTarget: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_OpenedTarget: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_ClosedTargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ClosedTargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ClosedTarget: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_ClosedTarget: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_ContentTargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContentTargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContentTarget: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_ContentTarget: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_OpenedLength: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_OpenedLength: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ClosedLength: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ClosedLength: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_OffsetFromCenter: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_OffsetFromCenter: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ContentTranslationDirection: *const fn(self: *anyopaque, _r: *AnimationDirection) callconv(.winapi) HRESULT,
        put_ContentTranslationDirection: *const fn(self: *anyopaque, value: AnimationDirection) callconv(.winapi) HRESULT,
        get_ContentTranslationOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ContentTranslationOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const ISplitCloseThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getOpenedTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OpenedTargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOpenedTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OpenedTargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClosedTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ClosedTargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClosedTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ClosedTargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContentTargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContentTargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOpenedLengthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OpenedLengthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClosedLengthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ClosedLengthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOffsetFromCenterProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OffsetFromCenterProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentTranslationDirectionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContentTranslationDirectionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentTranslationOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContentTranslationOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISplitCloseThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7aa94de9-cc9b-4e90-a11a-0050a2216a9e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OpenedTargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_OpenedTargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ClosedTargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ClosedTargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ContentTargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ContentTargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_OpenedLengthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ClosedLengthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_OffsetFromCenterProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ContentTranslationDirectionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ContentTranslationOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISplitOpenThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getOpenedTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_OpenedTargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpenedTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_OpenedTargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOpenedTarget(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_OpenedTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpenedTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_OpenedTarget(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getClosedTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ClosedTargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClosedTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ClosedTargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getClosedTarget(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_ClosedTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClosedTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_ClosedTarget(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ContentTargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ContentTargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentTarget(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_ContentTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_ContentTarget(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOpenedLength(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OpenedLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpenedLength(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_OpenedLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getClosedLength(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ClosedLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClosedLength(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ClosedLength(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOffsetFromCenter(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OffsetFromCenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffsetFromCenter(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_OffsetFromCenter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentTranslationDirection(self: *@This()) core.HResult!AnimationDirection {
        var _r: AnimationDirection = undefined;
        const _c = self.vtable.get_ContentTranslationDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentTranslationDirection(self: *@This(), value: AnimationDirection) core.HResult!void {
        const _c = self.vtable.put_ContentTranslationDirection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentTranslationOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ContentTranslationOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentTranslationOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ContentTranslationOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "785fd7aa-5456-4639-8fd2-26bae6a5ffe4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OpenedTargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_OpenedTargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_OpenedTarget: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_OpenedTarget: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_ClosedTargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ClosedTargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ClosedTarget: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_ClosedTarget: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_ContentTargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ContentTargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContentTarget: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_ContentTarget: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_OpenedLength: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_OpenedLength: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ClosedLength: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ClosedLength: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_OffsetFromCenter: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_OffsetFromCenter: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ContentTranslationDirection: *const fn(self: *anyopaque, _r: *AnimationDirection) callconv(.winapi) HRESULT,
        put_ContentTranslationDirection: *const fn(self: *anyopaque, value: AnimationDirection) callconv(.winapi) HRESULT,
        get_ContentTranslationOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ContentTranslationOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const ISplitOpenThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getOpenedTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OpenedTargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOpenedTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OpenedTargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClosedTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ClosedTargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClosedTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ClosedTargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContentTargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContentTargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOpenedLengthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OpenedLengthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClosedLengthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ClosedLengthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOffsetFromCenterProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OffsetFromCenterProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentTranslationDirectionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContentTranslationDirectionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentTranslationOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContentTranslationOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISplitOpenThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8d4cfa89-3a91-458d-b0fb-4cad625cbf8d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OpenedTargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_OpenedTargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ClosedTargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ClosedTargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ContentTargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ContentTargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_OpenedLengthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ClosedLengthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_OffsetFromCenterProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ContentTranslationDirectionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ContentTranslationOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IStoryboard = extern struct {
    vtable: *const VTable,
    pub fn getChildren(self: *@This()) core.HResult!*TimelineCollection {
        var _r: *TimelineCollection = undefined;
        const _c = self.vtable.get_Children(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Seek(self: *@This(), offset: TimeSpan) core.HResult!void {
        const _c = self.vtable.Seek(@ptrCast(self), offset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Begin(self: *@This()) core.HResult!void {
        const _c = self.vtable.Begin(@ptrCast(self));
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
    pub fn GetCurrentState(self: *@This()) core.HResult!ClockState {
        var _r: ClockState = undefined;
        const _c = self.vtable.GetCurrentState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.GetCurrentTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SeekAlignedToLastTick(self: *@This(), offset: TimeSpan) core.HResult!void {
        const _c = self.vtable.SeekAlignedToLastTick(@ptrCast(self), offset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SkipToFill(self: *@This()) core.HResult!void {
        const _c = self.vtable.SkipToFill(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IStoryboard";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d45c1e6e-3594-460e-981a-32271bd3aa06";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Children: *const fn(self: *anyopaque, _r: **TimelineCollection) callconv(.winapi) HRESULT,
        Seek: *const fn(self: *anyopaque, offset: TimeSpan) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Begin: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Pause: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Resume: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetCurrentState: *const fn(self: *anyopaque, _r: *ClockState) callconv(.winapi) HRESULT,
        GetCurrentTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        SeekAlignedToLastTick: *const fn(self: *anyopaque, offset: TimeSpan) callconv(.winapi) HRESULT,
        SkipToFill: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IStoryboardStatics = extern struct {
    vtable: *const VTable,
    pub fn getTargetPropertyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetPropertyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTargetProperty(self: *@This(), element: *Timeline) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetTargetProperty(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetTargetProperty(self: *@This(), element: *Timeline, path: HSTRING) core.HResult!void {
        const _c = self.vtable.SetTargetProperty(@ptrCast(self), element, path);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTargetName(self: *@This(), element: *Timeline) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetTargetName(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetTargetName(self: *@This(), element: *Timeline, name: HSTRING) core.HResult!void {
        const _c = self.vtable.SetTargetName(@ptrCast(self), element, name);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetTarget(self: *@This(), timeline: *Timeline, target: *DependencyObject) core.HResult!void {
        const _c = self.vtable.SetTarget(@ptrCast(self), timeline, target);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IStoryboardStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d82f07d8-73d5-4379-bd48-7e05184a8bad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetPropertyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetTargetProperty: *const fn(self: *anyopaque, element: *Timeline, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetTargetProperty: *const fn(self: *anyopaque, element: *Timeline, path: HSTRING) callconv(.winapi) HRESULT,
        get_TargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetTargetName: *const fn(self: *anyopaque, element: *Timeline, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetTargetName: *const fn(self: *anyopaque, element: *Timeline, name: HSTRING) callconv(.winapi) HRESULT,
        SetTarget: *const fn(self: *anyopaque, timeline: *Timeline, target: *DependencyObject) callconv(.winapi) HRESULT,
    };
};
pub const ISuppressNavigationTransitionInfo = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISuppressNavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "244d7b0c-b1b7-4871-9d3e-d56203a3a5b4";
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
pub const ISwipeBackThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFromHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FromHorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFromHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FromHorizontalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFromVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FromVerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFromVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FromVerticalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISwipeBackThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a38a4214-0bca-4d2d-95f7-ceba57fbaf60";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FromHorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FromHorizontalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_FromVerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FromVerticalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const ISwipeBackThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFromHorizontalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FromHorizontalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFromVerticalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FromVerticalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISwipeBackThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "693f31bf-4da6-468a-8ce0-996c9aad42e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FromHorizontalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FromVerticalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISwipeHintThemeAnimation = extern struct {
    vtable: *const VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_TargetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_TargetName(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ToHorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putToHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ToHorizontalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getToVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ToVerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putToVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ToVerticalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISwipeHintThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cdd067c0-580e-4e40-be98-f202d3d84365";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_TargetName: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ToHorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ToHorizontalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ToVerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ToVerticalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const ISwipeHintThemeAnimationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTargetNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getToHorizontalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ToHorizontalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getToVerticalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ToVerticalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ISwipeHintThemeAnimationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "23d61a57-9115-4d63-b04a-b89f1c744dc0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetNameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ToHorizontalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ToVerticalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITimeline = extern struct {
    vtable: *const VTable,
    pub fn getAutoReverse(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoReverse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAutoReverse(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AutoReverse(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBeginTime(self: *@This()) core.HResult!*IReference(TimeSpan) {
        var _r: *IReference(TimeSpan) = undefined;
        const _c = self.vtable.get_BeginTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBeginTime(self: *@This(), value: *IReference(TimeSpan)) core.HResult!void {
        const _c = self.vtable.put_BeginTime(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDuration(self: *@This()) core.HResult!Duration {
        var _r: Duration = undefined;
        const _c = self.vtable.get_Duration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDuration(self: *@This(), value: Duration) core.HResult!void {
        const _c = self.vtable.put_Duration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSpeedRatio(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SpeedRatio(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpeedRatio(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_SpeedRatio(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFillBehavior(self: *@This()) core.HResult!FillBehavior {
        var _r: FillBehavior = undefined;
        const _c = self.vtable.get_FillBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFillBehavior(self: *@This(), value: FillBehavior) core.HResult!void {
        const _c = self.vtable.put_FillBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRepeatBehavior(self: *@This()) core.HResult!RepeatBehavior {
        var _r: RepeatBehavior = undefined;
        const _c = self.vtable.get_RepeatBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRepeatBehavior(self: *@This(), value: RepeatBehavior) core.HResult!void {
        const _c = self.vtable.put_RepeatBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCompleted(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Completed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Completed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ITimeline";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0bc465dc-be4d-4d0d-9549-2208b715f40d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AutoReverse: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AutoReverse: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_BeginTime: *const fn(self: *anyopaque, _r: **IReference(TimeSpan)) callconv(.winapi) HRESULT,
        put_BeginTime: *const fn(self: *anyopaque, value: *IReference(TimeSpan)) callconv(.winapi) HRESULT,
        get_Duration: *const fn(self: *anyopaque, _r: *Duration) callconv(.winapi) HRESULT,
        put_Duration: *const fn(self: *anyopaque, value: Duration) callconv(.winapi) HRESULT,
        get_SpeedRatio: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_SpeedRatio: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_FillBehavior: *const fn(self: *anyopaque, _r: *FillBehavior) callconv(.winapi) HRESULT,
        put_FillBehavior: *const fn(self: *anyopaque, value: FillBehavior) callconv(.winapi) HRESULT,
        get_RepeatBehavior: *const fn(self: *anyopaque, _r: *RepeatBehavior) callconv(.winapi) HRESULT,
        put_RepeatBehavior: *const fn(self: *anyopaque, value: RepeatBehavior) callconv(.winapi) HRESULT,
        add_Completed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Completed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ITimelineFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Timeline {
        var _r: *Timeline = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ITimelineFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d56bb07-bda4-478b-8ada-eb04d580cd5e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **Timeline) callconv(.winapi) HRESULT,
    };
};
pub const ITimelineStatics = extern struct {
    vtable: *const VTable,
    pub fn getAllowDependentAnimations(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowDependentAnimations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowDependentAnimations(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowDependentAnimations(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutoReverseProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AutoReverseProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBeginTimeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_BeginTimeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDurationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DurationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSpeedRatioProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SpeedRatioProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFillBehaviorProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FillBehaviorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRepeatBehaviorProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RepeatBehaviorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ITimelineStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a902ed4e-ef10-4d6f-9a40-93cb8895f4e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowDependentAnimations: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowDependentAnimations: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AutoReverseProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_BeginTimeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DurationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SpeedRatioProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FillBehaviorProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RepeatBehaviorProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITransition = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ITransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c677c7c-01d0-4dce-b333-976f93312b08";
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
pub const ITransitionFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ITransitionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc9ab2cf-3bc9-44aa-b3fc-883a83233a2c";
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
pub const IndependentlyAnimatableAttribute = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.IndependentlyAnimatableAttribute";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
};
pub const KeySpline = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getControlPoint1(self: *@This()) core.HResult!Point {
        const this: *IKeySpline = @ptrCast(self);
        return try this.getControlPoint1();
    }
    pub fn putControlPoint1(self: *@This(), value: Point) core.HResult!void {
        const this: *IKeySpline = @ptrCast(self);
        return try this.putControlPoint1(value);
    }
    pub fn getControlPoint2(self: *@This()) core.HResult!Point {
        const this: *IKeySpline = @ptrCast(self);
        return try this.getControlPoint2();
    }
    pub fn putControlPoint2(self: *@This(), value: Point) core.HResult!void {
        const this: *IKeySpline = @ptrCast(self);
        return try this.putControlPoint2(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IKeySpline.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.KeySpline";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeySpline.GUID;
    pub const IID: Guid = IKeySpline.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeySpline.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const KeyTime = extern struct {
    TimeSpan: TimeSpan,
};
pub const KeyTimeHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromTimeSpan(timeSpan: TimeSpan) core.HResult!KeyTime {
        const _f = @This().IKeyTimeHelperStaticsCache.get();
        return try _f.FromTimeSpan(timeSpan);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.KeyTimeHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyTimeHelper.GUID;
    pub const IID: Guid = IKeyTimeHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyTimeHelper.SIGNATURE);
    var _IKeyTimeHelperStaticsCache: FactoryCache(IKeyTimeHelperStatics, RUNTIME_NAME) = .{};
};
pub const LinearColorKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILinearColorKeyFrame.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.LinearColorKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILinearColorKeyFrame.GUID;
    pub const IID: Guid = ILinearColorKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILinearColorKeyFrame.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const LinearDoubleKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILinearDoubleKeyFrame.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.LinearDoubleKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILinearDoubleKeyFrame.GUID;
    pub const IID: Guid = ILinearDoubleKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILinearDoubleKeyFrame.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const LinearPointKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILinearPointKeyFrame.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.LinearPointKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILinearPointKeyFrame.GUID;
    pub const IID: Guid = ILinearPointKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILinearPointKeyFrame.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const NavigationThemeTransition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDefaultNavigationTransitionInfo(self: *@This()) core.HResult!*NavigationTransitionInfo {
        const this: *INavigationThemeTransition = @ptrCast(self);
        return try this.getDefaultNavigationTransitionInfo();
    }
    pub fn putDefaultNavigationTransitionInfo(self: *@This(), value: *NavigationTransitionInfo) core.HResult!void {
        const this: *INavigationThemeTransition = @ptrCast(self);
        return try this.putDefaultNavigationTransitionInfo(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&INavigationThemeTransition.IID)));
    }
    pub fn getDefaultNavigationTransitionInfoProperty() core.HResult!*DependencyProperty {
        const _f = @This().INavigationThemeTransitionStaticsCache.get();
        return try _f.getDefaultNavigationTransitionInfoProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.NavigationThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INavigationThemeTransition.GUID;
    pub const IID: Guid = INavigationThemeTransition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INavigationThemeTransition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _INavigationThemeTransitionStaticsCache: FactoryCache(INavigationThemeTransitionStatics, RUNTIME_NAME) = .{};
};
pub const ObjectAnimationUsingKeyFrames = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyFrames(self: *@This()) core.HResult!*ObjectKeyFrameCollection {
        const this: *IObjectAnimationUsingKeyFrames = @ptrCast(self);
        return try this.getKeyFrames();
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        const this: *IObjectAnimationUsingKeyFrames = @ptrCast(self);
        return try this.getEnableDependentAnimation();
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const this: *IObjectAnimationUsingKeyFrames = @ptrCast(self);
        return try this.putEnableDependentAnimation(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IObjectAnimationUsingKeyFrames.IID)));
    }
    pub fn getEnableDependentAnimationProperty() core.HResult!*DependencyProperty {
        const _f = @This().IObjectAnimationUsingKeyFramesStaticsCache.get();
        return try _f.getEnableDependentAnimationProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ObjectAnimationUsingKeyFrames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IObjectAnimationUsingKeyFrames.GUID;
    pub const IID: Guid = IObjectAnimationUsingKeyFrames.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IObjectAnimationUsingKeyFrames.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IObjectAnimationUsingKeyFramesStaticsCache: FactoryCache(IObjectAnimationUsingKeyFramesStatics, RUNTIME_NAME) = .{};
};
pub const ObjectKeyFrameCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(ObjectKeyFrame) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(ObjectKeyFrame) {
        const this: *IVector(ObjectKeyFrame) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(ObjectKeyFrame) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(ObjectKeyFrame) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(ObjectKeyFrame) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(ObjectKeyFrame) {
        var this: ?*IIterable(ObjectKeyFrame) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVector.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ObjectKeyFrameCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PaneThemeTransition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEdge(self: *@This()) core.HResult!EdgeTransitionLocation {
        const this: *IPaneThemeTransition = @ptrCast(self);
        return try this.getEdge();
    }
    pub fn putEdge(self: *@This(), value: EdgeTransitionLocation) core.HResult!void {
        const this: *IPaneThemeTransition = @ptrCast(self);
        return try this.putEdge(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPaneThemeTransition.IID)));
    }
    pub fn getEdgeProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPaneThemeTransitionStaticsCache.get();
        return try _f.getEdgeProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.PaneThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPaneThemeTransition.GUID;
    pub const IID: Guid = IPaneThemeTransition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPaneThemeTransition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPaneThemeTransitionStaticsCache: FactoryCache(IPaneThemeTransitionStatics, RUNTIME_NAME) = .{};
};
pub const PointAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrom(self: *@This()) core.HResult!*IReference(Point) {
        const this: *IPointAnimation = @ptrCast(self);
        return try this.getFrom();
    }
    pub fn putFrom(self: *@This(), value: *IReference(Point)) core.HResult!void {
        const this: *IPointAnimation = @ptrCast(self);
        return try this.putFrom(value);
    }
    pub fn getTo(self: *@This()) core.HResult!*IReference(Point) {
        const this: *IPointAnimation = @ptrCast(self);
        return try this.getTo();
    }
    pub fn putTo(self: *@This(), value: *IReference(Point)) core.HResult!void {
        const this: *IPointAnimation = @ptrCast(self);
        return try this.putTo(value);
    }
    pub fn getBy(self: *@This()) core.HResult!*IReference(Point) {
        const this: *IPointAnimation = @ptrCast(self);
        return try this.getBy();
    }
    pub fn putBy(self: *@This(), value: *IReference(Point)) core.HResult!void {
        const this: *IPointAnimation = @ptrCast(self);
        return try this.putBy(value);
    }
    pub fn getEasingFunction(self: *@This()) core.HResult!*EasingFunctionBase {
        const this: *IPointAnimation = @ptrCast(self);
        return try this.getEasingFunction();
    }
    pub fn putEasingFunction(self: *@This(), value: *EasingFunctionBase) core.HResult!void {
        const this: *IPointAnimation = @ptrCast(self);
        return try this.putEasingFunction(value);
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        const this: *IPointAnimation = @ptrCast(self);
        return try this.getEnableDependentAnimation();
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const this: *IPointAnimation = @ptrCast(self);
        return try this.putEnableDependentAnimation(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPointAnimation.IID)));
    }
    pub fn getFromProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPointAnimationStaticsCache.get();
        return try _f.getFromProperty();
    }
    pub fn getToProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPointAnimationStaticsCache.get();
        return try _f.getToProperty();
    }
    pub fn getByProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPointAnimationStaticsCache.get();
        return try _f.getByProperty();
    }
    pub fn getEasingFunctionProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPointAnimationStaticsCache.get();
        return try _f.getEasingFunctionProperty();
    }
    pub fn getEnableDependentAnimationProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPointAnimationStaticsCache.get();
        return try _f.getEnableDependentAnimationProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.PointAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointAnimation.GUID;
    pub const IID: Guid = IPointAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPointAnimationStaticsCache: FactoryCache(IPointAnimationStatics, RUNTIME_NAME) = .{};
};
pub const PointAnimationUsingKeyFrames = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyFrames(self: *@This()) core.HResult!*PointKeyFrameCollection {
        const this: *IPointAnimationUsingKeyFrames = @ptrCast(self);
        return try this.getKeyFrames();
    }
    pub fn getEnableDependentAnimation(self: *@This()) core.HResult!bool {
        const this: *IPointAnimationUsingKeyFrames = @ptrCast(self);
        return try this.getEnableDependentAnimation();
    }
    pub fn putEnableDependentAnimation(self: *@This(), value: bool) core.HResult!void {
        const this: *IPointAnimationUsingKeyFrames = @ptrCast(self);
        return try this.putEnableDependentAnimation(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPointAnimationUsingKeyFrames.IID)));
    }
    pub fn getEnableDependentAnimationProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPointAnimationUsingKeyFramesStaticsCache.get();
        return try _f.getEnableDependentAnimationProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.PointAnimationUsingKeyFrames";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointAnimationUsingKeyFrames.GUID;
    pub const IID: Guid = IPointAnimationUsingKeyFrames.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointAnimationUsingKeyFrames.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPointAnimationUsingKeyFramesStaticsCache: FactoryCache(IPointAnimationUsingKeyFramesStatics, RUNTIME_NAME) = .{};
};
pub const PointKeyFrameCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(PointKeyFrame) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(PointKeyFrame) {
        const this: *IVector(PointKeyFrame) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(PointKeyFrame) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(PointKeyFrame) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(PointKeyFrame) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(PointKeyFrame) {
        var this: ?*IIterable(PointKeyFrame) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVector.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.PointKeyFrameCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PointerDownThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IPointerDownThemeAnimation = @ptrCast(self);
        return try this.getTargetName();
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPointerDownThemeAnimation = @ptrCast(self);
        return try this.putTargetName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPointerDownThemeAnimation.IID)));
    }
    pub fn getTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPointerDownThemeAnimationStaticsCache.get();
        return try _f.getTargetNameProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.PointerDownThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointerDownThemeAnimation.GUID;
    pub const IID: Guid = IPointerDownThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointerDownThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPointerDownThemeAnimationStaticsCache: FactoryCache(IPointerDownThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const PointerUpThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IPointerUpThemeAnimation = @ptrCast(self);
        return try this.getTargetName();
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPointerUpThemeAnimation = @ptrCast(self);
        return try this.putTargetName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPointerUpThemeAnimation.IID)));
    }
    pub fn getTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPointerUpThemeAnimationStaticsCache.get();
        return try _f.getTargetNameProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.PointerUpThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointerUpThemeAnimation.GUID;
    pub const IID: Guid = IPointerUpThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointerUpThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPointerUpThemeAnimationStaticsCache: FactoryCache(IPointerUpThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const PopInThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IPopInThemeAnimation = @ptrCast(self);
        return try this.getTargetName();
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPopInThemeAnimation = @ptrCast(self);
        return try this.putTargetName(value);
    }
    pub fn getFromHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *IPopInThemeAnimation = @ptrCast(self);
        return try this.getFromHorizontalOffset();
    }
    pub fn putFromHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IPopInThemeAnimation = @ptrCast(self);
        return try this.putFromHorizontalOffset(value);
    }
    pub fn getFromVerticalOffset(self: *@This()) core.HResult!f64 {
        const this: *IPopInThemeAnimation = @ptrCast(self);
        return try this.getFromVerticalOffset();
    }
    pub fn putFromVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IPopInThemeAnimation = @ptrCast(self);
        return try this.putFromVerticalOffset(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPopInThemeAnimation.IID)));
    }
    pub fn getTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPopInThemeAnimationStaticsCache.get();
        return try _f.getTargetNameProperty();
    }
    pub fn getFromHorizontalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPopInThemeAnimationStaticsCache.get();
        return try _f.getFromHorizontalOffsetProperty();
    }
    pub fn getFromVerticalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPopInThemeAnimationStaticsCache.get();
        return try _f.getFromVerticalOffsetProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.PopInThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPopInThemeAnimation.GUID;
    pub const IID: Guid = IPopInThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPopInThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPopInThemeAnimationStaticsCache: FactoryCache(IPopInThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const PopOutThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IPopOutThemeAnimation = @ptrCast(self);
        return try this.getTargetName();
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IPopOutThemeAnimation = @ptrCast(self);
        return try this.putTargetName(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPopOutThemeAnimation.IID)));
    }
    pub fn getTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPopOutThemeAnimationStaticsCache.get();
        return try _f.getTargetNameProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.PopOutThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPopOutThemeAnimation.GUID;
    pub const IID: Guid = IPopOutThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPopOutThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPopOutThemeAnimationStaticsCache: FactoryCache(IPopOutThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const PopupThemeTransition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFromHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *IPopupThemeTransition = @ptrCast(self);
        return try this.getFromHorizontalOffset();
    }
    pub fn putFromHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IPopupThemeTransition = @ptrCast(self);
        return try this.putFromHorizontalOffset(value);
    }
    pub fn getFromVerticalOffset(self: *@This()) core.HResult!f64 {
        const this: *IPopupThemeTransition = @ptrCast(self);
        return try this.getFromVerticalOffset();
    }
    pub fn putFromVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IPopupThemeTransition = @ptrCast(self);
        return try this.putFromVerticalOffset(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPopupThemeTransition.IID)));
    }
    pub fn getFromHorizontalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPopupThemeTransitionStaticsCache.get();
        return try _f.getFromHorizontalOffsetProperty();
    }
    pub fn getFromVerticalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPopupThemeTransitionStaticsCache.get();
        return try _f.getFromVerticalOffsetProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.PopupThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPopupThemeTransition.GUID;
    pub const IID: Guid = IPopupThemeTransition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPopupThemeTransition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPopupThemeTransitionStaticsCache: FactoryCache(IPopupThemeTransitionStatics, RUNTIME_NAME) = .{};
};
pub const PowerEase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPower(self: *@This()) core.HResult!f64 {
        const this: *IPowerEase = @ptrCast(self);
        return try this.getPower();
    }
    pub fn putPower(self: *@This(), value: f64) core.HResult!void {
        const this: *IPowerEase = @ptrCast(self);
        return try this.putPower(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPowerEase.IID)));
    }
    pub fn getPowerProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPowerEaseStaticsCache.get();
        return try _f.getPowerProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.PowerEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPowerEase.GUID;
    pub const IID: Guid = IPowerEase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPowerEase.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPowerEaseStaticsCache: FactoryCache(IPowerEaseStatics, RUNTIME_NAME) = .{};
};
pub const QuadraticEase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IQuadraticEase.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.QuadraticEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IQuadraticEase.GUID;
    pub const IID: Guid = IQuadraticEase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IQuadraticEase.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const QuarticEase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IQuarticEase.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.QuarticEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IQuarticEase.GUID;
    pub const IID: Guid = IQuarticEase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IQuarticEase.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const QuinticEase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IQuinticEase.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.QuinticEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IQuinticEase.GUID;
    pub const IID: Guid = IQuinticEase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IQuinticEase.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ReorderThemeTransition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IReorderThemeTransition.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.ReorderThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IReorderThemeTransition.GUID;
    pub const IID: Guid = IReorderThemeTransition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IReorderThemeTransition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const RepeatBehavior = extern struct {
    Count: f64,
    Duration: TimeSpan,
    Type: RepeatBehaviorType,
};
pub const RepeatBehaviorHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getForever() core.HResult!RepeatBehavior {
        const _f = @This().IRepeatBehaviorHelperStaticsCache.get();
        return try _f.getForever();
    }
    pub fn FromCount(count: f64) core.HResult!RepeatBehavior {
        const _f = @This().IRepeatBehaviorHelperStaticsCache.get();
        return try _f.FromCount(count);
    }
    pub fn FromDuration(duration: TimeSpan) core.HResult!RepeatBehavior {
        const _f = @This().IRepeatBehaviorHelperStaticsCache.get();
        return try _f.FromDuration(duration);
    }
    pub fn GetHasCount(target: RepeatBehavior) core.HResult!bool {
        const _f = @This().IRepeatBehaviorHelperStaticsCache.get();
        return try _f.GetHasCount(target);
    }
    pub fn GetHasDuration(target: RepeatBehavior) core.HResult!bool {
        const _f = @This().IRepeatBehaviorHelperStaticsCache.get();
        return try _f.GetHasDuration(target);
    }
    pub fn Equals(target: RepeatBehavior, value: RepeatBehavior) core.HResult!bool {
        const _f = @This().IRepeatBehaviorHelperStaticsCache.get();
        return try _f.Equals(target, value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.RepeatBehaviorHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRepeatBehaviorHelper.GUID;
    pub const IID: Guid = IRepeatBehaviorHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRepeatBehaviorHelper.SIGNATURE);
    var _IRepeatBehaviorHelperStaticsCache: FactoryCache(IRepeatBehaviorHelperStatics, RUNTIME_NAME) = .{};
};
pub const RepeatBehaviorType = enum(i32) {
    Count = 0,
    Duration = 1,
    Forever = 2,
};
pub const RepositionThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *IRepositionThemeAnimation = @ptrCast(self);
        return try this.getTargetName();
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IRepositionThemeAnimation = @ptrCast(self);
        return try this.putTargetName(value);
    }
    pub fn getFromHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *IRepositionThemeAnimation = @ptrCast(self);
        return try this.getFromHorizontalOffset();
    }
    pub fn putFromHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IRepositionThemeAnimation = @ptrCast(self);
        return try this.putFromHorizontalOffset(value);
    }
    pub fn getFromVerticalOffset(self: *@This()) core.HResult!f64 {
        const this: *IRepositionThemeAnimation = @ptrCast(self);
        return try this.getFromVerticalOffset();
    }
    pub fn putFromVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IRepositionThemeAnimation = @ptrCast(self);
        return try this.putFromVerticalOffset(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRepositionThemeAnimation.IID)));
    }
    pub fn getTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IRepositionThemeAnimationStaticsCache.get();
        return try _f.getTargetNameProperty();
    }
    pub fn getFromHorizontalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IRepositionThemeAnimationStaticsCache.get();
        return try _f.getFromHorizontalOffsetProperty();
    }
    pub fn getFromVerticalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IRepositionThemeAnimationStaticsCache.get();
        return try _f.getFromVerticalOffsetProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.RepositionThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRepositionThemeAnimation.GUID;
    pub const IID: Guid = IRepositionThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRepositionThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IRepositionThemeAnimationStaticsCache: FactoryCache(IRepositionThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const RepositionThemeTransition = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsStaggeringEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IRepositionThemeTransition2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRepositionThemeTransition2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsStaggeringEnabled();
    }
    pub fn putIsStaggeringEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IRepositionThemeTransition2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRepositionThemeTransition2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsStaggeringEnabled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRepositionThemeTransition.IID)));
    }
    pub fn getIsStaggeringEnabledProperty() core.HResult!*DependencyProperty {
        const _f = @This().IRepositionThemeTransitionStatics2Cache.get();
        return try _f.getIsStaggeringEnabledProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.RepositionThemeTransition";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRepositionThemeTransition.GUID;
    pub const IID: Guid = IRepositionThemeTransition.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRepositionThemeTransition.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IRepositionThemeTransitionStatics2Cache: FactoryCache(IRepositionThemeTransitionStatics2, RUNTIME_NAME) = .{};
};
pub const SineEase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISineEase.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.SineEase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISineEase.GUID;
    pub const IID: Guid = ISineEase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISineEase.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SlideNavigationTransitionEffect = enum(i32) {
    FromBottom = 0,
    FromLeft = 1,
    FromRight = 2,
};
pub const SlideNavigationTransitionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEffect(self: *@This()) core.HResult!SlideNavigationTransitionEffect {
        var this: ?*ISlideNavigationTransitionInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISlideNavigationTransitionInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffect();
    }
    pub fn putEffect(self: *@This(), value: SlideNavigationTransitionEffect) core.HResult!void {
        var this: ?*ISlideNavigationTransitionInfo2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISlideNavigationTransitionInfo2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putEffect(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISlideNavigationTransitionInfo.IID)));
    }
    pub fn getEffectProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISlideNavigationTransitionInfoStatics2Cache.get();
        return try _f.getEffectProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.SlideNavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISlideNavigationTransitionInfo.GUID;
    pub const IID: Guid = ISlideNavigationTransitionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISlideNavigationTransitionInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISlideNavigationTransitionInfoStatics2Cache: FactoryCache(ISlideNavigationTransitionInfoStatics2, RUNTIME_NAME) = .{};
};
pub const SplineColorKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeySpline(self: *@This()) core.HResult!*KeySpline {
        const this: *ISplineColorKeyFrame = @ptrCast(self);
        return try this.getKeySpline();
    }
    pub fn putKeySpline(self: *@This(), value: *KeySpline) core.HResult!void {
        const this: *ISplineColorKeyFrame = @ptrCast(self);
        return try this.putKeySpline(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISplineColorKeyFrame.IID)));
    }
    pub fn getKeySplineProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplineColorKeyFrameStaticsCache.get();
        return try _f.getKeySplineProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.SplineColorKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISplineColorKeyFrame.GUID;
    pub const IID: Guid = ISplineColorKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISplineColorKeyFrame.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISplineColorKeyFrameStaticsCache: FactoryCache(ISplineColorKeyFrameStatics, RUNTIME_NAME) = .{};
};
pub const SplineDoubleKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeySpline(self: *@This()) core.HResult!*KeySpline {
        const this: *ISplineDoubleKeyFrame = @ptrCast(self);
        return try this.getKeySpline();
    }
    pub fn putKeySpline(self: *@This(), value: *KeySpline) core.HResult!void {
        const this: *ISplineDoubleKeyFrame = @ptrCast(self);
        return try this.putKeySpline(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISplineDoubleKeyFrame.IID)));
    }
    pub fn getKeySplineProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplineDoubleKeyFrameStaticsCache.get();
        return try _f.getKeySplineProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.SplineDoubleKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISplineDoubleKeyFrame.GUID;
    pub const IID: Guid = ISplineDoubleKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISplineDoubleKeyFrame.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISplineDoubleKeyFrameStaticsCache: FactoryCache(ISplineDoubleKeyFrameStatics, RUNTIME_NAME) = .{};
};
pub const SplinePointKeyFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeySpline(self: *@This()) core.HResult!*KeySpline {
        const this: *ISplinePointKeyFrame = @ptrCast(self);
        return try this.getKeySpline();
    }
    pub fn putKeySpline(self: *@This(), value: *KeySpline) core.HResult!void {
        const this: *ISplinePointKeyFrame = @ptrCast(self);
        return try this.putKeySpline(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISplinePointKeyFrame.IID)));
    }
    pub fn getKeySplineProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplinePointKeyFrameStaticsCache.get();
        return try _f.getKeySplineProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.SplinePointKeyFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISplinePointKeyFrame.GUID;
    pub const IID: Guid = ISplinePointKeyFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISplinePointKeyFrame.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISplinePointKeyFrameStaticsCache: FactoryCache(ISplinePointKeyFrameStatics, RUNTIME_NAME) = .{};
};
pub const SplitCloseThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOpenedTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.getOpenedTargetName();
    }
    pub fn putOpenedTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.putOpenedTargetName(value);
    }
    pub fn getOpenedTarget(self: *@This()) core.HResult!*DependencyObject {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.getOpenedTarget();
    }
    pub fn putOpenedTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.putOpenedTarget(value);
    }
    pub fn getClosedTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.getClosedTargetName();
    }
    pub fn putClosedTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.putClosedTargetName(value);
    }
    pub fn getClosedTarget(self: *@This()) core.HResult!*DependencyObject {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.getClosedTarget();
    }
    pub fn putClosedTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.putClosedTarget(value);
    }
    pub fn getContentTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.getContentTargetName();
    }
    pub fn putContentTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.putContentTargetName(value);
    }
    pub fn getContentTarget(self: *@This()) core.HResult!*DependencyObject {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.getContentTarget();
    }
    pub fn putContentTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.putContentTarget(value);
    }
    pub fn getOpenedLength(self: *@This()) core.HResult!f64 {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.getOpenedLength();
    }
    pub fn putOpenedLength(self: *@This(), value: f64) core.HResult!void {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.putOpenedLength(value);
    }
    pub fn getClosedLength(self: *@This()) core.HResult!f64 {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.getClosedLength();
    }
    pub fn putClosedLength(self: *@This(), value: f64) core.HResult!void {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.putClosedLength(value);
    }
    pub fn getOffsetFromCenter(self: *@This()) core.HResult!f64 {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.getOffsetFromCenter();
    }
    pub fn putOffsetFromCenter(self: *@This(), value: f64) core.HResult!void {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.putOffsetFromCenter(value);
    }
    pub fn getContentTranslationDirection(self: *@This()) core.HResult!AnimationDirection {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.getContentTranslationDirection();
    }
    pub fn putContentTranslationDirection(self: *@This(), value: AnimationDirection) core.HResult!void {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.putContentTranslationDirection(value);
    }
    pub fn getContentTranslationOffset(self: *@This()) core.HResult!f64 {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.getContentTranslationOffset();
    }
    pub fn putContentTranslationOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *ISplitCloseThemeAnimation = @ptrCast(self);
        return try this.putContentTranslationOffset(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISplitCloseThemeAnimation.IID)));
    }
    pub fn getOpenedTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitCloseThemeAnimationStaticsCache.get();
        return try _f.getOpenedTargetNameProperty();
    }
    pub fn getOpenedTargetProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitCloseThemeAnimationStaticsCache.get();
        return try _f.getOpenedTargetProperty();
    }
    pub fn getClosedTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitCloseThemeAnimationStaticsCache.get();
        return try _f.getClosedTargetNameProperty();
    }
    pub fn getClosedTargetProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitCloseThemeAnimationStaticsCache.get();
        return try _f.getClosedTargetProperty();
    }
    pub fn getContentTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitCloseThemeAnimationStaticsCache.get();
        return try _f.getContentTargetNameProperty();
    }
    pub fn getContentTargetProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitCloseThemeAnimationStaticsCache.get();
        return try _f.getContentTargetProperty();
    }
    pub fn getOpenedLengthProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitCloseThemeAnimationStaticsCache.get();
        return try _f.getOpenedLengthProperty();
    }
    pub fn getClosedLengthProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitCloseThemeAnimationStaticsCache.get();
        return try _f.getClosedLengthProperty();
    }
    pub fn getOffsetFromCenterProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitCloseThemeAnimationStaticsCache.get();
        return try _f.getOffsetFromCenterProperty();
    }
    pub fn getContentTranslationDirectionProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitCloseThemeAnimationStaticsCache.get();
        return try _f.getContentTranslationDirectionProperty();
    }
    pub fn getContentTranslationOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitCloseThemeAnimationStaticsCache.get();
        return try _f.getContentTranslationOffsetProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.SplitCloseThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISplitCloseThemeAnimation.GUID;
    pub const IID: Guid = ISplitCloseThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISplitCloseThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISplitCloseThemeAnimationStaticsCache: FactoryCache(ISplitCloseThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const SplitOpenThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOpenedTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.getOpenedTargetName();
    }
    pub fn putOpenedTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.putOpenedTargetName(value);
    }
    pub fn getOpenedTarget(self: *@This()) core.HResult!*DependencyObject {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.getOpenedTarget();
    }
    pub fn putOpenedTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.putOpenedTarget(value);
    }
    pub fn getClosedTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.getClosedTargetName();
    }
    pub fn putClosedTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.putClosedTargetName(value);
    }
    pub fn getClosedTarget(self: *@This()) core.HResult!*DependencyObject {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.getClosedTarget();
    }
    pub fn putClosedTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.putClosedTarget(value);
    }
    pub fn getContentTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.getContentTargetName();
    }
    pub fn putContentTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.putContentTargetName(value);
    }
    pub fn getContentTarget(self: *@This()) core.HResult!*DependencyObject {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.getContentTarget();
    }
    pub fn putContentTarget(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.putContentTarget(value);
    }
    pub fn getOpenedLength(self: *@This()) core.HResult!f64 {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.getOpenedLength();
    }
    pub fn putOpenedLength(self: *@This(), value: f64) core.HResult!void {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.putOpenedLength(value);
    }
    pub fn getClosedLength(self: *@This()) core.HResult!f64 {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.getClosedLength();
    }
    pub fn putClosedLength(self: *@This(), value: f64) core.HResult!void {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.putClosedLength(value);
    }
    pub fn getOffsetFromCenter(self: *@This()) core.HResult!f64 {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.getOffsetFromCenter();
    }
    pub fn putOffsetFromCenter(self: *@This(), value: f64) core.HResult!void {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.putOffsetFromCenter(value);
    }
    pub fn getContentTranslationDirection(self: *@This()) core.HResult!AnimationDirection {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.getContentTranslationDirection();
    }
    pub fn putContentTranslationDirection(self: *@This(), value: AnimationDirection) core.HResult!void {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.putContentTranslationDirection(value);
    }
    pub fn getContentTranslationOffset(self: *@This()) core.HResult!f64 {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.getContentTranslationOffset();
    }
    pub fn putContentTranslationOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *ISplitOpenThemeAnimation = @ptrCast(self);
        return try this.putContentTranslationOffset(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISplitOpenThemeAnimation.IID)));
    }
    pub fn getOpenedTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitOpenThemeAnimationStaticsCache.get();
        return try _f.getOpenedTargetNameProperty();
    }
    pub fn getOpenedTargetProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitOpenThemeAnimationStaticsCache.get();
        return try _f.getOpenedTargetProperty();
    }
    pub fn getClosedTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitOpenThemeAnimationStaticsCache.get();
        return try _f.getClosedTargetNameProperty();
    }
    pub fn getClosedTargetProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitOpenThemeAnimationStaticsCache.get();
        return try _f.getClosedTargetProperty();
    }
    pub fn getContentTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitOpenThemeAnimationStaticsCache.get();
        return try _f.getContentTargetNameProperty();
    }
    pub fn getContentTargetProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitOpenThemeAnimationStaticsCache.get();
        return try _f.getContentTargetProperty();
    }
    pub fn getOpenedLengthProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitOpenThemeAnimationStaticsCache.get();
        return try _f.getOpenedLengthProperty();
    }
    pub fn getClosedLengthProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitOpenThemeAnimationStaticsCache.get();
        return try _f.getClosedLengthProperty();
    }
    pub fn getOffsetFromCenterProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitOpenThemeAnimationStaticsCache.get();
        return try _f.getOffsetFromCenterProperty();
    }
    pub fn getContentTranslationDirectionProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitOpenThemeAnimationStaticsCache.get();
        return try _f.getContentTranslationDirectionProperty();
    }
    pub fn getContentTranslationOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISplitOpenThemeAnimationStaticsCache.get();
        return try _f.getContentTranslationOffsetProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.SplitOpenThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISplitOpenThemeAnimation.GUID;
    pub const IID: Guid = ISplitOpenThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISplitOpenThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISplitOpenThemeAnimationStaticsCache: FactoryCache(ISplitOpenThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const Storyboard = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChildren(self: *@This()) core.HResult!*TimelineCollection {
        const this: *IStoryboard = @ptrCast(self);
        return try this.getChildren();
    }
    pub fn Seek(self: *@This(), offset: TimeSpan) core.HResult!void {
        const this: *IStoryboard = @ptrCast(self);
        return try this.Seek(offset);
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const this: *IStoryboard = @ptrCast(self);
        return try this.Stop();
    }
    pub fn Begin(self: *@This()) core.HResult!void {
        const this: *IStoryboard = @ptrCast(self);
        return try this.Begin();
    }
    pub fn Pause(self: *@This()) core.HResult!void {
        const this: *IStoryboard = @ptrCast(self);
        return try this.Pause();
    }
    pub fn Resume(self: *@This()) core.HResult!void {
        const this: *IStoryboard = @ptrCast(self);
        return try this.Resume();
    }
    pub fn GetCurrentState(self: *@This()) core.HResult!ClockState {
        const this: *IStoryboard = @ptrCast(self);
        return try this.GetCurrentState();
    }
    pub fn GetCurrentTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IStoryboard = @ptrCast(self);
        return try this.GetCurrentTime();
    }
    pub fn SeekAlignedToLastTick(self: *@This(), offset: TimeSpan) core.HResult!void {
        const this: *IStoryboard = @ptrCast(self);
        return try this.SeekAlignedToLastTick(offset);
    }
    pub fn SkipToFill(self: *@This()) core.HResult!void {
        const this: *IStoryboard = @ptrCast(self);
        return try this.SkipToFill();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IStoryboard.IID)));
    }
    pub fn getTargetPropertyProperty() core.HResult!*DependencyProperty {
        const _f = @This().IStoryboardStaticsCache.get();
        return try _f.getTargetPropertyProperty();
    }
    pub fn GetTargetProperty(element: *Timeline) core.HResult!HSTRING {
        const _f = @This().IStoryboardStaticsCache.get();
        return try _f.GetTargetProperty(element);
    }
    pub fn SetTargetProperty(element: *Timeline, path: HSTRING) core.HResult!void {
        const _f = @This().IStoryboardStaticsCache.get();
        return try _f.SetTargetProperty(element, path);
    }
    pub fn getTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().IStoryboardStaticsCache.get();
        return try _f.getTargetNameProperty();
    }
    pub fn GetTargetName(element: *Timeline) core.HResult!HSTRING {
        const _f = @This().IStoryboardStaticsCache.get();
        return try _f.GetTargetName(element);
    }
    pub fn SetTargetName(element: *Timeline, name: HSTRING) core.HResult!void {
        const _f = @This().IStoryboardStaticsCache.get();
        return try _f.SetTargetName(element, name);
    }
    pub fn SetTarget(timeline: *Timeline, target: *DependencyObject) core.HResult!void {
        const _f = @This().IStoryboardStaticsCache.get();
        return try _f.SetTarget(timeline, target);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.Storyboard";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStoryboard.GUID;
    pub const IID: Guid = IStoryboard.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStoryboard.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IStoryboardStaticsCache: FactoryCache(IStoryboardStatics, RUNTIME_NAME) = .{};
};
pub const SuppressNavigationTransitionInfo = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISuppressNavigationTransitionInfo.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.SuppressNavigationTransitionInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISuppressNavigationTransitionInfo.GUID;
    pub const IID: Guid = ISuppressNavigationTransitionInfo.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISuppressNavigationTransitionInfo.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const SwipeBackThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *ISwipeBackThemeAnimation = @ptrCast(self);
        return try this.getTargetName();
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISwipeBackThemeAnimation = @ptrCast(self);
        return try this.putTargetName(value);
    }
    pub fn getFromHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *ISwipeBackThemeAnimation = @ptrCast(self);
        return try this.getFromHorizontalOffset();
    }
    pub fn putFromHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *ISwipeBackThemeAnimation = @ptrCast(self);
        return try this.putFromHorizontalOffset(value);
    }
    pub fn getFromVerticalOffset(self: *@This()) core.HResult!f64 {
        const this: *ISwipeBackThemeAnimation = @ptrCast(self);
        return try this.getFromVerticalOffset();
    }
    pub fn putFromVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *ISwipeBackThemeAnimation = @ptrCast(self);
        return try this.putFromVerticalOffset(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISwipeBackThemeAnimation.IID)));
    }
    pub fn getTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISwipeBackThemeAnimationStaticsCache.get();
        return try _f.getTargetNameProperty();
    }
    pub fn getFromHorizontalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISwipeBackThemeAnimationStaticsCache.get();
        return try _f.getFromHorizontalOffsetProperty();
    }
    pub fn getFromVerticalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISwipeBackThemeAnimationStaticsCache.get();
        return try _f.getFromVerticalOffsetProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.SwipeBackThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISwipeBackThemeAnimation.GUID;
    pub const IID: Guid = ISwipeBackThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISwipeBackThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISwipeBackThemeAnimationStaticsCache: FactoryCache(ISwipeBackThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const SwipeHintThemeAnimation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTargetName(self: *@This()) core.HResult!HSTRING {
        const this: *ISwipeHintThemeAnimation = @ptrCast(self);
        return try this.getTargetName();
    }
    pub fn putTargetName(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISwipeHintThemeAnimation = @ptrCast(self);
        return try this.putTargetName(value);
    }
    pub fn getToHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *ISwipeHintThemeAnimation = @ptrCast(self);
        return try this.getToHorizontalOffset();
    }
    pub fn putToHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *ISwipeHintThemeAnimation = @ptrCast(self);
        return try this.putToHorizontalOffset(value);
    }
    pub fn getToVerticalOffset(self: *@This()) core.HResult!f64 {
        const this: *ISwipeHintThemeAnimation = @ptrCast(self);
        return try this.getToVerticalOffset();
    }
    pub fn putToVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *ISwipeHintThemeAnimation = @ptrCast(self);
        return try this.putToVerticalOffset(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISwipeHintThemeAnimation.IID)));
    }
    pub fn getTargetNameProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISwipeHintThemeAnimationStaticsCache.get();
        return try _f.getTargetNameProperty();
    }
    pub fn getToHorizontalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISwipeHintThemeAnimationStaticsCache.get();
        return try _f.getToHorizontalOffsetProperty();
    }
    pub fn getToVerticalOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISwipeHintThemeAnimationStaticsCache.get();
        return try _f.getToVerticalOffsetProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.SwipeHintThemeAnimation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISwipeHintThemeAnimation.GUID;
    pub const IID: Guid = ISwipeHintThemeAnimation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISwipeHintThemeAnimation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISwipeHintThemeAnimationStaticsCache: FactoryCache(ISwipeHintThemeAnimationStatics, RUNTIME_NAME) = .{};
};
pub const TimelineCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(Timeline) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(Timeline) {
        const this: *IVector(Timeline) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(Timeline) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(Timeline) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(Timeline) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(Timeline) {
        var this: ?*IIterable(Timeline) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVector.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.TimelineCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TransitionCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(Transition) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(Transition) {
        const this: *IVector(Transition) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(Transition) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(Transition) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(Transition) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(Transition) {
        var this: ?*IIterable(Transition) = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IVector.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Animation.TransitionCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../../root.zig").IUnknown;
const IActivationFactory = @import("../../../Foundation.zig").IActivationFactory;
const IIterable = @import("../../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const ICompositionAnimationBase = @import("../../Composition.zig").ICompositionAnimationBase;
const Duration = @import("../../Xaml.zig").Duration;
const UIElement = @import("../../Xaml.zig").UIElement;
const EventRegistrationToken = @import("../../../Foundation.zig").EventRegistrationToken;
const IVectorView = @import("../../../Foundation/Collections.zig").IVectorView;
const IReference = @import("../../../Foundation.zig").IReference;
const ListViewBase = @import("../Controls.zig").ListViewBase;
const Point = @import("../../../Foundation.zig").Point;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const TimeSpan = @import("../../../Foundation.zig").TimeSpan;
const Guid = @import("../../../root.zig").Guid;
const IVector = @import("../../../Foundation/Collections.zig").IVector;
const DependencyProperty = @import("../../Xaml.zig").DependencyProperty;
const DependencyObject = @import("../../Xaml.zig").DependencyObject;
const EdgeTransitionLocation = @import("../Controls/Primitives.zig").EdgeTransitionLocation;
const HRESULT = @import("../../../root.zig").HRESULT;
const AnimationDirection = @import("../Controls/Primitives.zig").AnimationDirection;
const IIterator = @import("../../../Foundation/Collections.zig").IIterator;
const CompositionEasingFunction = @import("../../Composition.zig").CompositionEasingFunction;
const TypedEventHandler = @import("../../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../../root.zig").HSTRING;
const Color = @import("../../../UI.zig").Color;
const EventHandler = @import("../../../Foundation.zig").EventHandler;
const core = @import("../../../root.zig").core;
