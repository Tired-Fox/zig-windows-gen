pub const Brush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOpacity(self: *@This()) core.HResult!f64 {
        const this: *IBrush = @ptrCast(self);
        return try this.getOpacity();
    }
    pub fn putOpacity(self: *@This(), value: f64) core.HResult!void {
        const this: *IBrush = @ptrCast(self);
        return try this.putOpacity(value);
    }
    pub fn getTransform(self: *@This()) core.HResult!*Transform {
        const this: *IBrush = @ptrCast(self);
        return try this.getTransform();
    }
    pub fn putTransform(self: *@This(), value: *Transform) core.HResult!void {
        const this: *IBrush = @ptrCast(self);
        return try this.putTransform(value);
    }
    pub fn getRelativeTransform(self: *@This()) core.HResult!*Transform {
        const this: *IBrush = @ptrCast(self);
        return try this.getRelativeTransform();
    }
    pub fn putRelativeTransform(self: *@This(), value: *Transform) core.HResult!void {
        const this: *IBrush = @ptrCast(self);
        return try this.putRelativeTransform(value);
    }
    pub fn PopulatePropertyInfoOverride(self: *@This(), propertyName: HSTRING, animationPropertyInfo: *AnimationPropertyInfo) core.HResult!void {
        var this: ?*IBrushOverrides2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBrushOverrides2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PopulatePropertyInfoOverride(propertyName, animationPropertyInfo);
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
    pub fn getOpacityProperty() core.HResult!*DependencyProperty {
        const _f = @This().IBrushStaticsCache.get();
        return try _f.getOpacityProperty();
    }
    pub fn getTransformProperty() core.HResult!*DependencyProperty {
        const _f = @This().IBrushStaticsCache.get();
        return try _f.getTransformProperty();
    }
    pub fn getRelativeTransformProperty() core.HResult!*DependencyProperty {
        const _f = @This().IBrushStaticsCache.get();
        return try _f.getRelativeTransformProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Brush {
        const _f = @This().IBrushFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Brush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBrush.GUID;
    pub const IID: Guid = IBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBrush.SIGNATURE);
    var _IBrushStaticsCache: FactoryCache(IBrushStatics, RUNTIME_NAME) = .{};
    var _IBrushFactoryCache: FactoryCache(IBrushFactory, RUNTIME_NAME) = .{};
};
pub const TileBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAlignmentX(self: *@This()) core.HResult!AlignmentX {
        const this: *ITileBrush = @ptrCast(self);
        return try this.getAlignmentX();
    }
    pub fn putAlignmentX(self: *@This(), value: AlignmentX) core.HResult!void {
        const this: *ITileBrush = @ptrCast(self);
        return try this.putAlignmentX(value);
    }
    pub fn getAlignmentY(self: *@This()) core.HResult!AlignmentY {
        const this: *ITileBrush = @ptrCast(self);
        return try this.getAlignmentY();
    }
    pub fn putAlignmentY(self: *@This(), value: AlignmentY) core.HResult!void {
        const this: *ITileBrush = @ptrCast(self);
        return try this.putAlignmentY(value);
    }
    pub fn getStretch(self: *@This()) core.HResult!Stretch {
        const this: *ITileBrush = @ptrCast(self);
        return try this.getStretch();
    }
    pub fn putStretch(self: *@This(), value: Stretch) core.HResult!void {
        const this: *ITileBrush = @ptrCast(self);
        return try this.putStretch(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAlignmentXProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITileBrushStaticsCache.get();
        return try _f.getAlignmentXProperty();
    }
    pub fn getAlignmentYProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITileBrushStaticsCache.get();
        return try _f.getAlignmentYProperty();
    }
    pub fn getStretchProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITileBrushStaticsCache.get();
        return try _f.getStretchProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TileBrush {
        const _f = @This().ITileBrushFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.TileBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITileBrush.GUID;
    pub const IID: Guid = ITileBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITileBrush.SIGNATURE);
    var _ITileBrushStaticsCache: FactoryCache(ITileBrushStatics, RUNTIME_NAME) = .{};
    var _ITileBrushFactoryCache: FactoryCache(ITileBrushFactory, RUNTIME_NAME) = .{};
};
pub const AcrylicBackgroundSource = enum(i32) {
    HostBackdrop = 0,
    Backdrop = 1,
};
pub const XamlCompositionBrushBase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFallbackColor(self: *@This()) core.HResult!Color {
        const this: *IXamlCompositionBrushBase = @ptrCast(self);
        return try this.getFallbackColor();
    }
    pub fn putFallbackColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IXamlCompositionBrushBase = @ptrCast(self);
        return try this.putFallbackColor(value);
    }
    pub fn getCompositionBrush(self: *@This()) core.HResult!*CompositionBrush {
        var this: ?*IXamlCompositionBrushBaseProtected = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXamlCompositionBrushBaseProtected.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompositionBrush();
    }
    pub fn putCompositionBrush(self: *@This(), value: *CompositionBrush) core.HResult!void {
        var this: ?*IXamlCompositionBrushBaseProtected = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXamlCompositionBrushBaseProtected.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompositionBrush(value);
    }
    pub fn OnConnected(self: *@This()) core.HResult!void {
        var this: ?*IXamlCompositionBrushBaseOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXamlCompositionBrushBaseOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnConnected();
    }
    pub fn OnDisconnected(self: *@This()) core.HResult!void {
        var this: ?*IXamlCompositionBrushBaseOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXamlCompositionBrushBaseOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnDisconnected();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getFallbackColorProperty() core.HResult!*DependencyProperty {
        const _f = @This().IXamlCompositionBrushBaseStaticsCache.get();
        return try _f.getFallbackColorProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*XamlCompositionBrushBase {
        const _f = @This().IXamlCompositionBrushBaseFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.XamlCompositionBrushBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXamlCompositionBrushBase.GUID;
    pub const IID: Guid = IXamlCompositionBrushBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXamlCompositionBrushBase.SIGNATURE);
    var _IXamlCompositionBrushBaseStaticsCache: FactoryCache(IXamlCompositionBrushBaseStatics, RUNTIME_NAME) = .{};
    var _IXamlCompositionBrushBaseFactoryCache: FactoryCache(IXamlCompositionBrushBaseFactory, RUNTIME_NAME) = .{};
};
pub const AcrylicBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getBackgroundSource(self: *@This()) core.HResult!AcrylicBackgroundSource {
        const this: *IAcrylicBrush = @ptrCast(self);
        return try this.getBackgroundSource();
    }
    pub fn putBackgroundSource(self: *@This(), value: AcrylicBackgroundSource) core.HResult!void {
        const this: *IAcrylicBrush = @ptrCast(self);
        return try this.putBackgroundSource(value);
    }
    pub fn getTintColor(self: *@This()) core.HResult!Color {
        const this: *IAcrylicBrush = @ptrCast(self);
        return try this.getTintColor();
    }
    pub fn putTintColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IAcrylicBrush = @ptrCast(self);
        return try this.putTintColor(value);
    }
    pub fn getTintOpacity(self: *@This()) core.HResult!f64 {
        const this: *IAcrylicBrush = @ptrCast(self);
        return try this.getTintOpacity();
    }
    pub fn putTintOpacity(self: *@This(), value: f64) core.HResult!void {
        const this: *IAcrylicBrush = @ptrCast(self);
        return try this.putTintOpacity(value);
    }
    pub fn getTintTransitionDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IAcrylicBrush = @ptrCast(self);
        return try this.getTintTransitionDuration();
    }
    pub fn putTintTransitionDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *IAcrylicBrush = @ptrCast(self);
        return try this.putTintTransitionDuration(value);
    }
    pub fn getAlwaysUseFallback(self: *@This()) core.HResult!bool {
        const this: *IAcrylicBrush = @ptrCast(self);
        return try this.getAlwaysUseFallback();
    }
    pub fn putAlwaysUseFallback(self: *@This(), value: bool) core.HResult!void {
        const this: *IAcrylicBrush = @ptrCast(self);
        return try this.putAlwaysUseFallback(value);
    }
    pub fn getTintLuminosityOpacity(self: *@This()) core.HResult!*IReference(f64) {
        var this: ?*IAcrylicBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAcrylicBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTintLuminosityOpacity();
    }
    pub fn putTintLuminosityOpacity(self: *@This(), value: *IReference(f64)) core.HResult!void {
        var this: ?*IAcrylicBrush2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAcrylicBrush2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTintLuminosityOpacity(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getBackgroundSourceProperty() core.HResult!*DependencyProperty {
        const _f = @This().IAcrylicBrushStaticsCache.get();
        return try _f.getBackgroundSourceProperty();
    }
    pub fn getTintColorProperty() core.HResult!*DependencyProperty {
        const _f = @This().IAcrylicBrushStaticsCache.get();
        return try _f.getTintColorProperty();
    }
    pub fn getTintOpacityProperty() core.HResult!*DependencyProperty {
        const _f = @This().IAcrylicBrushStaticsCache.get();
        return try _f.getTintOpacityProperty();
    }
    pub fn getTintTransitionDurationProperty() core.HResult!*DependencyProperty {
        const _f = @This().IAcrylicBrushStaticsCache.get();
        return try _f.getTintTransitionDurationProperty();
    }
    pub fn getAlwaysUseFallbackProperty() core.HResult!*DependencyProperty {
        const _f = @This().IAcrylicBrushStaticsCache.get();
        return try _f.getAlwaysUseFallbackProperty();
    }
    pub fn getTintLuminosityOpacityProperty() core.HResult!*DependencyProperty {
        const _f = @This().IAcrylicBrushStatics2Cache.get();
        return try _f.getTintLuminosityOpacityProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*AcrylicBrush {
        const _f = @This().IAcrylicBrushFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.AcrylicBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAcrylicBrush.GUID;
    pub const IID: Guid = IAcrylicBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAcrylicBrush.SIGNATURE);
    var _IAcrylicBrushStaticsCache: FactoryCache(IAcrylicBrushStatics, RUNTIME_NAME) = .{};
    var _IAcrylicBrushStatics2Cache: FactoryCache(IAcrylicBrushStatics2, RUNTIME_NAME) = .{};
    var _IAcrylicBrushFactoryCache: FactoryCache(IAcrylicBrushFactory, RUNTIME_NAME) = .{};
};
pub const AlignmentX = enum(i32) {
    Left = 0,
    Center = 1,
    Right = 2,
};
pub const AlignmentY = enum(i32) {
    Top = 0,
    Center = 1,
    Bottom = 2,
};
pub const PathSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.PathSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPathSegment.GUID;
    pub const IID: Guid = IPathSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPathSegment.SIGNATURE);
    var _IPathSegmentFactoryCache: FactoryCache(IPathSegmentFactory, RUNTIME_NAME) = .{};
};
pub const ArcSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPoint(self: *@This()) core.HResult!Point {
        const this: *IArcSegment = @ptrCast(self);
        return try this.getPoint();
    }
    pub fn putPoint(self: *@This(), value: Point) core.HResult!void {
        const this: *IArcSegment = @ptrCast(self);
        return try this.putPoint(value);
    }
    pub fn getSize(self: *@This()) core.HResult!Size {
        const this: *IArcSegment = @ptrCast(self);
        return try this.getSize();
    }
    pub fn putSize(self: *@This(), value: Size) core.HResult!void {
        const this: *IArcSegment = @ptrCast(self);
        return try this.putSize(value);
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f64 {
        const this: *IArcSegment = @ptrCast(self);
        return try this.getRotationAngle();
    }
    pub fn putRotationAngle(self: *@This(), value: f64) core.HResult!void {
        const this: *IArcSegment = @ptrCast(self);
        return try this.putRotationAngle(value);
    }
    pub fn getIsLargeArc(self: *@This()) core.HResult!bool {
        const this: *IArcSegment = @ptrCast(self);
        return try this.getIsLargeArc();
    }
    pub fn putIsLargeArc(self: *@This(), value: bool) core.HResult!void {
        const this: *IArcSegment = @ptrCast(self);
        return try this.putIsLargeArc(value);
    }
    pub fn getSweepDirection(self: *@This()) core.HResult!SweepDirection {
        const this: *IArcSegment = @ptrCast(self);
        return try this.getSweepDirection();
    }
    pub fn putSweepDirection(self: *@This(), value: SweepDirection) core.HResult!void {
        const this: *IArcSegment = @ptrCast(self);
        return try this.putSweepDirection(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IArcSegment.IID)));
    }
    pub fn getPointProperty() core.HResult!*DependencyProperty {
        const _f = @This().IArcSegmentStaticsCache.get();
        return try _f.getPointProperty();
    }
    pub fn getSizeProperty() core.HResult!*DependencyProperty {
        const _f = @This().IArcSegmentStaticsCache.get();
        return try _f.getSizeProperty();
    }
    pub fn getRotationAngleProperty() core.HResult!*DependencyProperty {
        const _f = @This().IArcSegmentStaticsCache.get();
        return try _f.getRotationAngleProperty();
    }
    pub fn getIsLargeArcProperty() core.HResult!*DependencyProperty {
        const _f = @This().IArcSegmentStaticsCache.get();
        return try _f.getIsLargeArcProperty();
    }
    pub fn getSweepDirectionProperty() core.HResult!*DependencyProperty {
        const _f = @This().IArcSegmentStaticsCache.get();
        return try _f.getSweepDirectionProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ArcSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IArcSegment.GUID;
    pub const IID: Guid = IArcSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IArcSegment.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IArcSegmentStaticsCache: FactoryCache(IArcSegmentStatics, RUNTIME_NAME) = .{};
};
pub const AudioCategory = enum(i32) {
    Other = 0,
    ForegroundOnlyMedia = 1,
    BackgroundCapableMedia = 2,
    Communications = 3,
    Alerts = 4,
    SoundEffects = 5,
    GameEffects = 6,
    GameMedia = 7,
    GameChat = 8,
    Speech = 9,
    Movie = 10,
    Media = 11,
};
pub const AudioDeviceType = enum(i32) {
    Console = 0,
    Multimedia = 1,
    Communications = 2,
};
pub const BezierSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPoint1(self: *@This()) core.HResult!Point {
        const this: *IBezierSegment = @ptrCast(self);
        return try this.getPoint1();
    }
    pub fn putPoint1(self: *@This(), value: Point) core.HResult!void {
        const this: *IBezierSegment = @ptrCast(self);
        return try this.putPoint1(value);
    }
    pub fn getPoint2(self: *@This()) core.HResult!Point {
        const this: *IBezierSegment = @ptrCast(self);
        return try this.getPoint2();
    }
    pub fn putPoint2(self: *@This(), value: Point) core.HResult!void {
        const this: *IBezierSegment = @ptrCast(self);
        return try this.putPoint2(value);
    }
    pub fn getPoint3(self: *@This()) core.HResult!Point {
        const this: *IBezierSegment = @ptrCast(self);
        return try this.getPoint3();
    }
    pub fn putPoint3(self: *@This(), value: Point) core.HResult!void {
        const this: *IBezierSegment = @ptrCast(self);
        return try this.putPoint3(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBezierSegment.IID)));
    }
    pub fn getPoint1Property() core.HResult!*DependencyProperty {
        const _f = @This().IBezierSegmentStaticsCache.get();
        return try _f.getPoint1Property();
    }
    pub fn getPoint2Property() core.HResult!*DependencyProperty {
        const _f = @This().IBezierSegmentStaticsCache.get();
        return try _f.getPoint2Property();
    }
    pub fn getPoint3Property() core.HResult!*DependencyProperty {
        const _f = @This().IBezierSegmentStaticsCache.get();
        return try _f.getPoint3Property();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.BezierSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBezierSegment.GUID;
    pub const IID: Guid = IBezierSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBezierSegment.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IBezierSegmentStaticsCache: FactoryCache(IBezierSegmentStatics, RUNTIME_NAME) = .{};
};
pub const CacheMode = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CacheMode {
        const _f = @This().ICacheModeFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.CacheMode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICacheMode.GUID;
    pub const IID: Guid = ICacheMode.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICacheMode.SIGNATURE);
    var _ICacheModeFactoryCache: FactoryCache(ICacheModeFactory, RUNTIME_NAME) = .{};
};
pub const BitmapCache = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBitmapCache.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.BitmapCache";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBitmapCache.GUID;
    pub const IID: Guid = IBitmapCache.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBitmapCache.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const BrushCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(Brush) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(Brush) {
        const this: *IVector(Brush) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(Brush) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(Brush) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(Brush) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(Brush) {
        var this: ?*IIterable(Brush) = undefined;
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.BrushCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const BrushMappingMode = enum(i32) {
    Absolute = 0,
    RelativeToBoundingBox = 1,
};
pub const ColorInterpolationMode = enum(i32) {
    ScRgbLinearInterpolation = 0,
    SRgbLinearInterpolation = 1,
};
pub const GeneralTransform = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInverse(self: *@This()) core.HResult!*GeneralTransform {
        const this: *IGeneralTransform = @ptrCast(self);
        return try this.getInverse();
    }
    pub fn TransformPoint(self: *@This(), point: Point) core.HResult!Point {
        const this: *IGeneralTransform = @ptrCast(self);
        return try this.TransformPoint(point);
    }
    pub fn TryTransform(self: *@This(), inPoint: Point, outPoint: Point) core.HResult!bool {
        const this: *IGeneralTransform = @ptrCast(self);
        return try this.TryTransform(inPoint, outPoint);
    }
    pub fn TransformBounds(self: *@This(), rect: Rect) core.HResult!Rect {
        const this: *IGeneralTransform = @ptrCast(self);
        return try this.TransformBounds(rect);
    }
    pub fn getInverseCore(self: *@This()) core.HResult!*GeneralTransform {
        var this: ?*IGeneralTransformOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeneralTransformOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInverseCore();
    }
    pub fn TryTransformCore(self: *@This(), inPoint: Point, outPoint: Point) core.HResult!bool {
        var this: ?*IGeneralTransformOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeneralTransformOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryTransformCore(inPoint, outPoint);
    }
    pub fn TransformBoundsCore(self: *@This(), rect: Rect) core.HResult!Rect {
        var this: ?*IGeneralTransformOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGeneralTransformOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TransformBoundsCore(rect);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GeneralTransform {
        const _f = @This().IGeneralTransformFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.GeneralTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeneralTransform.GUID;
    pub const IID: Guid = IGeneralTransform.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeneralTransform.SIGNATURE);
    var _IGeneralTransformFactoryCache: FactoryCache(IGeneralTransformFactory, RUNTIME_NAME) = .{};
};
pub const Transform = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Transform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITransform.GUID;
    pub const IID: Guid = ITransform.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITransform.SIGNATURE);
    var _ITransformFactoryCache: FactoryCache(ITransformFactory, RUNTIME_NAME) = .{};
};
pub const CompositeTransform = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCenterX(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.getCenterX();
    }
    pub fn putCenterX(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.putCenterX(value);
    }
    pub fn getCenterY(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.getCenterY();
    }
    pub fn putCenterY(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.putCenterY(value);
    }
    pub fn getScaleX(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.getScaleX();
    }
    pub fn putScaleX(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.putScaleX(value);
    }
    pub fn getScaleY(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.getScaleY();
    }
    pub fn putScaleY(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.putScaleY(value);
    }
    pub fn getSkewX(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.getSkewX();
    }
    pub fn putSkewX(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.putSkewX(value);
    }
    pub fn getSkewY(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.getSkewY();
    }
    pub fn putSkewY(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.putSkewY(value);
    }
    pub fn getRotation(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.getRotation();
    }
    pub fn putRotation(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.putRotation(value);
    }
    pub fn getTranslateX(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.getTranslateX();
    }
    pub fn putTranslateX(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.putTranslateX(value);
    }
    pub fn getTranslateY(self: *@This()) core.HResult!f64 {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.getTranslateY();
    }
    pub fn putTranslateY(self: *@This(), value: f64) core.HResult!void {
        const this: *ICompositeTransform = @ptrCast(self);
        return try this.putTranslateY(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICompositeTransform.IID)));
    }
    pub fn getCenterXProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICompositeTransformStaticsCache.get();
        return try _f.getCenterXProperty();
    }
    pub fn getCenterYProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICompositeTransformStaticsCache.get();
        return try _f.getCenterYProperty();
    }
    pub fn getScaleXProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICompositeTransformStaticsCache.get();
        return try _f.getScaleXProperty();
    }
    pub fn getScaleYProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICompositeTransformStaticsCache.get();
        return try _f.getScaleYProperty();
    }
    pub fn getSkewXProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICompositeTransformStaticsCache.get();
        return try _f.getSkewXProperty();
    }
    pub fn getSkewYProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICompositeTransformStaticsCache.get();
        return try _f.getSkewYProperty();
    }
    pub fn getRotationProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICompositeTransformStaticsCache.get();
        return try _f.getRotationProperty();
    }
    pub fn getTranslateXProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICompositeTransformStaticsCache.get();
        return try _f.getTranslateXProperty();
    }
    pub fn getTranslateYProperty() core.HResult!*DependencyProperty {
        const _f = @This().ICompositeTransformStaticsCache.get();
        return try _f.getTranslateYProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.CompositeTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositeTransform.GUID;
    pub const IID: Guid = ICompositeTransform.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositeTransform.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ICompositeTransformStaticsCache: FactoryCache(ICompositeTransformStatics, RUNTIME_NAME) = .{};
};
pub const CompositionTarget = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn addRendered(handler: *EventHandler(RenderedEventArgs)) core.HResult!EventRegistrationToken {
        const _f = @This().ICompositionTargetStatics3Cache.get();
        return try _f.addRendered(handler);
    }
    pub fn removeRendered(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().ICompositionTargetStatics3Cache.get();
        return try _f.removeRendered(token);
    }
    pub fn addRendering(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const _f = @This().ICompositionTargetStaticsCache.get();
        return try _f.addRendering(handler);
    }
    pub fn removeRendering(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().ICompositionTargetStaticsCache.get();
        return try _f.removeRendering(token);
    }
    pub fn addSurfaceContentsLost(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const _f = @This().ICompositionTargetStaticsCache.get();
        return try _f.addSurfaceContentsLost(handler);
    }
    pub fn removeSurfaceContentsLost(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().ICompositionTargetStaticsCache.get();
        return try _f.removeSurfaceContentsLost(token);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.CompositionTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompositionTarget.GUID;
    pub const IID: Guid = ICompositionTarget.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompositionTarget.SIGNATURE);
    var _ICompositionTargetStatics3Cache: FactoryCache(ICompositionTargetStatics3, RUNTIME_NAME) = .{};
    var _ICompositionTargetStaticsCache: FactoryCache(ICompositionTargetStatics, RUNTIME_NAME) = .{};
};
pub const DoubleCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(f64) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(f64) {
        const this: *IVector(f64) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(f64) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(f64) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(f64) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(f64) {
        var this: ?*IIterable(f64) = undefined;
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.DoubleCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ElementCompositeMode = enum(i32) {
    Inherit = 0,
    SourceOver = 1,
    MinBlend = 2,
};
pub const Geometry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTransform(self: *@This()) core.HResult!*Transform {
        const this: *IGeometry = @ptrCast(self);
        return try this.getTransform();
    }
    pub fn putTransform(self: *@This(), value: *Transform) core.HResult!void {
        const this: *IGeometry = @ptrCast(self);
        return try this.putTransform(value);
    }
    pub fn getBounds(self: *@This()) core.HResult!Rect {
        const this: *IGeometry = @ptrCast(self);
        return try this.getBounds();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getEmpty() core.HResult!*Geometry {
        const _f = @This().IGeometryStaticsCache.get();
        return try _f.getEmpty();
    }
    pub fn getStandardFlatteningTolerance() core.HResult!f64 {
        const _f = @This().IGeometryStaticsCache.get();
        return try _f.getStandardFlatteningTolerance();
    }
    pub fn getTransformProperty() core.HResult!*DependencyProperty {
        const _f = @This().IGeometryStaticsCache.get();
        return try _f.getTransformProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Geometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeometry.GUID;
    pub const IID: Guid = IGeometry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeometry.SIGNATURE);
    var _IGeometryStaticsCache: FactoryCache(IGeometryStatics, RUNTIME_NAME) = .{};
    var _IGeometryFactoryCache: FactoryCache(IGeometryFactory, RUNTIME_NAME) = .{};
};
pub const EllipseGeometry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCenter(self: *@This()) core.HResult!Point {
        const this: *IEllipseGeometry = @ptrCast(self);
        return try this.getCenter();
    }
    pub fn putCenter(self: *@This(), value: Point) core.HResult!void {
        const this: *IEllipseGeometry = @ptrCast(self);
        return try this.putCenter(value);
    }
    pub fn getRadiusX(self: *@This()) core.HResult!f64 {
        const this: *IEllipseGeometry = @ptrCast(self);
        return try this.getRadiusX();
    }
    pub fn putRadiusX(self: *@This(), value: f64) core.HResult!void {
        const this: *IEllipseGeometry = @ptrCast(self);
        return try this.putRadiusX(value);
    }
    pub fn getRadiusY(self: *@This()) core.HResult!f64 {
        const this: *IEllipseGeometry = @ptrCast(self);
        return try this.getRadiusY();
    }
    pub fn putRadiusY(self: *@This(), value: f64) core.HResult!void {
        const this: *IEllipseGeometry = @ptrCast(self);
        return try this.putRadiusY(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IEllipseGeometry.IID)));
    }
    pub fn getCenterProperty() core.HResult!*DependencyProperty {
        const _f = @This().IEllipseGeometryStaticsCache.get();
        return try _f.getCenterProperty();
    }
    pub fn getRadiusXProperty() core.HResult!*DependencyProperty {
        const _f = @This().IEllipseGeometryStaticsCache.get();
        return try _f.getRadiusXProperty();
    }
    pub fn getRadiusYProperty() core.HResult!*DependencyProperty {
        const _f = @This().IEllipseGeometryStaticsCache.get();
        return try _f.getRadiusYProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.EllipseGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IEllipseGeometry.GUID;
    pub const IID: Guid = IEllipseGeometry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IEllipseGeometry.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IEllipseGeometryStaticsCache: FactoryCache(IEllipseGeometryStatics, RUNTIME_NAME) = .{};
};
pub const FastPlayFallbackBehaviour = enum(i32) {
    Skip = 0,
    Hide = 1,
    Disable = 2,
};
pub const FillRule = enum(i32) {
    EvenOdd = 0,
    Nonzero = 1,
};
pub const FontFamily = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSource(self: *@This()) core.HResult!HSTRING {
        const this: *IFontFamily = @ptrCast(self);
        return try this.getSource();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getXamlAutoFontFamily() core.HResult!*FontFamily {
        const _f = @This().IFontFamilyStatics2Cache.get();
        return try _f.getXamlAutoFontFamily();
    }
    pub fn CreateInstanceWithName(familyName: HSTRING, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FontFamily {
        const _f = @This().IFontFamilyFactoryCache.get();
        return try _f.CreateInstanceWithName(familyName, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.FontFamily";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFontFamily.GUID;
    pub const IID: Guid = IFontFamily.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFontFamily.SIGNATURE);
    var _IFontFamilyStatics2Cache: FactoryCache(IFontFamilyStatics2, RUNTIME_NAME) = .{};
    var _IFontFamilyFactoryCache: FactoryCache(IFontFamilyFactory, RUNTIME_NAME) = .{};
};
pub const GeometryCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(Geometry) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(Geometry) {
        const this: *IVector(Geometry) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(Geometry) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(Geometry) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(Geometry) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(Geometry) {
        var this: ?*IIterable(Geometry) = undefined;
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.GeometryCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const GeometryGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFillRule(self: *@This()) core.HResult!FillRule {
        const this: *IGeometryGroup = @ptrCast(self);
        return try this.getFillRule();
    }
    pub fn putFillRule(self: *@This(), value: FillRule) core.HResult!void {
        const this: *IGeometryGroup = @ptrCast(self);
        return try this.putFillRule(value);
    }
    pub fn getChildren(self: *@This()) core.HResult!*GeometryCollection {
        const this: *IGeometryGroup = @ptrCast(self);
        return try this.getChildren();
    }
    pub fn putChildren(self: *@This(), value: *GeometryCollection) core.HResult!void {
        const this: *IGeometryGroup = @ptrCast(self);
        return try this.putChildren(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGeometryGroup.IID)));
    }
    pub fn getFillRuleProperty() core.HResult!*DependencyProperty {
        const _f = @This().IGeometryGroupStaticsCache.get();
        return try _f.getFillRuleProperty();
    }
    pub fn getChildrenProperty() core.HResult!*DependencyProperty {
        const _f = @This().IGeometryGroupStaticsCache.get();
        return try _f.getChildrenProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.GeometryGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeometryGroup.GUID;
    pub const IID: Guid = IGeometryGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeometryGroup.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IGeometryGroupStaticsCache: FactoryCache(IGeometryGroupStatics, RUNTIME_NAME) = .{};
};
pub const GradientBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSpreadMethod(self: *@This()) core.HResult!GradientSpreadMethod {
        const this: *IGradientBrush = @ptrCast(self);
        return try this.getSpreadMethod();
    }
    pub fn putSpreadMethod(self: *@This(), value: GradientSpreadMethod) core.HResult!void {
        const this: *IGradientBrush = @ptrCast(self);
        return try this.putSpreadMethod(value);
    }
    pub fn getMappingMode(self: *@This()) core.HResult!BrushMappingMode {
        const this: *IGradientBrush = @ptrCast(self);
        return try this.getMappingMode();
    }
    pub fn putMappingMode(self: *@This(), value: BrushMappingMode) core.HResult!void {
        const this: *IGradientBrush = @ptrCast(self);
        return try this.putMappingMode(value);
    }
    pub fn getColorInterpolationMode(self: *@This()) core.HResult!ColorInterpolationMode {
        const this: *IGradientBrush = @ptrCast(self);
        return try this.getColorInterpolationMode();
    }
    pub fn putColorInterpolationMode(self: *@This(), value: ColorInterpolationMode) core.HResult!void {
        const this: *IGradientBrush = @ptrCast(self);
        return try this.putColorInterpolationMode(value);
    }
    pub fn getGradientStops(self: *@This()) core.HResult!*GradientStopCollection {
        const this: *IGradientBrush = @ptrCast(self);
        return try this.getGradientStops();
    }
    pub fn putGradientStops(self: *@This(), value: *GradientStopCollection) core.HResult!void {
        const this: *IGradientBrush = @ptrCast(self);
        return try this.putGradientStops(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getSpreadMethodProperty() core.HResult!*DependencyProperty {
        const _f = @This().IGradientBrushStaticsCache.get();
        return try _f.getSpreadMethodProperty();
    }
    pub fn getMappingModeProperty() core.HResult!*DependencyProperty {
        const _f = @This().IGradientBrushStaticsCache.get();
        return try _f.getMappingModeProperty();
    }
    pub fn getColorInterpolationModeProperty() core.HResult!*DependencyProperty {
        const _f = @This().IGradientBrushStaticsCache.get();
        return try _f.getColorInterpolationModeProperty();
    }
    pub fn getGradientStopsProperty() core.HResult!*DependencyProperty {
        const _f = @This().IGradientBrushStaticsCache.get();
        return try _f.getGradientStopsProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GradientBrush {
        const _f = @This().IGradientBrushFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.GradientBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGradientBrush.GUID;
    pub const IID: Guid = IGradientBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGradientBrush.SIGNATURE);
    var _IGradientBrushStaticsCache: FactoryCache(IGradientBrushStatics, RUNTIME_NAME) = .{};
    var _IGradientBrushFactoryCache: FactoryCache(IGradientBrushFactory, RUNTIME_NAME) = .{};
};
pub const GradientSpreadMethod = enum(i32) {
    Pad = 0,
    Reflect = 1,
    Repeat = 2,
};
pub const GradientStop = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *IGradientStop = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IGradientStop = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn getOffset(self: *@This()) core.HResult!f64 {
        const this: *IGradientStop = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn putOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IGradientStop = @ptrCast(self);
        return try this.putOffset(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGradientStop.IID)));
    }
    pub fn getColorProperty() core.HResult!*DependencyProperty {
        const _f = @This().IGradientStopStaticsCache.get();
        return try _f.getColorProperty();
    }
    pub fn getOffsetProperty() core.HResult!*DependencyProperty {
        const _f = @This().IGradientStopStaticsCache.get();
        return try _f.getOffsetProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.GradientStop";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGradientStop.GUID;
    pub const IID: Guid = IGradientStop.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGradientStop.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IGradientStopStaticsCache: FactoryCache(IGradientStopStatics, RUNTIME_NAME) = .{};
};
pub const GradientStopCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(GradientStop) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(GradientStop) {
        const this: *IVector(GradientStop) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(GradientStop) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(GradientStop) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(GradientStop) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(GradientStop) {
        var this: ?*IIterable(GradientStop) = undefined;
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.GradientStopCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IAcrylicBrush = extern struct {
    vtable: *const VTable,
    pub fn getBackgroundSource(self: *@This()) core.HResult!AcrylicBackgroundSource {
        var _r: AcrylicBackgroundSource = undefined;
        const _c = self.vtable.get_BackgroundSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackgroundSource(self: *@This(), value: AcrylicBackgroundSource) core.HResult!void {
        const _c = self.vtable.put_BackgroundSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTintColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_TintColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTintColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_TintColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTintOpacity(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_TintOpacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTintOpacity(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_TintOpacity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTintTransitionDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_TintTransitionDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTintTransitionDuration(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_TintTransitionDuration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlwaysUseFallback(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AlwaysUseFallback(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlwaysUseFallback(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AlwaysUseFallback(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IAcrylicBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79bbcf4e-cd66-4f1b-a8b6-cd6d2977c18d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BackgroundSource: *const fn(self: *anyopaque, _r: *AcrylicBackgroundSource) callconv(.winapi) HRESULT,
        put_BackgroundSource: *const fn(self: *anyopaque, value: AcrylicBackgroundSource) callconv(.winapi) HRESULT,
        get_TintColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_TintColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_TintOpacity: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_TintOpacity: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_TintTransitionDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_TintTransitionDuration: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_AlwaysUseFallback: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AlwaysUseFallback: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IAcrylicBrush2 = extern struct {
    vtable: *const VTable,
    pub fn getTintLuminosityOpacity(self: *@This()) core.HResult!*IReference(f64) {
        var _r: *IReference(f64) = undefined;
        const _c = self.vtable.get_TintLuminosityOpacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTintLuminosityOpacity(self: *@This(), value: *IReference(f64)) core.HResult!void {
        const _c = self.vtable.put_TintLuminosityOpacity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IAcrylicBrush2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9645383-b19e-5ac0-86ff-3d90506dbcda";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TintLuminosityOpacity: *const fn(self: *anyopaque, _r: **IReference(f64)) callconv(.winapi) HRESULT,
        put_TintLuminosityOpacity: *const fn(self: *anyopaque, value: *IReference(f64)) callconv(.winapi) HRESULT,
    };
};
pub const IAcrylicBrushFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*AcrylicBrush {
        var _r: *AcrylicBrush = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IAcrylicBrushFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81a32568-f6cc-4013-8363-928ae23b7a61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **AcrylicBrush) callconv(.winapi) HRESULT,
    };
};
pub const IAcrylicBrushStatics = extern struct {
    vtable: *const VTable,
    pub fn getBackgroundSourceProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_BackgroundSourceProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTintColorProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TintColorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTintOpacityProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TintOpacityProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTintTransitionDurationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TintTransitionDurationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlwaysUseFallbackProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AlwaysUseFallbackProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IAcrylicBrushStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2787fd79-a3da-423f-b81a-599147971523";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BackgroundSourceProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TintColorProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TintOpacityProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TintTransitionDurationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AlwaysUseFallbackProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IAcrylicBrushStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getTintLuminosityOpacityProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TintLuminosityOpacityProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IAcrylicBrushStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "129188a8-bf11-5bbc-8445-8c510e5926c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TintLuminosityOpacityProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IArcSegment = extern struct {
    vtable: *const VTable,
    pub fn getPoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Point(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPoint(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_Point(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSize(self: *@This(), value: Size) core.HResult!void {
        const _c = self.vtable.put_Size(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationAngle(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RotationAngle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationAngle(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RotationAngle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsLargeArc(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLargeArc(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsLargeArc(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsLargeArc(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSweepDirection(self: *@This()) core.HResult!SweepDirection {
        var _r: SweepDirection = undefined;
        const _c = self.vtable.get_SweepDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSweepDirection(self: *@This(), value: SweepDirection) core.HResult!void {
        const _c = self.vtable.put_SweepDirection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IArcSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "07940c5f-63fb-4469-91be-f1097c168052";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Point: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_Point: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        put_Size: *const fn(self: *anyopaque, value: Size) callconv(.winapi) HRESULT,
        get_RotationAngle: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RotationAngle: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_IsLargeArc: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsLargeArc: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SweepDirection: *const fn(self: *anyopaque, _r: *SweepDirection) callconv(.winapi) HRESULT,
        put_SweepDirection: *const fn(self: *anyopaque, value: SweepDirection) callconv(.winapi) HRESULT,
    };
};
pub const IArcSegmentStatics = extern struct {
    vtable: *const VTable,
    pub fn getPointProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSizeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SizeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotationAngleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RotationAngleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsLargeArcProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsLargeArcProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSweepDirectionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SweepDirectionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IArcSegmentStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "82348f6e-8a69-4204-9c12-7207df317643";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SizeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RotationAngleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsLargeArcProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SweepDirectionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IBezierSegment = extern struct {
    vtable: *const VTable,
    pub fn getPoint1(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Point1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPoint1(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_Point1(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPoint2(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Point2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPoint2(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_Point2(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPoint3(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Point3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPoint3(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_Point3(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IBezierSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af4bb9ee-8984-49b7-81df-3f35994b95eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Point1: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_Point1: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_Point2: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_Point2: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_Point3: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_Point3: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
    };
};
pub const IBezierSegmentStatics = extern struct {
    vtable: *const VTable,
    pub fn getPoint1Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_Point1Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPoint2Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_Point2Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPoint3Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_Point3Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IBezierSegmentStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c0287bac-1410-4530-8452-1c9d0ad1f341";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Point1Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_Point2Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_Point3Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IBitmapCache = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IBitmapCache";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "79c2219e-44d2-4610-9735-9bec83809ecf";
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
pub const IBrush = extern struct {
    vtable: *const VTable,
    pub fn getOpacity(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Opacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOpacity(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Opacity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTransform(self: *@This()) core.HResult!*Transform {
        var _r: *Transform = undefined;
        const _c = self.vtable.get_Transform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransform(self: *@This(), value: *Transform) core.HResult!void {
        const _c = self.vtable.put_Transform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRelativeTransform(self: *@This()) core.HResult!*Transform {
        var _r: *Transform = undefined;
        const _c = self.vtable.get_RelativeTransform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRelativeTransform(self: *@This(), value: *Transform) core.HResult!void {
        const _c = self.vtable.put_RelativeTransform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8806a321-1e06-422c-a1cc-01696559e021";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Opacity: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Opacity: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Transform: *const fn(self: *anyopaque, _r: **Transform) callconv(.winapi) HRESULT,
        put_Transform: *const fn(self: *anyopaque, value: *Transform) callconv(.winapi) HRESULT,
        get_RelativeTransform: *const fn(self: *anyopaque, _r: **Transform) callconv(.winapi) HRESULT,
        put_RelativeTransform: *const fn(self: *anyopaque, value: *Transform) callconv(.winapi) HRESULT,
    };
};
pub const IBrushFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IBrushFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "399658a2-14fb-4b8f-83e6-6e3dab12069b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **Brush) callconv(.winapi) HRESULT,
    };
};
pub const IBrushOverrides2 = extern struct {
    vtable: *const VTable,
    pub fn PopulatePropertyInfoOverride(self: *@This(), propertyName: HSTRING, animationPropertyInfo: *AnimationPropertyInfo) core.HResult!void {
        const _c = self.vtable.PopulatePropertyInfoOverride(@ptrCast(self), propertyName, animationPropertyInfo);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IBrushOverrides2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d092b151-d83b-5a81-a71e-a1c7f8ad6963";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PopulatePropertyInfoOverride: *const fn(self: *anyopaque, propertyName: HSTRING, animationPropertyInfo: *AnimationPropertyInfo) callconv(.winapi) HRESULT,
    };
};
pub const IBrushStatics = extern struct {
    vtable: *const VTable,
    pub fn getOpacityProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OpacityProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransformProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TransformProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRelativeTransformProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RelativeTransformProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IBrushStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e70c3102-0225-47f5-b22e-0467619f6a22";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OpacityProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TransformProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RelativeTransformProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ICacheMode = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ICacheMode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "98dc8b11-c6f9-4dab-b838-5fd5ec8c7350";
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
pub const ICacheModeFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CacheMode {
        var _r: *CacheMode = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ICacheModeFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb1f8c5b-0abb-4e70-b8a8-620d0d953ab2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **CacheMode) callconv(.winapi) HRESULT,
    };
};
pub const ICompositeTransform = extern struct {
    vtable: *const VTable,
    pub fn getCenterX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaleX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ScaleX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaleX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ScaleX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaleY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ScaleY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaleY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ScaleY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSkewX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SkewX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSkewX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_SkewX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSkewY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SkewY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSkewY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_SkewY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotation(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Rotation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotation(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Rotation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTranslateX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_TranslateX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTranslateX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_TranslateX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTranslateY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_TranslateY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTranslateY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_TranslateY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ICompositeTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8a4385b-f24a-4701-a265-a78846f142b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CenterX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_CenterY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ScaleX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ScaleX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ScaleY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ScaleY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_SkewX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_SkewX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_SkewY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_SkewY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Rotation: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Rotation: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_TranslateX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_TranslateX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_TranslateY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_TranslateY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const ICompositeTransformStatics = extern struct {
    vtable: *const VTable,
    pub fn getCenterXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCenterYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScaleXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ScaleXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScaleYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ScaleYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSkewXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SkewXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSkewYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SkewYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RotationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTranslateXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TranslateXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTranslateYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TranslateYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ICompositeTransformStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f190c08-8266-496f-9653-a18bd4f836aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CenterXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CenterYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ScaleXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ScaleYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SkewXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SkewYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RotationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TranslateXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TranslateYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionTarget = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ICompositionTarget";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "26cfbff0-713c-4bec-8803-e101f7b14ed3";
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
pub const ICompositionTargetStatics = extern struct {
    vtable: *const VTable,
    pub fn addRendering(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Rendering(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRendering(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Rendering(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSurfaceContentsLost(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SurfaceContentsLost(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSurfaceContentsLost(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SurfaceContentsLost(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ICompositionTargetStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b1af03d-1ed2-4b59-bd00-7594ee92832b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Rendering: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Rendering: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_SurfaceContentsLost: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SurfaceContentsLost: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICompositionTargetStatics3 = extern struct {
    vtable: *const VTable,
    pub fn addRendered(self: *@This(), handler: *EventHandler(RenderedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Rendered(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeRendered(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Rendered(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ICompositionTargetStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc0a7cd9-6750-4708-994c-2028e0312ac8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Rendered: *const fn(self: *anyopaque, handler: *EventHandler(RenderedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Rendered: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IEllipseGeometry = extern struct {
    vtable: *const VTable,
    pub fn getCenter(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Center(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenter(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_Center(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRadiusX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RadiusX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRadiusX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RadiusX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRadiusY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RadiusY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRadiusY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RadiusY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IEllipseGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4f61bba-4ea2-40d6-aa6c-8d38aa87651f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Center: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_Center: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_RadiusX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RadiusX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RadiusY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RadiusY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IEllipseGeometryStatics = extern struct {
    vtable: *const VTable,
    pub fn getCenterProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRadiusXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RadiusXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRadiusYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RadiusYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IEllipseGeometryStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1744db47-f635-4b16-aee6-e052a65defb2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CenterProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RadiusXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RadiusYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IFontFamily = extern struct {
    vtable: *const VTable,
    pub fn getSource(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IFontFamily";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92467e64-d66a-4cf4-9322-3d23b3c0c361";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IFontFamilyFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithName(self: *@This(), familyName: HSTRING, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FontFamily {
        var _r: *FontFamily = undefined;
        const _c = self.vtable.CreateInstanceWithName(@ptrCast(self), familyName, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IFontFamilyFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d5603377-3dae-4dcd-af09-f9498e9ec659";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithName: *const fn(self: *anyopaque, familyName: HSTRING, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **FontFamily) callconv(.winapi) HRESULT,
    };
};
pub const IFontFamilyStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getXamlAutoFontFamily(self: *@This()) core.HResult!*FontFamily {
        var _r: *FontFamily = undefined;
        const _c = self.vtable.get_XamlAutoFontFamily(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IFontFamilyStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52ad7af9-37e6-4297-a238-97fb6a408d9e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_XamlAutoFontFamily: *const fn(self: *anyopaque, _r: **FontFamily) callconv(.winapi) HRESULT,
    };
};
pub const IGeneralTransform = extern struct {
    vtable: *const VTable,
    pub fn getInverse(self: *@This()) core.HResult!*GeneralTransform {
        var _r: *GeneralTransform = undefined;
        const _c = self.vtable.get_Inverse(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TransformPoint(self: *@This(), point: Point) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.TransformPoint(@ptrCast(self), point, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryTransform(self: *@This(), inPoint: Point, outPoint: Point) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryTransform(@ptrCast(self), inPoint, outPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TransformBounds(self: *@This(), rect: Rect) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.TransformBounds(@ptrCast(self), rect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IGeneralTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a06798b7-a2ec-415f-ade2-eade9333f2c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Inverse: *const fn(self: *anyopaque, _r: **GeneralTransform) callconv(.winapi) HRESULT,
        TransformPoint: *const fn(self: *anyopaque, point: Point, _r: *Point) callconv(.winapi) HRESULT,
        TryTransform: *const fn(self: *anyopaque, inPoint: Point, outPoint: Point, _r: *bool) callconv(.winapi) HRESULT,
        TransformBounds: *const fn(self: *anyopaque, rect: Rect, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const IGeneralTransformFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GeneralTransform {
        var _r: *GeneralTransform = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IGeneralTransformFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a25c930-29c4-4e31-b6f9-dedd52e4df1b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **GeneralTransform) callconv(.winapi) HRESULT,
    };
};
pub const IGeneralTransformOverrides = extern struct {
    vtable: *const VTable,
    pub fn getInverseCore(self: *@This()) core.HResult!*GeneralTransform {
        var _r: *GeneralTransform = undefined;
        const _c = self.vtable.get_InverseCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryTransformCore(self: *@This(), inPoint: Point, outPoint: Point) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryTransformCore(@ptrCast(self), inPoint, outPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TransformBoundsCore(self: *@This(), rect: Rect) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.TransformBoundsCore(@ptrCast(self), rect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IGeneralTransformOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4f121083-24cf-4524-90ad-8a42b1c12783";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_InverseCore: *const fn(self: *anyopaque, _r: **GeneralTransform) callconv(.winapi) HRESULT,
        TryTransformCore: *const fn(self: *anyopaque, inPoint: Point, outPoint: Point, _r: *bool) callconv(.winapi) HRESULT,
        TransformBoundsCore: *const fn(self: *anyopaque, rect: Rect, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const IGeometry = extern struct {
    vtable: *const VTable,
    pub fn getTransform(self: *@This()) core.HResult!*Transform {
        var _r: *Transform = undefined;
        const _c = self.vtable.get_Transform(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTransform(self: *@This(), value: *Transform) core.HResult!void {
        const _c = self.vtable.put_Transform(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBounds(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_Bounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa123889-0acd-417b-b62d-5ca1bf4dfc0e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Transform: *const fn(self: *anyopaque, _r: **Transform) callconv(.winapi) HRESULT,
        put_Transform: *const fn(self: *anyopaque, value: *Transform) callconv(.winapi) HRESULT,
        get_Bounds: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const IGeometryFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IGeometryFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f65daf23-d5fd-42f9-b32a-929c5a4b54e1";
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
pub const IGeometryGroup = extern struct {
    vtable: *const VTable,
    pub fn getFillRule(self: *@This()) core.HResult!FillRule {
        var _r: FillRule = undefined;
        const _c = self.vtable.get_FillRule(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFillRule(self: *@This(), value: FillRule) core.HResult!void {
        const _c = self.vtable.put_FillRule(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getChildren(self: *@This()) core.HResult!*GeometryCollection {
        var _r: *GeometryCollection = undefined;
        const _c = self.vtable.get_Children(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChildren(self: *@This(), value: *GeometryCollection) core.HResult!void {
        const _c = self.vtable.put_Children(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IGeometryGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "55225a61-8677-4c8c-8e46-ee3dc355114b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FillRule: *const fn(self: *anyopaque, _r: *FillRule) callconv(.winapi) HRESULT,
        put_FillRule: *const fn(self: *anyopaque, value: FillRule) callconv(.winapi) HRESULT,
        get_Children: *const fn(self: *anyopaque, _r: **GeometryCollection) callconv(.winapi) HRESULT,
        put_Children: *const fn(self: *anyopaque, value: *GeometryCollection) callconv(.winapi) HRESULT,
    };
};
pub const IGeometryGroupStatics = extern struct {
    vtable: *const VTable,
    pub fn getFillRuleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FillRuleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getChildrenProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ChildrenProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IGeometryGroupStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56c955f4-8496-4bb6-abf0-617b1fe78b45";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FillRuleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ChildrenProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IGeometryStatics = extern struct {
    vtable: *const VTable,
    pub fn getEmpty(self: *@This()) core.HResult!*Geometry {
        var _r: *Geometry = undefined;
        const _c = self.vtable.get_Empty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStandardFlatteningTolerance(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_StandardFlatteningTolerance(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTransformProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TransformProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IGeometryStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7a70aa8c-0b06-465f-b637-9a47e5a70111";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Empty: *const fn(self: *anyopaque, _r: **Geometry) callconv(.winapi) HRESULT,
        get_StandardFlatteningTolerance: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_TransformProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IGradientBrush = extern struct {
    vtable: *const VTable,
    pub fn getSpreadMethod(self: *@This()) core.HResult!GradientSpreadMethod {
        var _r: GradientSpreadMethod = undefined;
        const _c = self.vtable.get_SpreadMethod(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSpreadMethod(self: *@This(), value: GradientSpreadMethod) core.HResult!void {
        const _c = self.vtable.put_SpreadMethod(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMappingMode(self: *@This()) core.HResult!BrushMappingMode {
        var _r: BrushMappingMode = undefined;
        const _c = self.vtable.get_MappingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMappingMode(self: *@This(), value: BrushMappingMode) core.HResult!void {
        const _c = self.vtable.put_MappingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getColorInterpolationMode(self: *@This()) core.HResult!ColorInterpolationMode {
        var _r: ColorInterpolationMode = undefined;
        const _c = self.vtable.get_ColorInterpolationMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColorInterpolationMode(self: *@This(), value: ColorInterpolationMode) core.HResult!void {
        const _c = self.vtable.put_ColorInterpolationMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGradientStops(self: *@This()) core.HResult!*GradientStopCollection {
        var _r: *GradientStopCollection = undefined;
        const _c = self.vtable.get_GradientStops(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGradientStops(self: *@This(), value: *GradientStopCollection) core.HResult!void {
        const _c = self.vtable.put_GradientStops(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IGradientBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2166e69f-935a-4191-8e3c-1c8dfdfcdc78";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SpreadMethod: *const fn(self: *anyopaque, _r: *GradientSpreadMethod) callconv(.winapi) HRESULT,
        put_SpreadMethod: *const fn(self: *anyopaque, value: GradientSpreadMethod) callconv(.winapi) HRESULT,
        get_MappingMode: *const fn(self: *anyopaque, _r: *BrushMappingMode) callconv(.winapi) HRESULT,
        put_MappingMode: *const fn(self: *anyopaque, value: BrushMappingMode) callconv(.winapi) HRESULT,
        get_ColorInterpolationMode: *const fn(self: *anyopaque, _r: *ColorInterpolationMode) callconv(.winapi) HRESULT,
        put_ColorInterpolationMode: *const fn(self: *anyopaque, value: ColorInterpolationMode) callconv(.winapi) HRESULT,
        get_GradientStops: *const fn(self: *anyopaque, _r: **GradientStopCollection) callconv(.winapi) HRESULT,
        put_GradientStops: *const fn(self: *anyopaque, value: *GradientStopCollection) callconv(.winapi) HRESULT,
    };
};
pub const IGradientBrushFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GradientBrush {
        var _r: *GradientBrush = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IGradientBrushFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed4779ca-45bd-4131-b625-be86e07c6112";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **GradientBrush) callconv(.winapi) HRESULT,
    };
};
pub const IGradientBrushStatics = extern struct {
    vtable: *const VTable,
    pub fn getSpreadMethodProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SpreadMethodProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMappingModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MappingModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColorInterpolationModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ColorInterpolationModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGradientStopsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_GradientStopsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IGradientBrushStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "961661f9-8bb4-4e6c-b923-b5d787e0f1a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SpreadMethodProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MappingModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ColorInterpolationModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_GradientStopsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IGradientStop = extern struct {
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
    pub fn getOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Offset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IGradientStop";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "665f44fe-2e59-4c4a-ab53-076a100ccd81";
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
        get_Offset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Offset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IGradientStopStatics = extern struct {
    vtable: *const VTable,
    pub fn getColorProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ColorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IGradientStopStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "602a6d75-6193-4fe5-8e82-c7c6f6febafd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ColorProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_OffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IImageBrush = extern struct {
    vtable: *const VTable,
    pub fn getImageSource(self: *@This()) core.HResult!*ImageSource {
        var _r: *ImageSource = undefined;
        const _c = self.vtable.get_ImageSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putImageSource(self: *@This(), value: *ImageSource) core.HResult!void {
        const _c = self.vtable.put_ImageSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addImageFailed(self: *@This(), handler: *ExceptionRoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ImageFailed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeImageFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ImageFailed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addImageOpened(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ImageOpened(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeImageOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ImageOpened(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IImageBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9fd11377-c12a-4493-bf7d-f3a8ad74b554";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ImageSource: *const fn(self: *anyopaque, _r: **ImageSource) callconv(.winapi) HRESULT,
        put_ImageSource: *const fn(self: *anyopaque, value: *ImageSource) callconv(.winapi) HRESULT,
        add_ImageFailed: *const fn(self: *anyopaque, handler: *ExceptionRoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ImageFailed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ImageOpened: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ImageOpened: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IImageBrushStatics = extern struct {
    vtable: *const VTable,
    pub fn getImageSourceProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ImageSourceProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IImageBrushStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1255b1b2-dd18-42e5-892c-eae30c305b8c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ImageSourceProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IImageSource = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IImageSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "737ef309-ea41-4d96-a71c-98e98efcab07";
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
pub const IImageSourceFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IImageSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "297ec001-2540-4e5a-ab66-88035dd3ddb5";
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
pub const ILineGeometry = extern struct {
    vtable: *const VTable,
    pub fn getStartPoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_StartPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartPoint(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_StartPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEndPoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_EndPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEndPoint(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_EndPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ILineGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "30edd4a2-8fc5-40af-a7a2-c27fe7aa1363";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StartPoint: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_StartPoint: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_EndPoint: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_EndPoint: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
    };
};
pub const ILineGeometryStatics = extern struct {
    vtable: *const VTable,
    pub fn getStartPointProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StartPointProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndPointProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EndPointProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ILineGeometryStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "578ae763-5562-4ee4-8703-ea4036d891e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StartPointProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_EndPointProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ILineSegment = extern struct {
    vtable: *const VTable,
    pub fn getPoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Point(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPoint(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_Point(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ILineSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef6a2e25-3ff0-4420-a411-7182a4cecb15";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Point: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_Point: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
    };
};
pub const ILineSegmentStatics = extern struct {
    vtable: *const VTable,
    pub fn getPointProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ILineSegmentStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9fcab141-04c0-4afb-87b3-e800b969b894";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ILinearGradientBrush = extern struct {
    vtable: *const VTable,
    pub fn getStartPoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_StartPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartPoint(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_StartPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEndPoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_EndPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEndPoint(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_EndPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ILinearGradientBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8e96d16b-bb84-4c6f-9dbf-9d6c5c6d9c39";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StartPoint: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_StartPoint: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_EndPoint: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_EndPoint: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
    };
};
pub const ILinearGradientBrushFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithGradientStopCollectionAndAngle(self: *@This(), gradientStopCollection: *GradientStopCollection, angle: f64) core.HResult!*LinearGradientBrush {
        var _r: *LinearGradientBrush = undefined;
        const _c = self.vtable.CreateInstanceWithGradientStopCollectionAndAngle(@ptrCast(self), gradientStopCollection, angle, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ILinearGradientBrushFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ae0861c-1e7a-4fed-9857-ea8caa798490";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithGradientStopCollectionAndAngle: *const fn(self: *anyopaque, gradientStopCollection: *GradientStopCollection, angle: f64, _r: **LinearGradientBrush) callconv(.winapi) HRESULT,
    };
};
pub const ILinearGradientBrushStatics = extern struct {
    vtable: *const VTable,
    pub fn getStartPointProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StartPointProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEndPointProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EndPointProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ILinearGradientBrushStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7af6e504-2dc3-40e3-be0b-b314c13cb991";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StartPointProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_EndPointProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ILoadedImageSourceLoadCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStatus(self: *@This()) core.HResult!LoadedImageSourceLoadStatus {
        var _r: LoadedImageSourceLoadStatus = undefined;
        const _c = self.vtable.get_Status(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ILoadedImageSourceLoadCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ac60b1e-7837-4489-b3e5-d0d5ad0a56c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Status: *const fn(self: *anyopaque, _r: *LoadedImageSourceLoadStatus) callconv(.winapi) HRESULT,
    };
};
pub const ILoadedImageSurface = extern struct {
    vtable: *const VTable,
    pub fn getDecodedPhysicalSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_DecodedPhysicalSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDecodedSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_DecodedSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNaturalSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_NaturalSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addLoadCompleted(self: *@This(), handler: *TypedEventHandler(LoadedImageSurface,LoadedImageSourceLoadCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LoadCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLoadCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LoadCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ILoadedImageSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "050c8313-6737-45ba-8531-33094febef55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DecodedPhysicalSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_DecodedSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_NaturalSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        add_LoadCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(LoadedImageSurface,LoadedImageSourceLoadCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LoadCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ILoadedImageSurfaceStatics = extern struct {
    vtable: *const VTable,
    pub fn StartLoadFromUriWithDesiredMaxSize(self: *@This(), uri: *Uri, desiredMaxSize: Size) core.HResult!*LoadedImageSurface {
        var _r: *LoadedImageSurface = undefined;
        const _c = self.vtable.StartLoadFromUriWithDesiredMaxSize(@ptrCast(self), uri, desiredMaxSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartLoadFromUri(self: *@This(), uri: *Uri) core.HResult!*LoadedImageSurface {
        var _r: *LoadedImageSurface = undefined;
        const _c = self.vtable.StartLoadFromUri(@ptrCast(self), uri, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartLoadFromStreamWithDesiredMaxSize(self: *@This(), stream: *IRandomAccessStream, desiredMaxSize: Size) core.HResult!*LoadedImageSurface {
        var _r: *LoadedImageSurface = undefined;
        const _c = self.vtable.StartLoadFromStreamWithDesiredMaxSize(@ptrCast(self), stream, desiredMaxSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StartLoadFromStream(self: *@This(), stream: *IRandomAccessStream) core.HResult!*LoadedImageSurface {
        var _r: *LoadedImageSurface = undefined;
        const _c = self.vtable.StartLoadFromStream(@ptrCast(self), stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ILoadedImageSurfaceStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22b8edf6-84ad-40ab-937d-4871613e765d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartLoadFromUriWithDesiredMaxSize: *const fn(self: *anyopaque, uri: *Uri, desiredMaxSize: Size, _r: **LoadedImageSurface) callconv(.winapi) HRESULT,
        StartLoadFromUri: *const fn(self: *anyopaque, uri: *Uri, _r: **LoadedImageSurface) callconv(.winapi) HRESULT,
        StartLoadFromStreamWithDesiredMaxSize: *const fn(self: *anyopaque, stream: *IRandomAccessStream, desiredMaxSize: Size, _r: **LoadedImageSurface) callconv(.winapi) HRESULT,
        StartLoadFromStream: *const fn(self: *anyopaque, stream: *IRandomAccessStream, _r: **LoadedImageSurface) callconv(.winapi) HRESULT,
    };
};
pub const IMatrix3DProjection = extern struct {
    vtable: *const VTable,
    pub fn getProjectionMatrix(self: *@This()) core.HResult!Matrix3D {
        var _r: Matrix3D = undefined;
        const _c = self.vtable.get_ProjectionMatrix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putProjectionMatrix(self: *@This(), value: Matrix3D) core.HResult!void {
        const _c = self.vtable.put_ProjectionMatrix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IMatrix3DProjection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6f03e149-bfc9-4c01-b578-50338cec97fc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProjectionMatrix: *const fn(self: *anyopaque, _r: *Matrix3D) callconv(.winapi) HRESULT,
        put_ProjectionMatrix: *const fn(self: *anyopaque, value: Matrix3D) callconv(.winapi) HRESULT,
    };
};
pub const IMatrix3DProjectionStatics = extern struct {
    vtable: *const VTable,
    pub fn getProjectionMatrixProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ProjectionMatrixProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IMatrix3DProjectionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae9d5895-41ec-4e37-abaa-69f41d2f876b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ProjectionMatrixProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMatrixHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IMatrixHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3cf4882-06b5-48c8-9eb2-1763e9364038";
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
pub const IMatrixHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn getIdentity(self: *@This()) core.HResult!Matrix {
        var _r: Matrix = undefined;
        const _c = self.vtable.get_Identity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FromElements(self: *@This(), m11: f64, m12: f64, m21: f64, m22: f64, offsetX: f64, offsetY: f64) core.HResult!Matrix {
        var _r: Matrix = undefined;
        const _c = self.vtable.FromElements(@ptrCast(self), m11, m12, m21, m22, offsetX, offsetY, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsIdentity(self: *@This(), target: Matrix) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsIdentity(@ptrCast(self), target, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Transform(self: *@This(), target: Matrix, point: Point) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.Transform(@ptrCast(self), target, point, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IMatrixHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c18606a6-39f4-4b8a-8403-28e5e5f033b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Identity: *const fn(self: *anyopaque, _r: *Matrix) callconv(.winapi) HRESULT,
        FromElements: *const fn(self: *anyopaque, m11: f64, m12: f64, m21: f64, m22: f64, offsetX: f64, offsetY: f64, _r: *Matrix) callconv(.winapi) HRESULT,
        GetIsIdentity: *const fn(self: *anyopaque, target: Matrix, _r: *bool) callconv(.winapi) HRESULT,
        Transform: *const fn(self: *anyopaque, target: Matrix, point: Point, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const IMatrixTransform = extern struct {
    vtable: *const VTable,
    pub fn getMatrix(self: *@This()) core.HResult!Matrix {
        var _r: Matrix = undefined;
        const _c = self.vtable.get_Matrix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMatrix(self: *@This(), value: Matrix) core.HResult!void {
        const _c = self.vtable.put_Matrix(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IMatrixTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "edfdd551-5fed-45fc-ae62-92a4b6cf9707";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Matrix: *const fn(self: *anyopaque, _r: *Matrix) callconv(.winapi) HRESULT,
        put_Matrix: *const fn(self: *anyopaque, value: Matrix) callconv(.winapi) HRESULT,
    };
};
pub const IMatrixTransformStatics = extern struct {
    vtable: *const VTable,
    pub fn getMatrixProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MatrixProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IMatrixTransformStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43e02e47-15b8-4758-bb97-7d52420acc5b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MatrixProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMediaTransportControlsThumbnailRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn SetThumbnailImage(self: *@This(), source: *IInputStream) core.HResult!void {
        const _c = self.vtable.SetThumbnailImage(@ptrCast(self), source);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IMediaTransportControlsThumbnailRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4a8b21c-e3c2-485c-ae69-f1537b76755a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetThumbnailImage: *const fn(self: *anyopaque, source: *IInputStream) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IPartialMediaFailureDetectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getStreamKind(self: *@This()) core.HResult!FailedMediaStreamKind {
        var _r: FailedMediaStreamKind = undefined;
        const _c = self.vtable.get_StreamKind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPartialMediaFailureDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "02b65a91-e5a1-442b-88d3-2dc127bfc59b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_StreamKind: *const fn(self: *anyopaque, _r: *FailedMediaStreamKind) callconv(.winapi) HRESULT,
    };
};
pub const IPartialMediaFailureDetectedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var _r: HResult = undefined;
        const _c = self.vtable.get_ExtendedError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPartialMediaFailureDetectedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73074875-890d-416b-b9ae-e84dfd9c4b1b";
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
pub const IPathFigure = extern struct {
    vtable: *const VTable,
    pub fn getSegments(self: *@This()) core.HResult!*PathSegmentCollection {
        var _r: *PathSegmentCollection = undefined;
        const _c = self.vtable.get_Segments(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSegments(self: *@This(), value: *PathSegmentCollection) core.HResult!void {
        const _c = self.vtable.put_Segments(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStartPoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_StartPoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStartPoint(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_StartPoint(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsClosed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsClosed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsClosed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsClosed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsFilled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFilled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsFilled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsFilled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPathFigure";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d955c8c-5fa9-4dda-a3cc-10fcdcaa20d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Segments: *const fn(self: *anyopaque, _r: **PathSegmentCollection) callconv(.winapi) HRESULT,
        put_Segments: *const fn(self: *anyopaque, value: *PathSegmentCollection) callconv(.winapi) HRESULT,
        get_StartPoint: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_StartPoint: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_IsClosed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsClosed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsFilled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsFilled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IPathFigureStatics = extern struct {
    vtable: *const VTable,
    pub fn getSegmentsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SegmentsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStartPointProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StartPointProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsClosedProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsClosedProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsFilledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsFilledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPathFigureStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b60591d9-2395-4317-9552-3a58526f8c7b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SegmentsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StartPointProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsClosedProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsFilledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPathGeometry = extern struct {
    vtable: *const VTable,
    pub fn getFillRule(self: *@This()) core.HResult!FillRule {
        var _r: FillRule = undefined;
        const _c = self.vtable.get_FillRule(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFillRule(self: *@This(), value: FillRule) core.HResult!void {
        const _c = self.vtable.put_FillRule(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFigures(self: *@This()) core.HResult!*PathFigureCollection {
        var _r: *PathFigureCollection = undefined;
        const _c = self.vtable.get_Figures(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFigures(self: *@This(), value: *PathFigureCollection) core.HResult!void {
        const _c = self.vtable.put_Figures(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPathGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "081b9df8-bae6-4bcb-813c-bde0e46dc8b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FillRule: *const fn(self: *anyopaque, _r: *FillRule) callconv(.winapi) HRESULT,
        put_FillRule: *const fn(self: *anyopaque, value: FillRule) callconv(.winapi) HRESULT,
        get_Figures: *const fn(self: *anyopaque, _r: **PathFigureCollection) callconv(.winapi) HRESULT,
        put_Figures: *const fn(self: *anyopaque, value: *PathFigureCollection) callconv(.winapi) HRESULT,
    };
};
pub const IPathGeometryStatics = extern struct {
    vtable: *const VTable,
    pub fn getFillRuleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FillRuleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFiguresProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FiguresProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPathGeometryStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d9e58bba-2cba-4741-8f8d-3198cf5186b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FillRuleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FiguresProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPathSegment = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPathSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcfa71cf-9ce3-474f-8157-10b6435a616b";
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
pub const IPathSegmentFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPathSegmentFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a1c0aae-eccd-4464-a148-6ffdb3aa281f";
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
pub const IPlaneProjection = extern struct {
    vtable: *const VTable,
    pub fn getLocalOffsetX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_LocalOffsetX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocalOffsetX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_LocalOffsetX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocalOffsetY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_LocalOffsetY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocalOffsetY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_LocalOffsetY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocalOffsetZ(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_LocalOffsetZ(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLocalOffsetZ(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_LocalOffsetZ(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RotationX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RotationX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RotationY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RotationY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationZ(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_RotationZ(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationZ(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_RotationZ(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterOfRotationX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterOfRotationX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterOfRotationX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterOfRotationX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterOfRotationY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterOfRotationY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterOfRotationY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterOfRotationY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterOfRotationZ(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterOfRotationZ(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterOfRotationZ(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterOfRotationZ(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGlobalOffsetX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_GlobalOffsetX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGlobalOffsetX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_GlobalOffsetX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGlobalOffsetY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_GlobalOffsetY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGlobalOffsetY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_GlobalOffsetY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGlobalOffsetZ(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_GlobalOffsetZ(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGlobalOffsetZ(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_GlobalOffsetZ(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProjectionMatrix(self: *@This()) core.HResult!Matrix3D {
        var _r: Matrix3D = undefined;
        const _c = self.vtable.get_ProjectionMatrix(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPlaneProjection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e6f82bfa-6726-469a-b259-a5188347ca8f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalOffsetX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_LocalOffsetX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_LocalOffsetY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_LocalOffsetY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_LocalOffsetZ: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_LocalOffsetZ: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RotationX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RotationX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RotationY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RotationY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_RotationZ: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_RotationZ: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_CenterOfRotationX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterOfRotationX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_CenterOfRotationY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterOfRotationY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_CenterOfRotationZ: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterOfRotationZ: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_GlobalOffsetX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_GlobalOffsetX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_GlobalOffsetY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_GlobalOffsetY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_GlobalOffsetZ: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_GlobalOffsetZ: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ProjectionMatrix: *const fn(self: *anyopaque, _r: *Matrix3D) callconv(.winapi) HRESULT,
    };
};
pub const IPlaneProjectionStatics = extern struct {
    vtable: *const VTable,
    pub fn getLocalOffsetXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LocalOffsetXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalOffsetYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LocalOffsetYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalOffsetZProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LocalOffsetZProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotationXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RotationXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotationYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RotationYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRotationZProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RotationZProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCenterOfRotationXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterOfRotationXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCenterOfRotationYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterOfRotationYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCenterOfRotationZProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterOfRotationZProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGlobalOffsetXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_GlobalOffsetXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGlobalOffsetYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_GlobalOffsetYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGlobalOffsetZProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_GlobalOffsetZProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProjectionMatrixProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ProjectionMatrixProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPlaneProjectionStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad919c67-3bdc-4855-8969-d1f9a3adc27d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LocalOffsetXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_LocalOffsetYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_LocalOffsetZProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RotationXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RotationYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RotationZProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CenterOfRotationXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CenterOfRotationYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CenterOfRotationZProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_GlobalOffsetXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_GlobalOffsetYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_GlobalOffsetZProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ProjectionMatrixProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPolyBezierSegment = extern struct {
    vtable: *const VTable,
    pub fn getPoints(self: *@This()) core.HResult!*PointCollection {
        var _r: *PointCollection = undefined;
        const _c = self.vtable.get_Points(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPoints(self: *@This(), value: *PointCollection) core.HResult!void {
        const _c = self.vtable.put_Points(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPolyBezierSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "36805271-38c4-4bcf-96cd-028a6d38af25";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Points: *const fn(self: *anyopaque, _r: **PointCollection) callconv(.winapi) HRESULT,
        put_Points: *const fn(self: *anyopaque, value: *PointCollection) callconv(.winapi) HRESULT,
    };
};
pub const IPolyBezierSegmentStatics = extern struct {
    vtable: *const VTable,
    pub fn getPointsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPolyBezierSegmentStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d91a6da-1492-4acc-bd66-a496f3d829d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPolyLineSegment = extern struct {
    vtable: *const VTable,
    pub fn getPoints(self: *@This()) core.HResult!*PointCollection {
        var _r: *PointCollection = undefined;
        const _c = self.vtable.get_Points(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPoints(self: *@This(), value: *PointCollection) core.HResult!void {
        const _c = self.vtable.put_Points(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPolyLineSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b397f87-a2e6-479d-bdc8-6f4464646887";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Points: *const fn(self: *anyopaque, _r: **PointCollection) callconv(.winapi) HRESULT,
        put_Points: *const fn(self: *anyopaque, value: *PointCollection) callconv(.winapi) HRESULT,
    };
};
pub const IPolyLineSegmentStatics = extern struct {
    vtable: *const VTable,
    pub fn getPointsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPolyLineSegmentStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d64a2c87-33f1-4e70-a47f-b4981ef648a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPolyQuadraticBezierSegment = extern struct {
    vtable: *const VTable,
    pub fn getPoints(self: *@This()) core.HResult!*PointCollection {
        var _r: *PointCollection = undefined;
        const _c = self.vtable.get_Points(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPoints(self: *@This(), value: *PointCollection) core.HResult!void {
        const _c = self.vtable.put_Points(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPolyQuadraticBezierSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dd5ced7d-e6db-4c96-b6a1-3fce96e987a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Points: *const fn(self: *anyopaque, _r: **PointCollection) callconv(.winapi) HRESULT,
        put_Points: *const fn(self: *anyopaque, value: *PointCollection) callconv(.winapi) HRESULT,
    };
};
pub const IPolyQuadraticBezierSegmentStatics = extern struct {
    vtable: *const VTable,
    pub fn getPointsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IPolyQuadraticBezierSegmentStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fdf5eb75-7ad5-4c89-8169-8c9786abd9eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IProjection = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IProjection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3443557-7f39-4d04-a89c-844338cac897";
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
pub const IProjectionFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Projection {
        var _r: *Projection = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IProjectionFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4f29cab-60ad-4f24-bd27-9d69c3127c9a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **Projection) callconv(.winapi) HRESULT,
    };
};
pub const IQuadraticBezierSegment = extern struct {
    vtable: *const VTable,
    pub fn getPoint1(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Point1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPoint1(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_Point1(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPoint2(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Point2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPoint2(self: *@This(), value: Point) core.HResult!void {
        const _c = self.vtable.put_Point2(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IQuadraticBezierSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c509a5b-bf18-455a-a078-914b5232d8af";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Point1: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_Point1: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
        get_Point2: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        put_Point2: *const fn(self: *anyopaque, value: Point) callconv(.winapi) HRESULT,
    };
};
pub const IQuadraticBezierSegmentStatics = extern struct {
    vtable: *const VTable,
    pub fn getPoint1Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_Point1Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPoint2Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_Point2Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IQuadraticBezierSegmentStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69c78278-3c0b-4b4f-b7a2-f003ded41bb0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Point1Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_Point2Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IRateChangedRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRateChangedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9016aa6f-3ca8-4c80-8e2f-8851a68f131f";
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
pub const IRectangleGeometry = extern struct {
    vtable: *const VTable,
    pub fn getRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_Rect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRect(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_Rect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRectangleGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a25a1f58-c575-4196-91cf-9fdfb10445c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Rect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_Rect: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
    };
};
pub const IRectangleGeometryStatics = extern struct {
    vtable: *const VTable,
    pub fn getRectProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RectProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRectangleGeometryStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "377f8dba-7902-48e3-83be-7c8002a6653c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RectProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IRenderedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getFrameDuration(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_FrameDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRenderedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e349817d-81c7-4938-828c-a7e2797b35a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FrameDuration: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IRenderingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRenderingTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_RenderingTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRenderingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bf7d30d-9748-4aed-8380-d7890eb776a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RenderingTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
    };
};
pub const IRevealBackgroundBrush = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRevealBackgroundBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "261dcc0e-1991-4cdf-aee0-6350a3f90bb9";
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
pub const IRevealBackgroundBrushFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RevealBackgroundBrush {
        var _r: *RevealBackgroundBrush = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRevealBackgroundBrushFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c56bcaa-02a5-4f45-8506-8d39228f5d3f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **RevealBackgroundBrush) callconv(.winapi) HRESULT,
    };
};
pub const IRevealBorderBrush = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRevealBorderBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "060ba115-c542-483c-8202-5f03331866c9";
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
pub const IRevealBorderBrushFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RevealBorderBrush {
        var _r: *RevealBorderBrush = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRevealBorderBrushFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "94c25298-f5f8-4482-a25c-6758501a8626";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **RevealBorderBrush) callconv(.winapi) HRESULT,
    };
};
pub const IRevealBrush = extern struct {
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
    pub fn getTargetTheme(self: *@This()) core.HResult!ApplicationTheme {
        var _r: ApplicationTheme = undefined;
        const _c = self.vtable.get_TargetTheme(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTargetTheme(self: *@This(), value: ApplicationTheme) core.HResult!void {
        const _c = self.vtable.put_TargetTheme(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlwaysUseFallback(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AlwaysUseFallback(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlwaysUseFallback(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AlwaysUseFallback(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRevealBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2036a0ed-8271-4398-9019-25872093f13f";
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
        get_TargetTheme: *const fn(self: *anyopaque, _r: *ApplicationTheme) callconv(.winapi) HRESULT,
        put_TargetTheme: *const fn(self: *anyopaque, value: ApplicationTheme) callconv(.winapi) HRESULT,
        get_AlwaysUseFallback: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AlwaysUseFallback: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IRevealBrushFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RevealBrush {
        var _r: *RevealBrush = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRevealBrushFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d9379ce-e3a0-4aaf-be37-ea9d9dd43105";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **RevealBrush) callconv(.winapi) HRESULT,
    };
};
pub const IRevealBrushStatics = extern struct {
    vtable: *const VTable,
    pub fn getColorProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ColorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTargetThemeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetThemeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlwaysUseFallbackProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AlwaysUseFallbackProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStateProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StateProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetState(self: *@This(), element: *UIElement, value: RevealBrushState) core.HResult!void {
        const _c = self.vtable.SetState(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetState(self: *@This(), element: *UIElement) core.HResult!RevealBrushState {
        var _r: RevealBrushState = undefined;
        const _c = self.vtable.GetState(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRevealBrushStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "190f2625-7209-4d42-a847-1ac4bbbb3499";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ColorProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TargetThemeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AlwaysUseFallbackProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StateProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        SetState: *const fn(self: *anyopaque, element: *UIElement, value: RevealBrushState) callconv(.winapi) HRESULT,
        GetState: *const fn(self: *anyopaque, element: *UIElement, _r: *RevealBrushState) callconv(.winapi) HRESULT,
    };
};
pub const IRotateTransform = extern struct {
    vtable: *const VTable,
    pub fn getCenterX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAngle(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Angle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAngle(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Angle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRotateTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "688ea9b9-1e4e-4596-86e3-428b27334faf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CenterX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_CenterY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Angle: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Angle: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IRotateTransformStatics = extern struct {
    vtable: *const VTable,
    pub fn getCenterXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCenterYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAngleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AngleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IRotateTransformStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a131eb8a-51a3-41b6-b9d3-a10e429054ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CenterXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CenterYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AngleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IScaleTransform = extern struct {
    vtable: *const VTable,
    pub fn getCenterX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaleX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ScaleX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaleX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ScaleX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getScaleY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ScaleY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScaleY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ScaleY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IScaleTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ed67f18d-936e-43ab-929a-e9cd0a511e52";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CenterX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_CenterY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ScaleX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ScaleX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ScaleY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ScaleY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IScaleTransformStatics = extern struct {
    vtable: *const VTable,
    pub fn getCenterXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCenterYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScaleXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ScaleXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScaleYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ScaleYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IScaleTransformStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d9436f4-40a7-46dd-975a-07d337cd852e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CenterXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CenterYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ScaleXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ScaleYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IShadow = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IShadow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6813a583-f3b4-5fcf-8694-2cd0aefc2fad";
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
pub const IShadowFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IShadowFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "19899f25-d28b-51e6-94b0-d7e709686305";
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
pub const ISkewTransform = extern struct {
    vtable: *const VTable,
    pub fn getCenterX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCenterY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCenterY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_CenterY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAngleX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AngleX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAngleX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_AngleX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAngleY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_AngleY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAngleY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_AngleY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ISkewTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e8a3b15-7a0f-4617-9e98-1e65bdc92115";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CenterX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_CenterY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_CenterY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_AngleX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_AngleX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_AngleY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_AngleY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const ISkewTransformStatics = extern struct {
    vtable: *const VTable,
    pub fn getCenterXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCenterYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CenterYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAngleXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AngleXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAngleYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AngleYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ISkewTransformStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ecd11d73-5614-4b31-b6af-beae10105624";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CenterXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CenterYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AngleXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AngleYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISolidColorBrush = extern struct {
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ISolidColorBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9d850850-66f3-48df-9a8f-824bd5e070af";
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
pub const ISolidColorBrushFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithColor(self: *@This(), color: Color) core.HResult!*SolidColorBrush {
        var _r: *SolidColorBrush = undefined;
        const _c = self.vtable.CreateInstanceWithColor(@ptrCast(self), color, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ISolidColorBrushFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d935ce0c-86f5-4da6-8a27-b1619ef7f92b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithColor: *const fn(self: *anyopaque, color: Color, _r: **SolidColorBrush) callconv(.winapi) HRESULT,
    };
};
pub const ISolidColorBrushStatics = extern struct {
    vtable: *const VTable,
    pub fn getColorProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ColorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ISolidColorBrushStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e1a65efa-2b23-41ba-b9ba-7094ec8e4e9f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ColorProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IThemeShadow = extern struct {
    vtable: *const VTable,
    pub fn getReceivers(self: *@This()) core.HResult!*UIElementWeakCollection {
        var _r: *UIElementWeakCollection = undefined;
        const _c = self.vtable.get_Receivers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IThemeShadow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3eccad09-7985-5f39-8b62-6c10696dca6f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Receivers: *const fn(self: *anyopaque, _r: **UIElementWeakCollection) callconv(.winapi) HRESULT,
    };
};
pub const IThemeShadowFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ThemeShadow {
        var _r: *ThemeShadow = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IThemeShadowFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e71465d-0f67-590e-831b-7e5e2a32b778";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ThemeShadow) callconv(.winapi) HRESULT,
    };
};
pub const ITileBrush = extern struct {
    vtable: *const VTable,
    pub fn getAlignmentX(self: *@This()) core.HResult!AlignmentX {
        var _r: AlignmentX = undefined;
        const _c = self.vtable.get_AlignmentX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlignmentX(self: *@This(), value: AlignmentX) core.HResult!void {
        const _c = self.vtable.put_AlignmentX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAlignmentY(self: *@This()) core.HResult!AlignmentY {
        var _r: AlignmentY = undefined;
        const _c = self.vtable.get_AlignmentY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAlignmentY(self: *@This(), value: AlignmentY) core.HResult!void {
        const _c = self.vtable.put_AlignmentY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStretch(self: *@This()) core.HResult!Stretch {
        var _r: Stretch = undefined;
        const _c = self.vtable.get_Stretch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStretch(self: *@This(), value: Stretch) core.HResult!void {
        const _c = self.vtable.put_Stretch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ITileBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c201cf06-cd84-48a5-9607-664d7361cd61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlignmentX: *const fn(self: *anyopaque, _r: *AlignmentX) callconv(.winapi) HRESULT,
        put_AlignmentX: *const fn(self: *anyopaque, value: AlignmentX) callconv(.winapi) HRESULT,
        get_AlignmentY: *const fn(self: *anyopaque, _r: *AlignmentY) callconv(.winapi) HRESULT,
        put_AlignmentY: *const fn(self: *anyopaque, value: AlignmentY) callconv(.winapi) HRESULT,
        get_Stretch: *const fn(self: *anyopaque, _r: *Stretch) callconv(.winapi) HRESULT,
        put_Stretch: *const fn(self: *anyopaque, value: Stretch) callconv(.winapi) HRESULT,
    };
};
pub const ITileBrushFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TileBrush {
        var _r: *TileBrush = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ITileBrushFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa159f7c-ed6a-4fb3-b014-b5c7e379a4de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **TileBrush) callconv(.winapi) HRESULT,
    };
};
pub const ITileBrushStatics = extern struct {
    vtable: *const VTable,
    pub fn getAlignmentXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AlignmentXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAlignmentYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AlignmentYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStretchProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StretchProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ITileBrushStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3497c25b-b562-4e68-8435-2399f6eb94d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AlignmentXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AlignmentYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StretchProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITimelineMarker = extern struct {
    vtable: *const VTable,
    pub fn getTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_Time(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const _c = self.vtable.put_Time(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putType(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Type(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Text(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Text(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ITimelineMarker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a68ef02d-45ba-4e50-8cad-aaea3a227af5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Time: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        put_Time: *const fn(self: *anyopaque, value: TimeSpan) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Type: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Text: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const ITimelineMarkerRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getMarker(self: *@This()) core.HResult!*TimelineMarker {
        var _r: *TimelineMarker = undefined;
        const _c = self.vtable.get_Marker(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMarker(self: *@This(), value: *TimelineMarker) core.HResult!void {
        const _c = self.vtable.put_Marker(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ITimelineMarkerRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c3b3ef3-2c88-4d9c-99b6-46cdbd48d4c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Marker: *const fn(self: *anyopaque, _r: **TimelineMarker) callconv(.winapi) HRESULT,
        put_Marker: *const fn(self: *anyopaque, value: *TimelineMarker) callconv(.winapi) HRESULT,
    };
};
pub const ITimelineMarkerStatics = extern struct {
    vtable: *const VTable,
    pub fn getTimeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TimeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTypeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTextProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TextProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ITimelineMarkerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c4aef0c6-16a3-484b-87f5-6528b8f04a47";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TimeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TypeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TextProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITransform = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ITransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4df74078-bfd6-4ed1-9682-d2fd8bf2fe6f";
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
pub const ITransformFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ITransformFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a955a66-7cf4-4320-b416-6181192fcc6d";
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
pub const ITransformGroup = extern struct {
    vtable: *const VTable,
    pub fn getChildren(self: *@This()) core.HResult!*TransformCollection {
        var _r: *TransformCollection = undefined;
        const _c = self.vtable.get_Children(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChildren(self: *@This(), value: *TransformCollection) core.HResult!void {
        const _c = self.vtable.put_Children(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getValue(self: *@This()) core.HResult!Matrix {
        var _r: Matrix = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ITransformGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "63418ccc-8d2d-4737-b951-2afce1ddc4c4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Children: *const fn(self: *anyopaque, _r: **TransformCollection) callconv(.winapi) HRESULT,
        put_Children: *const fn(self: *anyopaque, value: *TransformCollection) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *Matrix) callconv(.winapi) HRESULT,
    };
};
pub const ITransformGroupStatics = extern struct {
    vtable: *const VTable,
    pub fn getChildrenProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ChildrenProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ITransformGroupStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "25312f2a-cfab-4b24-9713-5bdead1929c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChildrenProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITranslateTransform = extern struct {
    vtable: *const VTable,
    pub fn getX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_X(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_X(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Y(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Y(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ITranslateTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c975905c-3c36-4229-817b-178f64c0e113";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_X: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_X: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Y: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Y: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const ITranslateTransformStatics = extern struct {
    vtable: *const VTable,
    pub fn getXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_YProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ITranslateTransformStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f419aa91-e042-4111-9c2f-d201304123dd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_XProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_YProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IVisualTreeHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IVisualTreeHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24b935e3-52c7-4141-8bac-a73d06130569";
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
pub const IVisualTreeHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn FindElementsInHostCoordinates(self: *@This(), intersectingPoint: Point, subtree: *UIElement) core.HResult!*IIterable(UIElement) {
        var _r: *IIterable(UIElement) = undefined;
        const _c = self.vtable.FindElementsInHostCoordinates(@ptrCast(self), intersectingPoint, subtree, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindElementsInHostCoordinatesWithIntersectingRect(self: *@This(), intersectingRect: Rect, subtree: *UIElement) core.HResult!*IIterable(UIElement) {
        var _r: *IIterable(UIElement) = undefined;
        const _c = self.vtable.FindElementsInHostCoordinatesWithIntersectingRect(@ptrCast(self), intersectingRect, subtree, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindElementsInHostCoordinatesWithIncludeAllElements(self: *@This(), intersectingPoint: Point, subtree: *UIElement, includeAllElements: bool) core.HResult!*IIterable(UIElement) {
        var _r: *IIterable(UIElement) = undefined;
        const _c = self.vtable.FindElementsInHostCoordinatesWithIncludeAllElements(@ptrCast(self), intersectingPoint, subtree, includeAllElements, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindElementsInHostCoordinatesWithIntersectingRectAndIncludeAllElements(self: *@This(), intersectingRect: Rect, subtree: *UIElement, includeAllElements: bool) core.HResult!*IIterable(UIElement) {
        var _r: *IIterable(UIElement) = undefined;
        const _c = self.vtable.FindElementsInHostCoordinatesWithIntersectingRectAndIncludeAllElements(@ptrCast(self), intersectingRect, subtree, includeAllElements, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetChild(self: *@This(), reference: *DependencyObject, childIndex: i32) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.GetChild(@ptrCast(self), reference, childIndex, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetChildrenCount(self: *@This(), reference: *DependencyObject) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetChildrenCount(@ptrCast(self), reference, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetParent(self: *@This(), reference: *DependencyObject) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.GetParent(@ptrCast(self), reference, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn DisconnectChildrenRecursive(self: *@This(), element: *UIElement) core.HResult!void {
        const _c = self.vtable.DisconnectChildrenRecursive(@ptrCast(self), element);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IVisualTreeHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e75758c4-d25d-4b1d-971f-596f17f12baa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindElementsInHostCoordinates: *const fn(self: *anyopaque, intersectingPoint: Point, subtree: *UIElement, _r: **IIterable(UIElement)) callconv(.winapi) HRESULT,
        FindElementsInHostCoordinatesWithIntersectingRect: *const fn(self: *anyopaque, intersectingRect: Rect, subtree: *UIElement, _r: **IIterable(UIElement)) callconv(.winapi) HRESULT,
        FindElementsInHostCoordinatesWithIncludeAllElements: *const fn(self: *anyopaque, intersectingPoint: Point, subtree: *UIElement, includeAllElements: bool, _r: **IIterable(UIElement)) callconv(.winapi) HRESULT,
        FindElementsInHostCoordinatesWithIntersectingRectAndIncludeAllElements: *const fn(self: *anyopaque, intersectingRect: Rect, subtree: *UIElement, includeAllElements: bool, _r: **IIterable(UIElement)) callconv(.winapi) HRESULT,
        GetChild: *const fn(self: *anyopaque, reference: *DependencyObject, childIndex: i32, _r: **DependencyObject) callconv(.winapi) HRESULT,
        GetChildrenCount: *const fn(self: *anyopaque, reference: *DependencyObject, _r: *i32) callconv(.winapi) HRESULT,
        GetParent: *const fn(self: *anyopaque, reference: *DependencyObject, _r: **DependencyObject) callconv(.winapi) HRESULT,
        DisconnectChildrenRecursive: *const fn(self: *anyopaque, element: *UIElement) callconv(.winapi) HRESULT,
    };
};
pub const IVisualTreeHelperStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetOpenPopups(self: *@This(), window: *Window) core.HResult!*IVectorView(Popup) {
        var _r: *IVectorView(Popup) = undefined;
        const _c = self.vtable.GetOpenPopups(@ptrCast(self), window, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IVisualTreeHelperStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "07bcd176-869f-44a7-8797-2103a4c3e47a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetOpenPopups: *const fn(self: *anyopaque, window: *Window, _r: **IVectorView(Popup)) callconv(.winapi) HRESULT,
    };
};
pub const IVisualTreeHelperStatics3 = extern struct {
    vtable: *const VTable,
    pub fn GetOpenPopupsForXamlRoot(self: *@This(), xamlRoot: *XamlRoot) core.HResult!*IVectorView(Popup) {
        var _r: *IVectorView(Popup) = undefined;
        const _c = self.vtable.GetOpenPopupsForXamlRoot(@ptrCast(self), xamlRoot, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IVisualTreeHelperStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40420d50-ca16-57da-8aac-944c8af577fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetOpenPopupsForXamlRoot: *const fn(self: *anyopaque, xamlRoot: *XamlRoot, _r: **IVectorView(Popup)) callconv(.winapi) HRESULT,
    };
};
pub const IXamlCompositionBrushBase = extern struct {
    vtable: *const VTable,
    pub fn getFallbackColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_FallbackColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFallbackColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_FallbackColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IXamlCompositionBrushBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03e432d9-b35c-4a79-811c-c5652004da0e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FallbackColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        put_FallbackColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
    };
};
pub const IXamlCompositionBrushBaseFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*XamlCompositionBrushBase {
        var _r: *XamlCompositionBrushBase = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IXamlCompositionBrushBaseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "394f0823-2451-4ed8-bd24-488149b3428d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **XamlCompositionBrushBase) callconv(.winapi) HRESULT,
    };
};
pub const IXamlCompositionBrushBaseOverrides = extern struct {
    vtable: *const VTable,
    pub fn OnConnected(self: *@This()) core.HResult!void {
        const _c = self.vtable.OnConnected(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnDisconnected(self: *@This()) core.HResult!void {
        const _c = self.vtable.OnDisconnected(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IXamlCompositionBrushBaseOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d19127f1-38b4-4ea1-8f33-849629a4c9c1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnConnected: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        OnDisconnected: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IXamlCompositionBrushBaseProtected = extern struct {
    vtable: *const VTable,
    pub fn getCompositionBrush(self: *@This()) core.HResult!*CompositionBrush {
        var _r: *CompositionBrush = undefined;
        const _c = self.vtable.get_CompositionBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompositionBrush(self: *@This(), value: *CompositionBrush) core.HResult!void {
        const _c = self.vtable.put_CompositionBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IXamlCompositionBrushBaseProtected";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1513f3d8-0457-4e1c-ad77-11c1d9879743";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CompositionBrush: *const fn(self: *anyopaque, _r: **CompositionBrush) callconv(.winapi) HRESULT,
        put_CompositionBrush: *const fn(self: *anyopaque, value: *CompositionBrush) callconv(.winapi) HRESULT,
    };
};
pub const IXamlCompositionBrushBaseStatics = extern struct {
    vtable: *const VTable,
    pub fn getFallbackColorProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FallbackColorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IXamlCompositionBrushBaseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4fd49b06-061a-441f-b97a-adfbd41ae681";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FallbackColorProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IXamlLight = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IXamlLight";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0cc3fc1f-b327-4a18-9648-7c84db26ce22";
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
pub const IXamlLightFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*XamlLight {
        var _r: *XamlLight = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IXamlLightFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87ded768-3055-43b8-8ef6-798dc4c2329a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **XamlLight) callconv(.winapi) HRESULT,
    };
};
pub const IXamlLightOverrides = extern struct {
    vtable: *const VTable,
    pub fn GetId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn OnConnected(self: *@This(), newElement: *UIElement) core.HResult!void {
        const _c = self.vtable.OnConnected(@ptrCast(self), newElement);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnDisconnected(self: *@This(), oldElement: *UIElement) core.HResult!void {
        const _c = self.vtable.OnDisconnected(@ptrCast(self), oldElement);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IXamlLightOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c6296c7-0173-48e1-b73d-7fa216a9ac28";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        OnConnected: *const fn(self: *anyopaque, newElement: *UIElement) callconv(.winapi) HRESULT,
        OnDisconnected: *const fn(self: *anyopaque, oldElement: *UIElement) callconv(.winapi) HRESULT,
    };
};
pub const IXamlLightProtected = extern struct {
    vtable: *const VTable,
    pub fn getCompositionLight(self: *@This()) core.HResult!*CompositionLight {
        var _r: *CompositionLight = undefined;
        const _c = self.vtable.get_CompositionLight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompositionLight(self: *@This(), value: *CompositionLight) core.HResult!void {
        const _c = self.vtable.put_CompositionLight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IXamlLightProtected";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ecf220b-1252-43d0-9729-6ea692046838";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CompositionLight: *const fn(self: *anyopaque, _r: **CompositionLight) callconv(.winapi) HRESULT,
        put_CompositionLight: *const fn(self: *anyopaque, value: *CompositionLight) callconv(.winapi) HRESULT,
    };
};
pub const IXamlLightStatics = extern struct {
    vtable: *const VTable,
    pub fn AddTargetElement(self: *@This(), lightId: HSTRING, element: *UIElement) core.HResult!void {
        const _c = self.vtable.AddTargetElement(@ptrCast(self), lightId, element);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveTargetElement(self: *@This(), lightId: HSTRING, element: *UIElement) core.HResult!void {
        const _c = self.vtable.RemoveTargetElement(@ptrCast(self), lightId, element);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn AddTargetBrush(self: *@This(), lightId: HSTRING, brush: *Brush) core.HResult!void {
        const _c = self.vtable.AddTargetBrush(@ptrCast(self), lightId, brush);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RemoveTargetBrush(self: *@This(), lightId: HSTRING, brush: *Brush) core.HResult!void {
        const _c = self.vtable.RemoveTargetBrush(@ptrCast(self), lightId, brush);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.IXamlLightStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5ea9d69-b508-4e9c-bd27-6b044b5f78a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddTargetElement: *const fn(self: *anyopaque, lightId: HSTRING, element: *UIElement) callconv(.winapi) HRESULT,
        RemoveTargetElement: *const fn(self: *anyopaque, lightId: HSTRING, element: *UIElement) callconv(.winapi) HRESULT,
        AddTargetBrush: *const fn(self: *anyopaque, lightId: HSTRING, brush: *Brush) callconv(.winapi) HRESULT,
        RemoveTargetBrush: *const fn(self: *anyopaque, lightId: HSTRING, brush: *Brush) callconv(.winapi) HRESULT,
    };
};
pub const ImageBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getImageSource(self: *@This()) core.HResult!*ImageSource {
        const this: *IImageBrush = @ptrCast(self);
        return try this.getImageSource();
    }
    pub fn putImageSource(self: *@This(), value: *ImageSource) core.HResult!void {
        const this: *IImageBrush = @ptrCast(self);
        return try this.putImageSource(value);
    }
    pub fn addImageFailed(self: *@This(), handler: *ExceptionRoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IImageBrush = @ptrCast(self);
        return try this.addImageFailed(handler);
    }
    pub fn removeImageFailed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IImageBrush = @ptrCast(self);
        return try this.removeImageFailed(token);
    }
    pub fn addImageOpened(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IImageBrush = @ptrCast(self);
        return try this.addImageOpened(handler);
    }
    pub fn removeImageOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IImageBrush = @ptrCast(self);
        return try this.removeImageOpened(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IImageBrush.IID)));
    }
    pub fn getImageSourceProperty() core.HResult!*DependencyProperty {
        const _f = @This().IImageBrushStaticsCache.get();
        return try _f.getImageSourceProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ImageBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageBrush.GUID;
    pub const IID: Guid = IImageBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageBrush.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IImageBrushStaticsCache: FactoryCache(IImageBrushStatics, RUNTIME_NAME) = .{};
};
pub const ImageSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ImageSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageSource.GUID;
    pub const IID: Guid = IImageSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageSource.SIGNATURE);
    var _IImageSourceFactoryCache: FactoryCache(IImageSourceFactory, RUNTIME_NAME) = .{};
};
pub const LineGeometry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStartPoint(self: *@This()) core.HResult!Point {
        const this: *ILineGeometry = @ptrCast(self);
        return try this.getStartPoint();
    }
    pub fn putStartPoint(self: *@This(), value: Point) core.HResult!void {
        const this: *ILineGeometry = @ptrCast(self);
        return try this.putStartPoint(value);
    }
    pub fn getEndPoint(self: *@This()) core.HResult!Point {
        const this: *ILineGeometry = @ptrCast(self);
        return try this.getEndPoint();
    }
    pub fn putEndPoint(self: *@This(), value: Point) core.HResult!void {
        const this: *ILineGeometry = @ptrCast(self);
        return try this.putEndPoint(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILineGeometry.IID)));
    }
    pub fn getStartPointProperty() core.HResult!*DependencyProperty {
        const _f = @This().ILineGeometryStaticsCache.get();
        return try _f.getStartPointProperty();
    }
    pub fn getEndPointProperty() core.HResult!*DependencyProperty {
        const _f = @This().ILineGeometryStaticsCache.get();
        return try _f.getEndPointProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.LineGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineGeometry.GUID;
    pub const IID: Guid = ILineGeometry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineGeometry.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ILineGeometryStaticsCache: FactoryCache(ILineGeometryStatics, RUNTIME_NAME) = .{};
};
pub const LineSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPoint(self: *@This()) core.HResult!Point {
        const this: *ILineSegment = @ptrCast(self);
        return try this.getPoint();
    }
    pub fn putPoint(self: *@This(), value: Point) core.HResult!void {
        const this: *ILineSegment = @ptrCast(self);
        return try this.putPoint(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILineSegment.IID)));
    }
    pub fn getPointProperty() core.HResult!*DependencyProperty {
        const _f = @This().ILineSegmentStaticsCache.get();
        return try _f.getPointProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.LineSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineSegment.GUID;
    pub const IID: Guid = ILineSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineSegment.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ILineSegmentStaticsCache: FactoryCache(ILineSegmentStatics, RUNTIME_NAME) = .{};
};
pub const LinearGradientBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStartPoint(self: *@This()) core.HResult!Point {
        const this: *ILinearGradientBrush = @ptrCast(self);
        return try this.getStartPoint();
    }
    pub fn putStartPoint(self: *@This(), value: Point) core.HResult!void {
        const this: *ILinearGradientBrush = @ptrCast(self);
        return try this.putStartPoint(value);
    }
    pub fn getEndPoint(self: *@This()) core.HResult!Point {
        const this: *ILinearGradientBrush = @ptrCast(self);
        return try this.getEndPoint();
    }
    pub fn putEndPoint(self: *@This(), value: Point) core.HResult!void {
        const this: *ILinearGradientBrush = @ptrCast(self);
        return try this.putEndPoint(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILinearGradientBrush.IID)));
    }
    pub fn CreateInstanceWithGradientStopCollectionAndAngle(gradientStopCollection: *GradientStopCollection, angle: f64) core.HResult!*LinearGradientBrush {
        const _f = @This().ILinearGradientBrushFactoryCache.get();
        return try _f.CreateInstanceWithGradientStopCollectionAndAngle(gradientStopCollection, angle);
    }
    pub fn getStartPointProperty() core.HResult!*DependencyProperty {
        const _f = @This().ILinearGradientBrushStaticsCache.get();
        return try _f.getStartPointProperty();
    }
    pub fn getEndPointProperty() core.HResult!*DependencyProperty {
        const _f = @This().ILinearGradientBrushStaticsCache.get();
        return try _f.getEndPointProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.LinearGradientBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILinearGradientBrush.GUID;
    pub const IID: Guid = ILinearGradientBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILinearGradientBrush.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ILinearGradientBrushFactoryCache: FactoryCache(ILinearGradientBrushFactory, RUNTIME_NAME) = .{};
    var _ILinearGradientBrushStaticsCache: FactoryCache(ILinearGradientBrushStatics, RUNTIME_NAME) = .{};
};
pub const LoadedImageSourceLoadCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStatus(self: *@This()) core.HResult!LoadedImageSourceLoadStatus {
        const this: *ILoadedImageSourceLoadCompletedEventArgs = @ptrCast(self);
        return try this.getStatus();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.LoadedImageSourceLoadCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoadedImageSourceLoadCompletedEventArgs.GUID;
    pub const IID: Guid = ILoadedImageSourceLoadCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoadedImageSourceLoadCompletedEventArgs.SIGNATURE);
};
pub const LoadedImageSourceLoadStatus = enum(i32) {
    Success = 0,
    NetworkError = 1,
    InvalidFormat = 2,
    Other = 3,
};
pub const LoadedImageSurface = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDecodedPhysicalSize(self: *@This()) core.HResult!Size {
        const this: *ILoadedImageSurface = @ptrCast(self);
        return try this.getDecodedPhysicalSize();
    }
    pub fn getDecodedSize(self: *@This()) core.HResult!Size {
        const this: *ILoadedImageSurface = @ptrCast(self);
        return try this.getDecodedSize();
    }
    pub fn getNaturalSize(self: *@This()) core.HResult!Size {
        const this: *ILoadedImageSurface = @ptrCast(self);
        return try this.getNaturalSize();
    }
    pub fn addLoadCompleted(self: *@This(), handler: *TypedEventHandler(LoadedImageSurface,LoadedImageSourceLoadCompletedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ILoadedImageSurface = @ptrCast(self);
        return try this.addLoadCompleted(handler);
    }
    pub fn removeLoadCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILoadedImageSurface = @ptrCast(self);
        return try this.removeLoadCompleted(token);
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
    pub fn StartLoadFromUriWithDesiredMaxSize(uri: *Uri, desiredMaxSize: Size) core.HResult!*LoadedImageSurface {
        const _f = @This().ILoadedImageSurfaceStaticsCache.get();
        return try _f.StartLoadFromUriWithDesiredMaxSize(uri, desiredMaxSize);
    }
    pub fn StartLoadFromUri(uri: *Uri) core.HResult!*LoadedImageSurface {
        const _f = @This().ILoadedImageSurfaceStaticsCache.get();
        return try _f.StartLoadFromUri(uri);
    }
    pub fn StartLoadFromStreamWithDesiredMaxSize(stream: *IRandomAccessStream, desiredMaxSize: Size) core.HResult!*LoadedImageSurface {
        const _f = @This().ILoadedImageSurfaceStaticsCache.get();
        return try _f.StartLoadFromStreamWithDesiredMaxSize(stream, desiredMaxSize);
    }
    pub fn StartLoadFromStream(stream: *IRandomAccessStream) core.HResult!*LoadedImageSurface {
        const _f = @This().ILoadedImageSurfaceStaticsCache.get();
        return try _f.StartLoadFromStream(stream);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.LoadedImageSurface";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoadedImageSurface.GUID;
    pub const IID: Guid = ILoadedImageSurface.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoadedImageSurface.SIGNATURE);
    var _ILoadedImageSurfaceStaticsCache: FactoryCache(ILoadedImageSurfaceStatics, RUNTIME_NAME) = .{};
};
pub const Matrix = extern struct {
    M11: f64,
    M12: f64,
    M21: f64,
    M22: f64,
    OffsetX: f64,
    OffsetY: f64,
};
pub const Projection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Projection {
        const _f = @This().IProjectionFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Projection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProjection.GUID;
    pub const IID: Guid = IProjection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProjection.SIGNATURE);
    var _IProjectionFactoryCache: FactoryCache(IProjectionFactory, RUNTIME_NAME) = .{};
};
pub const Matrix3DProjection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getProjectionMatrix(self: *@This()) core.HResult!Matrix3D {
        const this: *IMatrix3DProjection = @ptrCast(self);
        return try this.getProjectionMatrix();
    }
    pub fn putProjectionMatrix(self: *@This(), value: Matrix3D) core.HResult!void {
        const this: *IMatrix3DProjection = @ptrCast(self);
        return try this.putProjectionMatrix(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMatrix3DProjection.IID)));
    }
    pub fn getProjectionMatrixProperty() core.HResult!*DependencyProperty {
        const _f = @This().IMatrix3DProjectionStaticsCache.get();
        return try _f.getProjectionMatrixProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Matrix3DProjection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMatrix3DProjection.GUID;
    pub const IID: Guid = IMatrix3DProjection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMatrix3DProjection.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMatrix3DProjectionStaticsCache: FactoryCache(IMatrix3DProjectionStatics, RUNTIME_NAME) = .{};
};
pub const MatrixHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getIdentity() core.HResult!Matrix {
        const _f = @This().IMatrixHelperStaticsCache.get();
        return try _f.getIdentity();
    }
    pub fn FromElements(m11: f64, m12: f64, m21: f64, m22: f64, offsetX: f64, offsetY: f64) core.HResult!Matrix {
        const _f = @This().IMatrixHelperStaticsCache.get();
        return try _f.FromElements(m11, m12, m21, m22, offsetX, offsetY);
    }
    pub fn GetIsIdentity(target: Matrix) core.HResult!bool {
        const _f = @This().IMatrixHelperStaticsCache.get();
        return try _f.GetIsIdentity(target);
    }
    pub fn Transform(target: Matrix, point: Point) core.HResult!Point {
        const _f = @This().IMatrixHelperStaticsCache.get();
        return try _f.Transform(target, point);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.MatrixHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMatrixHelper.GUID;
    pub const IID: Guid = IMatrixHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMatrixHelper.SIGNATURE);
    var _IMatrixHelperStaticsCache: FactoryCache(IMatrixHelperStatics, RUNTIME_NAME) = .{};
};
pub const MatrixTransform = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMatrix(self: *@This()) core.HResult!Matrix {
        const this: *IMatrixTransform = @ptrCast(self);
        return try this.getMatrix();
    }
    pub fn putMatrix(self: *@This(), value: Matrix) core.HResult!void {
        const this: *IMatrixTransform = @ptrCast(self);
        return try this.putMatrix(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IMatrixTransform.IID)));
    }
    pub fn getMatrixProperty() core.HResult!*DependencyProperty {
        const _f = @This().IMatrixTransformStaticsCache.get();
        return try _f.getMatrixProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.MatrixTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMatrixTransform.GUID;
    pub const IID: Guid = IMatrixTransform.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMatrixTransform.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IMatrixTransformStaticsCache: FactoryCache(IMatrixTransformStatics, RUNTIME_NAME) = .{};
};
pub const MediaCanPlayResponse = enum(i32) {
    NotSupported = 0,
    Maybe = 1,
    Probably = 2,
};
pub const MediaElementState = enum(i32) {
    Closed = 0,
    Opening = 1,
    Buffering = 2,
    Playing = 3,
    Paused = 4,
    Stopped = 5,
};
pub const MediaTransportControlsThumbnailRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn SetThumbnailImage(self: *@This(), source: *IInputStream) core.HResult!void {
        const this: *IMediaTransportControlsThumbnailRequestedEventArgs = @ptrCast(self);
        return try this.SetThumbnailImage(source);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IMediaTransportControlsThumbnailRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.MediaTransportControlsThumbnailRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaTransportControlsThumbnailRequestedEventArgs.GUID;
    pub const IID: Guid = IMediaTransportControlsThumbnailRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaTransportControlsThumbnailRequestedEventArgs.SIGNATURE);
};
pub const PartialMediaFailureDetectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getStreamKind(self: *@This()) core.HResult!FailedMediaStreamKind {
        const this: *IPartialMediaFailureDetectedEventArgs = @ptrCast(self);
        return try this.getStreamKind();
    }
    pub fn getExtendedError(self: *@This()) core.HResult!HResult {
        var this: ?*IPartialMediaFailureDetectedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPartialMediaFailureDetectedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExtendedError();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPartialMediaFailureDetectedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.PartialMediaFailureDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPartialMediaFailureDetectedEventArgs.GUID;
    pub const IID: Guid = IPartialMediaFailureDetectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPartialMediaFailureDetectedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PathFigure = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSegments(self: *@This()) core.HResult!*PathSegmentCollection {
        const this: *IPathFigure = @ptrCast(self);
        return try this.getSegments();
    }
    pub fn putSegments(self: *@This(), value: *PathSegmentCollection) core.HResult!void {
        const this: *IPathFigure = @ptrCast(self);
        return try this.putSegments(value);
    }
    pub fn getStartPoint(self: *@This()) core.HResult!Point {
        const this: *IPathFigure = @ptrCast(self);
        return try this.getStartPoint();
    }
    pub fn putStartPoint(self: *@This(), value: Point) core.HResult!void {
        const this: *IPathFigure = @ptrCast(self);
        return try this.putStartPoint(value);
    }
    pub fn getIsClosed(self: *@This()) core.HResult!bool {
        const this: *IPathFigure = @ptrCast(self);
        return try this.getIsClosed();
    }
    pub fn putIsClosed(self: *@This(), value: bool) core.HResult!void {
        const this: *IPathFigure = @ptrCast(self);
        return try this.putIsClosed(value);
    }
    pub fn getIsFilled(self: *@This()) core.HResult!bool {
        const this: *IPathFigure = @ptrCast(self);
        return try this.getIsFilled();
    }
    pub fn putIsFilled(self: *@This(), value: bool) core.HResult!void {
        const this: *IPathFigure = @ptrCast(self);
        return try this.putIsFilled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPathFigure.IID)));
    }
    pub fn getSegmentsProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPathFigureStaticsCache.get();
        return try _f.getSegmentsProperty();
    }
    pub fn getStartPointProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPathFigureStaticsCache.get();
        return try _f.getStartPointProperty();
    }
    pub fn getIsClosedProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPathFigureStaticsCache.get();
        return try _f.getIsClosedProperty();
    }
    pub fn getIsFilledProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPathFigureStaticsCache.get();
        return try _f.getIsFilledProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.PathFigure";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPathFigure.GUID;
    pub const IID: Guid = IPathFigure.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPathFigure.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPathFigureStaticsCache: FactoryCache(IPathFigureStatics, RUNTIME_NAME) = .{};
};
pub const PathFigureCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(PathFigure) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(PathFigure) {
        const this: *IVector(PathFigure) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(PathFigure) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(PathFigure) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(PathFigure) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(PathFigure) {
        var this: ?*IIterable(PathFigure) = undefined;
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.PathFigureCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PathGeometry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFillRule(self: *@This()) core.HResult!FillRule {
        const this: *IPathGeometry = @ptrCast(self);
        return try this.getFillRule();
    }
    pub fn putFillRule(self: *@This(), value: FillRule) core.HResult!void {
        const this: *IPathGeometry = @ptrCast(self);
        return try this.putFillRule(value);
    }
    pub fn getFigures(self: *@This()) core.HResult!*PathFigureCollection {
        const this: *IPathGeometry = @ptrCast(self);
        return try this.getFigures();
    }
    pub fn putFigures(self: *@This(), value: *PathFigureCollection) core.HResult!void {
        const this: *IPathGeometry = @ptrCast(self);
        return try this.putFigures(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPathGeometry.IID)));
    }
    pub fn getFillRuleProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPathGeometryStaticsCache.get();
        return try _f.getFillRuleProperty();
    }
    pub fn getFiguresProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPathGeometryStaticsCache.get();
        return try _f.getFiguresProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.PathGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPathGeometry.GUID;
    pub const IID: Guid = IPathGeometry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPathGeometry.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPathGeometryStaticsCache: FactoryCache(IPathGeometryStatics, RUNTIME_NAME) = .{};
};
pub const PathSegmentCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(PathSegment) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(PathSegment) {
        const this: *IVector(PathSegment) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(PathSegment) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(PathSegment) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(PathSegment) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(PathSegment) {
        var this: ?*IIterable(PathSegment) = undefined;
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.PathSegmentCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PenLineCap = enum(i32) {
    Flat = 0,
    Square = 1,
    Round = 2,
    Triangle = 3,
};
pub const PenLineJoin = enum(i32) {
    Miter = 0,
    Bevel = 1,
    Round = 2,
};
pub const PlaneProjection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLocalOffsetX(self: *@This()) core.HResult!f64 {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.getLocalOffsetX();
    }
    pub fn putLocalOffsetX(self: *@This(), value: f64) core.HResult!void {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.putLocalOffsetX(value);
    }
    pub fn getLocalOffsetY(self: *@This()) core.HResult!f64 {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.getLocalOffsetY();
    }
    pub fn putLocalOffsetY(self: *@This(), value: f64) core.HResult!void {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.putLocalOffsetY(value);
    }
    pub fn getLocalOffsetZ(self: *@This()) core.HResult!f64 {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.getLocalOffsetZ();
    }
    pub fn putLocalOffsetZ(self: *@This(), value: f64) core.HResult!void {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.putLocalOffsetZ(value);
    }
    pub fn getRotationX(self: *@This()) core.HResult!f64 {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.getRotationX();
    }
    pub fn putRotationX(self: *@This(), value: f64) core.HResult!void {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.putRotationX(value);
    }
    pub fn getRotationY(self: *@This()) core.HResult!f64 {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.getRotationY();
    }
    pub fn putRotationY(self: *@This(), value: f64) core.HResult!void {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.putRotationY(value);
    }
    pub fn getRotationZ(self: *@This()) core.HResult!f64 {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.getRotationZ();
    }
    pub fn putRotationZ(self: *@This(), value: f64) core.HResult!void {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.putRotationZ(value);
    }
    pub fn getCenterOfRotationX(self: *@This()) core.HResult!f64 {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.getCenterOfRotationX();
    }
    pub fn putCenterOfRotationX(self: *@This(), value: f64) core.HResult!void {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.putCenterOfRotationX(value);
    }
    pub fn getCenterOfRotationY(self: *@This()) core.HResult!f64 {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.getCenterOfRotationY();
    }
    pub fn putCenterOfRotationY(self: *@This(), value: f64) core.HResult!void {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.putCenterOfRotationY(value);
    }
    pub fn getCenterOfRotationZ(self: *@This()) core.HResult!f64 {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.getCenterOfRotationZ();
    }
    pub fn putCenterOfRotationZ(self: *@This(), value: f64) core.HResult!void {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.putCenterOfRotationZ(value);
    }
    pub fn getGlobalOffsetX(self: *@This()) core.HResult!f64 {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.getGlobalOffsetX();
    }
    pub fn putGlobalOffsetX(self: *@This(), value: f64) core.HResult!void {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.putGlobalOffsetX(value);
    }
    pub fn getGlobalOffsetY(self: *@This()) core.HResult!f64 {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.getGlobalOffsetY();
    }
    pub fn putGlobalOffsetY(self: *@This(), value: f64) core.HResult!void {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.putGlobalOffsetY(value);
    }
    pub fn getGlobalOffsetZ(self: *@This()) core.HResult!f64 {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.getGlobalOffsetZ();
    }
    pub fn putGlobalOffsetZ(self: *@This(), value: f64) core.HResult!void {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.putGlobalOffsetZ(value);
    }
    pub fn getProjectionMatrix(self: *@This()) core.HResult!Matrix3D {
        const this: *IPlaneProjection = @ptrCast(self);
        return try this.getProjectionMatrix();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPlaneProjection.IID)));
    }
    pub fn getLocalOffsetXProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPlaneProjectionStaticsCache.get();
        return try _f.getLocalOffsetXProperty();
    }
    pub fn getLocalOffsetYProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPlaneProjectionStaticsCache.get();
        return try _f.getLocalOffsetYProperty();
    }
    pub fn getLocalOffsetZProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPlaneProjectionStaticsCache.get();
        return try _f.getLocalOffsetZProperty();
    }
    pub fn getRotationXProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPlaneProjectionStaticsCache.get();
        return try _f.getRotationXProperty();
    }
    pub fn getRotationYProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPlaneProjectionStaticsCache.get();
        return try _f.getRotationYProperty();
    }
    pub fn getRotationZProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPlaneProjectionStaticsCache.get();
        return try _f.getRotationZProperty();
    }
    pub fn getCenterOfRotationXProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPlaneProjectionStaticsCache.get();
        return try _f.getCenterOfRotationXProperty();
    }
    pub fn getCenterOfRotationYProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPlaneProjectionStaticsCache.get();
        return try _f.getCenterOfRotationYProperty();
    }
    pub fn getCenterOfRotationZProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPlaneProjectionStaticsCache.get();
        return try _f.getCenterOfRotationZProperty();
    }
    pub fn getGlobalOffsetXProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPlaneProjectionStaticsCache.get();
        return try _f.getGlobalOffsetXProperty();
    }
    pub fn getGlobalOffsetYProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPlaneProjectionStaticsCache.get();
        return try _f.getGlobalOffsetYProperty();
    }
    pub fn getGlobalOffsetZProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPlaneProjectionStaticsCache.get();
        return try _f.getGlobalOffsetZProperty();
    }
    pub fn getProjectionMatrixProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPlaneProjectionStaticsCache.get();
        return try _f.getProjectionMatrixProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.PlaneProjection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlaneProjection.GUID;
    pub const IID: Guid = IPlaneProjection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlaneProjection.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPlaneProjectionStaticsCache: FactoryCache(IPlaneProjectionStatics, RUNTIME_NAME) = .{};
};
pub const PointCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(Point) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(Point) {
        const this: *IVector(Point) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(Point) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(Point) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(Point) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(Point) {
        var this: ?*IIterable(Point) = undefined;
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.PointCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PolyBezierSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPoints(self: *@This()) core.HResult!*PointCollection {
        const this: *IPolyBezierSegment = @ptrCast(self);
        return try this.getPoints();
    }
    pub fn putPoints(self: *@This(), value: *PointCollection) core.HResult!void {
        const this: *IPolyBezierSegment = @ptrCast(self);
        return try this.putPoints(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPolyBezierSegment.IID)));
    }
    pub fn getPointsProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPolyBezierSegmentStaticsCache.get();
        return try _f.getPointsProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.PolyBezierSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPolyBezierSegment.GUID;
    pub const IID: Guid = IPolyBezierSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPolyBezierSegment.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPolyBezierSegmentStaticsCache: FactoryCache(IPolyBezierSegmentStatics, RUNTIME_NAME) = .{};
};
pub const PolyLineSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPoints(self: *@This()) core.HResult!*PointCollection {
        const this: *IPolyLineSegment = @ptrCast(self);
        return try this.getPoints();
    }
    pub fn putPoints(self: *@This(), value: *PointCollection) core.HResult!void {
        const this: *IPolyLineSegment = @ptrCast(self);
        return try this.putPoints(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPolyLineSegment.IID)));
    }
    pub fn getPointsProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPolyLineSegmentStaticsCache.get();
        return try _f.getPointsProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.PolyLineSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPolyLineSegment.GUID;
    pub const IID: Guid = IPolyLineSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPolyLineSegment.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPolyLineSegmentStaticsCache: FactoryCache(IPolyLineSegmentStatics, RUNTIME_NAME) = .{};
};
pub const PolyQuadraticBezierSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPoints(self: *@This()) core.HResult!*PointCollection {
        const this: *IPolyQuadraticBezierSegment = @ptrCast(self);
        return try this.getPoints();
    }
    pub fn putPoints(self: *@This(), value: *PointCollection) core.HResult!void {
        const this: *IPolyQuadraticBezierSegment = @ptrCast(self);
        return try this.putPoints(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPolyQuadraticBezierSegment.IID)));
    }
    pub fn getPointsProperty() core.HResult!*DependencyProperty {
        const _f = @This().IPolyQuadraticBezierSegmentStaticsCache.get();
        return try _f.getPointsProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.PolyQuadraticBezierSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPolyQuadraticBezierSegment.GUID;
    pub const IID: Guid = IPolyQuadraticBezierSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPolyQuadraticBezierSegment.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPolyQuadraticBezierSegmentStaticsCache: FactoryCache(IPolyQuadraticBezierSegmentStatics, RUNTIME_NAME) = .{};
};
pub const QuadraticBezierSegment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPoint1(self: *@This()) core.HResult!Point {
        const this: *IQuadraticBezierSegment = @ptrCast(self);
        return try this.getPoint1();
    }
    pub fn putPoint1(self: *@This(), value: Point) core.HResult!void {
        const this: *IQuadraticBezierSegment = @ptrCast(self);
        return try this.putPoint1(value);
    }
    pub fn getPoint2(self: *@This()) core.HResult!Point {
        const this: *IQuadraticBezierSegment = @ptrCast(self);
        return try this.getPoint2();
    }
    pub fn putPoint2(self: *@This(), value: Point) core.HResult!void {
        const this: *IQuadraticBezierSegment = @ptrCast(self);
        return try this.putPoint2(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IQuadraticBezierSegment.IID)));
    }
    pub fn getPoint1Property() core.HResult!*DependencyProperty {
        const _f = @This().IQuadraticBezierSegmentStaticsCache.get();
        return try _f.getPoint1Property();
    }
    pub fn getPoint2Property() core.HResult!*DependencyProperty {
        const _f = @This().IQuadraticBezierSegmentStaticsCache.get();
        return try _f.getPoint2Property();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.QuadraticBezierSegment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IQuadraticBezierSegment.GUID;
    pub const IID: Guid = IQuadraticBezierSegment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IQuadraticBezierSegment.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IQuadraticBezierSegmentStaticsCache: FactoryCache(IQuadraticBezierSegmentStatics, RUNTIME_NAME) = .{};
};
pub const RateChangedRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRateChangedRoutedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.RateChangedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRateChangedRoutedEventArgs.GUID;
    pub const IID: Guid = IRateChangedRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRateChangedRoutedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const RateChangedRoutedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *RateChangedRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *RateChangedRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *RateChangedRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.RateChangedRoutedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08e9a257-ae05-489b-8839-28c6225d2349";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *RateChangedRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const RectangleGeometry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRect(self: *@This()) core.HResult!Rect {
        const this: *IRectangleGeometry = @ptrCast(self);
        return try this.getRect();
    }
    pub fn putRect(self: *@This(), value: Rect) core.HResult!void {
        const this: *IRectangleGeometry = @ptrCast(self);
        return try this.putRect(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRectangleGeometry.IID)));
    }
    pub fn getRectProperty() core.HResult!*DependencyProperty {
        const _f = @This().IRectangleGeometryStaticsCache.get();
        return try _f.getRectProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.RectangleGeometry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRectangleGeometry.GUID;
    pub const IID: Guid = IRectangleGeometry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRectangleGeometry.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IRectangleGeometryStaticsCache: FactoryCache(IRectangleGeometryStatics, RUNTIME_NAME) = .{};
};
pub const RenderedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFrameDuration(self: *@This()) core.HResult!TimeSpan {
        const this: *IRenderedEventArgs = @ptrCast(self);
        return try this.getFrameDuration();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.RenderedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRenderedEventArgs.GUID;
    pub const IID: Guid = IRenderedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRenderedEventArgs.SIGNATURE);
};
pub const RenderingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRenderingTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IRenderingEventArgs = @ptrCast(self);
        return try this.getRenderingTime();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.RenderingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRenderingEventArgs.GUID;
    pub const IID: Guid = IRenderingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRenderingEventArgs.SIGNATURE);
};
pub const RevealBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *IRevealBrush = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IRevealBrush = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn getTargetTheme(self: *@This()) core.HResult!ApplicationTheme {
        const this: *IRevealBrush = @ptrCast(self);
        return try this.getTargetTheme();
    }
    pub fn putTargetTheme(self: *@This(), value: ApplicationTheme) core.HResult!void {
        const this: *IRevealBrush = @ptrCast(self);
        return try this.putTargetTheme(value);
    }
    pub fn getAlwaysUseFallback(self: *@This()) core.HResult!bool {
        const this: *IRevealBrush = @ptrCast(self);
        return try this.getAlwaysUseFallback();
    }
    pub fn putAlwaysUseFallback(self: *@This(), value: bool) core.HResult!void {
        const this: *IRevealBrush = @ptrCast(self);
        return try this.putAlwaysUseFallback(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getColorProperty() core.HResult!*DependencyProperty {
        const _f = @This().IRevealBrushStaticsCache.get();
        return try _f.getColorProperty();
    }
    pub fn getTargetThemeProperty() core.HResult!*DependencyProperty {
        const _f = @This().IRevealBrushStaticsCache.get();
        return try _f.getTargetThemeProperty();
    }
    pub fn getAlwaysUseFallbackProperty() core.HResult!*DependencyProperty {
        const _f = @This().IRevealBrushStaticsCache.get();
        return try _f.getAlwaysUseFallbackProperty();
    }
    pub fn getStateProperty() core.HResult!*DependencyProperty {
        const _f = @This().IRevealBrushStaticsCache.get();
        return try _f.getStateProperty();
    }
    pub fn SetState(element: *UIElement, value: RevealBrushState) core.HResult!void {
        const _f = @This().IRevealBrushStaticsCache.get();
        return try _f.SetState(element, value);
    }
    pub fn GetState(element: *UIElement) core.HResult!RevealBrushState {
        const _f = @This().IRevealBrushStaticsCache.get();
        return try _f.GetState(element);
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RevealBrush {
        const _f = @This().IRevealBrushFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.RevealBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRevealBrush.GUID;
    pub const IID: Guid = IRevealBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRevealBrush.SIGNATURE);
    var _IRevealBrushStaticsCache: FactoryCache(IRevealBrushStatics, RUNTIME_NAME) = .{};
    var _IRevealBrushFactoryCache: FactoryCache(IRevealBrushFactory, RUNTIME_NAME) = .{};
};
pub const RevealBackgroundBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RevealBackgroundBrush {
        const _f = @This().IRevealBackgroundBrushFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.RevealBackgroundBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRevealBackgroundBrush.GUID;
    pub const IID: Guid = IRevealBackgroundBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRevealBackgroundBrush.SIGNATURE);
    var _IRevealBackgroundBrushFactoryCache: FactoryCache(IRevealBackgroundBrushFactory, RUNTIME_NAME) = .{};
};
pub const RevealBorderBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RevealBorderBrush {
        const _f = @This().IRevealBorderBrushFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.RevealBorderBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRevealBorderBrush.GUID;
    pub const IID: Guid = IRevealBorderBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRevealBorderBrush.SIGNATURE);
    var _IRevealBorderBrushFactoryCache: FactoryCache(IRevealBorderBrushFactory, RUNTIME_NAME) = .{};
};
pub const RevealBrushState = enum(i32) {
    Normal = 0,
    PointerOver = 1,
    Pressed = 2,
};
pub const RotateTransform = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCenterX(self: *@This()) core.HResult!f64 {
        const this: *IRotateTransform = @ptrCast(self);
        return try this.getCenterX();
    }
    pub fn putCenterX(self: *@This(), value: f64) core.HResult!void {
        const this: *IRotateTransform = @ptrCast(self);
        return try this.putCenterX(value);
    }
    pub fn getCenterY(self: *@This()) core.HResult!f64 {
        const this: *IRotateTransform = @ptrCast(self);
        return try this.getCenterY();
    }
    pub fn putCenterY(self: *@This(), value: f64) core.HResult!void {
        const this: *IRotateTransform = @ptrCast(self);
        return try this.putCenterY(value);
    }
    pub fn getAngle(self: *@This()) core.HResult!f64 {
        const this: *IRotateTransform = @ptrCast(self);
        return try this.getAngle();
    }
    pub fn putAngle(self: *@This(), value: f64) core.HResult!void {
        const this: *IRotateTransform = @ptrCast(self);
        return try this.putAngle(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRotateTransform.IID)));
    }
    pub fn getCenterXProperty() core.HResult!*DependencyProperty {
        const _f = @This().IRotateTransformStaticsCache.get();
        return try _f.getCenterXProperty();
    }
    pub fn getCenterYProperty() core.HResult!*DependencyProperty {
        const _f = @This().IRotateTransformStaticsCache.get();
        return try _f.getCenterYProperty();
    }
    pub fn getAngleProperty() core.HResult!*DependencyProperty {
        const _f = @This().IRotateTransformStaticsCache.get();
        return try _f.getAngleProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.RotateTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRotateTransform.GUID;
    pub const IID: Guid = IRotateTransform.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRotateTransform.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IRotateTransformStaticsCache: FactoryCache(IRotateTransformStatics, RUNTIME_NAME) = .{};
};
pub const ScaleTransform = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCenterX(self: *@This()) core.HResult!f64 {
        const this: *IScaleTransform = @ptrCast(self);
        return try this.getCenterX();
    }
    pub fn putCenterX(self: *@This(), value: f64) core.HResult!void {
        const this: *IScaleTransform = @ptrCast(self);
        return try this.putCenterX(value);
    }
    pub fn getCenterY(self: *@This()) core.HResult!f64 {
        const this: *IScaleTransform = @ptrCast(self);
        return try this.getCenterY();
    }
    pub fn putCenterY(self: *@This(), value: f64) core.HResult!void {
        const this: *IScaleTransform = @ptrCast(self);
        return try this.putCenterY(value);
    }
    pub fn getScaleX(self: *@This()) core.HResult!f64 {
        const this: *IScaleTransform = @ptrCast(self);
        return try this.getScaleX();
    }
    pub fn putScaleX(self: *@This(), value: f64) core.HResult!void {
        const this: *IScaleTransform = @ptrCast(self);
        return try this.putScaleX(value);
    }
    pub fn getScaleY(self: *@This()) core.HResult!f64 {
        const this: *IScaleTransform = @ptrCast(self);
        return try this.getScaleY();
    }
    pub fn putScaleY(self: *@This(), value: f64) core.HResult!void {
        const this: *IScaleTransform = @ptrCast(self);
        return try this.putScaleY(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IScaleTransform.IID)));
    }
    pub fn getCenterXProperty() core.HResult!*DependencyProperty {
        const _f = @This().IScaleTransformStaticsCache.get();
        return try _f.getCenterXProperty();
    }
    pub fn getCenterYProperty() core.HResult!*DependencyProperty {
        const _f = @This().IScaleTransformStaticsCache.get();
        return try _f.getCenterYProperty();
    }
    pub fn getScaleXProperty() core.HResult!*DependencyProperty {
        const _f = @This().IScaleTransformStaticsCache.get();
        return try _f.getScaleXProperty();
    }
    pub fn getScaleYProperty() core.HResult!*DependencyProperty {
        const _f = @This().IScaleTransformStaticsCache.get();
        return try _f.getScaleYProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ScaleTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScaleTransform.GUID;
    pub const IID: Guid = IScaleTransform.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScaleTransform.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IScaleTransformStaticsCache: FactoryCache(IScaleTransformStatics, RUNTIME_NAME) = .{};
};
pub const Shadow = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.Shadow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IShadow.GUID;
    pub const IID: Guid = IShadow.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IShadow.SIGNATURE);
    var _IShadowFactoryCache: FactoryCache(IShadowFactory, RUNTIME_NAME) = .{};
};
pub const SkewTransform = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCenterX(self: *@This()) core.HResult!f64 {
        const this: *ISkewTransform = @ptrCast(self);
        return try this.getCenterX();
    }
    pub fn putCenterX(self: *@This(), value: f64) core.HResult!void {
        const this: *ISkewTransform = @ptrCast(self);
        return try this.putCenterX(value);
    }
    pub fn getCenterY(self: *@This()) core.HResult!f64 {
        const this: *ISkewTransform = @ptrCast(self);
        return try this.getCenterY();
    }
    pub fn putCenterY(self: *@This(), value: f64) core.HResult!void {
        const this: *ISkewTransform = @ptrCast(self);
        return try this.putCenterY(value);
    }
    pub fn getAngleX(self: *@This()) core.HResult!f64 {
        const this: *ISkewTransform = @ptrCast(self);
        return try this.getAngleX();
    }
    pub fn putAngleX(self: *@This(), value: f64) core.HResult!void {
        const this: *ISkewTransform = @ptrCast(self);
        return try this.putAngleX(value);
    }
    pub fn getAngleY(self: *@This()) core.HResult!f64 {
        const this: *ISkewTransform = @ptrCast(self);
        return try this.getAngleY();
    }
    pub fn putAngleY(self: *@This(), value: f64) core.HResult!void {
        const this: *ISkewTransform = @ptrCast(self);
        return try this.putAngleY(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISkewTransform.IID)));
    }
    pub fn getCenterXProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISkewTransformStaticsCache.get();
        return try _f.getCenterXProperty();
    }
    pub fn getCenterYProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISkewTransformStaticsCache.get();
        return try _f.getCenterYProperty();
    }
    pub fn getAngleXProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISkewTransformStaticsCache.get();
        return try _f.getAngleXProperty();
    }
    pub fn getAngleYProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISkewTransformStaticsCache.get();
        return try _f.getAngleYProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.SkewTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISkewTransform.GUID;
    pub const IID: Guid = ISkewTransform.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISkewTransform.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISkewTransformStaticsCache: FactoryCache(ISkewTransformStatics, RUNTIME_NAME) = .{};
};
pub const SolidColorBrush = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *ISolidColorBrush = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *ISolidColorBrush = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ISolidColorBrush.IID)));
    }
    pub fn CreateInstanceWithColor(color: Color) core.HResult!*SolidColorBrush {
        const _f = @This().ISolidColorBrushFactoryCache.get();
        return try _f.CreateInstanceWithColor(color);
    }
    pub fn getColorProperty() core.HResult!*DependencyProperty {
        const _f = @This().ISolidColorBrushStaticsCache.get();
        return try _f.getColorProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.SolidColorBrush";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISolidColorBrush.GUID;
    pub const IID: Guid = ISolidColorBrush.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISolidColorBrush.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ISolidColorBrushFactoryCache: FactoryCache(ISolidColorBrushFactory, RUNTIME_NAME) = .{};
    var _ISolidColorBrushStaticsCache: FactoryCache(ISolidColorBrushStatics, RUNTIME_NAME) = .{};
};
pub const Stereo3DVideoPackingMode = enum(i32) {
    None = 0,
    SideBySide = 1,
    TopBottom = 2,
};
pub const Stereo3DVideoRenderMode = enum(i32) {
    Mono = 0,
    Stereo = 1,
};
pub const Stretch = enum(i32) {
    None = 0,
    Fill = 1,
    Uniform = 2,
    UniformToFill = 3,
};
pub const StyleSimulations = enum(i32) {
    None = 0,
    BoldSimulation = 1,
    ItalicSimulation = 2,
    BoldItalicSimulation = 3,
};
pub const SweepDirection = enum(i32) {
    Counterclockwise = 0,
    Clockwise = 1,
};
pub const ThemeShadow = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReceivers(self: *@This()) core.HResult!*UIElementWeakCollection {
        const this: *IThemeShadow = @ptrCast(self);
        return try this.getReceivers();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ThemeShadow {
        const _f = @This().IThemeShadowFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.ThemeShadow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IThemeShadow.GUID;
    pub const IID: Guid = IThemeShadow.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IThemeShadow.SIGNATURE);
    var _IThemeShadowFactoryCache: FactoryCache(IThemeShadowFactory, RUNTIME_NAME) = .{};
};
pub const TimelineMarker = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTime(self: *@This()) core.HResult!TimeSpan {
        const this: *ITimelineMarker = @ptrCast(self);
        return try this.getTime();
    }
    pub fn putTime(self: *@This(), value: TimeSpan) core.HResult!void {
        const this: *ITimelineMarker = @ptrCast(self);
        return try this.putTime(value);
    }
    pub fn getType(self: *@This()) core.HResult!HSTRING {
        const this: *ITimelineMarker = @ptrCast(self);
        return try this.getType();
    }
    pub fn putType(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITimelineMarker = @ptrCast(self);
        return try this.putType(value);
    }
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *ITimelineMarker = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITimelineMarker = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ITimelineMarker.IID)));
    }
    pub fn getTimeProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITimelineMarkerStaticsCache.get();
        return try _f.getTimeProperty();
    }
    pub fn getTypeProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITimelineMarkerStaticsCache.get();
        return try _f.getTypeProperty();
    }
    pub fn getTextProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITimelineMarkerStaticsCache.get();
        return try _f.getTextProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.TimelineMarker";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimelineMarker.GUID;
    pub const IID: Guid = ITimelineMarker.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimelineMarker.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ITimelineMarkerStaticsCache: FactoryCache(ITimelineMarkerStatics, RUNTIME_NAME) = .{};
};
pub const TimelineMarkerCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(TimelineMarker) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(TimelineMarker) {
        const this: *IVector(TimelineMarker) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(TimelineMarker) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(TimelineMarker) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(TimelineMarker) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(TimelineMarker) {
        var this: ?*IIterable(TimelineMarker) = undefined;
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.TimelineMarkerCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TimelineMarkerRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMarker(self: *@This()) core.HResult!*TimelineMarker {
        const this: *ITimelineMarkerRoutedEventArgs = @ptrCast(self);
        return try this.getMarker();
    }
    pub fn putMarker(self: *@This(), value: *TimelineMarker) core.HResult!void {
        const this: *ITimelineMarkerRoutedEventArgs = @ptrCast(self);
        return try this.putMarker(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ITimelineMarkerRoutedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.TimelineMarkerRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimelineMarkerRoutedEventArgs.GUID;
    pub const IID: Guid = ITimelineMarkerRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimelineMarkerRoutedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TimelineMarkerRoutedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *TimelineMarkerRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *TimelineMarkerRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *TimelineMarkerRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.TimelineMarkerRoutedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "72e2fa9c-6dea-4cbe-a159-06ce95fbeced";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *TimelineMarkerRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const TransformCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector(Transform) = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(Transform) {
        const this: *IVector(Transform) = @ptrCast(self);
        return try this.GetView();
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector(Transform) = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector(Transform) = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector(Transform) = @ptrCast(self);
        return try this.Clear();
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(Transform) {
        var this: ?*IIterable(Transform) = undefined;
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.TransformCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const TransformGroup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChildren(self: *@This()) core.HResult!*TransformCollection {
        const this: *ITransformGroup = @ptrCast(self);
        return try this.getChildren();
    }
    pub fn putChildren(self: *@This(), value: *TransformCollection) core.HResult!void {
        const this: *ITransformGroup = @ptrCast(self);
        return try this.putChildren(value);
    }
    pub fn getValue(self: *@This()) core.HResult!Matrix {
        const this: *ITransformGroup = @ptrCast(self);
        return try this.getValue();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ITransformGroup.IID)));
    }
    pub fn getChildrenProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITransformGroupStaticsCache.get();
        return try _f.getChildrenProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.TransformGroup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITransformGroup.GUID;
    pub const IID: Guid = ITransformGroup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITransformGroup.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ITransformGroupStaticsCache: FactoryCache(ITransformGroupStatics, RUNTIME_NAME) = .{};
};
pub const TranslateTransform = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getX(self: *@This()) core.HResult!f64 {
        const this: *ITranslateTransform = @ptrCast(self);
        return try this.getX();
    }
    pub fn putX(self: *@This(), value: f64) core.HResult!void {
        const this: *ITranslateTransform = @ptrCast(self);
        return try this.putX(value);
    }
    pub fn getY(self: *@This()) core.HResult!f64 {
        const this: *ITranslateTransform = @ptrCast(self);
        return try this.getY();
    }
    pub fn putY(self: *@This(), value: f64) core.HResult!void {
        const this: *ITranslateTransform = @ptrCast(self);
        return try this.putY(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ITranslateTransform.IID)));
    }
    pub fn getXProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITranslateTransformStaticsCache.get();
        return try _f.getXProperty();
    }
    pub fn getYProperty() core.HResult!*DependencyProperty {
        const _f = @This().ITranslateTransformStaticsCache.get();
        return try _f.getYProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.TranslateTransform";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITranslateTransform.GUID;
    pub const IID: Guid = ITranslateTransform.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITranslateTransform.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ITranslateTransformStaticsCache: FactoryCache(ITranslateTransformStatics, RUNTIME_NAME) = .{};
};
pub const VisualTreeHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetOpenPopups(window: *Window) core.HResult!*IVectorView(Popup) {
        const _f = @This().IVisualTreeHelperStatics2Cache.get();
        return try _f.GetOpenPopups(window);
    }
    pub fn FindElementsInHostCoordinates(intersectingPoint: Point, subtree: *UIElement) core.HResult!*IIterable(UIElement) {
        const _f = @This().IVisualTreeHelperStaticsCache.get();
        return try _f.FindElementsInHostCoordinates(intersectingPoint, subtree);
    }
    pub fn FindElementsInHostCoordinatesWithIntersectingRect(intersectingRect: Rect, subtree: *UIElement) core.HResult!*IIterable(UIElement) {
        const _f = @This().IVisualTreeHelperStaticsCache.get();
        return try _f.FindElementsInHostCoordinatesWithIntersectingRect(intersectingRect, subtree);
    }
    pub fn FindElementsInHostCoordinatesWithIncludeAllElements(intersectingPoint: Point, subtree: *UIElement, includeAllElements: bool) core.HResult!*IIterable(UIElement) {
        const _f = @This().IVisualTreeHelperStaticsCache.get();
        return try _f.FindElementsInHostCoordinatesWithIncludeAllElements(intersectingPoint, subtree, includeAllElements);
    }
    pub fn FindElementsInHostCoordinatesWithIntersectingRectAndIncludeAllElements(intersectingRect: Rect, subtree: *UIElement, includeAllElements: bool) core.HResult!*IIterable(UIElement) {
        const _f = @This().IVisualTreeHelperStaticsCache.get();
        return try _f.FindElementsInHostCoordinatesWithIntersectingRectAndIncludeAllElements(intersectingRect, subtree, includeAllElements);
    }
    pub fn GetChild(reference: *DependencyObject, childIndex: i32) core.HResult!*DependencyObject {
        const _f = @This().IVisualTreeHelperStaticsCache.get();
        return try _f.GetChild(reference, childIndex);
    }
    pub fn GetChildrenCount(reference: *DependencyObject) core.HResult!i32 {
        const _f = @This().IVisualTreeHelperStaticsCache.get();
        return try _f.GetChildrenCount(reference);
    }
    pub fn GetParent(reference: *DependencyObject) core.HResult!*DependencyObject {
        const _f = @This().IVisualTreeHelperStaticsCache.get();
        return try _f.GetParent(reference);
    }
    pub fn DisconnectChildrenRecursive(element: *UIElement) core.HResult!void {
        const _f = @This().IVisualTreeHelperStaticsCache.get();
        return try _f.DisconnectChildrenRecursive(element);
    }
    pub fn GetOpenPopupsForXamlRoot(xamlRoot: *XamlRoot) core.HResult!*IVectorView(Popup) {
        const _f = @This().IVisualTreeHelperStatics3Cache.get();
        return try _f.GetOpenPopupsForXamlRoot(xamlRoot);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.VisualTreeHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVisualTreeHelper.GUID;
    pub const IID: Guid = IVisualTreeHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVisualTreeHelper.SIGNATURE);
    var _IVisualTreeHelperStatics2Cache: FactoryCache(IVisualTreeHelperStatics2, RUNTIME_NAME) = .{};
    var _IVisualTreeHelperStaticsCache: FactoryCache(IVisualTreeHelperStatics, RUNTIME_NAME) = .{};
    var _IVisualTreeHelperStatics3Cache: FactoryCache(IVisualTreeHelperStatics3, RUNTIME_NAME) = .{};
};
pub const XamlLight = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCompositionLight(self: *@This()) core.HResult!*CompositionLight {
        var this: ?*IXamlLightProtected = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXamlLightProtected.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCompositionLight();
    }
    pub fn putCompositionLight(self: *@This(), value: *CompositionLight) core.HResult!void {
        var this: ?*IXamlLightProtected = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXamlLightProtected.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCompositionLight(value);
    }
    pub fn GetId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IXamlLightOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXamlLightOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetId();
    }
    pub fn OnConnected(self: *@This(), newElement: *UIElement) core.HResult!void {
        var this: ?*IXamlLightOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXamlLightOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnConnected(newElement);
    }
    pub fn OnDisconnected(self: *@This(), oldElement: *UIElement) core.HResult!void {
        var this: ?*IXamlLightOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IXamlLightOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnDisconnected(oldElement);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn AddTargetElement(lightId: HSTRING, element: *UIElement) core.HResult!void {
        const _f = @This().IXamlLightStaticsCache.get();
        return try _f.AddTargetElement(lightId, element);
    }
    pub fn RemoveTargetElement(lightId: HSTRING, element: *UIElement) core.HResult!void {
        const _f = @This().IXamlLightStaticsCache.get();
        return try _f.RemoveTargetElement(lightId, element);
    }
    pub fn AddTargetBrush(lightId: HSTRING, brush: *Brush) core.HResult!void {
        const _f = @This().IXamlLightStaticsCache.get();
        return try _f.AddTargetBrush(lightId, brush);
    }
    pub fn RemoveTargetBrush(lightId: HSTRING, brush: *Brush) core.HResult!void {
        const _f = @This().IXamlLightStaticsCache.get();
        return try _f.RemoveTargetBrush(lightId, brush);
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*XamlLight {
        const _f = @This().IXamlLightFactoryCache.get();
        return try _f.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Media.XamlLight";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXamlLight.GUID;
    pub const IID: Guid = IXamlLight.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXamlLight.SIGNATURE);
    var _IXamlLightStaticsCache: FactoryCache(IXamlLightStatics, RUNTIME_NAME) = .{};
    var _IXamlLightFactoryCache: FactoryCache(IXamlLightFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const Uri = @import("../../Foundation.zig").Uri;
const UIElement = @import("../Xaml.zig").UIElement;
const ICompositionSurface = @import("../Composition.zig").ICompositionSurface;
const CompositionLight = @import("../Composition.zig").CompositionLight;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const IReference = @import("../../Foundation.zig").IReference;
const Point = @import("../../Foundation.zig").Point;
const IAnimationObject = @import("../Composition.zig").IAnimationObject;
const FactoryCache = @import("../../core.zig").FactoryCache;
const ApplicationTheme = @import("../Xaml.zig").ApplicationTheme;
const Rect = @import("../../Foundation.zig").Rect;
const TrustLevel = @import("../../root.zig").TrustLevel;
const AnimationPropertyInfo = @import("../Composition.zig").AnimationPropertyInfo;
const Matrix3D = @import("./Media/Media3D.zig").Matrix3D;
const TimeSpan = @import("../../Foundation.zig").TimeSpan;
const IAgileObject = @import("../../root.zig").IAgileObject;
const HResult = @import("../../Foundation.zig").HResult;
const Window = @import("../Xaml.zig").Window;
const RoutedEventHandler = @import("../Xaml.zig").RoutedEventHandler;
const Guid = @import("../../root.zig").Guid;
const Deferral = @import("../../Foundation.zig").Deferral;
const CompositionBrush = @import("../Composition.zig").CompositionBrush;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const Size = @import("../../Foundation.zig").Size;
const DependencyProperty = @import("../Xaml.zig").DependencyProperty;
const ExceptionRoutedEventHandler = @import("../Xaml.zig").ExceptionRoutedEventHandler;
const IClosable = @import("../../Foundation.zig").IClosable;
const DependencyObject = @import("../Xaml.zig").DependencyObject;
const XamlRoot = @import("../Xaml.zig").XamlRoot;
const HRESULT = @import("../../root.zig").HRESULT;
const IInputStream = @import("../../Storage/Streams.zig").IInputStream;
const IRandomAccessStream = @import("../../Storage/Streams.zig").IRandomAccessStream;
const UIElementWeakCollection = @import("../Xaml.zig").UIElementWeakCollection;
const IIterator = @import("../../Foundation/Collections.zig").IIterator;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const FailedMediaStreamKind = @import("../../Media/Playback.zig").FailedMediaStreamKind;
const Color = @import("../../UI.zig").Color;
const EventHandler = @import("../../Foundation.zig").EventHandler;
const core = @import("../../root.zig").core;
const Popup = @import("./Controls/Primitives.zig").Popup;
pub const Animation = @import("./Media/Animation.zig");
pub const Imaging = @import("./Media/Imaging.zig");
pub const Media3D = @import("./Media/Media3D.zig");
