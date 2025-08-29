pub const TextElement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        const this: *ITextElement = @ptrCast(self);
        return try this.getName();
    }
    pub fn getFontSize(self: *@This()) core.HResult!f64 {
        const this: *ITextElement = @ptrCast(self);
        return try this.getFontSize();
    }
    pub fn putFontSize(self: *@This(), value: f64) core.HResult!void {
        const this: *ITextElement = @ptrCast(self);
        return try this.putFontSize(value);
    }
    pub fn getFontFamily(self: *@This()) core.HResult!*FontFamily {
        const this: *ITextElement = @ptrCast(self);
        return try this.getFontFamily();
    }
    pub fn putFontFamily(self: *@This(), value: *FontFamily) core.HResult!void {
        const this: *ITextElement = @ptrCast(self);
        return try this.putFontFamily(value);
    }
    pub fn getFontWeight(self: *@This()) core.HResult!FontWeight {
        const this: *ITextElement = @ptrCast(self);
        return try this.getFontWeight();
    }
    pub fn putFontWeight(self: *@This(), value: FontWeight) core.HResult!void {
        const this: *ITextElement = @ptrCast(self);
        return try this.putFontWeight(value);
    }
    pub fn getFontStyle(self: *@This()) core.HResult!FontStyle {
        const this: *ITextElement = @ptrCast(self);
        return try this.getFontStyle();
    }
    pub fn putFontStyle(self: *@This(), value: FontStyle) core.HResult!void {
        const this: *ITextElement = @ptrCast(self);
        return try this.putFontStyle(value);
    }
    pub fn getFontStretch(self: *@This()) core.HResult!FontStretch {
        const this: *ITextElement = @ptrCast(self);
        return try this.getFontStretch();
    }
    pub fn putFontStretch(self: *@This(), value: FontStretch) core.HResult!void {
        const this: *ITextElement = @ptrCast(self);
        return try this.putFontStretch(value);
    }
    pub fn getCharacterSpacing(self: *@This()) core.HResult!i32 {
        const this: *ITextElement = @ptrCast(self);
        return try this.getCharacterSpacing();
    }
    pub fn putCharacterSpacing(self: *@This(), value: i32) core.HResult!void {
        const this: *ITextElement = @ptrCast(self);
        return try this.putCharacterSpacing(value);
    }
    pub fn getForeground(self: *@This()) core.HResult!*Brush {
        const this: *ITextElement = @ptrCast(self);
        return try this.getForeground();
    }
    pub fn putForeground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *ITextElement = @ptrCast(self);
        return try this.putForeground(value);
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        const this: *ITextElement = @ptrCast(self);
        return try this.getLanguage();
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ITextElement = @ptrCast(self);
        return try this.putLanguage(value);
    }
    pub fn getContentStart(self: *@This()) core.HResult!*TextPointer {
        const this: *ITextElement = @ptrCast(self);
        return try this.getContentStart();
    }
    pub fn getContentEnd(self: *@This()) core.HResult!*TextPointer {
        const this: *ITextElement = @ptrCast(self);
        return try this.getContentEnd();
    }
    pub fn getElementStart(self: *@This()) core.HResult!*TextPointer {
        const this: *ITextElement = @ptrCast(self);
        return try this.getElementStart();
    }
    pub fn getElementEnd(self: *@This()) core.HResult!*TextPointer {
        const this: *ITextElement = @ptrCast(self);
        return try this.getElementEnd();
    }
    pub fn FindName(self: *@This(), name: HSTRING) core.HResult!*IInspectable {
        const this: *ITextElement = @ptrCast(self);
        return try this.FindName(name);
    }
    pub fn getIsTextScaleFactorEnabled(self: *@This()) core.HResult!bool {
        var this: ?*ITextElement2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsTextScaleFactorEnabled();
    }
    pub fn putIsTextScaleFactorEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ITextElement2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsTextScaleFactorEnabled(value);
    }
    pub fn getAllowFocusOnInteraction(self: *@This()) core.HResult!bool {
        var this: ?*ITextElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowFocusOnInteraction();
    }
    pub fn putAllowFocusOnInteraction(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ITextElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowFocusOnInteraction(value);
    }
    pub fn getAccessKey(self: *@This()) core.HResult!HSTRING {
        var this: ?*ITextElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAccessKey();
    }
    pub fn putAccessKey(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*ITextElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAccessKey(value);
    }
    pub fn getExitDisplayModeOnAccessKeyInvoked(self: *@This()) core.HResult!bool {
        var this: ?*ITextElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExitDisplayModeOnAccessKeyInvoked();
    }
    pub fn putExitDisplayModeOnAccessKeyInvoked(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ITextElement3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putExitDisplayModeOnAccessKeyInvoked(value);
    }
    pub fn getTextDecorations(self: *@This()) core.HResult!TextDecorations {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTextDecorations();
    }
    pub fn putTextDecorations(self: *@This(), value: TextDecorations) core.HResult!void {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTextDecorations(value);
    }
    pub fn getIsAccessKeyScope(self: *@This()) core.HResult!bool {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAccessKeyScope();
    }
    pub fn putIsAccessKeyScope(self: *@This(), value: bool) core.HResult!void {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsAccessKeyScope(value);
    }
    pub fn getAccessKeyScopeOwner(self: *@This()) core.HResult!*DependencyObject {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAccessKeyScopeOwner();
    }
    pub fn putAccessKeyScopeOwner(self: *@This(), value: *DependencyObject) core.HResult!void {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAccessKeyScopeOwner(value);
    }
    pub fn getKeyTipPlacementMode(self: *@This()) core.HResult!KeyTipPlacementMode {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyTipPlacementMode();
    }
    pub fn putKeyTipPlacementMode(self: *@This(), value: KeyTipPlacementMode) core.HResult!void {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putKeyTipPlacementMode(value);
    }
    pub fn getKeyTipHorizontalOffset(self: *@This()) core.HResult!f64 {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyTipHorizontalOffset();
    }
    pub fn putKeyTipHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putKeyTipHorizontalOffset(value);
    }
    pub fn getKeyTipVerticalOffset(self: *@This()) core.HResult!f64 {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyTipVerticalOffset();
    }
    pub fn putKeyTipVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putKeyTipVerticalOffset(value);
    }
    pub fn addAccessKeyDisplayRequested(self: *@This(), handler: *TypedEventHandler(TextElement,AccessKeyDisplayRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAccessKeyDisplayRequested(handler);
    }
    pub fn removeAccessKeyDisplayRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAccessKeyDisplayRequested(token);
    }
    pub fn addAccessKeyDisplayDismissed(self: *@This(), handler: *TypedEventHandler(TextElement,AccessKeyDisplayDismissedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAccessKeyDisplayDismissed(handler);
    }
    pub fn removeAccessKeyDisplayDismissed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAccessKeyDisplayDismissed(token);
    }
    pub fn addAccessKeyInvoked(self: *@This(), handler: *TypedEventHandler(TextElement,AccessKeyInvokedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAccessKeyInvoked(handler);
    }
    pub fn removeAccessKeyInvoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ITextElement4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAccessKeyInvoked(token);
    }
    pub fn getXamlRoot(self: *@This()) core.HResult!*XamlRoot {
        var this: ?*ITextElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXamlRoot();
    }
    pub fn putXamlRoot(self: *@This(), value: *XamlRoot) core.HResult!void {
        var this: ?*ITextElement5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElement5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXamlRoot(value);
    }
    pub fn OnDisconnectVisualChildren(self: *@This()) core.HResult!void {
        var this: ?*ITextElementOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITextElementOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnDisconnectVisualChildren();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getTextDecorationsProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStatics4Cache.get();
        return try factory.getTextDecorationsProperty();
    }
    pub fn getIsAccessKeyScopeProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStatics4Cache.get();
        return try factory.getIsAccessKeyScopeProperty();
    }
    pub fn getAccessKeyScopeOwnerProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStatics4Cache.get();
        return try factory.getAccessKeyScopeOwnerProperty();
    }
    pub fn getKeyTipPlacementModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStatics4Cache.get();
        return try factory.getKeyTipPlacementModeProperty();
    }
    pub fn getKeyTipHorizontalOffsetProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStatics4Cache.get();
        return try factory.getKeyTipHorizontalOffsetProperty();
    }
    pub fn getKeyTipVerticalOffsetProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStatics4Cache.get();
        return try factory.getKeyTipVerticalOffsetProperty();
    }
    pub fn getAllowFocusOnInteractionProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStatics3Cache.get();
        return try factory.getAllowFocusOnInteractionProperty();
    }
    pub fn getAccessKeyProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStatics3Cache.get();
        return try factory.getAccessKeyProperty();
    }
    pub fn getExitDisplayModeOnAccessKeyInvokedProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStatics3Cache.get();
        return try factory.getExitDisplayModeOnAccessKeyInvokedProperty();
    }
    pub fn getIsTextScaleFactorEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStatics2Cache.get();
        return try factory.getIsTextScaleFactorEnabledProperty();
    }
    pub fn getFontSizeProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStaticsCache.get();
        return try factory.getFontSizeProperty();
    }
    pub fn getFontFamilyProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStaticsCache.get();
        return try factory.getFontFamilyProperty();
    }
    pub fn getFontWeightProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStaticsCache.get();
        return try factory.getFontWeightProperty();
    }
    pub fn getFontStyleProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStaticsCache.get();
        return try factory.getFontStyleProperty();
    }
    pub fn getFontStretchProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStaticsCache.get();
        return try factory.getFontStretchProperty();
    }
    pub fn getCharacterSpacingProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStaticsCache.get();
        return try factory.getCharacterSpacingProperty();
    }
    pub fn getForegroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStaticsCache.get();
        return try factory.getForegroundProperty();
    }
    pub fn getLanguageProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextElementStaticsCache.get();
        return try factory.getLanguageProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.TextElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextElement.GUID;
    pub const IID: Guid = ITextElement.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextElement.SIGNATURE);
    var _ITextElementStatics4Cache: FactoryCache(ITextElementStatics4, RUNTIME_NAME) = .{};
    var _ITextElementStatics3Cache: FactoryCache(ITextElementStatics3, RUNTIME_NAME) = .{};
    var _ITextElementStatics2Cache: FactoryCache(ITextElementStatics2, RUNTIME_NAME) = .{};
    var _ITextElementStaticsCache: FactoryCache(ITextElementStatics, RUNTIME_NAME) = .{};
    var _ITextElementFactoryCache: FactoryCache(ITextElementFactory, RUNTIME_NAME) = .{};
};
pub const Block = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getTextAlignment(self: *@This()) core.HResult!TextAlignment {
        const this: *IBlock = @ptrCast(self);
        return try this.getTextAlignment();
    }
    pub fn putTextAlignment(self: *@This(), value: TextAlignment) core.HResult!void {
        const this: *IBlock = @ptrCast(self);
        return try this.putTextAlignment(value);
    }
    pub fn getLineHeight(self: *@This()) core.HResult!f64 {
        const this: *IBlock = @ptrCast(self);
        return try this.getLineHeight();
    }
    pub fn putLineHeight(self: *@This(), value: f64) core.HResult!void {
        const this: *IBlock = @ptrCast(self);
        return try this.putLineHeight(value);
    }
    pub fn getLineStackingStrategy(self: *@This()) core.HResult!LineStackingStrategy {
        const this: *IBlock = @ptrCast(self);
        return try this.getLineStackingStrategy();
    }
    pub fn putLineStackingStrategy(self: *@This(), value: LineStackingStrategy) core.HResult!void {
        const this: *IBlock = @ptrCast(self);
        return try this.putLineStackingStrategy(value);
    }
    pub fn getMargin(self: *@This()) core.HResult!Thickness {
        const this: *IBlock = @ptrCast(self);
        return try this.getMargin();
    }
    pub fn putMargin(self: *@This(), value: Thickness) core.HResult!void {
        const this: *IBlock = @ptrCast(self);
        return try this.putMargin(value);
    }
    pub fn getHorizontalTextAlignment(self: *@This()) core.HResult!TextAlignment {
        var this: ?*IBlock2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBlock2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontalTextAlignment();
    }
    pub fn putHorizontalTextAlignment(self: *@This(), value: TextAlignment) core.HResult!void {
        var this: ?*IBlock2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IBlock2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putHorizontalTextAlignment(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getTextAlignmentProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBlockStaticsCache.get();
        return try factory.getTextAlignmentProperty();
    }
    pub fn getLineHeightProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBlockStaticsCache.get();
        return try factory.getLineHeightProperty();
    }
    pub fn getLineStackingStrategyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBlockStaticsCache.get();
        return try factory.getLineStackingStrategyProperty();
    }
    pub fn getMarginProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBlockStaticsCache.get();
        return try factory.getMarginProperty();
    }
    pub fn getHorizontalTextAlignmentProperty() core.HResult!*DependencyProperty {
        const factory = @This().IBlockStatics2Cache.get();
        return try factory.getHorizontalTextAlignmentProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Block {
        const factory = @This().IBlockFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.Block";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBlock.GUID;
    pub const IID: Guid = IBlock.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBlock.SIGNATURE);
    var _IBlockStaticsCache: FactoryCache(IBlockStatics, RUNTIME_NAME) = .{};
    var _IBlockStatics2Cache: FactoryCache(IBlockStatics2, RUNTIME_NAME) = .{};
    var _IBlockFactoryCache: FactoryCache(IBlockFactory, RUNTIME_NAME) = .{};
};
pub const BlockCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*Block {
        const this: *IVector = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(Block) {
        const this: *IVector = @ptrCast(self);
        return try this.GetView();
    }
    pub fn IndexOf(self: *@This(), value: *Block, index: u32) core.HResult!bool {
        const this: *IVector = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn SetAt(self: *@This(), index: u32, value: *Block) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.SetAt(index, value);
    }
    pub fn InsertAt(self: *@This(), index: u32, value: *Block) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.InsertAt(index, value);
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn Append(self: *@This(), value: *Block) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.Append(value);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.Clear();
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]Block) core.HResult!u32 {
        const this: *IVector = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn ReplaceAll(self: *@This(), items: [*]Block) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.ReplaceAll(items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(Block) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.BlockCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
};
pub const Inline = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Inline {
        const factory = @This().IInlineFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.Inline";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInline.GUID;
    pub const IID: Guid = IInline.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInline.SIGNATURE);
    var _IInlineFactoryCache: FactoryCache(IInlineFactory, RUNTIME_NAME) = .{};
};
pub const Span = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInlines(self: *@This()) core.HResult!*InlineCollection {
        const this: *ISpan = @ptrCast(self);
        return try this.getInlines();
    }
    pub fn putInlines(self: *@This(), value: *InlineCollection) core.HResult!void {
        const this: *ISpan = @ptrCast(self);
        return try this.putInlines(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Span {
        const factory = @This().ISpanFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.Span";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISpan.GUID;
    pub const IID: Guid = ISpan.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISpan.SIGNATURE);
    var _ISpanFactoryCache: FactoryCache(ISpanFactory, RUNTIME_NAME) = .{};
};
pub const Bold = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IBold.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.Bold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IBold.GUID;
    pub const IID: Guid = IBold.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IBold.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContentLinkProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ContentLinkProvider {
        const factory = @This().IContentLinkProviderFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ContentLinkProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContentLinkProvider.GUID;
    pub const IID: Guid = IContentLinkProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContentLinkProvider.SIGNATURE);
    var _IContentLinkProviderFactoryCache: FactoryCache(IContentLinkProviderFactory, RUNTIME_NAME) = .{};
};
pub const ContactContentLinkProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContactContentLinkProvider.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ContactContentLinkProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContactContentLinkProvider.GUID;
    pub const IID: Guid = IContactContentLinkProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContactContentLinkProvider.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ContentLink = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInfo(self: *@This()) core.HResult!*ContentLinkInfo {
        const this: *IContentLink = @ptrCast(self);
        return try this.getInfo();
    }
    pub fn putInfo(self: *@This(), value: *ContentLinkInfo) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putInfo(value);
    }
    pub fn getBackground(self: *@This()) core.HResult!*Brush {
        const this: *IContentLink = @ptrCast(self);
        return try this.getBackground();
    }
    pub fn putBackground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putBackground(value);
    }
    pub fn getCursor(self: *@This()) core.HResult!CoreCursorType {
        const this: *IContentLink = @ptrCast(self);
        return try this.getCursor();
    }
    pub fn putCursor(self: *@This(), value: CoreCursorType) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putCursor(value);
    }
    pub fn getXYFocusLeft(self: *@This()) core.HResult!*DependencyObject {
        const this: *IContentLink = @ptrCast(self);
        return try this.getXYFocusLeft();
    }
    pub fn putXYFocusLeft(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putXYFocusLeft(value);
    }
    pub fn getXYFocusRight(self: *@This()) core.HResult!*DependencyObject {
        const this: *IContentLink = @ptrCast(self);
        return try this.getXYFocusRight();
    }
    pub fn putXYFocusRight(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putXYFocusRight(value);
    }
    pub fn getXYFocusUp(self: *@This()) core.HResult!*DependencyObject {
        const this: *IContentLink = @ptrCast(self);
        return try this.getXYFocusUp();
    }
    pub fn putXYFocusUp(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putXYFocusUp(value);
    }
    pub fn getXYFocusDown(self: *@This()) core.HResult!*DependencyObject {
        const this: *IContentLink = @ptrCast(self);
        return try this.getXYFocusDown();
    }
    pub fn putXYFocusDown(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putXYFocusDown(value);
    }
    pub fn getElementSoundMode(self: *@This()) core.HResult!ElementSoundMode {
        const this: *IContentLink = @ptrCast(self);
        return try this.getElementSoundMode();
    }
    pub fn putElementSoundMode(self: *@This(), value: ElementSoundMode) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putElementSoundMode(value);
    }
    pub fn getFocusState(self: *@This()) core.HResult!FocusState {
        const this: *IContentLink = @ptrCast(self);
        return try this.getFocusState();
    }
    pub fn getXYFocusUpNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        const this: *IContentLink = @ptrCast(self);
        return try this.getXYFocusUpNavigationStrategy();
    }
    pub fn putXYFocusUpNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putXYFocusUpNavigationStrategy(value);
    }
    pub fn getXYFocusDownNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        const this: *IContentLink = @ptrCast(self);
        return try this.getXYFocusDownNavigationStrategy();
    }
    pub fn putXYFocusDownNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putXYFocusDownNavigationStrategy(value);
    }
    pub fn getXYFocusLeftNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        const this: *IContentLink = @ptrCast(self);
        return try this.getXYFocusLeftNavigationStrategy();
    }
    pub fn putXYFocusLeftNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putXYFocusLeftNavigationStrategy(value);
    }
    pub fn getXYFocusRightNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        const this: *IContentLink = @ptrCast(self);
        return try this.getXYFocusRightNavigationStrategy();
    }
    pub fn putXYFocusRightNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putXYFocusRightNavigationStrategy(value);
    }
    pub fn getIsTabStop(self: *@This()) core.HResult!bool {
        const this: *IContentLink = @ptrCast(self);
        return try this.getIsTabStop();
    }
    pub fn putIsTabStop(self: *@This(), value: bool) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putIsTabStop(value);
    }
    pub fn getTabIndex(self: *@This()) core.HResult!i32 {
        const this: *IContentLink = @ptrCast(self);
        return try this.getTabIndex();
    }
    pub fn putTabIndex(self: *@This(), value: i32) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.putTabIndex(value);
    }
    pub fn addInvoked(self: *@This(), handler: *TypedEventHandler(ContentLink,ContentLinkInvokedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IContentLink = @ptrCast(self);
        return try this.addInvoked(handler);
    }
    pub fn removeInvoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.removeInvoked(token);
    }
    pub fn addGotFocus(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IContentLink = @ptrCast(self);
        return try this.addGotFocus(handler);
    }
    pub fn removeGotFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.removeGotFocus(token);
    }
    pub fn addLostFocus(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IContentLink = @ptrCast(self);
        return try this.addLostFocus(handler);
    }
    pub fn removeLostFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IContentLink = @ptrCast(self);
        return try this.removeLostFocus(token);
    }
    pub fn Focus(self: *@This(), value: FocusState) core.HResult!bool {
        const this: *IContentLink = @ptrCast(self);
        return try this.Focus(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContentLink.IID)));
    }
    pub fn getBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getBackgroundProperty();
    }
    pub fn getCursorProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getCursorProperty();
    }
    pub fn getXYFocusLeftProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getXYFocusLeftProperty();
    }
    pub fn getXYFocusRightProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getXYFocusRightProperty();
    }
    pub fn getXYFocusUpProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getXYFocusUpProperty();
    }
    pub fn getXYFocusDownProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getXYFocusDownProperty();
    }
    pub fn getElementSoundModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getElementSoundModeProperty();
    }
    pub fn getFocusStateProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getFocusStateProperty();
    }
    pub fn getXYFocusUpNavigationStrategyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getXYFocusUpNavigationStrategyProperty();
    }
    pub fn getXYFocusDownNavigationStrategyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getXYFocusDownNavigationStrategyProperty();
    }
    pub fn getXYFocusLeftNavigationStrategyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getXYFocusLeftNavigationStrategyProperty();
    }
    pub fn getXYFocusRightNavigationStrategyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getXYFocusRightNavigationStrategyProperty();
    }
    pub fn getIsTabStopProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getIsTabStopProperty();
    }
    pub fn getTabIndexProperty() core.HResult!*DependencyProperty {
        const factory = @This().IContentLinkStaticsCache.get();
        return try factory.getTabIndexProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ContentLink";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContentLink.GUID;
    pub const IID: Guid = IContentLink.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContentLink.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IContentLinkStaticsCache: FactoryCache(IContentLinkStatics, RUNTIME_NAME) = .{};
};
pub const ContentLinkInvokedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentLinkInfo(self: *@This()) core.HResult!*ContentLinkInfo {
        const this: *IContentLinkInvokedEventArgs = @ptrCast(self);
        return try this.getContentLinkInfo();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IContentLinkInvokedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IContentLinkInvokedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ContentLinkInvokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContentLinkInvokedEventArgs.GUID;
    pub const IID: Guid = IContentLinkInvokedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContentLinkInvokedEventArgs.SIGNATURE);
};
pub const ContentLinkProviderCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*ContentLinkProvider {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(ContentLinkProvider) {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetView();
    }
    pub fn IndexOf(self: *@This(), value: *ContentLinkProvider, index: u32) core.HResult!bool {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IndexOf(value, index);
    }
    pub fn SetAt(self: *@This(), index: u32, value: *ContentLinkProvider) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetAt(index, value);
    }
    pub fn InsertAt(self: *@This(), index: u32, value: *ContentLinkProvider) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.InsertAt(index, value);
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAt(index);
    }
    pub fn Append(self: *@This(), value: *ContentLinkProvider) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Append(value);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Clear();
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]ContentLinkProvider) core.HResult!u32 {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetMany(startIndex, items);
    }
    pub fn ReplaceAll(self: *@This(), items: [*]ContentLinkProvider) core.HResult!void {
        var this: ?*IVector = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVector.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ReplaceAll(items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(ContentLinkProvider) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContentLinkProviderCollection.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ContentLinkProviderCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContentLinkProviderCollection.GUID;
    pub const IID: Guid = IContentLinkProviderCollection.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContentLinkProviderCollection.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Glyphs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUnicodeString(self: *@This()) core.HResult!HSTRING {
        const this: *IGlyphs = @ptrCast(self);
        return try this.getUnicodeString();
    }
    pub fn putUnicodeString(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IGlyphs = @ptrCast(self);
        return try this.putUnicodeString(value);
    }
    pub fn getIndices(self: *@This()) core.HResult!HSTRING {
        const this: *IGlyphs = @ptrCast(self);
        return try this.getIndices();
    }
    pub fn putIndices(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IGlyphs = @ptrCast(self);
        return try this.putIndices(value);
    }
    pub fn getFontUri(self: *@This()) core.HResult!*Uri {
        const this: *IGlyphs = @ptrCast(self);
        return try this.getFontUri();
    }
    pub fn putFontUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IGlyphs = @ptrCast(self);
        return try this.putFontUri(value);
    }
    pub fn getStyleSimulations(self: *@This()) core.HResult!StyleSimulations {
        const this: *IGlyphs = @ptrCast(self);
        return try this.getStyleSimulations();
    }
    pub fn putStyleSimulations(self: *@This(), value: StyleSimulations) core.HResult!void {
        const this: *IGlyphs = @ptrCast(self);
        return try this.putStyleSimulations(value);
    }
    pub fn getFontRenderingEmSize(self: *@This()) core.HResult!f64 {
        const this: *IGlyphs = @ptrCast(self);
        return try this.getFontRenderingEmSize();
    }
    pub fn putFontRenderingEmSize(self: *@This(), value: f64) core.HResult!void {
        const this: *IGlyphs = @ptrCast(self);
        return try this.putFontRenderingEmSize(value);
    }
    pub fn getOriginX(self: *@This()) core.HResult!f64 {
        const this: *IGlyphs = @ptrCast(self);
        return try this.getOriginX();
    }
    pub fn putOriginX(self: *@This(), value: f64) core.HResult!void {
        const this: *IGlyphs = @ptrCast(self);
        return try this.putOriginX(value);
    }
    pub fn getOriginY(self: *@This()) core.HResult!f64 {
        const this: *IGlyphs = @ptrCast(self);
        return try this.getOriginY();
    }
    pub fn putOriginY(self: *@This(), value: f64) core.HResult!void {
        const this: *IGlyphs = @ptrCast(self);
        return try this.putOriginY(value);
    }
    pub fn getFill(self: *@This()) core.HResult!*Brush {
        const this: *IGlyphs = @ptrCast(self);
        return try this.getFill();
    }
    pub fn putFill(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IGlyphs = @ptrCast(self);
        return try this.putFill(value);
    }
    pub fn getIsColorFontEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IGlyphs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGlyphs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsColorFontEnabled();
    }
    pub fn putIsColorFontEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IGlyphs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGlyphs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsColorFontEnabled(value);
    }
    pub fn getColorFontPaletteIndex(self: *@This()) core.HResult!i32 {
        var this: ?*IGlyphs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGlyphs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getColorFontPaletteIndex();
    }
    pub fn putColorFontPaletteIndex(self: *@This(), value: i32) core.HResult!void {
        var this: ?*IGlyphs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGlyphs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putColorFontPaletteIndex(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IGlyphs.IID)));
    }
    pub fn getUnicodeStringProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGlyphsStaticsCache.get();
        return try factory.getUnicodeStringProperty();
    }
    pub fn getIndicesProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGlyphsStaticsCache.get();
        return try factory.getIndicesProperty();
    }
    pub fn getFontUriProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGlyphsStaticsCache.get();
        return try factory.getFontUriProperty();
    }
    pub fn getStyleSimulationsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGlyphsStaticsCache.get();
        return try factory.getStyleSimulationsProperty();
    }
    pub fn getFontRenderingEmSizeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGlyphsStaticsCache.get();
        return try factory.getFontRenderingEmSizeProperty();
    }
    pub fn getOriginXProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGlyphsStaticsCache.get();
        return try factory.getOriginXProperty();
    }
    pub fn getOriginYProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGlyphsStaticsCache.get();
        return try factory.getOriginYProperty();
    }
    pub fn getFillProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGlyphsStaticsCache.get();
        return try factory.getFillProperty();
    }
    pub fn getIsColorFontEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGlyphsStatics2Cache.get();
        return try factory.getIsColorFontEnabledProperty();
    }
    pub fn getColorFontPaletteIndexProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGlyphsStatics2Cache.get();
        return try factory.getColorFontPaletteIndexProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.Glyphs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGlyphs.GUID;
    pub const IID: Guid = IGlyphs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGlyphs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IGlyphsStaticsCache: FactoryCache(IGlyphsStatics, RUNTIME_NAME) = .{};
    var _IGlyphsStatics2Cache: FactoryCache(IGlyphsStatics2, RUNTIME_NAME) = .{};
};
pub const Hyperlink = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNavigateUri(self: *@This()) core.HResult!*Uri {
        const this: *IHyperlink = @ptrCast(self);
        return try this.getNavigateUri();
    }
    pub fn putNavigateUri(self: *@This(), value: *Uri) core.HResult!void {
        const this: *IHyperlink = @ptrCast(self);
        return try this.putNavigateUri(value);
    }
    pub fn addClick(self: *@This(), handler: *TypedEventHandler(Hyperlink,HyperlinkClickEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IHyperlink = @ptrCast(self);
        return try this.addClick(handler);
    }
    pub fn removeClick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IHyperlink = @ptrCast(self);
        return try this.removeClick(token);
    }
    pub fn getUnderlineStyle(self: *@This()) core.HResult!UnderlineStyle {
        var this: ?*IHyperlink2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUnderlineStyle();
    }
    pub fn putUnderlineStyle(self: *@This(), value: UnderlineStyle) core.HResult!void {
        var this: ?*IHyperlink2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putUnderlineStyle(value);
    }
    pub fn getXYFocusLeft(self: *@This()) core.HResult!*DependencyObject {
        var this: ?*IHyperlink3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXYFocusLeft();
    }
    pub fn putXYFocusLeft(self: *@This(), value: *DependencyObject) core.HResult!void {
        var this: ?*IHyperlink3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXYFocusLeft(value);
    }
    pub fn getXYFocusRight(self: *@This()) core.HResult!*DependencyObject {
        var this: ?*IHyperlink3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXYFocusRight();
    }
    pub fn putXYFocusRight(self: *@This(), value: *DependencyObject) core.HResult!void {
        var this: ?*IHyperlink3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXYFocusRight(value);
    }
    pub fn getXYFocusUp(self: *@This()) core.HResult!*DependencyObject {
        var this: ?*IHyperlink3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXYFocusUp();
    }
    pub fn putXYFocusUp(self: *@This(), value: *DependencyObject) core.HResult!void {
        var this: ?*IHyperlink3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXYFocusUp(value);
    }
    pub fn getXYFocusDown(self: *@This()) core.HResult!*DependencyObject {
        var this: ?*IHyperlink3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXYFocusDown();
    }
    pub fn putXYFocusDown(self: *@This(), value: *DependencyObject) core.HResult!void {
        var this: ?*IHyperlink3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXYFocusDown(value);
    }
    pub fn getElementSoundMode(self: *@This()) core.HResult!ElementSoundMode {
        var this: ?*IHyperlink3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getElementSoundMode();
    }
    pub fn putElementSoundMode(self: *@This(), value: ElementSoundMode) core.HResult!void {
        var this: ?*IHyperlink3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putElementSoundMode(value);
    }
    pub fn getFocusState(self: *@This()) core.HResult!FocusState {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFocusState();
    }
    pub fn getXYFocusUpNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXYFocusUpNavigationStrategy();
    }
    pub fn putXYFocusUpNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXYFocusUpNavigationStrategy(value);
    }
    pub fn getXYFocusDownNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXYFocusDownNavigationStrategy();
    }
    pub fn putXYFocusDownNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXYFocusDownNavigationStrategy(value);
    }
    pub fn getXYFocusLeftNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXYFocusLeftNavigationStrategy();
    }
    pub fn putXYFocusLeftNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXYFocusLeftNavigationStrategy(value);
    }
    pub fn getXYFocusRightNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXYFocusRightNavigationStrategy();
    }
    pub fn putXYFocusRightNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXYFocusRightNavigationStrategy(value);
    }
    pub fn addGotFocus(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addGotFocus(handler);
    }
    pub fn removeGotFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeGotFocus(token);
    }
    pub fn addLostFocus(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addLostFocus(handler);
    }
    pub fn removeLostFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeLostFocus(token);
    }
    pub fn Focus(self: *@This(), value: FocusState) core.HResult!bool {
        var this: ?*IHyperlink4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Focus(value);
    }
    pub fn getIsTabStop(self: *@This()) core.HResult!bool {
        var this: ?*IHyperlink5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsTabStop();
    }
    pub fn putIsTabStop(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IHyperlink5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putIsTabStop(value);
    }
    pub fn getTabIndex(self: *@This()) core.HResult!i32 {
        var this: ?*IHyperlink5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTabIndex();
    }
    pub fn putTabIndex(self: *@This(), value: i32) core.HResult!void {
        var this: ?*IHyperlink5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IHyperlink5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putTabIndex(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IHyperlink.IID)));
    }
    pub fn getUnderlineStyleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStatics2Cache.get();
        return try factory.getUnderlineStyleProperty();
    }
    pub fn getNavigateUriProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStaticsCache.get();
        return try factory.getNavigateUriProperty();
    }
    pub fn getXYFocusLeftProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStatics3Cache.get();
        return try factory.getXYFocusLeftProperty();
    }
    pub fn getXYFocusRightProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStatics3Cache.get();
        return try factory.getXYFocusRightProperty();
    }
    pub fn getXYFocusUpProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStatics3Cache.get();
        return try factory.getXYFocusUpProperty();
    }
    pub fn getXYFocusDownProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStatics3Cache.get();
        return try factory.getXYFocusDownProperty();
    }
    pub fn getElementSoundModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStatics3Cache.get();
        return try factory.getElementSoundModeProperty();
    }
    pub fn getIsTabStopProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStatics5Cache.get();
        return try factory.getIsTabStopProperty();
    }
    pub fn getTabIndexProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStatics5Cache.get();
        return try factory.getTabIndexProperty();
    }
    pub fn getFocusStateProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStatics4Cache.get();
        return try factory.getFocusStateProperty();
    }
    pub fn getXYFocusUpNavigationStrategyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStatics4Cache.get();
        return try factory.getXYFocusUpNavigationStrategyProperty();
    }
    pub fn getXYFocusDownNavigationStrategyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStatics4Cache.get();
        return try factory.getXYFocusDownNavigationStrategyProperty();
    }
    pub fn getXYFocusLeftNavigationStrategyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStatics4Cache.get();
        return try factory.getXYFocusLeftNavigationStrategyProperty();
    }
    pub fn getXYFocusRightNavigationStrategyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IHyperlinkStatics4Cache.get();
        return try factory.getXYFocusRightNavigationStrategyProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.Hyperlink";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHyperlink.GUID;
    pub const IID: Guid = IHyperlink.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHyperlink.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IHyperlinkStatics2Cache: FactoryCache(IHyperlinkStatics2, RUNTIME_NAME) = .{};
    var _IHyperlinkStaticsCache: FactoryCache(IHyperlinkStatics, RUNTIME_NAME) = .{};
    var _IHyperlinkStatics3Cache: FactoryCache(IHyperlinkStatics3, RUNTIME_NAME) = .{};
    var _IHyperlinkStatics5Cache: FactoryCache(IHyperlinkStatics5, RUNTIME_NAME) = .{};
    var _IHyperlinkStatics4Cache: FactoryCache(IHyperlinkStatics4, RUNTIME_NAME) = .{};
};
pub const HyperlinkClickEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.HyperlinkClickEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHyperlinkClickEventArgs.GUID;
    pub const IID: Guid = IHyperlinkClickEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHyperlinkClickEventArgs.SIGNATURE);
};
pub const IBlock = extern struct {
    vtable: *const VTable,
    pub fn getTextAlignment(self: *@This()) core.HResult!TextAlignment {
        var _r: TextAlignment = undefined;
        const _c = self.vtable.get_TextAlignment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTextAlignment(self: *@This(), value: TextAlignment) core.HResult!void {
        const _c = self.vtable.put_TextAlignment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLineHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_LineHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLineHeight(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_LineHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLineStackingStrategy(self: *@This()) core.HResult!LineStackingStrategy {
        var _r: LineStackingStrategy = undefined;
        const _c = self.vtable.get_LineStackingStrategy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLineStackingStrategy(self: *@This(), value: LineStackingStrategy) core.HResult!void {
        const _c = self.vtable.put_LineStackingStrategy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMargin(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_Margin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMargin(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_Margin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IBlock";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4bce0016-dd47-4350-8cb0-e171600ac896";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextAlignment: *const fn(self: *anyopaque, _r: *TextAlignment) callconv(.winapi) HRESULT,
        put_TextAlignment: *const fn(self: *anyopaque, value: TextAlignment) callconv(.winapi) HRESULT,
        get_LineHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_LineHeight: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_LineStackingStrategy: *const fn(self: *anyopaque, _r: *LineStackingStrategy) callconv(.winapi) HRESULT,
        put_LineStackingStrategy: *const fn(self: *anyopaque, value: LineStackingStrategy) callconv(.winapi) HRESULT,
        get_Margin: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_Margin: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
    };
};
pub const IBlock2 = extern struct {
    vtable: *const VTable,
    pub fn getHorizontalTextAlignment(self: *@This()) core.HResult!TextAlignment {
        var _r: TextAlignment = undefined;
        const _c = self.vtable.get_HorizontalTextAlignment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHorizontalTextAlignment(self: *@This(), value: TextAlignment) core.HResult!void {
        const _c = self.vtable.put_HorizontalTextAlignment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IBlock2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ec7bdf3-1333-4a92-8318-6caedc12ef89";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HorizontalTextAlignment: *const fn(self: *anyopaque, _r: *TextAlignment) callconv(.winapi) HRESULT,
        put_HorizontalTextAlignment: *const fn(self: *anyopaque, value: TextAlignment) callconv(.winapi) HRESULT,
    };
};
pub const IBlockFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Block {
        var _r: *Block = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IBlockFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "07110532-4f59-4f3b-9ce5-25784c430507";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **Block) callconv(.winapi) HRESULT,
    };
};
pub const IBlockStatics = extern struct {
    vtable: *const VTable,
    pub fn getTextAlignmentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TextAlignmentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLineHeightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LineHeightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLineStackingStrategyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LineStackingStrategyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMarginProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MarginProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IBlockStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f86a8c34-8d18-4c53-aebd-91e610a5e010";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextAlignmentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_LineHeightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_LineStackingStrategyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MarginProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IBlockStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getHorizontalTextAlignmentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_HorizontalTextAlignmentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IBlockStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af01a4d6-03e3-4cee-9b02-2bfc308b27a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HorizontalTextAlignmentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IBold = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IBold";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ade73784-1b59-4da4-bb23-0f20e885b4bf";
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
pub const IContactContentLinkProvider = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IContactContentLinkProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f92fd29b-589b-4abd-9d37-35a1468f021e";
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
pub const IContentLink = extern struct {
    vtable: *const VTable,
    pub fn getInfo(self: *@This()) core.HResult!*ContentLinkInfo {
        var _r: *ContentLinkInfo = undefined;
        const _c = self.vtable.get_Info(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInfo(self: *@This(), value: *ContentLinkInfo) core.HResult!void {
        const _c = self.vtable.put_Info(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_Background(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_Background(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCursor(self: *@This()) core.HResult!CoreCursorType {
        var _r: CoreCursorType = undefined;
        const _c = self.vtable.get_Cursor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCursor(self: *@This(), value: CoreCursorType) core.HResult!void {
        const _c = self.vtable.put_Cursor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusLeft(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_XYFocusLeft(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusLeft(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_XYFocusLeft(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusRight(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_XYFocusRight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusRight(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_XYFocusRight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusUp(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_XYFocusUp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusUp(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_XYFocusUp(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusDown(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_XYFocusDown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusDown(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_XYFocusDown(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getElementSoundMode(self: *@This()) core.HResult!ElementSoundMode {
        var _r: ElementSoundMode = undefined;
        const _c = self.vtable.get_ElementSoundMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putElementSoundMode(self: *@This(), value: ElementSoundMode) core.HResult!void {
        const _c = self.vtable.put_ElementSoundMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFocusState(self: *@This()) core.HResult!FocusState {
        var _r: FocusState = undefined;
        const _c = self.vtable.get_FocusState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusUpNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var _r: XYFocusNavigationStrategy = undefined;
        const _c = self.vtable.get_XYFocusUpNavigationStrategy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusUpNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const _c = self.vtable.put_XYFocusUpNavigationStrategy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusDownNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var _r: XYFocusNavigationStrategy = undefined;
        const _c = self.vtable.get_XYFocusDownNavigationStrategy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusDownNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const _c = self.vtable.put_XYFocusDownNavigationStrategy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusLeftNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var _r: XYFocusNavigationStrategy = undefined;
        const _c = self.vtable.get_XYFocusLeftNavigationStrategy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusLeftNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const _c = self.vtable.put_XYFocusLeftNavigationStrategy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusRightNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var _r: XYFocusNavigationStrategy = undefined;
        const _c = self.vtable.get_XYFocusRightNavigationStrategy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusRightNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const _c = self.vtable.put_XYFocusRightNavigationStrategy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsTabStop(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTabStop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsTabStop(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsTabStop(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTabIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TabIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTabIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_TabIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addInvoked(self: *@This(), handler: *TypedEventHandler(ContentLink,ContentLinkInvokedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Invoked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInvoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Invoked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGotFocus(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GotFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGotFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GotFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLostFocus(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LostFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLostFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LostFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Focus(self: *@This(), value: FocusState) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Focus(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IContentLink";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6c60c3e1-528c-42f8-92be-34b8c68be304";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Info: *const fn(self: *anyopaque, _r: **ContentLinkInfo) callconv(.winapi) HRESULT,
        put_Info: *const fn(self: *anyopaque, value: *ContentLinkInfo) callconv(.winapi) HRESULT,
        get_Background: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_Background: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_Cursor: *const fn(self: *anyopaque, _r: *CoreCursorType) callconv(.winapi) HRESULT,
        put_Cursor: *const fn(self: *anyopaque, value: CoreCursorType) callconv(.winapi) HRESULT,
        get_XYFocusLeft: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_XYFocusLeft: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_XYFocusRight: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_XYFocusRight: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_XYFocusUp: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_XYFocusUp: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_XYFocusDown: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_XYFocusDown: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_ElementSoundMode: *const fn(self: *anyopaque, _r: *ElementSoundMode) callconv(.winapi) HRESULT,
        put_ElementSoundMode: *const fn(self: *anyopaque, value: ElementSoundMode) callconv(.winapi) HRESULT,
        get_FocusState: *const fn(self: *anyopaque, _r: *FocusState) callconv(.winapi) HRESULT,
        get_XYFocusUpNavigationStrategy: *const fn(self: *anyopaque, _r: *XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        put_XYFocusUpNavigationStrategy: *const fn(self: *anyopaque, value: XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        get_XYFocusDownNavigationStrategy: *const fn(self: *anyopaque, _r: *XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        put_XYFocusDownNavigationStrategy: *const fn(self: *anyopaque, value: XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        get_XYFocusLeftNavigationStrategy: *const fn(self: *anyopaque, _r: *XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        put_XYFocusLeftNavigationStrategy: *const fn(self: *anyopaque, value: XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        get_XYFocusRightNavigationStrategy: *const fn(self: *anyopaque, _r: *XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        put_XYFocusRightNavigationStrategy: *const fn(self: *anyopaque, value: XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        get_IsTabStop: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsTabStop: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_TabIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_TabIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        add_Invoked: *const fn(self: *anyopaque, handler: *TypedEventHandler(ContentLink,ContentLinkInvokedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Invoked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GotFocus: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GotFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LostFocus: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LostFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Focus: *const fn(self: *anyopaque, value: FocusState, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IContentLinkInvokedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContentLinkInfo(self: *@This()) core.HResult!*ContentLinkInfo {
        var _r: *ContentLinkInfo = undefined;
        const _c = self.vtable.get_ContentLinkInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IContentLinkInvokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "546717c1-e8df-4593-9639-97595fdf8310";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentLinkInfo: *const fn(self: *anyopaque, _r: **ContentLinkInfo) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IContentLinkProvider = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IContentLinkProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "730587fd-bfdc-4cb3-904d-b65ab339bbf5";
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
pub const IContentLinkProviderCollection = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IContentLinkProviderCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5b84d0c-a9f4-4d1a-a13c-10def1843734";
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
pub const IContentLinkProviderFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ContentLinkProvider {
        var _r: *ContentLinkProvider = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IContentLinkProviderFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "57d60d3b-ef1a-4e8e-839b-d36ef3a503e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ContentLinkProvider) callconv(.winapi) HRESULT,
    };
};
pub const IContentLinkStatics = extern struct {
    vtable: *const VTable,
    pub fn getBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_BackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCursorProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CursorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusLeftProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusLeftProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusRightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusRightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusUpProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusUpProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusDownProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusDownProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getElementSoundModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ElementSoundModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusStateProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FocusStateProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusUpNavigationStrategyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusUpNavigationStrategyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusDownNavigationStrategyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusDownNavigationStrategyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusLeftNavigationStrategyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusLeftNavigationStrategyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusRightNavigationStrategyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusRightNavigationStrategyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsTabStopProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsTabStopProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTabIndexProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TabIndexProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IContentLinkStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a34e3063-eb16-484e-a3df-522b9a832e6e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CursorProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusLeftProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusRightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusUpProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusDownProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ElementSoundModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FocusStateProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusUpNavigationStrategyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusDownNavigationStrategyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusLeftNavigationStrategyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusRightNavigationStrategyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsTabStopProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TabIndexProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IGlyphs = extern struct {
    vtable: *const VTable,
    pub fn getUnicodeString(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_UnicodeString(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUnicodeString(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_UnicodeString(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIndices(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Indices(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIndices(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Indices(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFontUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_FontUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_FontUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStyleSimulations(self: *@This()) core.HResult!StyleSimulations {
        var _r: StyleSimulations = undefined;
        const _c = self.vtable.get_StyleSimulations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStyleSimulations(self: *@This(), value: StyleSimulations) core.HResult!void {
        const _c = self.vtable.put_StyleSimulations(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFontRenderingEmSize(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FontRenderingEmSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontRenderingEmSize(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FontRenderingEmSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOriginX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OriginX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOriginX(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_OriginX(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOriginY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OriginY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOriginY(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_OriginY(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFill(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_Fill(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFill(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_Fill(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IGlyphs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d079498b-f2b1-4281-99a2-e4d05932b2b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UnicodeString: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_UnicodeString: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Indices: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Indices: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FontUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_FontUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        get_StyleSimulations: *const fn(self: *anyopaque, _r: *StyleSimulations) callconv(.winapi) HRESULT,
        put_StyleSimulations: *const fn(self: *anyopaque, value: StyleSimulations) callconv(.winapi) HRESULT,
        get_FontRenderingEmSize: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FontRenderingEmSize: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_OriginX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_OriginX: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_OriginY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_OriginY: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Fill: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_Fill: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
    };
};
pub const IGlyphs2 = extern struct {
    vtable: *const VTable,
    pub fn getIsColorFontEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsColorFontEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsColorFontEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsColorFontEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getColorFontPaletteIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ColorFontPaletteIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColorFontPaletteIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ColorFontPaletteIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IGlyphs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa8bfe5c-3754-4bee-bbe1-4403ee9b86f0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsColorFontEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsColorFontEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ColorFontPaletteIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ColorFontPaletteIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IGlyphsStatics = extern struct {
    vtable: *const VTable,
    pub fn getUnicodeStringProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_UnicodeStringProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIndicesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IndicesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontUriProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FontUriProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStyleSimulationsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StyleSimulationsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontRenderingEmSizeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FontRenderingEmSizeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOriginXProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OriginXProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOriginYProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OriginYProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFillProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FillProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IGlyphsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "225cf4c5-fdf1-43ed-958f-414e86f103f2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UnicodeStringProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IndicesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FontUriProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_StyleSimulationsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FontRenderingEmSizeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_OriginXProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_OriginYProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FillProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IGlyphsStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getIsColorFontEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsColorFontEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getColorFontPaletteIndexProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ColorFontPaletteIndexProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IGlyphsStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10489aa7-1615-4a33-aa02-d7ef2aefc739";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsColorFontEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ColorFontPaletteIndexProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IHyperlink = extern struct {
    vtable: *const VTable,
    pub fn getNavigateUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_NavigateUri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNavigateUri(self: *@This(), value: *Uri) core.HResult!void {
        const _c = self.vtable.put_NavigateUri(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addClick(self: *@This(), handler: *TypedEventHandler(Hyperlink,HyperlinkClickEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Click(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Click(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IHyperlink";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0fe2363b-14e9-4152-9e58-5aea5b21f08d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NavigateUri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_NavigateUri: *const fn(self: *anyopaque, value: *Uri) callconv(.winapi) HRESULT,
        add_Click: *const fn(self: *anyopaque, handler: *TypedEventHandler(Hyperlink,HyperlinkClickEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Click: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IHyperlink2 = extern struct {
    vtable: *const VTable,
    pub fn getUnderlineStyle(self: *@This()) core.HResult!UnderlineStyle {
        var _r: UnderlineStyle = undefined;
        const _c = self.vtable.get_UnderlineStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putUnderlineStyle(self: *@This(), value: UnderlineStyle) core.HResult!void {
        const _c = self.vtable.put_UnderlineStyle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IHyperlink2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ce9da5f-7cff-4291-b78f-dfec72490576";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UnderlineStyle: *const fn(self: *anyopaque, _r: *UnderlineStyle) callconv(.winapi) HRESULT,
        put_UnderlineStyle: *const fn(self: *anyopaque, value: UnderlineStyle) callconv(.winapi) HRESULT,
    };
};
pub const IHyperlink3 = extern struct {
    vtable: *const VTable,
    pub fn getXYFocusLeft(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_XYFocusLeft(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusLeft(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_XYFocusLeft(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusRight(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_XYFocusRight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusRight(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_XYFocusRight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusUp(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_XYFocusUp(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusUp(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_XYFocusUp(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusDown(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_XYFocusDown(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusDown(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_XYFocusDown(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getElementSoundMode(self: *@This()) core.HResult!ElementSoundMode {
        var _r: ElementSoundMode = undefined;
        const _c = self.vtable.get_ElementSoundMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putElementSoundMode(self: *@This(), value: ElementSoundMode) core.HResult!void {
        const _c = self.vtable.put_ElementSoundMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IHyperlink3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3f157d9-e5d3-4fb7-8702-4f6d85dd9e0a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_XYFocusLeft: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_XYFocusLeft: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_XYFocusRight: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_XYFocusRight: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_XYFocusUp: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_XYFocusUp: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_XYFocusDown: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_XYFocusDown: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_ElementSoundMode: *const fn(self: *anyopaque, _r: *ElementSoundMode) callconv(.winapi) HRESULT,
        put_ElementSoundMode: *const fn(self: *anyopaque, value: ElementSoundMode) callconv(.winapi) HRESULT,
    };
};
pub const IHyperlink4 = extern struct {
    vtable: *const VTable,
    pub fn getFocusState(self: *@This()) core.HResult!FocusState {
        var _r: FocusState = undefined;
        const _c = self.vtable.get_FocusState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusUpNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var _r: XYFocusNavigationStrategy = undefined;
        const _c = self.vtable.get_XYFocusUpNavigationStrategy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusUpNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const _c = self.vtable.put_XYFocusUpNavigationStrategy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusDownNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var _r: XYFocusNavigationStrategy = undefined;
        const _c = self.vtable.get_XYFocusDownNavigationStrategy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusDownNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const _c = self.vtable.put_XYFocusDownNavigationStrategy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusLeftNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var _r: XYFocusNavigationStrategy = undefined;
        const _c = self.vtable.get_XYFocusLeftNavigationStrategy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusLeftNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const _c = self.vtable.put_XYFocusLeftNavigationStrategy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusRightNavigationStrategy(self: *@This()) core.HResult!XYFocusNavigationStrategy {
        var _r: XYFocusNavigationStrategy = undefined;
        const _c = self.vtable.get_XYFocusRightNavigationStrategy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusRightNavigationStrategy(self: *@This(), value: XYFocusNavigationStrategy) core.HResult!void {
        const _c = self.vtable.put_XYFocusRightNavigationStrategy(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGotFocus(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GotFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGotFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GotFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLostFocus(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LostFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLostFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LostFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Focus(self: *@This(), value: FocusState) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.Focus(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IHyperlink4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f7d02959-82fb-400a-a407-5a4ee677988a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FocusState: *const fn(self: *anyopaque, _r: *FocusState) callconv(.winapi) HRESULT,
        get_XYFocusUpNavigationStrategy: *const fn(self: *anyopaque, _r: *XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        put_XYFocusUpNavigationStrategy: *const fn(self: *anyopaque, value: XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        get_XYFocusDownNavigationStrategy: *const fn(self: *anyopaque, _r: *XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        put_XYFocusDownNavigationStrategy: *const fn(self: *anyopaque, value: XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        get_XYFocusLeftNavigationStrategy: *const fn(self: *anyopaque, _r: *XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        put_XYFocusLeftNavigationStrategy: *const fn(self: *anyopaque, value: XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        get_XYFocusRightNavigationStrategy: *const fn(self: *anyopaque, _r: *XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        put_XYFocusRightNavigationStrategy: *const fn(self: *anyopaque, value: XYFocusNavigationStrategy) callconv(.winapi) HRESULT,
        add_GotFocus: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GotFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LostFocus: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LostFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        Focus: *const fn(self: *anyopaque, value: FocusState, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IHyperlink5 = extern struct {
    vtable: *const VTable,
    pub fn getIsTabStop(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTabStop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsTabStop(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsTabStop(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTabIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_TabIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTabIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_TabIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IHyperlink5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "607dd7d2-0945-4328-91ee-94ccec2ea6c3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTabStop: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsTabStop: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_TabIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_TabIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IHyperlinkClickEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IHyperlinkClickEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c755916b-7bdc-4be7-b373-9240a503d870";
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
pub const IHyperlinkStatics = extern struct {
    vtable: *const VTable,
    pub fn getNavigateUriProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_NavigateUriProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IHyperlinkStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a44d3d4-fd41-41db-8c72-3b790acd9fd3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NavigateUriProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IHyperlinkStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getUnderlineStyleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_UnderlineStyleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IHyperlinkStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5028d8b7-7adf-43ee-a4ae-9c925f755716";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UnderlineStyleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IHyperlinkStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getXYFocusLeftProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusLeftProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusRightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusRightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusUpProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusUpProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusDownProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusDownProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getElementSoundModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ElementSoundModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IHyperlinkStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e15dea0-205e-4947-99a5-74e757e8e1b4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_XYFocusLeftProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusRightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusUpProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusDownProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ElementSoundModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IHyperlinkStatics4 = extern struct {
    vtable: *const VTable,
    pub fn getFocusStateProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FocusStateProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusUpNavigationStrategyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusUpNavigationStrategyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusDownNavigationStrategyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusDownNavigationStrategyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusLeftNavigationStrategyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusLeftNavigationStrategyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getXYFocusRightNavigationStrategyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_XYFocusRightNavigationStrategyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IHyperlinkStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0476b378-8faa-4e24-b3b6-e9de4d3c708c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FocusStateProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusUpNavigationStrategyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusDownNavigationStrategyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusLeftNavigationStrategyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_XYFocusRightNavigationStrategyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IHyperlinkStatics5 = extern struct {
    vtable: *const VTable,
    pub fn getIsTabStopProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsTabStopProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTabIndexProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TabIndexProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IHyperlinkStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59308cea-1e49-4921-bd88-a2878d07e30e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTabStopProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_TabIndexProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IInline = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IInline";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c92712d-1bc9-4931-8cb1-1aeadf1cc685";
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
pub const IInlineFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Inline {
        var _r: *Inline = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IInlineFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4058acd1-2f90-4b8f-99dd-4218ef5f03de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **Inline) callconv(.winapi) HRESULT,
    };
};
pub const IInlineUIContainer = extern struct {
    vtable: *const VTable,
    pub fn getChild(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Child(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChild(self: *@This(), value: *UIElement) core.HResult!void {
        const _c = self.vtable.put_Child(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IInlineUIContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1416ce81-28ee-452e-b121-5fc4f60b86a6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Child: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        put_Child: *const fn(self: *anyopaque, value: *UIElement) callconv(.winapi) HRESULT,
    };
};
pub const IItalic = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IItalic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "91f4619c-fcbb-4157-802c-76f63b5fb657";
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
pub const ILineBreak = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ILineBreak";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "645589c4-f769-41ed-895b-8a1b2fb31562";
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
pub const IParagraph = extern struct {
    vtable: *const VTable,
    pub fn getInlines(self: *@This()) core.HResult!*InlineCollection {
        var _r: *InlineCollection = undefined;
        const _c = self.vtable.get_Inlines(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTextIndent(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_TextIndent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTextIndent(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_TextIndent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IParagraph";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f83ef59a-fa61-4bef-ae33-0b0ad756a84d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Inlines: *const fn(self: *anyopaque, _r: **InlineCollection) callconv(.winapi) HRESULT,
        get_TextIndent: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_TextIndent: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IParagraphStatics = extern struct {
    vtable: *const VTable,
    pub fn getTextIndentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TextIndentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IParagraphStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef08889a-535b-4e4c-8d84-283b33e98a37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextIndentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPlaceContentLinkProvider = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IPlaceContentLinkProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10348a4c-2366-41be-90c8-3258b53b5483";
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
pub const IRun = extern struct {
    vtable: *const VTable,
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
    pub fn getFlowDirection(self: *@This()) core.HResult!FlowDirection {
        var _r: FlowDirection = undefined;
        const _c = self.vtable.get_FlowDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFlowDirection(self: *@This(), value: FlowDirection) core.HResult!void {
        const _c = self.vtable.put_FlowDirection(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IRun";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59553c83-0e14-49bd-b84b-c526f3034349";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Text: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Text: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_FlowDirection: *const fn(self: *anyopaque, _r: *FlowDirection) callconv(.winapi) HRESULT,
        put_FlowDirection: *const fn(self: *anyopaque, value: FlowDirection) callconv(.winapi) HRESULT,
    };
};
pub const IRunStatics = extern struct {
    vtable: *const VTable,
    pub fn getFlowDirectionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FlowDirectionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IRunStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e9303cef-65a0-4b8d-a7f7-8fdb287b46f3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FlowDirectionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISpan = extern struct {
    vtable: *const VTable,
    pub fn getInlines(self: *@This()) core.HResult!*InlineCollection {
        var _r: *InlineCollection = undefined;
        const _c = self.vtable.get_Inlines(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInlines(self: *@This(), value: *InlineCollection) core.HResult!void {
        const _c = self.vtable.put_Inlines(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ISpan";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9839d4a9-02af-4811-aa15-6bef3acac97a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Inlines: *const fn(self: *anyopaque, _r: **InlineCollection) callconv(.winapi) HRESULT,
        put_Inlines: *const fn(self: *anyopaque, value: *InlineCollection) callconv(.winapi) HRESULT,
    };
};
pub const ISpanFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*Span {
        var _r: *Span = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ISpanFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5b916f5c-cd2d-40c0-956a-386448322f79";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **Span) callconv(.winapi) HRESULT,
    };
};
pub const ITextElement = extern struct {
    vtable: *const VTable,
    pub fn getName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Name(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontSize(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FontSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontSize(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_FontSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFontFamily(self: *@This()) core.HResult!*FontFamily {
        var _r: *FontFamily = undefined;
        const _c = self.vtable.get_FontFamily(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontFamily(self: *@This(), value: *FontFamily) core.HResult!void {
        const _c = self.vtable.put_FontFamily(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFontWeight(self: *@This()) core.HResult!FontWeight {
        var _r: FontWeight = undefined;
        const _c = self.vtable.get_FontWeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontWeight(self: *@This(), value: FontWeight) core.HResult!void {
        const _c = self.vtable.put_FontWeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFontStyle(self: *@This()) core.HResult!FontStyle {
        var _r: FontStyle = undefined;
        const _c = self.vtable.get_FontStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontStyle(self: *@This(), value: FontStyle) core.HResult!void {
        const _c = self.vtable.put_FontStyle(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFontStretch(self: *@This()) core.HResult!FontStretch {
        var _r: FontStretch = undefined;
        const _c = self.vtable.get_FontStretch(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFontStretch(self: *@This(), value: FontStretch) core.HResult!void {
        const _c = self.vtable.put_FontStretch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCharacterSpacing(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_CharacterSpacing(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCharacterSpacing(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_CharacterSpacing(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForeground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_Foreground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForeground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_Foreground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLanguage(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Language(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLanguage(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Language(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentStart(self: *@This()) core.HResult!*TextPointer {
        var _r: *TextPointer = undefined;
        const _c = self.vtable.get_ContentStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentEnd(self: *@This()) core.HResult!*TextPointer {
        var _r: *TextPointer = undefined;
        const _c = self.vtable.get_ContentEnd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getElementStart(self: *@This()) core.HResult!*TextPointer {
        var _r: *TextPointer = undefined;
        const _c = self.vtable.get_ElementStart(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getElementEnd(self: *@This()) core.HResult!*TextPointer {
        var _r: *TextPointer = undefined;
        const _c = self.vtable.get_ElementEnd(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindName(self: *@This(), name: HSTRING) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.FindName(@ptrCast(self), name, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextElement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e83b0062-d776-4f92-baea-40e77d4791d5";
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
        get_FontSize: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_FontSize: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_FontFamily: *const fn(self: *anyopaque, _r: **FontFamily) callconv(.winapi) HRESULT,
        put_FontFamily: *const fn(self: *anyopaque, value: *FontFamily) callconv(.winapi) HRESULT,
        get_FontWeight: *const fn(self: *anyopaque, _r: *FontWeight) callconv(.winapi) HRESULT,
        put_FontWeight: *const fn(self: *anyopaque, value: FontWeight) callconv(.winapi) HRESULT,
        get_FontStyle: *const fn(self: *anyopaque, _r: *FontStyle) callconv(.winapi) HRESULT,
        put_FontStyle: *const fn(self: *anyopaque, value: FontStyle) callconv(.winapi) HRESULT,
        get_FontStretch: *const fn(self: *anyopaque, _r: *FontStretch) callconv(.winapi) HRESULT,
        put_FontStretch: *const fn(self: *anyopaque, value: FontStretch) callconv(.winapi) HRESULT,
        get_CharacterSpacing: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_CharacterSpacing: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Foreground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_Foreground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_Language: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Language: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ContentStart: *const fn(self: *anyopaque, _r: **TextPointer) callconv(.winapi) HRESULT,
        get_ContentEnd: *const fn(self: *anyopaque, _r: **TextPointer) callconv(.winapi) HRESULT,
        get_ElementStart: *const fn(self: *anyopaque, _r: **TextPointer) callconv(.winapi) HRESULT,
        get_ElementEnd: *const fn(self: *anyopaque, _r: **TextPointer) callconv(.winapi) HRESULT,
        FindName: *const fn(self: *anyopaque, name: HSTRING, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const ITextElement2 = extern struct {
    vtable: *const VTable,
    pub fn getIsTextScaleFactorEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsTextScaleFactorEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsTextScaleFactorEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsTextScaleFactorEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextElement2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a8076aa8-f892-49f6-8cd2-89addaf06d2d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTextScaleFactorEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsTextScaleFactorEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ITextElement3 = extern struct {
    vtable: *const VTable,
    pub fn getAllowFocusOnInteraction(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowFocusOnInteraction(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowFocusOnInteraction(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowFocusOnInteraction(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAccessKey(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AccessKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAccessKey(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_AccessKey(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExitDisplayModeOnAccessKeyInvoked(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ExitDisplayModeOnAccessKeyInvoked(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExitDisplayModeOnAccessKeyInvoked(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ExitDisplayModeOnAccessKeyInvoked(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextElement3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1db340f-1bc4-4ca8-bcf7-770bff9b27ab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowFocusOnInteraction: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowFocusOnInteraction: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AccessKey: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AccessKey: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ExitDisplayModeOnAccessKeyInvoked: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ExitDisplayModeOnAccessKeyInvoked: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ITextElement4 = extern struct {
    vtable: *const VTable,
    pub fn getTextDecorations(self: *@This()) core.HResult!TextDecorations {
        var _r: TextDecorations = undefined;
        const _c = self.vtable.get_TextDecorations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTextDecorations(self: *@This(), value: TextDecorations) core.HResult!void {
        const _c = self.vtable.put_TextDecorations(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsAccessKeyScope(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAccessKeyScope(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsAccessKeyScope(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsAccessKeyScope(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAccessKeyScopeOwner(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_AccessKeyScopeOwner(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAccessKeyScopeOwner(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_AccessKeyScopeOwner(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyTipPlacementMode(self: *@This()) core.HResult!KeyTipPlacementMode {
        var _r: KeyTipPlacementMode = undefined;
        const _c = self.vtable.get_KeyTipPlacementMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyTipPlacementMode(self: *@This(), value: KeyTipPlacementMode) core.HResult!void {
        const _c = self.vtable.put_KeyTipPlacementMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyTipHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_KeyTipHorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyTipHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_KeyTipHorizontalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyTipVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_KeyTipVerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKeyTipVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_KeyTipVerticalOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAccessKeyDisplayRequested(self: *@This(), handler: *TypedEventHandler(TextElement,AccessKeyDisplayRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccessKeyDisplayRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccessKeyDisplayRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccessKeyDisplayRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAccessKeyDisplayDismissed(self: *@This(), handler: *TypedEventHandler(TextElement,AccessKeyDisplayDismissedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccessKeyDisplayDismissed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccessKeyDisplayDismissed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccessKeyDisplayDismissed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addAccessKeyInvoked(self: *@This(), handler: *TypedEventHandler(TextElement,AccessKeyInvokedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AccessKeyInvoked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAccessKeyInvoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AccessKeyInvoked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextElement4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b196e222-ca0e-48a9-83bc-36ce50566ac7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextDecorations: *const fn(self: *anyopaque, _r: *TextDecorations) callconv(.winapi) HRESULT,
        put_TextDecorations: *const fn(self: *anyopaque, value: TextDecorations) callconv(.winapi) HRESULT,
        get_IsAccessKeyScope: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsAccessKeyScope: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_AccessKeyScopeOwner: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_AccessKeyScopeOwner: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_KeyTipPlacementMode: *const fn(self: *anyopaque, _r: *KeyTipPlacementMode) callconv(.winapi) HRESULT,
        put_KeyTipPlacementMode: *const fn(self: *anyopaque, value: KeyTipPlacementMode) callconv(.winapi) HRESULT,
        get_KeyTipHorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_KeyTipHorizontalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_KeyTipVerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_KeyTipVerticalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        add_AccessKeyDisplayRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(TextElement,AccessKeyDisplayRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccessKeyDisplayRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AccessKeyDisplayDismissed: *const fn(self: *anyopaque, handler: *TypedEventHandler(TextElement,AccessKeyDisplayDismissedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccessKeyDisplayDismissed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_AccessKeyInvoked: *const fn(self: *anyopaque, handler: *TypedEventHandler(TextElement,AccessKeyInvokedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AccessKeyInvoked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ITextElement5 = extern struct {
    vtable: *const VTable,
    pub fn getXamlRoot(self: *@This()) core.HResult!*XamlRoot {
        var _r: *XamlRoot = undefined;
        const _c = self.vtable.get_XamlRoot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXamlRoot(self: *@This(), value: *XamlRoot) core.HResult!void {
        const _c = self.vtable.put_XamlRoot(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextElement5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd9552f3-540d-58bf-b6a8-07556aeda2ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_XamlRoot: *const fn(self: *anyopaque, _r: **XamlRoot) callconv(.winapi) HRESULT,
        put_XamlRoot: *const fn(self: *anyopaque, value: *XamlRoot) callconv(.winapi) HRESULT,
    };
};
pub const ITextElementFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextElementFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "35007285-cf47-4bfe-b1bc-39c93af4ae80";
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
pub const ITextElementOverrides = extern struct {
    vtable: *const VTable,
    pub fn OnDisconnectVisualChildren(self: *@This()) core.HResult!void {
        const _c = self.vtable.OnDisconnectVisualChildren(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextElementOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ce21ee7-4f76-4dd9-bf91-163beccf84bc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnDisconnectVisualChildren: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ITextElementStatics = extern struct {
    vtable: *const VTable,
    pub fn getFontSizeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FontSizeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontFamilyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FontFamilyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontWeightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FontWeightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontStyleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FontStyleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFontStretchProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FontStretchProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCharacterSpacingProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CharacterSpacingProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForegroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ForegroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLanguageProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LanguageProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextElementStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0a2f9b98-6c03-4470-a79b-3298a10482ce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FontSizeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FontFamilyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FontWeightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FontStyleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FontStretchProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CharacterSpacingProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ForegroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_LanguageProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITextElementStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getIsTextScaleFactorEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsTextScaleFactorEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextElementStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "164297b2-982b-49e1-8c03-ca43bc4d5b6d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsTextScaleFactorEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITextElementStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getAllowFocusOnInteractionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AllowFocusOnInteractionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccessKeyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AccessKeyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExitDisplayModeOnAccessKeyInvokedProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ExitDisplayModeOnAccessKeyInvokedProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextElementStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cfefcfaf-0fa1-45ec-9a4e-9b33664dc8b1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AllowFocusOnInteractionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AccessKeyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ExitDisplayModeOnAccessKeyInvokedProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITextElementStatics4 = extern struct {
    vtable: *const VTable,
    pub fn getTextDecorationsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TextDecorationsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsAccessKeyScopeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsAccessKeyScopeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccessKeyScopeOwnerProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AccessKeyScopeOwnerProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyTipPlacementModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyTipPlacementModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyTipHorizontalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyTipHorizontalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyTipVerticalOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyTipVerticalOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextElementStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fd8f641e-6b12-40d5-b6ef-d1bd12ac9066";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextDecorationsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsAccessKeyScopeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AccessKeyScopeOwnerProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_KeyTipPlacementModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_KeyTipHorizontalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_KeyTipVerticalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITextHighlighter = extern struct {
    vtable: *const VTable,
    pub fn getRanges(self: *@This()) core.HResult!*IVector(TextRange) {
        var _r: *IVector(TextRange) = undefined;
        const _c = self.vtable.get_Ranges(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getForeground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_Foreground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForeground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_Foreground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_Background(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_Background(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextHighlighter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ba6cb54b-7d75-4535-b30d-a81a00b637a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Ranges: *const fn(self: *anyopaque, _r: **IVector(TextRange)) callconv(.winapi) HRESULT,
        get_Foreground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_Foreground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_Background: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_Background: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
    };
};
pub const ITextHighlighterBase = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextHighlighterBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d957601a-5f0d-4cdf-9758-97e0eb95c8fa";
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
pub const ITextHighlighterBaseFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextHighlighterBaseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9592b2d0-eadc-4c74-92c8-6e896e22506d";
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
pub const ITextHighlighterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TextHighlighter {
        var _r: *TextHighlighter = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextHighlighterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "70125461-9a8f-4fa0-b235-8ffaa507bef2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **TextHighlighter) callconv(.winapi) HRESULT,
    };
};
pub const ITextHighlighterStatics = extern struct {
    vtable: *const VTable,
    pub fn getForegroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ForegroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_BackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextHighlighterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3b009c4-3a7e-49cc-ab84-29c405488765";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ForegroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_BackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITextPointer = extern struct {
    vtable: *const VTable,
    pub fn getParent(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_Parent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVisualParent(self: *@This()) core.HResult!*FrameworkElement {
        var _r: *FrameworkElement = undefined;
        const _c = self.vtable.get_VisualParent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLogicalDirection(self: *@This()) core.HResult!LogicalDirection {
        var _r: LogicalDirection = undefined;
        const _c = self.vtable.get_LogicalDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOffset(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCharacterRect(self: *@This(), direction: LogicalDirection) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.GetCharacterRect(@ptrCast(self), direction, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPositionAtOffset(self: *@This(), offset: i32, direction: LogicalDirection) core.HResult!*TextPointer {
        var _r: *TextPointer = undefined;
        const _c = self.vtable.GetPositionAtOffset(@ptrCast(self), offset, direction, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITextPointer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac687aa1-6a41-43ff-851e-45348aa2cf7b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Parent: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        get_VisualParent: *const fn(self: *anyopaque, _r: **FrameworkElement) callconv(.winapi) HRESULT,
        get_LogicalDirection: *const fn(self: *anyopaque, _r: *LogicalDirection) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetCharacterRect: *const fn(self: *anyopaque, direction: LogicalDirection, _r: *Rect) callconv(.winapi) HRESULT,
        GetPositionAtOffset: *const fn(self: *anyopaque, offset: i32, direction: LogicalDirection, _r: **TextPointer) callconv(.winapi) HRESULT,
    };
};
pub const ITypography = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITypography";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "866f65d5-ea97-42ab-9288-9c01aebc7a97";
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
pub const ITypographyStatics = extern struct {
    vtable: *const VTable,
    pub fn getAnnotationAlternatesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AnnotationAlternatesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAnnotationAlternates(self: *@This(), element: *DependencyObject) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetAnnotationAlternates(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAnnotationAlternates(self: *@This(), element: *DependencyObject, value: i32) core.HResult!void {
        const _c = self.vtable.SetAnnotationAlternates(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEastAsianExpertFormsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EastAsianExpertFormsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetEastAsianExpertForms(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetEastAsianExpertForms(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetEastAsianExpertForms(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetEastAsianExpertForms(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEastAsianLanguageProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EastAsianLanguageProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetEastAsianLanguage(self: *@This(), element: *DependencyObject) core.HResult!FontEastAsianLanguage {
        var _r: FontEastAsianLanguage = undefined;
        const _c = self.vtable.GetEastAsianLanguage(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetEastAsianLanguage(self: *@This(), element: *DependencyObject, value: FontEastAsianLanguage) core.HResult!void {
        const _c = self.vtable.SetEastAsianLanguage(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEastAsianWidthsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EastAsianWidthsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetEastAsianWidths(self: *@This(), element: *DependencyObject) core.HResult!FontEastAsianWidths {
        var _r: FontEastAsianWidths = undefined;
        const _c = self.vtable.GetEastAsianWidths(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetEastAsianWidths(self: *@This(), element: *DependencyObject, value: FontEastAsianWidths) core.HResult!void {
        const _c = self.vtable.SetEastAsianWidths(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStandardLigaturesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StandardLigaturesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStandardLigatures(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStandardLigatures(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStandardLigatures(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStandardLigatures(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContextualLigaturesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContextualLigaturesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContextualLigatures(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetContextualLigatures(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetContextualLigatures(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetContextualLigatures(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDiscretionaryLigaturesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DiscretionaryLigaturesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDiscretionaryLigatures(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetDiscretionaryLigatures(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetDiscretionaryLigatures(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetDiscretionaryLigatures(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHistoricalLigaturesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_HistoricalLigaturesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHistoricalLigatures(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetHistoricalLigatures(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetHistoricalLigatures(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetHistoricalLigatures(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStandardSwashesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StandardSwashesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStandardSwashes(self: *@This(), element: *DependencyObject) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetStandardSwashes(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStandardSwashes(self: *@This(), element: *DependencyObject, value: i32) core.HResult!void {
        const _c = self.vtable.SetStandardSwashes(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContextualSwashesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContextualSwashesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContextualSwashes(self: *@This(), element: *DependencyObject) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetContextualSwashes(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetContextualSwashes(self: *@This(), element: *DependencyObject, value: i32) core.HResult!void {
        const _c = self.vtable.SetContextualSwashes(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContextualAlternatesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContextualAlternatesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetContextualAlternates(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetContextualAlternates(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetContextualAlternates(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetContextualAlternates(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticAlternatesProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticAlternatesProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticAlternates(self: *@This(), element: *DependencyObject) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetStylisticAlternates(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticAlternates(self: *@This(), element: *DependencyObject, value: i32) core.HResult!void {
        const _c = self.vtable.SetStylisticAlternates(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet1Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet1Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet1(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet1(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet1(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet1(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet2Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet2Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet2(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet2(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet2(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet2(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet3Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet3Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet3(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet3(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet3(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet3(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet4Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet4Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet4(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet4(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet4(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet4(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet5Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet5Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet5(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet5(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet5(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet5(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet6Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet6Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet6(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet6(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet6(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet6(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet7Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet7Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet7(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet7(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet7(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet7(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet8Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet8Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet8(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet8(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet8(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet8(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet9Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet9Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet9(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet9(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet9(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet9(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet10Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet10Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet10(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet10(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet10(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet10(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet11Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet11Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet11(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet11(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet11(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet11(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet12Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet12Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet12(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet12(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet12(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet12(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet13Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet13Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet13(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet13(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet13(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet13(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet14Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet14Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet14(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet14(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet14(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet14(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet15Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet15Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet15(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet15(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet15(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet15(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet16Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet16Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet16(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet16(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet16(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet16(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet17Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet17Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet17(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet17(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet17(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet17(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet18Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet18Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet18(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet18(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet18(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet18(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet19Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet19Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet19(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet19(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet19(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet19(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getStylisticSet20Property(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_StylisticSet20Property(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetStylisticSet20(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetStylisticSet20(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetStylisticSet20(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetStylisticSet20(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCapitalsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CapitalsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCapitals(self: *@This(), element: *DependencyObject) core.HResult!FontCapitals {
        var _r: FontCapitals = undefined;
        const _c = self.vtable.GetCapitals(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetCapitals(self: *@This(), element: *DependencyObject, value: FontCapitals) core.HResult!void {
        const _c = self.vtable.SetCapitals(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCapitalSpacingProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CapitalSpacingProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCapitalSpacing(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetCapitalSpacing(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetCapitalSpacing(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetCapitalSpacing(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKerningProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KerningProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetKerning(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetKerning(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetKerning(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetKerning(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCaseSensitiveFormsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CaseSensitiveFormsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCaseSensitiveForms(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetCaseSensitiveForms(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetCaseSensitiveForms(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetCaseSensitiveForms(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHistoricalFormsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_HistoricalFormsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHistoricalForms(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetHistoricalForms(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetHistoricalForms(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetHistoricalForms(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFractionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FractionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFraction(self: *@This(), element: *DependencyObject) core.HResult!FontFraction {
        var _r: FontFraction = undefined;
        const _c = self.vtable.GetFraction(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetFraction(self: *@This(), element: *DependencyObject, value: FontFraction) core.HResult!void {
        const _c = self.vtable.SetFraction(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNumeralStyleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_NumeralStyleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNumeralStyle(self: *@This(), element: *DependencyObject) core.HResult!FontNumeralStyle {
        var _r: FontNumeralStyle = undefined;
        const _c = self.vtable.GetNumeralStyle(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetNumeralStyle(self: *@This(), element: *DependencyObject, value: FontNumeralStyle) core.HResult!void {
        const _c = self.vtable.SetNumeralStyle(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getNumeralAlignmentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_NumeralAlignmentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNumeralAlignment(self: *@This(), element: *DependencyObject) core.HResult!FontNumeralAlignment {
        var _r: FontNumeralAlignment = undefined;
        const _c = self.vtable.GetNumeralAlignment(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetNumeralAlignment(self: *@This(), element: *DependencyObject, value: FontNumeralAlignment) core.HResult!void {
        const _c = self.vtable.SetNumeralAlignment(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSlashedZeroProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SlashedZeroProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSlashedZero(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetSlashedZero(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetSlashedZero(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetSlashedZero(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMathematicalGreekProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MathematicalGreekProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetMathematicalGreek(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetMathematicalGreek(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetMathematicalGreek(self: *@This(), element: *DependencyObject, value: bool) core.HResult!void {
        const _c = self.vtable.SetMathematicalGreek(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVariantsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_VariantsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetVariants(self: *@This(), element: *DependencyObject) core.HResult!FontVariants {
        var _r: FontVariants = undefined;
        const _c = self.vtable.GetVariants(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetVariants(self: *@This(), element: *DependencyObject, value: FontVariants) core.HResult!void {
        const _c = self.vtable.SetVariants(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.ITypographyStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67b9ec88-6c57-4ce0-95f1-d4b9ed632fb4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AnnotationAlternatesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetAnnotationAlternates: *const fn(self: *anyopaque, element: *DependencyObject, _r: *i32) callconv(.winapi) HRESULT,
        SetAnnotationAlternates: *const fn(self: *anyopaque, element: *DependencyObject, value: i32) callconv(.winapi) HRESULT,
        get_EastAsianExpertFormsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetEastAsianExpertForms: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetEastAsianExpertForms: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_EastAsianLanguageProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetEastAsianLanguage: *const fn(self: *anyopaque, element: *DependencyObject, _r: *FontEastAsianLanguage) callconv(.winapi) HRESULT,
        SetEastAsianLanguage: *const fn(self: *anyopaque, element: *DependencyObject, value: FontEastAsianLanguage) callconv(.winapi) HRESULT,
        get_EastAsianWidthsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetEastAsianWidths: *const fn(self: *anyopaque, element: *DependencyObject, _r: *FontEastAsianWidths) callconv(.winapi) HRESULT,
        SetEastAsianWidths: *const fn(self: *anyopaque, element: *DependencyObject, value: FontEastAsianWidths) callconv(.winapi) HRESULT,
        get_StandardLigaturesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStandardLigatures: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStandardLigatures: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_ContextualLigaturesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetContextualLigatures: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetContextualLigatures: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_DiscretionaryLigaturesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetDiscretionaryLigatures: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetDiscretionaryLigatures: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_HistoricalLigaturesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetHistoricalLigatures: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetHistoricalLigatures: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StandardSwashesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStandardSwashes: *const fn(self: *anyopaque, element: *DependencyObject, _r: *i32) callconv(.winapi) HRESULT,
        SetStandardSwashes: *const fn(self: *anyopaque, element: *DependencyObject, value: i32) callconv(.winapi) HRESULT,
        get_ContextualSwashesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetContextualSwashes: *const fn(self: *anyopaque, element: *DependencyObject, _r: *i32) callconv(.winapi) HRESULT,
        SetContextualSwashes: *const fn(self: *anyopaque, element: *DependencyObject, value: i32) callconv(.winapi) HRESULT,
        get_ContextualAlternatesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetContextualAlternates: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetContextualAlternates: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticAlternatesProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticAlternates: *const fn(self: *anyopaque, element: *DependencyObject, _r: *i32) callconv(.winapi) HRESULT,
        SetStylisticAlternates: *const fn(self: *anyopaque, element: *DependencyObject, value: i32) callconv(.winapi) HRESULT,
        get_StylisticSet1Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet1: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet1: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet2Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet2: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet2: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet3Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet3: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet3: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet4Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet4: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet4: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet5Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet5: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet5: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet6Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet6: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet6: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet7Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet7: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet7: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet8Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet8: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet8: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet9Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet9: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet9: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet10Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet10: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet10: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet11Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet11: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet11: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet12Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet12: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet12: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet13Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet13: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet13: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet14Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet14: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet14: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet15Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet15: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet15: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet16Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet16: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet16: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet17Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet17: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet17: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet18Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet18: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet18: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet19Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet19: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet19: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_StylisticSet20Property: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetStylisticSet20: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetStylisticSet20: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_CapitalsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetCapitals: *const fn(self: *anyopaque, element: *DependencyObject, _r: *FontCapitals) callconv(.winapi) HRESULT,
        SetCapitals: *const fn(self: *anyopaque, element: *DependencyObject, value: FontCapitals) callconv(.winapi) HRESULT,
        get_CapitalSpacingProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetCapitalSpacing: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetCapitalSpacing: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_KerningProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetKerning: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetKerning: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_CaseSensitiveFormsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetCaseSensitiveForms: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetCaseSensitiveForms: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_HistoricalFormsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetHistoricalForms: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetHistoricalForms: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_FractionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetFraction: *const fn(self: *anyopaque, element: *DependencyObject, _r: *FontFraction) callconv(.winapi) HRESULT,
        SetFraction: *const fn(self: *anyopaque, element: *DependencyObject, value: FontFraction) callconv(.winapi) HRESULT,
        get_NumeralStyleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetNumeralStyle: *const fn(self: *anyopaque, element: *DependencyObject, _r: *FontNumeralStyle) callconv(.winapi) HRESULT,
        SetNumeralStyle: *const fn(self: *anyopaque, element: *DependencyObject, value: FontNumeralStyle) callconv(.winapi) HRESULT,
        get_NumeralAlignmentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetNumeralAlignment: *const fn(self: *anyopaque, element: *DependencyObject, _r: *FontNumeralAlignment) callconv(.winapi) HRESULT,
        SetNumeralAlignment: *const fn(self: *anyopaque, element: *DependencyObject, value: FontNumeralAlignment) callconv(.winapi) HRESULT,
        get_SlashedZeroProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetSlashedZero: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetSlashedZero: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_MathematicalGreekProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetMathematicalGreek: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
        SetMathematicalGreek: *const fn(self: *anyopaque, element: *DependencyObject, value: bool) callconv(.winapi) HRESULT,
        get_VariantsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetVariants: *const fn(self: *anyopaque, element: *DependencyObject, _r: *FontVariants) callconv(.winapi) HRESULT,
        SetVariants: *const fn(self: *anyopaque, element: *DependencyObject, value: FontVariants) callconv(.winapi) HRESULT,
    };
};
pub const IUnderline = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.IUnderline";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a5fa8202-61c0-47d7-93ef-bc0b577c5f26";
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
pub const InlineCollection = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetAt(self: *@This(), index: u32) core.HResult!*Inline {
        const this: *IVector = @ptrCast(self);
        return try this.GetAt(index);
    }
    pub fn getSize(self: *@This()) core.HResult!u32 {
        const this: *IVector = @ptrCast(self);
        return try this.getSize();
    }
    pub fn GetView(self: *@This()) core.HResult!*IVectorView(Inline) {
        const this: *IVector = @ptrCast(self);
        return try this.GetView();
    }
    pub fn IndexOf(self: *@This(), value: *Inline, index: u32) core.HResult!bool {
        const this: *IVector = @ptrCast(self);
        return try this.IndexOf(value, index);
    }
    pub fn SetAt(self: *@This(), index: u32, value: *Inline) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.SetAt(index, value);
    }
    pub fn InsertAt(self: *@This(), index: u32, value: *Inline) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.InsertAt(index, value);
    }
    pub fn RemoveAt(self: *@This(), index: u32) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.RemoveAt(index);
    }
    pub fn Append(self: *@This(), value: *Inline) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.Append(value);
    }
    pub fn RemoveAtEnd(self: *@This()) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.RemoveAtEnd();
    }
    pub fn Clear(self: *@This()) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.Clear();
    }
    pub fn GetMany(self: *@This(), startIndex: u32, items: [*]Inline) core.HResult!u32 {
        const this: *IVector = @ptrCast(self);
        return try this.GetMany(startIndex, items);
    }
    pub fn ReplaceAll(self: *@This(), items: [*]Inline) core.HResult!void {
        const this: *IVector = @ptrCast(self);
        return try this.ReplaceAll(items);
    }
    pub fn First(self: *@This()) core.HResult!*IIterator(Inline) {
        var this: ?*IIterable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IIterable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.First();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.InlineCollection";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IVector.GUID;
    pub const IID: Guid = IVector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IVector.SIGNATURE);
};
pub const InlineUIContainer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChild(self: *@This()) core.HResult!*UIElement {
        const this: *IInlineUIContainer = @ptrCast(self);
        return try this.getChild();
    }
    pub fn putChild(self: *@This(), value: *UIElement) core.HResult!void {
        const this: *IInlineUIContainer = @ptrCast(self);
        return try this.putChild(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInlineUIContainer.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.InlineUIContainer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInlineUIContainer.GUID;
    pub const IID: Guid = IInlineUIContainer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInlineUIContainer.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Italic = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IItalic.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.Italic";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IItalic.GUID;
    pub const IID: Guid = IItalic.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IItalic.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const LineBreak = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ILineBreak.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.LineBreak";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILineBreak.GUID;
    pub const IID: Guid = ILineBreak.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILineBreak.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const LogicalDirection = enum(i32) {
    Backward = 0,
    Forward = 1,
};
pub const Paragraph = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getInlines(self: *@This()) core.HResult!*InlineCollection {
        const this: *IParagraph = @ptrCast(self);
        return try this.getInlines();
    }
    pub fn getTextIndent(self: *@This()) core.HResult!f64 {
        const this: *IParagraph = @ptrCast(self);
        return try this.getTextIndent();
    }
    pub fn putTextIndent(self: *@This(), value: f64) core.HResult!void {
        const this: *IParagraph = @ptrCast(self);
        return try this.putTextIndent(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IParagraph.IID)));
    }
    pub fn getTextIndentProperty() core.HResult!*DependencyProperty {
        const factory = @This().IParagraphStaticsCache.get();
        return try factory.getTextIndentProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.Paragraph";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IParagraph.GUID;
    pub const IID: Guid = IParagraph.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IParagraph.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IParagraphStaticsCache: FactoryCache(IParagraphStatics, RUNTIME_NAME) = .{};
};
pub const PlaceContentLinkProvider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPlaceContentLinkProvider.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.PlaceContentLinkProvider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPlaceContentLinkProvider.GUID;
    pub const IID: Guid = IPlaceContentLinkProvider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPlaceContentLinkProvider.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const Run = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getText(self: *@This()) core.HResult!HSTRING {
        const this: *IRun = @ptrCast(self);
        return try this.getText();
    }
    pub fn putText(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IRun = @ptrCast(self);
        return try this.putText(value);
    }
    pub fn getFlowDirection(self: *@This()) core.HResult!FlowDirection {
        const this: *IRun = @ptrCast(self);
        return try this.getFlowDirection();
    }
    pub fn putFlowDirection(self: *@This(), value: FlowDirection) core.HResult!void {
        const this: *IRun = @ptrCast(self);
        return try this.putFlowDirection(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRun.IID)));
    }
    pub fn getFlowDirectionProperty() core.HResult!*DependencyProperty {
        const factory = @This().IRunStaticsCache.get();
        return try factory.getFlowDirectionProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.Run";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRun.GUID;
    pub const IID: Guid = IRun.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRun.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IRunStaticsCache: FactoryCache(IRunStatics, RUNTIME_NAME) = .{};
};
pub const TextHighlighter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRanges(self: *@This()) core.HResult!*IVector(TextRange) {
        const this: *ITextHighlighter = @ptrCast(self);
        return try this.getRanges();
    }
    pub fn getForeground(self: *@This()) core.HResult!*Brush {
        const this: *ITextHighlighter = @ptrCast(self);
        return try this.getForeground();
    }
    pub fn putForeground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *ITextHighlighter = @ptrCast(self);
        return try this.putForeground(value);
    }
    pub fn getBackground(self: *@This()) core.HResult!*Brush {
        const this: *ITextHighlighter = @ptrCast(self);
        return try this.getBackground();
    }
    pub fn putBackground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *ITextHighlighter = @ptrCast(self);
        return try this.putBackground(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getForegroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextHighlighterStaticsCache.get();
        return try factory.getForegroundProperty();
    }
    pub fn getBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITextHighlighterStaticsCache.get();
        return try factory.getBackgroundProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TextHighlighter {
        const factory = @This().ITextHighlighterFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.TextHighlighter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextHighlighter.GUID;
    pub const IID: Guid = ITextHighlighter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextHighlighter.SIGNATURE);
    var _ITextHighlighterStaticsCache: FactoryCache(ITextHighlighterStatics, RUNTIME_NAME) = .{};
    var _ITextHighlighterFactoryCache: FactoryCache(ITextHighlighterFactory, RUNTIME_NAME) = .{};
};
pub const TextHighlighterBase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.TextHighlighterBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextHighlighterBase.GUID;
    pub const IID: Guid = ITextHighlighterBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextHighlighterBase.SIGNATURE);
    var _ITextHighlighterBaseFactoryCache: FactoryCache(ITextHighlighterBaseFactory, RUNTIME_NAME) = .{};
};
pub const TextPointer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getParent(self: *@This()) core.HResult!*DependencyObject {
        const this: *ITextPointer = @ptrCast(self);
        return try this.getParent();
    }
    pub fn getVisualParent(self: *@This()) core.HResult!*FrameworkElement {
        const this: *ITextPointer = @ptrCast(self);
        return try this.getVisualParent();
    }
    pub fn getLogicalDirection(self: *@This()) core.HResult!LogicalDirection {
        const this: *ITextPointer = @ptrCast(self);
        return try this.getLogicalDirection();
    }
    pub fn getOffset(self: *@This()) core.HResult!i32 {
        const this: *ITextPointer = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn GetCharacterRect(self: *@This(), direction: LogicalDirection) core.HResult!Rect {
        const this: *ITextPointer = @ptrCast(self);
        return try this.GetCharacterRect(direction);
    }
    pub fn GetPositionAtOffset(self: *@This(), offset: i32, direction: LogicalDirection) core.HResult!*TextPointer {
        const this: *ITextPointer = @ptrCast(self);
        return try this.GetPositionAtOffset(offset, direction);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.TextPointer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextPointer.GUID;
    pub const IID: Guid = ITextPointer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextPointer.SIGNATURE);
};
pub const TextRange = extern struct {
    StartIndex: i32,
    Length: i32,
};
pub const Typography = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getAnnotationAlternatesProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getAnnotationAlternatesProperty();
    }
    pub fn GetAnnotationAlternates(element: *DependencyObject) core.HResult!i32 {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetAnnotationAlternates(element);
    }
    pub fn SetAnnotationAlternates(element: *DependencyObject, value: i32) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetAnnotationAlternates(element, value);
    }
    pub fn getEastAsianExpertFormsProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getEastAsianExpertFormsProperty();
    }
    pub fn GetEastAsianExpertForms(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetEastAsianExpertForms(element);
    }
    pub fn SetEastAsianExpertForms(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetEastAsianExpertForms(element, value);
    }
    pub fn getEastAsianLanguageProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getEastAsianLanguageProperty();
    }
    pub fn GetEastAsianLanguage(element: *DependencyObject) core.HResult!FontEastAsianLanguage {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetEastAsianLanguage(element);
    }
    pub fn SetEastAsianLanguage(element: *DependencyObject, value: FontEastAsianLanguage) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetEastAsianLanguage(element, value);
    }
    pub fn getEastAsianWidthsProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getEastAsianWidthsProperty();
    }
    pub fn GetEastAsianWidths(element: *DependencyObject) core.HResult!FontEastAsianWidths {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetEastAsianWidths(element);
    }
    pub fn SetEastAsianWidths(element: *DependencyObject, value: FontEastAsianWidths) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetEastAsianWidths(element, value);
    }
    pub fn getStandardLigaturesProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStandardLigaturesProperty();
    }
    pub fn GetStandardLigatures(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStandardLigatures(element);
    }
    pub fn SetStandardLigatures(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStandardLigatures(element, value);
    }
    pub fn getContextualLigaturesProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getContextualLigaturesProperty();
    }
    pub fn GetContextualLigatures(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetContextualLigatures(element);
    }
    pub fn SetContextualLigatures(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetContextualLigatures(element, value);
    }
    pub fn getDiscretionaryLigaturesProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getDiscretionaryLigaturesProperty();
    }
    pub fn GetDiscretionaryLigatures(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetDiscretionaryLigatures(element);
    }
    pub fn SetDiscretionaryLigatures(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetDiscretionaryLigatures(element, value);
    }
    pub fn getHistoricalLigaturesProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getHistoricalLigaturesProperty();
    }
    pub fn GetHistoricalLigatures(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetHistoricalLigatures(element);
    }
    pub fn SetHistoricalLigatures(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetHistoricalLigatures(element, value);
    }
    pub fn getStandardSwashesProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStandardSwashesProperty();
    }
    pub fn GetStandardSwashes(element: *DependencyObject) core.HResult!i32 {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStandardSwashes(element);
    }
    pub fn SetStandardSwashes(element: *DependencyObject, value: i32) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStandardSwashes(element, value);
    }
    pub fn getContextualSwashesProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getContextualSwashesProperty();
    }
    pub fn GetContextualSwashes(element: *DependencyObject) core.HResult!i32 {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetContextualSwashes(element);
    }
    pub fn SetContextualSwashes(element: *DependencyObject, value: i32) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetContextualSwashes(element, value);
    }
    pub fn getContextualAlternatesProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getContextualAlternatesProperty();
    }
    pub fn GetContextualAlternates(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetContextualAlternates(element);
    }
    pub fn SetContextualAlternates(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetContextualAlternates(element, value);
    }
    pub fn getStylisticAlternatesProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticAlternatesProperty();
    }
    pub fn GetStylisticAlternates(element: *DependencyObject) core.HResult!i32 {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticAlternates(element);
    }
    pub fn SetStylisticAlternates(element: *DependencyObject, value: i32) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticAlternates(element, value);
    }
    pub fn getStylisticSet1Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet1Property();
    }
    pub fn GetStylisticSet1(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet1(element);
    }
    pub fn SetStylisticSet1(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet1(element, value);
    }
    pub fn getStylisticSet2Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet2Property();
    }
    pub fn GetStylisticSet2(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet2(element);
    }
    pub fn SetStylisticSet2(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet2(element, value);
    }
    pub fn getStylisticSet3Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet3Property();
    }
    pub fn GetStylisticSet3(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet3(element);
    }
    pub fn SetStylisticSet3(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet3(element, value);
    }
    pub fn getStylisticSet4Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet4Property();
    }
    pub fn GetStylisticSet4(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet4(element);
    }
    pub fn SetStylisticSet4(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet4(element, value);
    }
    pub fn getStylisticSet5Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet5Property();
    }
    pub fn GetStylisticSet5(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet5(element);
    }
    pub fn SetStylisticSet5(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet5(element, value);
    }
    pub fn getStylisticSet6Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet6Property();
    }
    pub fn GetStylisticSet6(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet6(element);
    }
    pub fn SetStylisticSet6(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet6(element, value);
    }
    pub fn getStylisticSet7Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet7Property();
    }
    pub fn GetStylisticSet7(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet7(element);
    }
    pub fn SetStylisticSet7(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet7(element, value);
    }
    pub fn getStylisticSet8Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet8Property();
    }
    pub fn GetStylisticSet8(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet8(element);
    }
    pub fn SetStylisticSet8(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet8(element, value);
    }
    pub fn getStylisticSet9Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet9Property();
    }
    pub fn GetStylisticSet9(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet9(element);
    }
    pub fn SetStylisticSet9(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet9(element, value);
    }
    pub fn getStylisticSet10Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet10Property();
    }
    pub fn GetStylisticSet10(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet10(element);
    }
    pub fn SetStylisticSet10(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet10(element, value);
    }
    pub fn getStylisticSet11Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet11Property();
    }
    pub fn GetStylisticSet11(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet11(element);
    }
    pub fn SetStylisticSet11(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet11(element, value);
    }
    pub fn getStylisticSet12Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet12Property();
    }
    pub fn GetStylisticSet12(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet12(element);
    }
    pub fn SetStylisticSet12(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet12(element, value);
    }
    pub fn getStylisticSet13Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet13Property();
    }
    pub fn GetStylisticSet13(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet13(element);
    }
    pub fn SetStylisticSet13(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet13(element, value);
    }
    pub fn getStylisticSet14Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet14Property();
    }
    pub fn GetStylisticSet14(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet14(element);
    }
    pub fn SetStylisticSet14(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet14(element, value);
    }
    pub fn getStylisticSet15Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet15Property();
    }
    pub fn GetStylisticSet15(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet15(element);
    }
    pub fn SetStylisticSet15(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet15(element, value);
    }
    pub fn getStylisticSet16Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet16Property();
    }
    pub fn GetStylisticSet16(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet16(element);
    }
    pub fn SetStylisticSet16(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet16(element, value);
    }
    pub fn getStylisticSet17Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet17Property();
    }
    pub fn GetStylisticSet17(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet17(element);
    }
    pub fn SetStylisticSet17(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet17(element, value);
    }
    pub fn getStylisticSet18Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet18Property();
    }
    pub fn GetStylisticSet18(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet18(element);
    }
    pub fn SetStylisticSet18(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet18(element, value);
    }
    pub fn getStylisticSet19Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet19Property();
    }
    pub fn GetStylisticSet19(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet19(element);
    }
    pub fn SetStylisticSet19(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet19(element, value);
    }
    pub fn getStylisticSet20Property() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getStylisticSet20Property();
    }
    pub fn GetStylisticSet20(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetStylisticSet20(element);
    }
    pub fn SetStylisticSet20(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetStylisticSet20(element, value);
    }
    pub fn getCapitalsProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getCapitalsProperty();
    }
    pub fn GetCapitals(element: *DependencyObject) core.HResult!FontCapitals {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetCapitals(element);
    }
    pub fn SetCapitals(element: *DependencyObject, value: FontCapitals) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetCapitals(element, value);
    }
    pub fn getCapitalSpacingProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getCapitalSpacingProperty();
    }
    pub fn GetCapitalSpacing(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetCapitalSpacing(element);
    }
    pub fn SetCapitalSpacing(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetCapitalSpacing(element, value);
    }
    pub fn getKerningProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getKerningProperty();
    }
    pub fn GetKerning(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetKerning(element);
    }
    pub fn SetKerning(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetKerning(element, value);
    }
    pub fn getCaseSensitiveFormsProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getCaseSensitiveFormsProperty();
    }
    pub fn GetCaseSensitiveForms(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetCaseSensitiveForms(element);
    }
    pub fn SetCaseSensitiveForms(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetCaseSensitiveForms(element, value);
    }
    pub fn getHistoricalFormsProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getHistoricalFormsProperty();
    }
    pub fn GetHistoricalForms(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetHistoricalForms(element);
    }
    pub fn SetHistoricalForms(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetHistoricalForms(element, value);
    }
    pub fn getFractionProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getFractionProperty();
    }
    pub fn GetFraction(element: *DependencyObject) core.HResult!FontFraction {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetFraction(element);
    }
    pub fn SetFraction(element: *DependencyObject, value: FontFraction) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetFraction(element, value);
    }
    pub fn getNumeralStyleProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getNumeralStyleProperty();
    }
    pub fn GetNumeralStyle(element: *DependencyObject) core.HResult!FontNumeralStyle {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetNumeralStyle(element);
    }
    pub fn SetNumeralStyle(element: *DependencyObject, value: FontNumeralStyle) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetNumeralStyle(element, value);
    }
    pub fn getNumeralAlignmentProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getNumeralAlignmentProperty();
    }
    pub fn GetNumeralAlignment(element: *DependencyObject) core.HResult!FontNumeralAlignment {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetNumeralAlignment(element);
    }
    pub fn SetNumeralAlignment(element: *DependencyObject, value: FontNumeralAlignment) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetNumeralAlignment(element, value);
    }
    pub fn getSlashedZeroProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getSlashedZeroProperty();
    }
    pub fn GetSlashedZero(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetSlashedZero(element);
    }
    pub fn SetSlashedZero(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetSlashedZero(element, value);
    }
    pub fn getMathematicalGreekProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getMathematicalGreekProperty();
    }
    pub fn GetMathematicalGreek(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetMathematicalGreek(element);
    }
    pub fn SetMathematicalGreek(element: *DependencyObject, value: bool) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetMathematicalGreek(element, value);
    }
    pub fn getVariantsProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.getVariantsProperty();
    }
    pub fn GetVariants(element: *DependencyObject) core.HResult!FontVariants {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.GetVariants(element);
    }
    pub fn SetVariants(element: *DependencyObject, value: FontVariants) core.HResult!void {
        const factory = @This().ITypographyStaticsCache.get();
        return try factory.SetVariants(element, value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.Typography";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITypography.GUID;
    pub const IID: Guid = ITypography.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITypography.SIGNATURE);
    var _ITypographyStaticsCache: FactoryCache(ITypographyStatics, RUNTIME_NAME) = .{};
};
pub const Underline = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUnderline.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Documents.Underline";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUnderline.GUID;
    pub const IID: Guid = IUnderline.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUnderline.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const UnderlineStyle = enum(i32) {
    None = 0,
    Single = 1,
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const KeyTipPlacementMode = @import("./Input.zig").KeyTipPlacementMode;
const LineStackingStrategy = @import("../Xaml.zig").LineStackingStrategy;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const XYFocusNavigationStrategy = @import("./Input.zig").XYFocusNavigationStrategy;
const FontFamily = @import("./Media.zig").FontFamily;
const DependencyProperty = @import("../Xaml.zig").DependencyProperty;
const FontNumeralStyle = @import("../Xaml.zig").FontNumeralStyle;
const AccessKeyDisplayRequestedEventArgs = @import("./Input.zig").AccessKeyDisplayRequestedEventArgs;
const ElementSoundMode = @import("../Xaml.zig").ElementSoundMode;
const DependencyObject = @import("../Xaml.zig").DependencyObject;
const IIterable = @import("../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const TextDecorations = @import("../Text.zig").TextDecorations;
const FontCapitals = @import("../Xaml.zig").FontCapitals;
const FontEastAsianLanguage = @import("../Xaml.zig").FontEastAsianLanguage;
const FontFraction = @import("../Xaml.zig").FontFraction;
const XamlRoot = @import("../Xaml.zig").XamlRoot;
const Uri = @import("../../Foundation.zig").Uri;
const UIElement = @import("../Xaml.zig").UIElement;
const HRESULT = @import("../../root.zig").HRESULT;
const Brush = @import("./Media.zig").Brush;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const FontStyle = @import("../Text.zig").FontStyle;
const ContentLinkInfo = @import("../Text.zig").ContentLinkInfo;
const CoreCursorType = @import("../Core.zig").CoreCursorType;
const IVectorView = @import("../../Foundation/Collections.zig").IVectorView;
const FontVariants = @import("../Xaml.zig").FontVariants;
const FontNumeralAlignment = @import("../Xaml.zig").FontNumeralAlignment;
const StyleSimulations = @import("./Media.zig").StyleSimulations;
const TextAlignment = @import("../Xaml.zig").TextAlignment;
const AccessKeyInvokedEventArgs = @import("./Input.zig").AccessKeyInvokedEventArgs;
const FactoryCache = @import("../../core.zig").FactoryCache;
const IIterator = @import("../../Foundation/Collections.zig").IIterator;
const FlowDirection = @import("../Xaml.zig").FlowDirection;
const Rect = @import("../../Foundation.zig").Rect;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const FontWeight = @import("../Text.zig").FontWeight;
const FontStretch = @import("../Text.zig").FontStretch;
const FrameworkElement = @import("../Xaml.zig").FrameworkElement;
const FocusState = @import("../Xaml.zig").FocusState;
const core = @import("../../root.zig").core;
const Thickness = @import("../Xaml.zig").Thickness;
const FontEastAsianWidths = @import("../Xaml.zig").FontEastAsianWidths;
const RoutedEventHandler = @import("../Xaml.zig").RoutedEventHandler;
const AccessKeyDisplayDismissedEventArgs = @import("./Input.zig").AccessKeyDisplayDismissedEventArgs;
