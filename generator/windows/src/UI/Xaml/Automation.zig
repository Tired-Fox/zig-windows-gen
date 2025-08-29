pub const AnnotationPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_AnnotationTypeIdProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAnnotationPatternIdentifiersStaticsCache.get();
        return try factory.getAnnotationTypeIdProperty();
    }
    pub fn get_AnnotationTypeNameProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAnnotationPatternIdentifiersStaticsCache.get();
        return try factory.getAnnotationTypeNameProperty();
    }
    pub fn get_AuthorProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAnnotationPatternIdentifiersStaticsCache.get();
        return try factory.getAuthorProperty();
    }
    pub fn get_DateTimeProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAnnotationPatternIdentifiersStaticsCache.get();
        return try factory.getDateTimeProperty();
    }
    pub fn get_TargetProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAnnotationPatternIdentifiersStaticsCache.get();
        return try factory.getTargetProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.AnnotationPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAnnotationPatternIdentifiers.GUID;
    pub const IID: Guid = IAnnotationPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAnnotationPatternIdentifiers.SIGNATURE);
    var _IAnnotationPatternIdentifiersStaticsCache: FactoryCache(IAnnotationPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const AnnotationType = enum(i32) {
    Unknown = 60000,
    SpellingError = 60001,
    GrammarError = 60002,
    Comment = 60003,
    FormulaError = 60004,
    TrackChanges = 60005,
    Header = 60006,
    Footer = 60007,
    Highlighted = 60008,
    Endnote = 60009,
    Footnote = 60010,
    InsertionChange = 60011,
    DeletionChange = 60012,
    MoveChange = 60013,
    FormatChange = 60014,
    UnsyncedChange = 60015,
    EditingLockedChange = 60016,
    ExternalChange = 60017,
    ConflictingChange = 60018,
    Author = 60019,
    AdvancedProofingIssue = 60020,
    DataValidationError = 60021,
    CircularReferenceError = 60022,
};
pub const AutomationActiveEnd = enum(i32) {
    None = 0,
    Start = 1,
    End = 2,
};
pub const AutomationAnimationStyle = enum(i32) {
    None = 0,
    LasVegasLights = 1,
    BlinkingBackground = 2,
    SparkleText = 3,
    MarchingBlackAnts = 4,
    MarchingRedAnts = 5,
    Shimmer = 6,
    Other = 7,
};
pub const AutomationAnnotation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!AnnotationType {
        const this: *IAutomationAnnotation = @ptrCast(self);
        return try this.getType();
    }
    pub fn putType(self: *@This(), value: AnnotationType) core.HResult!void {
        const this: *IAutomationAnnotation = @ptrCast(self);
        return try this.putType(value);
    }
    pub fn getElement(self: *@This()) core.HResult!*UIElement {
        const this: *IAutomationAnnotation = @ptrCast(self);
        return try this.getElement();
    }
    pub fn putElement(self: *@This(), value: *UIElement) core.HResult!void {
        const this: *IAutomationAnnotation = @ptrCast(self);
        return try this.putElement(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAutomationAnnotation.IID)));
    }
    pub fn CreateInstance(ty: AnnotationType) core.HResult!*AutomationAnnotation {
        const factory = @This().IAutomationAnnotationFactoryCache.get();
        return try factory.CreateInstance(ty);
    }
    pub fn CreateWithElementParameter(ty: AnnotationType, element: *UIElement) core.HResult!*AutomationAnnotation {
        const factory = @This().IAutomationAnnotationFactoryCache.get();
        return try factory.CreateWithElementParameter(ty, element);
    }
    pub fn get_TypeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationAnnotationStaticsCache.get();
        return try factory.getTypeProperty();
    }
    pub fn get_ElementProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationAnnotationStaticsCache.get();
        return try factory.getElementProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.AutomationAnnotation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutomationAnnotation.GUID;
    pub const IID: Guid = IAutomationAnnotation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutomationAnnotation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IAutomationAnnotationFactoryCache: FactoryCache(IAutomationAnnotationFactory, RUNTIME_NAME) = .{};
    var _IAutomationAnnotationStaticsCache: FactoryCache(IAutomationAnnotationStatics, RUNTIME_NAME) = .{};
};
pub const AutomationBulletStyle = enum(i32) {
    None = 0,
    HollowRoundBullet = 1,
    FilledRoundBullet = 2,
    HollowSquareBullet = 3,
    FilledSquareBullet = 4,
    DashBullet = 5,
    Other = 6,
};
pub const AutomationCaretBidiMode = enum(i32) {
    LTR = 0,
    RTL = 1,
};
pub const AutomationCaretPosition = enum(i32) {
    Unknown = 0,
    EndOfLine = 1,
    BeginningOfLine = 2,
};
pub const AutomationElementIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_IsPeripheralProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics5Cache.get();
        return try factory.getIsPeripheralProperty();
    }
    pub fn get_IsDataValidForFormProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics5Cache.get();
        return try factory.getIsDataValidForFormProperty();
    }
    pub fn get_FullDescriptionProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics5Cache.get();
        return try factory.getFullDescriptionProperty();
    }
    pub fn get_DescribedByProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics5Cache.get();
        return try factory.getDescribedByProperty();
    }
    pub fn get_FlowsToProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics5Cache.get();
        return try factory.getFlowsToProperty();
    }
    pub fn get_FlowsFromProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics5Cache.get();
        return try factory.getFlowsFromProperty();
    }
    pub fn get_PositionInSetProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics3Cache.get();
        return try factory.getPositionInSetProperty();
    }
    pub fn get_SizeOfSetProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics3Cache.get();
        return try factory.getSizeOfSetProperty();
    }
    pub fn get_LevelProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics3Cache.get();
        return try factory.getLevelProperty();
    }
    pub fn get_AnnotationsProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics3Cache.get();
        return try factory.getAnnotationsProperty();
    }
    pub fn get_CultureProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics6Cache.get();
        return try factory.getCultureProperty();
    }
    pub fn get_LandmarkTypeProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics4Cache.get();
        return try factory.getLandmarkTypeProperty();
    }
    pub fn get_LocalizedLandmarkTypeProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics4Cache.get();
        return try factory.getLocalizedLandmarkTypeProperty();
    }
    pub fn get_HeadingLevelProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics7Cache.get();
        return try factory.getHeadingLevelProperty();
    }
    pub fn get_IsDialogProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics8Cache.get();
        return try factory.getIsDialogProperty();
    }
    pub fn get_ControlledPeersProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStatics2Cache.get();
        return try factory.getControlledPeersProperty();
    }
    pub fn get_AcceleratorKeyProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getAcceleratorKeyProperty();
    }
    pub fn get_AccessKeyProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getAccessKeyProperty();
    }
    pub fn get_AutomationIdProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getAutomationIdProperty();
    }
    pub fn get_BoundingRectangleProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getBoundingRectangleProperty();
    }
    pub fn get_ClassNameProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getClassNameProperty();
    }
    pub fn get_ClickablePointProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getClickablePointProperty();
    }
    pub fn get_ControlTypeProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getControlTypeProperty();
    }
    pub fn get_HasKeyboardFocusProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getHasKeyboardFocusProperty();
    }
    pub fn get_HelpTextProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getHelpTextProperty();
    }
    pub fn get_IsContentElementProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getIsContentElementProperty();
    }
    pub fn get_IsControlElementProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getIsControlElementProperty();
    }
    pub fn get_IsEnabledProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getIsEnabledProperty();
    }
    pub fn get_IsKeyboardFocusableProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getIsKeyboardFocusableProperty();
    }
    pub fn get_IsOffscreenProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getIsOffscreenProperty();
    }
    pub fn get_IsPasswordProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getIsPasswordProperty();
    }
    pub fn get_IsRequiredForFormProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getIsRequiredForFormProperty();
    }
    pub fn get_ItemStatusProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getItemStatusProperty();
    }
    pub fn get_ItemTypeProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getItemTypeProperty();
    }
    pub fn get_LabeledByProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getLabeledByProperty();
    }
    pub fn get_LocalizedControlTypeProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getLocalizedControlTypeProperty();
    }
    pub fn get_NameProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getNameProperty();
    }
    pub fn get_OrientationProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getOrientationProperty();
    }
    pub fn get_LiveSettingProperty() core.HResult!*AutomationProperty {
        const factory = @This().IAutomationElementIdentifiersStaticsCache.get();
        return try factory.getLiveSettingProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.AutomationElementIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutomationElementIdentifiers.GUID;
    pub const IID: Guid = IAutomationElementIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutomationElementIdentifiers.SIGNATURE);
    var _IAutomationElementIdentifiersStatics5Cache: FactoryCache(IAutomationElementIdentifiersStatics5, RUNTIME_NAME) = .{};
    var _IAutomationElementIdentifiersStatics3Cache: FactoryCache(IAutomationElementIdentifiersStatics3, RUNTIME_NAME) = .{};
    var _IAutomationElementIdentifiersStatics6Cache: FactoryCache(IAutomationElementIdentifiersStatics6, RUNTIME_NAME) = .{};
    var _IAutomationElementIdentifiersStatics4Cache: FactoryCache(IAutomationElementIdentifiersStatics4, RUNTIME_NAME) = .{};
    var _IAutomationElementIdentifiersStatics7Cache: FactoryCache(IAutomationElementIdentifiersStatics7, RUNTIME_NAME) = .{};
    var _IAutomationElementIdentifiersStatics8Cache: FactoryCache(IAutomationElementIdentifiersStatics8, RUNTIME_NAME) = .{};
    var _IAutomationElementIdentifiersStatics2Cache: FactoryCache(IAutomationElementIdentifiersStatics2, RUNTIME_NAME) = .{};
    var _IAutomationElementIdentifiersStaticsCache: FactoryCache(IAutomationElementIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const AutomationFlowDirections = enum(i32) {
    Default = 0,
    RightToLeft = 1,
    BottomToTop = 2,
    Vertical = 3,
};
pub const AutomationOutlineStyles = enum(i32) {
    None = 0,
    Outline = 1,
    Shadow = 2,
    Engraved = 3,
    Embossed = 4,
};
pub const AutomationProperties = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_AutomationControlTypeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics9Cache.get();
        return try factory.getAutomationControlTypeProperty();
    }
    pub fn GetAutomationControlType(element: *UIElement) core.HResult!AutomationControlType {
        const factory = @This().IAutomationPropertiesStatics9Cache.get();
        return try factory.GetAutomationControlType(element);
    }
    pub fn SetAutomationControlType(element: *UIElement, value: AutomationControlType) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics9Cache.get();
        return try factory.SetAutomationControlType(element, value);
    }
    pub fn get_HeadingLevelProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics7Cache.get();
        return try factory.getHeadingLevelProperty();
    }
    pub fn GetHeadingLevel(element: *DependencyObject) core.HResult!AutomationHeadingLevel {
        const factory = @This().IAutomationPropertiesStatics7Cache.get();
        return try factory.GetHeadingLevel(element);
    }
    pub fn SetHeadingLevel(element: *DependencyObject, value: AutomationHeadingLevel) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics7Cache.get();
        return try factory.SetHeadingLevel(element, value);
    }
    pub fn get_CultureProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics6Cache.get();
        return try factory.getCultureProperty();
    }
    pub fn GetCulture(element: *DependencyObject) core.HResult!i32 {
        const factory = @This().IAutomationPropertiesStatics6Cache.get();
        return try factory.GetCulture(element);
    }
    pub fn SetCulture(element: *DependencyObject, value: i32) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics6Cache.get();
        return try factory.SetCulture(element, value);
    }
    pub fn get_LandmarkTypeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics4Cache.get();
        return try factory.getLandmarkTypeProperty();
    }
    pub fn GetLandmarkType(element: *DependencyObject) core.HResult!AutomationLandmarkType {
        const factory = @This().IAutomationPropertiesStatics4Cache.get();
        return try factory.GetLandmarkType(element);
    }
    pub fn SetLandmarkType(element: *DependencyObject, value: AutomationLandmarkType) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics4Cache.get();
        return try factory.SetLandmarkType(element, value);
    }
    pub fn get_LocalizedLandmarkTypeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics4Cache.get();
        return try factory.getLocalizedLandmarkTypeProperty();
    }
    pub fn GetLocalizedLandmarkType(element: *DependencyObject) core.HResult!HSTRING {
        const factory = @This().IAutomationPropertiesStatics4Cache.get();
        return try factory.GetLocalizedLandmarkType(element);
    }
    pub fn SetLocalizedLandmarkType(element: *DependencyObject, value: HSTRING) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics4Cache.get();
        return try factory.SetLocalizedLandmarkType(element, value);
    }
    pub fn get_AcceleratorKeyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.getAcceleratorKeyProperty();
    }
    pub fn GetAcceleratorKey(element: *DependencyObject) core.HResult!HSTRING {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.GetAcceleratorKey(element);
    }
    pub fn SetAcceleratorKey(element: *DependencyObject, value: HSTRING) core.HResult!void {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.SetAcceleratorKey(element, value);
    }
    pub fn get_AccessKeyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.getAccessKeyProperty();
    }
    pub fn GetAccessKey(element: *DependencyObject) core.HResult!HSTRING {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.GetAccessKey(element);
    }
    pub fn SetAccessKey(element: *DependencyObject, value: HSTRING) core.HResult!void {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.SetAccessKey(element, value);
    }
    pub fn get_AutomationIdProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.getAutomationIdProperty();
    }
    pub fn GetAutomationId(element: *DependencyObject) core.HResult!HSTRING {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.GetAutomationId(element);
    }
    pub fn SetAutomationId(element: *DependencyObject, value: HSTRING) core.HResult!void {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.SetAutomationId(element, value);
    }
    pub fn get_HelpTextProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.getHelpTextProperty();
    }
    pub fn GetHelpText(element: *DependencyObject) core.HResult!HSTRING {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.GetHelpText(element);
    }
    pub fn SetHelpText(element: *DependencyObject, value: HSTRING) core.HResult!void {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.SetHelpText(element, value);
    }
    pub fn get_IsRequiredForFormProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.getIsRequiredForFormProperty();
    }
    pub fn GetIsRequiredForForm(element: *DependencyObject) core.HResult!bool {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.GetIsRequiredForForm(element);
    }
    pub fn SetIsRequiredForForm(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.SetIsRequiredForForm(element, value);
    }
    pub fn get_ItemStatusProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.getItemStatusProperty();
    }
    pub fn GetItemStatus(element: *DependencyObject) core.HResult!HSTRING {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.GetItemStatus(element);
    }
    pub fn SetItemStatus(element: *DependencyObject, value: HSTRING) core.HResult!void {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.SetItemStatus(element, value);
    }
    pub fn get_ItemTypeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.getItemTypeProperty();
    }
    pub fn GetItemType(element: *DependencyObject) core.HResult!HSTRING {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.GetItemType(element);
    }
    pub fn SetItemType(element: *DependencyObject, value: HSTRING) core.HResult!void {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.SetItemType(element, value);
    }
    pub fn get_LabeledByProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.getLabeledByProperty();
    }
    pub fn GetLabeledBy(element: *DependencyObject) core.HResult!*UIElement {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.GetLabeledBy(element);
    }
    pub fn SetLabeledBy(element: *DependencyObject, value: *UIElement) core.HResult!void {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.SetLabeledBy(element, value);
    }
    pub fn get_NameProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.getNameProperty();
    }
    pub fn GetName(element: *DependencyObject) core.HResult!HSTRING {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.GetName(element);
    }
    pub fn SetName(element: *DependencyObject, value: HSTRING) core.HResult!void {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.SetName(element, value);
    }
    pub fn get_LiveSettingProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.getLiveSettingProperty();
    }
    pub fn GetLiveSetting(element: *DependencyObject) core.HResult!AutomationLiveSetting {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.GetLiveSetting(element);
    }
    pub fn SetLiveSetting(element: *DependencyObject, value: AutomationLiveSetting) core.HResult!void {
        const factory = @This().IAutomationPropertiesStaticsCache.get();
        return try factory.SetLiveSetting(element, value);
    }
    pub fn get_IsPeripheralProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.getIsPeripheralProperty();
    }
    pub fn GetIsPeripheral(element: *DependencyObject) core.HResult!bool {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.GetIsPeripheral(element);
    }
    pub fn SetIsPeripheral(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.SetIsPeripheral(element, value);
    }
    pub fn get_IsDataValidForFormProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.getIsDataValidForFormProperty();
    }
    pub fn GetIsDataValidForForm(element: *DependencyObject) core.HResult!bool {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.GetIsDataValidForForm(element);
    }
    pub fn SetIsDataValidForForm(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.SetIsDataValidForForm(element, value);
    }
    pub fn get_FullDescriptionProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.getFullDescriptionProperty();
    }
    pub fn GetFullDescription(element: *DependencyObject) core.HResult!HSTRING {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.GetFullDescription(element);
    }
    pub fn SetFullDescription(element: *DependencyObject, value: HSTRING) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.SetFullDescription(element, value);
    }
    pub fn get_LocalizedControlTypeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.getLocalizedControlTypeProperty();
    }
    pub fn GetLocalizedControlType(element: *DependencyObject) core.HResult!HSTRING {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.GetLocalizedControlType(element);
    }
    pub fn SetLocalizedControlType(element: *DependencyObject, value: HSTRING) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.SetLocalizedControlType(element, value);
    }
    pub fn get_DescribedByProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.getDescribedByProperty();
    }
    pub fn GetDescribedBy(element: *DependencyObject) core.HResult!*IVector(DependencyObject) {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.GetDescribedBy(element);
    }
    pub fn get_FlowsToProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.getFlowsToProperty();
    }
    pub fn GetFlowsTo(element: *DependencyObject) core.HResult!*IVector(DependencyObject) {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.GetFlowsTo(element);
    }
    pub fn get_FlowsFromProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.getFlowsFromProperty();
    }
    pub fn GetFlowsFrom(element: *DependencyObject) core.HResult!*IVector(DependencyObject) {
        const factory = @This().IAutomationPropertiesStatics5Cache.get();
        return try factory.GetFlowsFrom(element);
    }
    pub fn get_AccessibilityViewProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics2Cache.get();
        return try factory.getAccessibilityViewProperty();
    }
    pub fn GetAccessibilityView(element: *DependencyObject) core.HResult!AccessibilityView {
        const factory = @This().IAutomationPropertiesStatics2Cache.get();
        return try factory.GetAccessibilityView(element);
    }
    pub fn SetAccessibilityView(element: *DependencyObject, value: AccessibilityView) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics2Cache.get();
        return try factory.SetAccessibilityView(element, value);
    }
    pub fn get_ControlledPeersProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics2Cache.get();
        return try factory.getControlledPeersProperty();
    }
    pub fn GetControlledPeers(element: *DependencyObject) core.HResult!*IVector(UIElement) {
        const factory = @This().IAutomationPropertiesStatics2Cache.get();
        return try factory.GetControlledPeers(element);
    }
    pub fn get_IsDialogProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics8Cache.get();
        return try factory.getIsDialogProperty();
    }
    pub fn GetIsDialog(element: *DependencyObject) core.HResult!bool {
        const factory = @This().IAutomationPropertiesStatics8Cache.get();
        return try factory.GetIsDialog(element);
    }
    pub fn SetIsDialog(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics8Cache.get();
        return try factory.SetIsDialog(element, value);
    }
    pub fn get_PositionInSetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics3Cache.get();
        return try factory.getPositionInSetProperty();
    }
    pub fn GetPositionInSet(element: *DependencyObject) core.HResult!i32 {
        const factory = @This().IAutomationPropertiesStatics3Cache.get();
        return try factory.GetPositionInSet(element);
    }
    pub fn SetPositionInSet(element: *DependencyObject, value: i32) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics3Cache.get();
        return try factory.SetPositionInSet(element, value);
    }
    pub fn get_SizeOfSetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics3Cache.get();
        return try factory.getSizeOfSetProperty();
    }
    pub fn GetSizeOfSet(element: *DependencyObject) core.HResult!i32 {
        const factory = @This().IAutomationPropertiesStatics3Cache.get();
        return try factory.GetSizeOfSet(element);
    }
    pub fn SetSizeOfSet(element: *DependencyObject, value: i32) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics3Cache.get();
        return try factory.SetSizeOfSet(element, value);
    }
    pub fn get_LevelProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics3Cache.get();
        return try factory.getLevelProperty();
    }
    pub fn GetLevel(element: *DependencyObject) core.HResult!i32 {
        const factory = @This().IAutomationPropertiesStatics3Cache.get();
        return try factory.GetLevel(element);
    }
    pub fn SetLevel(element: *DependencyObject, value: i32) core.HResult!void {
        const factory = @This().IAutomationPropertiesStatics3Cache.get();
        return try factory.SetLevel(element, value);
    }
    pub fn get_AnnotationsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPropertiesStatics3Cache.get();
        return try factory.getAnnotationsProperty();
    }
    pub fn GetAnnotations(element: *DependencyObject) core.HResult!*IVector(AutomationAnnotation) {
        const factory = @This().IAutomationPropertiesStatics3Cache.get();
        return try factory.GetAnnotations(element);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.AutomationProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutomationProperties.GUID;
    pub const IID: Guid = IAutomationProperties.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutomationProperties.SIGNATURE);
    var _IAutomationPropertiesStatics9Cache: FactoryCache(IAutomationPropertiesStatics9, RUNTIME_NAME) = .{};
    var _IAutomationPropertiesStatics7Cache: FactoryCache(IAutomationPropertiesStatics7, RUNTIME_NAME) = .{};
    var _IAutomationPropertiesStatics6Cache: FactoryCache(IAutomationPropertiesStatics6, RUNTIME_NAME) = .{};
    var _IAutomationPropertiesStatics4Cache: FactoryCache(IAutomationPropertiesStatics4, RUNTIME_NAME) = .{};
    var _IAutomationPropertiesStaticsCache: FactoryCache(IAutomationPropertiesStatics, RUNTIME_NAME) = .{};
    var _IAutomationPropertiesStatics5Cache: FactoryCache(IAutomationPropertiesStatics5, RUNTIME_NAME) = .{};
    var _IAutomationPropertiesStatics2Cache: FactoryCache(IAutomationPropertiesStatics2, RUNTIME_NAME) = .{};
    var _IAutomationPropertiesStatics8Cache: FactoryCache(IAutomationPropertiesStatics8, RUNTIME_NAME) = .{};
    var _IAutomationPropertiesStatics3Cache: FactoryCache(IAutomationPropertiesStatics3, RUNTIME_NAME) = .{};
};
pub const AutomationProperty = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.AutomationProperty";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutomationProperty.GUID;
    pub const IID: Guid = IAutomationProperty.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutomationProperty.SIGNATURE);
};
pub const AutomationStyleId = enum(i32) {
    Heading1 = 70001,
    Heading2 = 70002,
    Heading3 = 70003,
    Heading4 = 70004,
    Heading5 = 70005,
    Heading6 = 70006,
    Heading7 = 70007,
    Heading8 = 70008,
    Heading9 = 70009,
    Title = 70010,
    Subtitle = 70011,
    Normal = 70012,
    Emphasis = 70013,
    Quote = 70014,
    BulletedList = 70015,
};
pub const AutomationTextDecorationLineStyle = enum(i32) {
    None = 0,
    Single = 1,
    WordsOnly = 2,
    Double = 3,
    Dot = 4,
    Dash = 5,
    DashDot = 6,
    DashDotDot = 7,
    Wavy = 8,
    ThickSingle = 9,
    DoubleWavy = 10,
    ThickWavy = 11,
    LongDash = 12,
    ThickDash = 13,
    ThickDashDot = 14,
    ThickDashDotDot = 15,
    ThickDot = 16,
    ThickLongDash = 17,
    Other = 18,
};
pub const AutomationTextEditChangeType = enum(i32) {
    None = 0,
    AutoCorrect = 1,
    Composition = 2,
    CompositionFinalized = 3,
};
pub const DockPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_DockPositionProperty() core.HResult!*AutomationProperty {
        const factory = @This().IDockPatternIdentifiersStaticsCache.get();
        return try factory.getDockPositionProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.DockPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDockPatternIdentifiers.GUID;
    pub const IID: Guid = IDockPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDockPatternIdentifiers.SIGNATURE);
    var _IDockPatternIdentifiersStaticsCache: FactoryCache(IDockPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const DockPosition = enum(i32) {
    Top = 0,
    Left = 1,
    Bottom = 2,
    Right = 3,
    Fill = 4,
    None = 5,
};
pub const DragPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_DropEffectProperty() core.HResult!*AutomationProperty {
        const factory = @This().IDragPatternIdentifiersStaticsCache.get();
        return try factory.getDropEffectProperty();
    }
    pub fn get_DropEffectsProperty() core.HResult!*AutomationProperty {
        const factory = @This().IDragPatternIdentifiersStaticsCache.get();
        return try factory.getDropEffectsProperty();
    }
    pub fn get_GrabbedItemsProperty() core.HResult!*AutomationProperty {
        const factory = @This().IDragPatternIdentifiersStaticsCache.get();
        return try factory.getGrabbedItemsProperty();
    }
    pub fn get_IsGrabbedProperty() core.HResult!*AutomationProperty {
        const factory = @This().IDragPatternIdentifiersStaticsCache.get();
        return try factory.getIsGrabbedProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.DragPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDragPatternIdentifiers.GUID;
    pub const IID: Guid = IDragPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDragPatternIdentifiers.SIGNATURE);
    var _IDragPatternIdentifiersStaticsCache: FactoryCache(IDragPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const DropTargetPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_DropTargetEffectProperty() core.HResult!*AutomationProperty {
        const factory = @This().IDropTargetPatternIdentifiersStaticsCache.get();
        return try factory.getDropTargetEffectProperty();
    }
    pub fn get_DropTargetEffectsProperty() core.HResult!*AutomationProperty {
        const factory = @This().IDropTargetPatternIdentifiersStaticsCache.get();
        return try factory.getDropTargetEffectsProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.DropTargetPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDropTargetPatternIdentifiers.GUID;
    pub const IID: Guid = IDropTargetPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDropTargetPatternIdentifiers.SIGNATURE);
    var _IDropTargetPatternIdentifiersStaticsCache: FactoryCache(IDropTargetPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const ExpandCollapsePatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ExpandCollapseStateProperty() core.HResult!*AutomationProperty {
        const factory = @This().IExpandCollapsePatternIdentifiersStaticsCache.get();
        return try factory.getExpandCollapseStateProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ExpandCollapsePatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IExpandCollapsePatternIdentifiers.GUID;
    pub const IID: Guid = IExpandCollapsePatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IExpandCollapsePatternIdentifiers.SIGNATURE);
    var _IExpandCollapsePatternIdentifiersStaticsCache: FactoryCache(IExpandCollapsePatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const ExpandCollapseState = enum(i32) {
    Collapsed = 0,
    Expanded = 1,
    PartiallyExpanded = 2,
    LeafNode = 3,
};
pub const GridItemPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ColumnProperty() core.HResult!*AutomationProperty {
        const factory = @This().IGridItemPatternIdentifiersStaticsCache.get();
        return try factory.getColumnProperty();
    }
    pub fn get_ColumnSpanProperty() core.HResult!*AutomationProperty {
        const factory = @This().IGridItemPatternIdentifiersStaticsCache.get();
        return try factory.getColumnSpanProperty();
    }
    pub fn get_ContainingGridProperty() core.HResult!*AutomationProperty {
        const factory = @This().IGridItemPatternIdentifiersStaticsCache.get();
        return try factory.getContainingGridProperty();
    }
    pub fn get_RowProperty() core.HResult!*AutomationProperty {
        const factory = @This().IGridItemPatternIdentifiersStaticsCache.get();
        return try factory.getRowProperty();
    }
    pub fn get_RowSpanProperty() core.HResult!*AutomationProperty {
        const factory = @This().IGridItemPatternIdentifiersStaticsCache.get();
        return try factory.getRowSpanProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.GridItemPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGridItemPatternIdentifiers.GUID;
    pub const IID: Guid = IGridItemPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGridItemPatternIdentifiers.SIGNATURE);
    var _IGridItemPatternIdentifiersStaticsCache: FactoryCache(IGridItemPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const GridPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ColumnCountProperty() core.HResult!*AutomationProperty {
        const factory = @This().IGridPatternIdentifiersStaticsCache.get();
        return try factory.getColumnCountProperty();
    }
    pub fn get_RowCountProperty() core.HResult!*AutomationProperty {
        const factory = @This().IGridPatternIdentifiersStaticsCache.get();
        return try factory.getRowCountProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.GridPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGridPatternIdentifiers.GUID;
    pub const IID: Guid = IGridPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGridPatternIdentifiers.SIGNATURE);
    var _IGridPatternIdentifiersStaticsCache: FactoryCache(IGridPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const IAnnotationPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAnnotationPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d475a0c1-48b2-4e40-a6cf-3dc4b638c0de";
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
pub const IAnnotationPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getAnnotationTypeIdProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_AnnotationTypeIdProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAnnotationTypeNameProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_AnnotationTypeNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAuthorProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_AuthorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDateTimeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_DateTimeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTargetProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_TargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAnnotationPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0e3a35d-d167-46dc-95ab-330af61aebb5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AnnotationTypeIdProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_AnnotationTypeNameProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_AuthorProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_DateTimeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_TargetProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationAnnotation = extern struct {
    vtable: *const VTable,
    pub fn getType(self: *@This()) core.HResult!AnnotationType {
        var _r: AnnotationType = undefined;
        const _c = self.vtable.get_Type(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putType(self: *@This(), value: AnnotationType) core.HResult!void {
        const _c = self.vtable.put_Type(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getElement(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Element(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putElement(self: *@This(), value: *UIElement) core.HResult!void {
        const _c = self.vtable.put_Element(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationAnnotation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb3c30ca-03d8-4618-91bf-e4d84f4af318";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Type: *const fn(self: *anyopaque, _r: *AnnotationType) callconv(.winapi) HRESULT,
        put_Type: *const fn(self: *anyopaque, value: AnnotationType) callconv(.winapi) HRESULT,
        get_Element: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        put_Element: *const fn(self: *anyopaque, value: *UIElement) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationAnnotationFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), ty: AnnotationType) core.HResult!*AutomationAnnotation {
        var _r: *AutomationAnnotation = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithElementParameter(self: *@This(), ty: AnnotationType, element: *UIElement) core.HResult!*AutomationAnnotation {
        var _r: *AutomationAnnotation = undefined;
        const _c = self.vtable.CreateWithElementParameter(@ptrCast(self), ty, element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationAnnotationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4906fa52-ddc0-4e69-b76b-019d928d822f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, ty: AnnotationType, _r: **AutomationAnnotation) callconv(.winapi) HRESULT,
        CreateWithElementParameter: *const fn(self: *anyopaque, ty: AnnotationType, element: *UIElement, _r: **AutomationAnnotation) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationAnnotationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTypeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getElementProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ElementProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationAnnotationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e503eab7-4ee5-48cb-b5b8-bbcd46c9d1da";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TypeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ElementProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationElementIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationElementIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e68a63cf-4345-4e2d-8a6a-49cce1fa2dcc";
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
pub const IAutomationElementIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getAcceleratorKeyProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_AcceleratorKeyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccessKeyProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_AccessKeyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAutomationIdProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_AutomationIdProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBoundingRectangleProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_BoundingRectangleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClassNameProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ClassNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClickablePointProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ClickablePointProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getControlTypeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ControlTypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasKeyboardFocusProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_HasKeyboardFocusProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHelpTextProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_HelpTextProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsContentElementProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsContentElementProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsControlElementProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsControlElementProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnabledProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsKeyboardFocusableProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsKeyboardFocusableProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOffscreenProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsOffscreenProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPasswordProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsPasswordProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsRequiredForFormProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsRequiredForFormProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemStatusProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ItemStatusProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemTypeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ItemTypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLabeledByProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_LabeledByProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalizedControlTypeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_LocalizedControlTypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNameProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_NameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOrientationProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_OrientationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLiveSettingProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_LiveSettingProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationElementIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4549399f-8340-4d67-b9bf-8c2ac6a0773a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AcceleratorKeyProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_AccessKeyProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_AutomationIdProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_BoundingRectangleProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_ClassNameProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_ClickablePointProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_ControlTypeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_HasKeyboardFocusProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_HelpTextProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_IsContentElementProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_IsControlElementProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_IsEnabledProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_IsKeyboardFocusableProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_IsOffscreenProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_IsPasswordProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_IsRequiredForFormProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_ItemStatusProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_ItemTypeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_LabeledByProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_LocalizedControlTypeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_NameProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_OrientationProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_LiveSettingProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationElementIdentifiersStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getControlledPeersProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ControlledPeersProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationElementIdentifiersStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5cbb1e2-d55f-46a9-9eda-1a4742515dc3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ControlledPeersProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationElementIdentifiersStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getPositionInSetProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_PositionInSetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSizeOfSetProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_SizeOfSetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLevelProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_LevelProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAnnotationsProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_AnnotationsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationElementIdentifiersStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0f5cbebd-b3eb-4083-adc7-0c2f39bb3543";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PositionInSetProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_SizeOfSetProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_LevelProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_AnnotationsProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationElementIdentifiersStatics4 = extern struct {
    vtable: *const VTable,
    pub fn getLandmarkTypeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_LandmarkTypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLocalizedLandmarkTypeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_LocalizedLandmarkTypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationElementIdentifiersStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5af51f75-5913-4d78-b330-a6f50b73ed9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LandmarkTypeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_LocalizedLandmarkTypeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationElementIdentifiersStatics5 = extern struct {
    vtable: *const VTable,
    pub fn getIsPeripheralProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsPeripheralProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsDataValidForFormProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsDataValidForFormProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFullDescriptionProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_FullDescriptionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescribedByProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_DescribedByProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFlowsToProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_FlowsToProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFlowsFromProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_FlowsFromProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationElementIdentifiersStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "986a8206-de59-42f9-a1e7-62b8af9e756d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPeripheralProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_IsDataValidForFormProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_FullDescriptionProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_DescribedByProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_FlowsToProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_FlowsFromProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationElementIdentifiersStatics6 = extern struct {
    vtable: *const VTable,
    pub fn getCultureProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_CultureProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationElementIdentifiersStatics6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "de52b00d-8328-4eae-8035-f8db99c8bac4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CultureProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationElementIdentifiersStatics7 = extern struct {
    vtable: *const VTable,
    pub fn getHeadingLevelProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_HeadingLevelProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationElementIdentifiersStatics7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00f1abb2-742c-446a-a8f6-1672b10d2874";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HeadingLevelProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationElementIdentifiersStatics8 = extern struct {
    vtable: *const VTable,
    pub fn getIsDialogProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsDialogProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationElementIdentifiersStatics8";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8517b060-806c-5dc5-bc41-891bb5a47adf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsDialogProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationProperties = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationProperties";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68d7232c-e622-48e9-af0b-1ffa33cc5cba";
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
pub const IAutomationPropertiesStatics = extern struct {
    vtable: *const VTable,
    pub fn getAcceleratorKeyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AcceleratorKeyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAcceleratorKey(self: *@This(), element: *DependencyObject) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAcceleratorKey(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAcceleratorKey(self: *@This(), element: *DependencyObject, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetAcceleratorKey(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAccessKeyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AccessKeyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAccessKey(self: *@This(), element: *DependencyObject) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAccessKey(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAccessKey(self: *@This(), element: *DependencyObject, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetAccessKey(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAutomationIdProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AutomationIdProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAutomationId(self: *@This(), element: *DependencyObject) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAutomationId(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAutomationId(self: *@This(), element: *DependencyObject, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetAutomationId(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHelpTextProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_HelpTextProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHelpText(self: *@This(), element: *DependencyObject) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetHelpText(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetHelpText(self: *@This(), element: *DependencyObject, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetHelpText(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsRequiredForFormProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsRequiredForFormProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsRequiredForForm(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsRequiredForForm(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetIsRequiredForForm(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetIsRequiredForForm(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getItemStatusProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ItemStatusProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemStatus(self: *@This(), element: *DependencyObject) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetItemStatus(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetItemStatus(self: *@This(), element: *DependencyObject, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetItemStatus(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getItemTypeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ItemTypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemType(self: *@This(), element: *DependencyObject) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetItemType(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetItemType(self: *@This(), element: *DependencyObject, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetItemType(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLabeledByProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LabeledByProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLabeledBy(self: *@This(), element: *DependencyObject) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.GetLabeledBy(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetLabeledBy(self: *@This(), element: *DependencyObject, value: *UIElement) core.HResult!void {
        const _c = self.vtable.SetLabeledBy(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNameProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_NameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetName(self: *@This(), element: *DependencyObject) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetName(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetName(self: *@This(), element: *DependencyObject, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetName(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLiveSettingProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LiveSettingProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLiveSetting(self: *@This(), element: *DependencyObject) core.HResult!AutomationLiveSetting {
        var _r: AutomationLiveSetting = undefined;
        const _c = self.vtable.GetLiveSetting(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetLiveSetting(self: *@This(), element: *DependencyObject, value: AutomationLiveSetting) core.HResult!void {
        const _c = self.vtable.SetLiveSetting(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationPropertiesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b618fd7b-32d0-4970-9c42-7c039ac7be78";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AcceleratorKeyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetAcceleratorKey: *const fn(self: *anyopaque, element: *DependencyObject, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetAcceleratorKey: *const fn(self: *anyopaque, element: *DependencyObject, value: HSTRING) callconv(.winapi) HRESULT,
        get_AccessKeyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetAccessKey: *const fn(self: *anyopaque, element: *DependencyObject, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetAccessKey: *const fn(self: *anyopaque, element: *DependencyObject, value: HSTRING) callconv(.winapi) HRESULT,
        get_AutomationIdProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetAutomationId: *const fn(self: *anyopaque, element: *DependencyObject, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetAutomationId: *const fn(self: *anyopaque, element: *DependencyObject, value: HSTRING) callconv(.winapi) HRESULT,
        get_HelpTextProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetHelpText: *const fn(self: *anyopaque, element: *DependencyObject, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetHelpText: *const fn(self: *anyopaque, element: *DependencyObject, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsRequiredForFormProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetIsRequiredForForm: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetIsRequiredForForm: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_ItemStatusProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetItemStatus: *const fn(self: *anyopaque, element: *DependencyObject, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetItemStatus: *const fn(self: *anyopaque, element: *DependencyObject, value: HSTRING) callconv(.winapi) HRESULT,
        get_ItemTypeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetItemType: *const fn(self: *anyopaque, element: *DependencyObject, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetItemType: *const fn(self: *anyopaque, element: *DependencyObject, value: HSTRING) callconv(.winapi) HRESULT,
        get_LabeledByProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetLabeledBy: *const fn(self: *anyopaque, element: *DependencyObject, _r: **UIElement) callconv(.winapi) HRESULT,
        SetLabeledBy: *const fn(self: *anyopaque, element: *DependencyObject, value: *UIElement) callconv(.winapi) HRESULT,
        get_NameProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetName: *const fn(self: *anyopaque, element: *DependencyObject, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetName: *const fn(self: *anyopaque, element: *DependencyObject, value: HSTRING) callconv(.winapi) HRESULT,
        get_LiveSettingProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetLiveSetting: *const fn(self: *anyopaque, element: *DependencyObject, _r: *AutomationLiveSetting) callconv(.winapi) HRESULT,
        SetLiveSetting: *const fn(self: *anyopaque, element: *DependencyObject, value: AutomationLiveSetting) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPropertiesStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getAccessibilityViewProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AccessibilityViewProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAccessibilityView(self: *@This(), element: *DependencyObject) core.HResult!AccessibilityView {
        var _r: AccessibilityView = undefined;
        const _c = self.vtable.GetAccessibilityView(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAccessibilityView(self: *@This(), element: *DependencyObject, value: AccessibilityView) core.HResult!void {
        const _c = self.vtable.SetAccessibilityView(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getControlledPeersProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ControlledPeersProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetControlledPeers(self: *@This(), element: *DependencyObject) core.HResult!*IVector(UIElement) {
        var _r: *IVector(UIElement) = undefined;
        const _c = self.vtable.GetControlledPeers(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationPropertiesStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3976547f-7089-4801-8f1d-aab78090d1a0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AccessibilityViewProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetAccessibilityView: *const fn(self: *anyopaque, element: *DependencyObject, _r: *AccessibilityView) callconv(.winapi) HRESULT,
        SetAccessibilityView: *const fn(self: *anyopaque, element: *DependencyObject, value: AccessibilityView) callconv(.winapi) HRESULT,
        get_ControlledPeersProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetControlledPeers: *const fn(self: *anyopaque, element: *DependencyObject, _r: **IVector(UIElement)) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPropertiesStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getPositionInSetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PositionInSetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPositionInSet(self: *@This(), element: *DependencyObject) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetPositionInSet(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPositionInSet(self: *@This(), element: *DependencyObject, value: i32) core.HResult!void {
        const _c = self.vtable.SetPositionInSet(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSizeOfSetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SizeOfSetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSizeOfSet(self: *@This(), element: *DependencyObject) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetSizeOfSet(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSizeOfSet(self: *@This(), element: *DependencyObject, value: i32) core.HResult!void {
        const _c = self.vtable.SetSizeOfSet(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLevelProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LevelProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLevel(self: *@This(), element: *DependencyObject) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetLevel(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetLevel(self: *@This(), element: *DependencyObject, value: i32) core.HResult!void {
        const _c = self.vtable.SetLevel(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAnnotationsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AnnotationsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAnnotations(self: *@This(), element: *DependencyObject) core.HResult!*IVector(AutomationAnnotation) {
        var _r: *IVector(AutomationAnnotation) = undefined;
        const _c = self.vtable.GetAnnotations(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationPropertiesStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b75d735-5cb1-42ad-9b57-5faba8c1867f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PositionInSetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetPositionInSet: *const fn(self: *anyopaque, element: *DependencyObject, _r: *i32) callconv(.winapi) HRESULT,
        SetPositionInSet: *const fn(self: *anyopaque, element: *DependencyObject, value: i32) callconv(.winapi) HRESULT,
        get_SizeOfSetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetSizeOfSet: *const fn(self: *anyopaque, element: *DependencyObject, _r: *i32) callconv(.winapi) HRESULT,
        SetSizeOfSet: *const fn(self: *anyopaque, element: *DependencyObject, value: i32) callconv(.winapi) HRESULT,
        get_LevelProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetLevel: *const fn(self: *anyopaque, element: *DependencyObject, _r: *i32) callconv(.winapi) HRESULT,
        SetLevel: *const fn(self: *anyopaque, element: *DependencyObject, value: i32) callconv(.winapi) HRESULT,
        get_AnnotationsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetAnnotations: *const fn(self: *anyopaque, element: *DependencyObject, _r: **IVector(AutomationAnnotation)) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPropertiesStatics4 = extern struct {
    vtable: *const VTable,
    pub fn getLandmarkTypeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LandmarkTypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLandmarkType(self: *@This(), element: *DependencyObject) core.HResult!AutomationLandmarkType {
        var _r: AutomationLandmarkType = undefined;
        const _c = self.vtable.GetLandmarkType(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetLandmarkType(self: *@This(), element: *DependencyObject, value: AutomationLandmarkType) core.HResult!void {
        const _c = self.vtable.SetLandmarkType(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocalizedLandmarkTypeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LocalizedLandmarkTypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLocalizedLandmarkType(self: *@This(), element: *DependencyObject) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetLocalizedLandmarkType(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetLocalizedLandmarkType(self: *@This(), element: *DependencyObject, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetLocalizedLandmarkType(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationPropertiesStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7d62655-311a-4b7c-a131-524e89cd3cf9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LandmarkTypeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetLandmarkType: *const fn(self: *anyopaque, element: *DependencyObject, _r: *AutomationLandmarkType) callconv(.winapi) HRESULT,
        SetLandmarkType: *const fn(self: *anyopaque, element: *DependencyObject, value: AutomationLandmarkType) callconv(.winapi) HRESULT,
        get_LocalizedLandmarkTypeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetLocalizedLandmarkType: *const fn(self: *anyopaque, element: *DependencyObject, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetLocalizedLandmarkType: *const fn(self: *anyopaque, element: *DependencyObject, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPropertiesStatics5 = extern struct {
    vtable: *const VTable,
    pub fn getIsPeripheralProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsPeripheralProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsPeripheral(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsPeripheral(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetIsPeripheral(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetIsPeripheral(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsDataValidForFormProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsDataValidForFormProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsDataValidForForm(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsDataValidForForm(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetIsDataValidForForm(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetIsDataValidForForm(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFullDescriptionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FullDescriptionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFullDescription(self: *@This(), element: *DependencyObject) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetFullDescription(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetFullDescription(self: *@This(), element: *DependencyObject, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetFullDescription(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLocalizedControlTypeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LocalizedControlTypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLocalizedControlType(self: *@This(), element: *DependencyObject) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetLocalizedControlType(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetLocalizedControlType(self: *@This(), element: *DependencyObject, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetLocalizedControlType(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDescribedByProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DescribedByProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDescribedBy(self: *@This(), element: *DependencyObject) core.HResult!*IVector(DependencyObject) {
        var _r: *IVector(DependencyObject) = undefined;
        const _c = self.vtable.GetDescribedBy(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFlowsToProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FlowsToProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFlowsTo(self: *@This(), element: *DependencyObject) core.HResult!*IVector(DependencyObject) {
        var _r: *IVector(DependencyObject) = undefined;
        const _c = self.vtable.GetFlowsTo(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFlowsFromProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FlowsFromProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFlowsFrom(self: *@This(), element: *DependencyObject) core.HResult!*IVector(DependencyObject) {
        var _r: *IVector(DependencyObject) = undefined;
        const _c = self.vtable.GetFlowsFrom(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationPropertiesStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0be35b26-c8f9-41a2-b4db-e6a7a32b0c34";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsPeripheralProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetIsPeripheral: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetIsPeripheral: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_IsDataValidForFormProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetIsDataValidForForm: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetIsDataValidForForm: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_FullDescriptionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetFullDescription: *const fn(self: *anyopaque, element: *DependencyObject, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetFullDescription: *const fn(self: *anyopaque, element: *DependencyObject, value: HSTRING) callconv(.winapi) HRESULT,
        get_LocalizedControlTypeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetLocalizedControlType: *const fn(self: *anyopaque, element: *DependencyObject, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetLocalizedControlType: *const fn(self: *anyopaque, element: *DependencyObject, value: HSTRING) callconv(.winapi) HRESULT,
        get_DescribedByProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetDescribedBy: *const fn(self: *anyopaque, element: *DependencyObject, _r: **IVector(DependencyObject)) callconv(.winapi) HRESULT,
        get_FlowsToProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetFlowsTo: *const fn(self: *anyopaque, element: *DependencyObject, _r: **IVector(DependencyObject)) callconv(.winapi) HRESULT,
        get_FlowsFromProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetFlowsFrom: *const fn(self: *anyopaque, element: *DependencyObject, _r: **IVector(DependencyObject)) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPropertiesStatics6 = extern struct {
    vtable: *const VTable,
    pub fn getCultureProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CultureProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCulture(self: *@This(), element: *DependencyObject) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetCulture(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetCulture(self: *@This(), element: *DependencyObject, value: i32) core.HResult!void {
        const _c = self.vtable.SetCulture(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationPropertiesStatics6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c61e030f-eb49-4e5d-b012-4c1c96c3901b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CultureProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetCulture: *const fn(self: *anyopaque, element: *DependencyObject, _r: *i32) callconv(.winapi) HRESULT,
        SetCulture: *const fn(self: *anyopaque, element: *DependencyObject, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPropertiesStatics7 = extern struct {
    vtable: *const VTable,
    pub fn getHeadingLevelProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_HeadingLevelProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHeadingLevel(self: *@This(), element: *DependencyObject) core.HResult!AutomationHeadingLevel {
        var _r: AutomationHeadingLevel = undefined;
        const _c = self.vtable.GetHeadingLevel(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetHeadingLevel(self: *@This(), element: *DependencyObject, value: AutomationHeadingLevel) core.HResult!void {
        const _c = self.vtable.SetHeadingLevel(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationPropertiesStatics7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7e98bf3-8f91-4068-a4ad-b7b402d10a2c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HeadingLevelProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetHeadingLevel: *const fn(self: *anyopaque, element: *DependencyObject, _r: *AutomationHeadingLevel) callconv(.winapi) HRESULT,
        SetHeadingLevel: *const fn(self: *anyopaque, element: *DependencyObject, value: AutomationHeadingLevel) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPropertiesStatics8 = extern struct {
    vtable: *const VTable,
    pub fn getIsDialogProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsDialogProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsDialog(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsDialog(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetIsDialog(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetIsDialog(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationPropertiesStatics8";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "432eca20-171a-560d-8524-3e651d3ad6ca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsDialogProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetIsDialog: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetIsDialog: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPropertiesStatics9 = extern struct {
    vtable: *const VTable,
    pub fn getAutomationControlTypeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AutomationControlTypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAutomationControlType(self: *@This(), element: *UIElement) core.HResult!AutomationControlType {
        var _r: AutomationControlType = undefined;
        const _c = self.vtable.GetAutomationControlType(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAutomationControlType(self: *@This(), element: *UIElement, value: AutomationControlType) core.HResult!void {
        const _c = self.vtable.SetAutomationControlType(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationPropertiesStatics9";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f20b1d1-87b2-5562-8077-da593edafd2d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AutomationControlTypeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetAutomationControlType: *const fn(self: *anyopaque, element: *UIElement, _r: *AutomationControlType) callconv(.winapi) HRESULT,
        SetAutomationControlType: *const fn(self: *anyopaque, element: *UIElement, value: AutomationControlType) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationProperty = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IAutomationProperty";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b627195b-3227-4e16-9534-ddece30ddb46";
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
pub const IDockPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IDockPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ccd7f4e6-e4f9-47ff-bde7-378b11f78e09";
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
pub const IDockPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getDockPositionProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_DockPositionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IDockPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b87245c-ed80-4fe5-8eb4-708a39c841e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DockPositionProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IDragPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IDragPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6266e985-4d07-4e80-82eb-8f96690a1a0c";
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
pub const IDragPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getDropEffectProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_DropEffectProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDropEffectsProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_DropEffectsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGrabbedItemsProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_GrabbedItemsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsGrabbedProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsGrabbedProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IDragPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a05379d-1755-4082-9d90-46f1411d7986";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DropEffectProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_DropEffectsProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_GrabbedItemsProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_IsGrabbedProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IDropTargetPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IDropTargetPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "11865133-a6fe-4634-bd18-0ef612b7b208";
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
pub const IDropTargetPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getDropTargetEffectProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_DropTargetEffectProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDropTargetEffectsProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_DropTargetEffectsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IDropTargetPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b693304-89fb-4b0a-9452-ca2c66aaf9f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DropTargetEffectProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_DropTargetEffectsProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IExpandCollapsePatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IExpandCollapsePatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b006bac0-751b-4d55-92cb-613ec1bdf5d0";
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
pub const IExpandCollapsePatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getExpandCollapseStateProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ExpandCollapseStateProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IExpandCollapsePatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d7816fd4-6ee0-4f38-8e14-56ef21adacfd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExpandCollapseStateProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IGridItemPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IGridItemPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "757744f1-3285-4fb1-803b-2545bd431599";
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
pub const IGridItemPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getColumnProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ColumnProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColumnSpanProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ColumnSpanProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContainingGridProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ContainingGridProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRowProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_RowProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRowSpanProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_RowSpanProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IGridItemPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "217d2402-5e46-4d61-8794-b8ee8e774714";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ColumnProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_ColumnSpanProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_ContainingGridProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_RowProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_RowSpanProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IGridPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IGridPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c902980f-96c5-450c-9044-7e52c24f9e94";
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
pub const IGridPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getColumnCountProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ColumnCountProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRowCountProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_RowCountProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IGridPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7bc452f3-a181-4137-8de9-1f9b1a8320ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ColumnCountProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_RowCountProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMultipleViewPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IMultipleViewPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5d5cd3b8-1e12-488b-b0ea-5e6cb89816e1";
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
pub const IMultipleViewPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getCurrentViewProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_CurrentViewProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSupportedViewsProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_SupportedViewsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IMultipleViewPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a9cfa66f-6b84-4d71-9e48-d764d3bcda8e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CurrentViewProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_SupportedViewsProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IRangeValuePatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IRangeValuePatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f8760f45-33c9-467d-bc9e-d1515263ace1";
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
pub const IRangeValuePatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsReadOnlyProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsReadOnlyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLargeChangeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_LargeChangeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaximumProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_MaximumProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimumProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_MinimumProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSmallChangeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_SmallChangeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValueProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ValueProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IRangeValuePatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce23450f-1c27-457f-b815-7a5e46863dbb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsReadOnlyProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_LargeChangeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_MaximumProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_MinimumProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_SmallChangeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_ValueProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IScrollPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IScrollPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "366b1003-425c-4951-ae83-d521e73bc696";
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
pub const IScrollPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getHorizontallyScrollableProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_HorizontallyScrollableProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHorizontalScrollPercentProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_HorizontalScrollPercentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHorizontalViewSizeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_HorizontalViewSizeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNoScroll(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NoScroll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticallyScrollableProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_VerticallyScrollableProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalScrollPercentProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_VerticalScrollPercentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalViewSizeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_VerticalViewSizeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IScrollPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4bf8e0a1-fb7f-4fa4-83b3-cfaeb103a685";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HorizontallyScrollableProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_HorizontalScrollPercentProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_HorizontalViewSizeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_NoScroll: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_VerticallyScrollableProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_VerticalScrollPercentProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_VerticalViewSizeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISelectionItemPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ISelectionItemPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2dafa41a-3ef8-4bb5-a02b-3ee1b2274740";
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
pub const ISelectionItemPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsSelectedProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsSelectedProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionContainerProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_SelectionContainerProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ISelectionItemPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a918d163-487e-4e3e-9f86-7b44acbe27ce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSelectedProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_SelectionContainerProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISelectionPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ISelectionPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4aa66fb0-e3f7-475f-b78d-f8a83bb730c4";
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
pub const ISelectionPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getCanSelectMultipleProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_CanSelectMultipleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSelectionRequiredProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsSelectionRequiredProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_SelectionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ISelectionPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93035b4c-6b50-40a1-b23f-5c78ddbd479a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanSelectMultipleProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_IsSelectionRequiredProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_SelectionProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISpreadsheetItemPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ISpreadsheetItemPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "84347e19-ca4b-46a2-a794-c87928a3b1ab";
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
pub const ISpreadsheetItemPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getFormulaProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_FormulaProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ISpreadsheetItemPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43658779-5380-4f12-b468-b4f368ad4499";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FormulaProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IStylesPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IStylesPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0e4e201-e89d-436b-8287-4f7903466879";
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
pub const IStylesPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getExtendedPropertiesProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ExtendedPropertiesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFillColorProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_FillColorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFillPatternColorProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_FillPatternColorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFillPatternStyleProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_FillPatternStyleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShapeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ShapeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStyleIdProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_StyleIdProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStyleNameProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_StyleNameProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IStylesPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "528a457a-bc3c-4d48-94af-1f68703ca296";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExtendedPropertiesProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_FillColorProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_FillPatternColorProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_FillPatternStyleProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_ShapeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_StyleIdProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_StyleNameProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITableItemPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ITableItemPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c326e5ad-8077-4c64-98e4-e83bcf1b4389";
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
pub const ITableItemPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getColumnHeaderItemsProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ColumnHeaderItemsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRowHeaderItemsProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_RowHeaderItemsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ITableItemPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24c4b923-e9a2-4de9-b2a4-a8b22d0be362";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ColumnHeaderItemsProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_RowHeaderItemsProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITablePatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ITablePatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38d104fe-0d0c-412a-bf8d-51ede683baf5";
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
pub const ITablePatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getColumnHeadersProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ColumnHeadersProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRowHeadersProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_RowHeadersProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRowOrColumnMajorProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_RowOrColumnMajorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ITablePatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "75073d25-32c9-4903-aecf-dc3504cbd244";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ColumnHeadersProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_RowHeadersProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_RowOrColumnMajorProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITogglePatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ITogglePatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e191f6b-34d4-4ae7-83ac-29f88882d985";
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
pub const ITogglePatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getToggleStateProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ToggleStateProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ITogglePatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c7f75544-14a5-4f2f-92fc-760524de06ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ToggleStateProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITransformPattern2Identifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ITransformPattern2Identifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08aaa03d-dea7-402f-8097-9a2783d60e5d";
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
pub const ITransformPattern2IdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getCanZoomProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_CanZoomProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getZoomLevelProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ZoomLevelProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxZoomProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_MaxZoomProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinZoomProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_MinZoomProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ITransformPattern2IdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "78963644-11f0-467c-a72b-5dac41c1f6fe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanZoomProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_ZoomLevelProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_MaxZoomProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_MinZoomProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITransformPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ITransformPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4115b8c-c3c8-4a37-b994-2709a7811665";
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
pub const ITransformPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getCanMoveProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_CanMoveProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanResizeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_CanResizeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanRotateProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_CanRotateProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ITransformPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4570edab-d705-40c4-a1dc-e9acfcef85f6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanMoveProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_CanResizeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_CanRotateProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IValuePatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IValuePatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "425bf64c-5333-4e41-b470-2bad14ecd085";
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
pub const IValuePatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsReadOnlyProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsReadOnlyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValueProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_ValueProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IValuePatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c247e8f7-adcc-440f-b123-33788a40525a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsReadOnlyProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_ValueProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const IWindowPatternIdentifiers = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IWindowPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "39f78bb4-7032-41e2-b79e-27b74a8628de";
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
pub const IWindowPatternIdentifiersStatics = extern struct {
    vtable: *const VTable,
    pub fn getCanMaximizeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_CanMaximizeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanMinimizeProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_CanMinimizeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsModalProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsModalProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTopmostProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_IsTopmostProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWindowInteractionStateProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_WindowInteractionStateProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWindowVisualStateProperty(self: *@This()) core.HResult!*AutomationProperty {
        var _r: *AutomationProperty = undefined;
        const _c = self.vtable.get_WindowVisualStateProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.IWindowPatternIdentifiersStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "07d0ad06-6302-4d29-878b-19da03fc228d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanMaximizeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_CanMinimizeProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_IsModalProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_IsTopmostProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_WindowInteractionStateProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
        get_WindowVisualStateProperty: *const fn(self: *anyopaque, _r: **AutomationProperty) callconv(.winapi) HRESULT,
    };
};
pub const MultipleViewPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_CurrentViewProperty() core.HResult!*AutomationProperty {
        const factory = @This().IMultipleViewPatternIdentifiersStaticsCache.get();
        return try factory.getCurrentViewProperty();
    }
    pub fn get_SupportedViewsProperty() core.HResult!*AutomationProperty {
        const factory = @This().IMultipleViewPatternIdentifiersStaticsCache.get();
        return try factory.getSupportedViewsProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.MultipleViewPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMultipleViewPatternIdentifiers.GUID;
    pub const IID: Guid = IMultipleViewPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMultipleViewPatternIdentifiers.SIGNATURE);
    var _IMultipleViewPatternIdentifiersStaticsCache: FactoryCache(IMultipleViewPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const RangeValuePatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_IsReadOnlyProperty() core.HResult!*AutomationProperty {
        const factory = @This().IRangeValuePatternIdentifiersStaticsCache.get();
        return try factory.getIsReadOnlyProperty();
    }
    pub fn get_LargeChangeProperty() core.HResult!*AutomationProperty {
        const factory = @This().IRangeValuePatternIdentifiersStaticsCache.get();
        return try factory.getLargeChangeProperty();
    }
    pub fn get_MaximumProperty() core.HResult!*AutomationProperty {
        const factory = @This().IRangeValuePatternIdentifiersStaticsCache.get();
        return try factory.getMaximumProperty();
    }
    pub fn get_MinimumProperty() core.HResult!*AutomationProperty {
        const factory = @This().IRangeValuePatternIdentifiersStaticsCache.get();
        return try factory.getMinimumProperty();
    }
    pub fn get_SmallChangeProperty() core.HResult!*AutomationProperty {
        const factory = @This().IRangeValuePatternIdentifiersStaticsCache.get();
        return try factory.getSmallChangeProperty();
    }
    pub fn get_ValueProperty() core.HResult!*AutomationProperty {
        const factory = @This().IRangeValuePatternIdentifiersStaticsCache.get();
        return try factory.getValueProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.RangeValuePatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRangeValuePatternIdentifiers.GUID;
    pub const IID: Guid = IRangeValuePatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRangeValuePatternIdentifiers.SIGNATURE);
    var _IRangeValuePatternIdentifiersStaticsCache: FactoryCache(IRangeValuePatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const RowOrColumnMajor = enum(i32) {
    RowMajor = 0,
    ColumnMajor = 1,
    Indeterminate = 2,
};
pub const ScrollAmount = enum(i32) {
    LargeDecrement = 0,
    SmallDecrement = 1,
    NoAmount = 2,
    LargeIncrement = 3,
    SmallIncrement = 4,
};
pub const ScrollPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_HorizontallyScrollableProperty() core.HResult!*AutomationProperty {
        const factory = @This().IScrollPatternIdentifiersStaticsCache.get();
        return try factory.getHorizontallyScrollableProperty();
    }
    pub fn get_HorizontalScrollPercentProperty() core.HResult!*AutomationProperty {
        const factory = @This().IScrollPatternIdentifiersStaticsCache.get();
        return try factory.getHorizontalScrollPercentProperty();
    }
    pub fn get_HorizontalViewSizeProperty() core.HResult!*AutomationProperty {
        const factory = @This().IScrollPatternIdentifiersStaticsCache.get();
        return try factory.getHorizontalViewSizeProperty();
    }
    pub fn get_NoScroll() core.HResult!f64 {
        const factory = @This().IScrollPatternIdentifiersStaticsCache.get();
        return try factory.getNoScroll();
    }
    pub fn get_VerticallyScrollableProperty() core.HResult!*AutomationProperty {
        const factory = @This().IScrollPatternIdentifiersStaticsCache.get();
        return try factory.getVerticallyScrollableProperty();
    }
    pub fn get_VerticalScrollPercentProperty() core.HResult!*AutomationProperty {
        const factory = @This().IScrollPatternIdentifiersStaticsCache.get();
        return try factory.getVerticalScrollPercentProperty();
    }
    pub fn get_VerticalViewSizeProperty() core.HResult!*AutomationProperty {
        const factory = @This().IScrollPatternIdentifiersStaticsCache.get();
        return try factory.getVerticalViewSizeProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ScrollPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScrollPatternIdentifiers.GUID;
    pub const IID: Guid = IScrollPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScrollPatternIdentifiers.SIGNATURE);
    var _IScrollPatternIdentifiersStaticsCache: FactoryCache(IScrollPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const SelectionItemPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_IsSelectedProperty() core.HResult!*AutomationProperty {
        const factory = @This().ISelectionItemPatternIdentifiersStaticsCache.get();
        return try factory.getIsSelectedProperty();
    }
    pub fn get_SelectionContainerProperty() core.HResult!*AutomationProperty {
        const factory = @This().ISelectionItemPatternIdentifiersStaticsCache.get();
        return try factory.getSelectionContainerProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.SelectionItemPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISelectionItemPatternIdentifiers.GUID;
    pub const IID: Guid = ISelectionItemPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISelectionItemPatternIdentifiers.SIGNATURE);
    var _ISelectionItemPatternIdentifiersStaticsCache: FactoryCache(ISelectionItemPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const SelectionPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_CanSelectMultipleProperty() core.HResult!*AutomationProperty {
        const factory = @This().ISelectionPatternIdentifiersStaticsCache.get();
        return try factory.getCanSelectMultipleProperty();
    }
    pub fn get_IsSelectionRequiredProperty() core.HResult!*AutomationProperty {
        const factory = @This().ISelectionPatternIdentifiersStaticsCache.get();
        return try factory.getIsSelectionRequiredProperty();
    }
    pub fn get_SelectionProperty() core.HResult!*AutomationProperty {
        const factory = @This().ISelectionPatternIdentifiersStaticsCache.get();
        return try factory.getSelectionProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.SelectionPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISelectionPatternIdentifiers.GUID;
    pub const IID: Guid = ISelectionPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISelectionPatternIdentifiers.SIGNATURE);
    var _ISelectionPatternIdentifiersStaticsCache: FactoryCache(ISelectionPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const SpreadsheetItemPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_FormulaProperty() core.HResult!*AutomationProperty {
        const factory = @This().ISpreadsheetItemPatternIdentifiersStaticsCache.get();
        return try factory.getFormulaProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.SpreadsheetItemPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpreadsheetItemPatternIdentifiers.GUID;
    pub const IID: Guid = ISpreadsheetItemPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpreadsheetItemPatternIdentifiers.SIGNATURE);
    var _ISpreadsheetItemPatternIdentifiersStaticsCache: FactoryCache(ISpreadsheetItemPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const StylesPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ExtendedPropertiesProperty() core.HResult!*AutomationProperty {
        const factory = @This().IStylesPatternIdentifiersStaticsCache.get();
        return try factory.getExtendedPropertiesProperty();
    }
    pub fn get_FillColorProperty() core.HResult!*AutomationProperty {
        const factory = @This().IStylesPatternIdentifiersStaticsCache.get();
        return try factory.getFillColorProperty();
    }
    pub fn get_FillPatternColorProperty() core.HResult!*AutomationProperty {
        const factory = @This().IStylesPatternIdentifiersStaticsCache.get();
        return try factory.getFillPatternColorProperty();
    }
    pub fn get_FillPatternStyleProperty() core.HResult!*AutomationProperty {
        const factory = @This().IStylesPatternIdentifiersStaticsCache.get();
        return try factory.getFillPatternStyleProperty();
    }
    pub fn get_ShapeProperty() core.HResult!*AutomationProperty {
        const factory = @This().IStylesPatternIdentifiersStaticsCache.get();
        return try factory.getShapeProperty();
    }
    pub fn get_StyleIdProperty() core.HResult!*AutomationProperty {
        const factory = @This().IStylesPatternIdentifiersStaticsCache.get();
        return try factory.getStyleIdProperty();
    }
    pub fn get_StyleNameProperty() core.HResult!*AutomationProperty {
        const factory = @This().IStylesPatternIdentifiersStaticsCache.get();
        return try factory.getStyleNameProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.StylesPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStylesPatternIdentifiers.GUID;
    pub const IID: Guid = IStylesPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStylesPatternIdentifiers.SIGNATURE);
    var _IStylesPatternIdentifiersStaticsCache: FactoryCache(IStylesPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const SupportedTextSelection = enum(i32) {
    None = 0,
    Single = 1,
    Multiple = 2,
};
pub const SynchronizedInputType = enum(i32) {
    KeyUp = 1,
    KeyDown = 2,
    LeftMouseUp = 4,
    LeftMouseDown = 8,
    RightMouseUp = 16,
    RightMouseDown = 32,
};
pub const TableItemPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ColumnHeaderItemsProperty() core.HResult!*AutomationProperty {
        const factory = @This().ITableItemPatternIdentifiersStaticsCache.get();
        return try factory.getColumnHeaderItemsProperty();
    }
    pub fn get_RowHeaderItemsProperty() core.HResult!*AutomationProperty {
        const factory = @This().ITableItemPatternIdentifiersStaticsCache.get();
        return try factory.getRowHeaderItemsProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.TableItemPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITableItemPatternIdentifiers.GUID;
    pub const IID: Guid = ITableItemPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITableItemPatternIdentifiers.SIGNATURE);
    var _ITableItemPatternIdentifiersStaticsCache: FactoryCache(ITableItemPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const TablePatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ColumnHeadersProperty() core.HResult!*AutomationProperty {
        const factory = @This().ITablePatternIdentifiersStaticsCache.get();
        return try factory.getColumnHeadersProperty();
    }
    pub fn get_RowHeadersProperty() core.HResult!*AutomationProperty {
        const factory = @This().ITablePatternIdentifiersStaticsCache.get();
        return try factory.getRowHeadersProperty();
    }
    pub fn get_RowOrColumnMajorProperty() core.HResult!*AutomationProperty {
        const factory = @This().ITablePatternIdentifiersStaticsCache.get();
        return try factory.getRowOrColumnMajorProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.TablePatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITablePatternIdentifiers.GUID;
    pub const IID: Guid = ITablePatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITablePatternIdentifiers.SIGNATURE);
    var _ITablePatternIdentifiersStaticsCache: FactoryCache(ITablePatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const TogglePatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ToggleStateProperty() core.HResult!*AutomationProperty {
        const factory = @This().ITogglePatternIdentifiersStaticsCache.get();
        return try factory.getToggleStateProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.TogglePatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITogglePatternIdentifiers.GUID;
    pub const IID: Guid = ITogglePatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITogglePatternIdentifiers.SIGNATURE);
    var _ITogglePatternIdentifiersStaticsCache: FactoryCache(ITogglePatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const ToggleState = enum(i32) {
    Off = 0,
    On = 1,
    Indeterminate = 2,
};
pub const TransformPattern2Identifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_CanZoomProperty() core.HResult!*AutomationProperty {
        const factory = @This().ITransformPattern2IdentifiersStaticsCache.get();
        return try factory.getCanZoomProperty();
    }
    pub fn get_ZoomLevelProperty() core.HResult!*AutomationProperty {
        const factory = @This().ITransformPattern2IdentifiersStaticsCache.get();
        return try factory.getZoomLevelProperty();
    }
    pub fn get_MaxZoomProperty() core.HResult!*AutomationProperty {
        const factory = @This().ITransformPattern2IdentifiersStaticsCache.get();
        return try factory.getMaxZoomProperty();
    }
    pub fn get_MinZoomProperty() core.HResult!*AutomationProperty {
        const factory = @This().ITransformPattern2IdentifiersStaticsCache.get();
        return try factory.getMinZoomProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.TransformPattern2Identifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITransformPattern2Identifiers.GUID;
    pub const IID: Guid = ITransformPattern2Identifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITransformPattern2Identifiers.SIGNATURE);
    var _ITransformPattern2IdentifiersStaticsCache: FactoryCache(ITransformPattern2IdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const TransformPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_CanMoveProperty() core.HResult!*AutomationProperty {
        const factory = @This().ITransformPatternIdentifiersStaticsCache.get();
        return try factory.getCanMoveProperty();
    }
    pub fn get_CanResizeProperty() core.HResult!*AutomationProperty {
        const factory = @This().ITransformPatternIdentifiersStaticsCache.get();
        return try factory.getCanResizeProperty();
    }
    pub fn get_CanRotateProperty() core.HResult!*AutomationProperty {
        const factory = @This().ITransformPatternIdentifiersStaticsCache.get();
        return try factory.getCanRotateProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.TransformPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITransformPatternIdentifiers.GUID;
    pub const IID: Guid = ITransformPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITransformPatternIdentifiers.SIGNATURE);
    var _ITransformPatternIdentifiersStaticsCache: FactoryCache(ITransformPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const ValuePatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_IsReadOnlyProperty() core.HResult!*AutomationProperty {
        const factory = @This().IValuePatternIdentifiersStaticsCache.get();
        return try factory.getIsReadOnlyProperty();
    }
    pub fn get_ValueProperty() core.HResult!*AutomationProperty {
        const factory = @This().IValuePatternIdentifiersStaticsCache.get();
        return try factory.getValueProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.ValuePatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IValuePatternIdentifiers.GUID;
    pub const IID: Guid = IValuePatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IValuePatternIdentifiers.SIGNATURE);
    var _IValuePatternIdentifiersStaticsCache: FactoryCache(IValuePatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const WindowInteractionState = enum(i32) {
    Running = 0,
    Closing = 1,
    ReadyForUserInteraction = 2,
    BlockedByModalWindow = 3,
    NotResponding = 4,
};
pub const WindowPatternIdentifiers = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_CanMaximizeProperty() core.HResult!*AutomationProperty {
        const factory = @This().IWindowPatternIdentifiersStaticsCache.get();
        return try factory.getCanMaximizeProperty();
    }
    pub fn get_CanMinimizeProperty() core.HResult!*AutomationProperty {
        const factory = @This().IWindowPatternIdentifiersStaticsCache.get();
        return try factory.getCanMinimizeProperty();
    }
    pub fn get_IsModalProperty() core.HResult!*AutomationProperty {
        const factory = @This().IWindowPatternIdentifiersStaticsCache.get();
        return try factory.getIsModalProperty();
    }
    pub fn get_IsTopmostProperty() core.HResult!*AutomationProperty {
        const factory = @This().IWindowPatternIdentifiersStaticsCache.get();
        return try factory.getIsTopmostProperty();
    }
    pub fn get_WindowInteractionStateProperty() core.HResult!*AutomationProperty {
        const factory = @This().IWindowPatternIdentifiersStaticsCache.get();
        return try factory.getWindowInteractionStateProperty();
    }
    pub fn get_WindowVisualStateProperty() core.HResult!*AutomationProperty {
        const factory = @This().IWindowPatternIdentifiersStaticsCache.get();
        return try factory.getWindowVisualStateProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.WindowPatternIdentifiers";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowPatternIdentifiers.GUID;
    pub const IID: Guid = IWindowPatternIdentifiers.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowPatternIdentifiers.SIGNATURE);
    var _IWindowPatternIdentifiersStaticsCache: FactoryCache(IWindowPatternIdentifiersStatics, RUNTIME_NAME) = .{};
};
pub const WindowVisualState = enum(i32) {
    Normal = 0,
    Maximized = 1,
    Minimized = 2,
};
pub const ZoomUnit = enum(i32) {
    NoAmount = 0,
    LargeDecrement = 1,
    SmallDecrement = 2,
    LargeIncrement = 3,
    SmallIncrement = 4,
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const FactoryCache = @import("../../core.zig").FactoryCache;
const DependencyProperty = @import("../Xaml.zig").DependencyProperty;
const TrustLevel = @import("../../root.zig").TrustLevel;
const AutomationControlType = @import("./Peers.zig").AutomationControlType;
const DependencyObject = @import("../Xaml.zig").DependencyObject;
const HSTRING = @import("../../root.zig").HSTRING;
const AutomationHeadingLevel = @import("./Peers.zig").AutomationHeadingLevel;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const AutomationLiveSetting = @import("./Peers.zig").AutomationLiveSetting;
const UIElement = @import("../Xaml.zig").UIElement;
const HRESULT = @import("../../root.zig").HRESULT;
const core = @import("../../root.zig").core;
const AccessibilityView = @import("./Peers.zig").AccessibilityView;
const AutomationLandmarkType = @import("./Peers.zig").AutomationLandmarkType;
pub const Peers = @import("./Automation/Peers.zig");
pub const Provider = @import("./Automation/Provider.zig");
pub const Text = @import("./Automation/Text.zig");
