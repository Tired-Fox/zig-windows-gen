pub const ButtonBase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getClickMode(self: *@This()) core.HResult!ClickMode {
        const this: *IButtonBase = @ptrCast(self);
        return try this.getClickMode();
    }
    pub fn putClickMode(self: *@This(), value: ClickMode) core.HResult!void {
        const this: *IButtonBase = @ptrCast(self);
        return try this.putClickMode(value);
    }
    pub fn getIsPointerOver(self: *@This()) core.HResult!bool {
        const this: *IButtonBase = @ptrCast(self);
        return try this.getIsPointerOver();
    }
    pub fn getIsPressed(self: *@This()) core.HResult!bool {
        const this: *IButtonBase = @ptrCast(self);
        return try this.getIsPressed();
    }
    pub fn getCommand(self: *@This()) core.HResult!*ICommand {
        const this: *IButtonBase = @ptrCast(self);
        return try this.getCommand();
    }
    pub fn putCommand(self: *@This(), value: *ICommand) core.HResult!void {
        const this: *IButtonBase = @ptrCast(self);
        return try this.putCommand(value);
    }
    pub fn getCommandParameter(self: *@This()) core.HResult!*IInspectable {
        const this: *IButtonBase = @ptrCast(self);
        return try this.getCommandParameter();
    }
    pub fn putCommandParameter(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IButtonBase = @ptrCast(self);
        return try this.putCommandParameter(value);
    }
    pub fn addClick(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IButtonBase = @ptrCast(self);
        return try this.addClick(handler);
    }
    pub fn removeClick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IButtonBase = @ptrCast(self);
        return try this.removeClick(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ClickModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IButtonBaseStaticsCache.get();
        return try factory.getClickModeProperty();
    }
    pub fn get_IsPointerOverProperty() core.HResult!*DependencyProperty {
        const factory = @This().IButtonBaseStaticsCache.get();
        return try factory.getIsPointerOverProperty();
    }
    pub fn get_IsPressedProperty() core.HResult!*DependencyProperty {
        const factory = @This().IButtonBaseStaticsCache.get();
        return try factory.getIsPressedProperty();
    }
    pub fn get_CommandProperty() core.HResult!*DependencyProperty {
        const factory = @This().IButtonBaseStaticsCache.get();
        return try factory.getCommandProperty();
    }
    pub fn get_CommandParameterProperty() core.HResult!*DependencyProperty {
        const factory = @This().IButtonBaseStaticsCache.get();
        return try factory.getCommandParameterProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ButtonBase {
        const factory = @This().IButtonBaseFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ButtonBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IButtonBase.GUID;
    pub const IID: Guid = IButtonBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IButtonBase.SIGNATURE);
    var _IButtonBaseStaticsCache: FactoryCache(IButtonBaseStatics, RUNTIME_NAME) = .{};
    var _IButtonBaseFactoryCache: FactoryCache(IButtonBaseFactory, RUNTIME_NAME) = .{};
};
pub const ToggleButton = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsChecked(self: *@This()) core.HResult!*IReference(bool) {
        const this: *IToggleButton = @ptrCast(self);
        return try this.getIsChecked();
    }
    pub fn putIsChecked(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const this: *IToggleButton = @ptrCast(self);
        return try this.putIsChecked(value);
    }
    pub fn getIsThreeState(self: *@This()) core.HResult!bool {
        const this: *IToggleButton = @ptrCast(self);
        return try this.getIsThreeState();
    }
    pub fn putIsThreeState(self: *@This(), value: bool) core.HResult!void {
        const this: *IToggleButton = @ptrCast(self);
        return try this.putIsThreeState(value);
    }
    pub fn addChecked(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IToggleButton = @ptrCast(self);
        return try this.addChecked(handler);
    }
    pub fn removeChecked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IToggleButton = @ptrCast(self);
        return try this.removeChecked(token);
    }
    pub fn addUnchecked(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IToggleButton = @ptrCast(self);
        return try this.addUnchecked(handler);
    }
    pub fn removeUnchecked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IToggleButton = @ptrCast(self);
        return try this.removeUnchecked(token);
    }
    pub fn addIndeterminate(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IToggleButton = @ptrCast(self);
        return try this.addIndeterminate(handler);
    }
    pub fn removeIndeterminate(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IToggleButton = @ptrCast(self);
        return try this.removeIndeterminate(token);
    }
    pub fn OnToggle(self: *@This()) core.HResult!void {
        var this: ?*IToggleButtonOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToggleButtonOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnToggle();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_IsCheckedProperty() core.HResult!*DependencyProperty {
        const factory = @This().IToggleButtonStaticsCache.get();
        return try factory.getIsCheckedProperty();
    }
    pub fn get_IsThreeStateProperty() core.HResult!*DependencyProperty {
        const factory = @This().IToggleButtonStaticsCache.get();
        return try factory.getIsThreeStateProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ToggleButton {
        const factory = @This().IToggleButtonFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ToggleButton";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToggleButton.GUID;
    pub const IID: Guid = IToggleButton.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToggleButton.SIGNATURE);
    var _IToggleButtonStaticsCache: FactoryCache(IToggleButtonStatics, RUNTIME_NAME) = .{};
    var _IToggleButtonFactoryCache: FactoryCache(IToggleButtonFactory, RUNTIME_NAME) = .{};
};
pub const Selector = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSelectedIndex(self: *@This()) core.HResult!i32 {
        const this: *ISelector = @ptrCast(self);
        return try this.getSelectedIndex();
    }
    pub fn putSelectedIndex(self: *@This(), value: i32) core.HResult!void {
        const this: *ISelector = @ptrCast(self);
        return try this.putSelectedIndex(value);
    }
    pub fn getSelectedItem(self: *@This()) core.HResult!*IInspectable {
        const this: *ISelector = @ptrCast(self);
        return try this.getSelectedItem();
    }
    pub fn putSelectedItem(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *ISelector = @ptrCast(self);
        return try this.putSelectedItem(value);
    }
    pub fn getSelectedValue(self: *@This()) core.HResult!*IInspectable {
        const this: *ISelector = @ptrCast(self);
        return try this.getSelectedValue();
    }
    pub fn putSelectedValue(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *ISelector = @ptrCast(self);
        return try this.putSelectedValue(value);
    }
    pub fn getSelectedValuePath(self: *@This()) core.HResult!HSTRING {
        const this: *ISelector = @ptrCast(self);
        return try this.getSelectedValuePath();
    }
    pub fn putSelectedValuePath(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *ISelector = @ptrCast(self);
        return try this.putSelectedValuePath(value);
    }
    pub fn getIsSynchronizedWithCurrentItem(self: *@This()) core.HResult!*IReference(bool) {
        const this: *ISelector = @ptrCast(self);
        return try this.getIsSynchronizedWithCurrentItem();
    }
    pub fn putIsSynchronizedWithCurrentItem(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const this: *ISelector = @ptrCast(self);
        return try this.putIsSynchronizedWithCurrentItem(value);
    }
    pub fn addSelectionChanged(self: *@This(), handler: *SelectionChangedEventHandler) core.HResult!EventRegistrationToken {
        const this: *ISelector = @ptrCast(self);
        return try this.addSelectionChanged(handler);
    }
    pub fn removeSelectionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ISelector = @ptrCast(self);
        return try this.removeSelectionChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_SelectedIndexProperty() core.HResult!*DependencyProperty {
        const factory = @This().ISelectorStaticsCache.get();
        return try factory.getSelectedIndexProperty();
    }
    pub fn get_SelectedItemProperty() core.HResult!*DependencyProperty {
        const factory = @This().ISelectorStaticsCache.get();
        return try factory.getSelectedItemProperty();
    }
    pub fn get_SelectedValueProperty() core.HResult!*DependencyProperty {
        const factory = @This().ISelectorStaticsCache.get();
        return try factory.getSelectedValueProperty();
    }
    pub fn get_SelectedValuePathProperty() core.HResult!*DependencyProperty {
        const factory = @This().ISelectorStaticsCache.get();
        return try factory.getSelectedValuePathProperty();
    }
    pub fn get_IsSynchronizedWithCurrentItemProperty() core.HResult!*DependencyProperty {
        const factory = @This().ISelectorStaticsCache.get();
        return try factory.getIsSynchronizedWithCurrentItemProperty();
    }
    pub fn GetIsSelectionActive(element: *DependencyObject) core.HResult!bool {
        const factory = @This().ISelectorStaticsCache.get();
        return try factory.GetIsSelectionActive(element);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.Selector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISelector.GUID;
    pub const IID: Guid = ISelector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISelector.SIGNATURE);
    var _ISelectorStaticsCache: FactoryCache(ISelectorStatics, RUNTIME_NAME) = .{};
    var _ISelectorFactoryCache: FactoryCache(ISelectorFactory, RUNTIME_NAME) = .{};
};
pub const SelectorItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        const this: *ISelectorItem = @ptrCast(self);
        return try this.getIsSelected();
    }
    pub fn putIsSelected(self: *@This(), value: bool) core.HResult!void {
        const this: *ISelectorItem = @ptrCast(self);
        return try this.putIsSelected(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_IsSelectedProperty() core.HResult!*DependencyProperty {
        const factory = @This().ISelectorItemStaticsCache.get();
        return try factory.getIsSelectedProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SelectorItem {
        const factory = @This().ISelectorItemFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.SelectorItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISelectorItem.GUID;
    pub const IID: Guid = ISelectorItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISelectorItem.SIGNATURE);
    var _ISelectorItemStaticsCache: FactoryCache(ISelectorItemStatics, RUNTIME_NAME) = .{};
    var _ISelectorItemFactoryCache: FactoryCache(ISelectorItemFactory, RUNTIME_NAME) = .{};
};
pub const FlyoutBase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPlacement(self: *@This()) core.HResult!FlyoutPlacementMode {
        const this: *IFlyoutBase = @ptrCast(self);
        return try this.getPlacement();
    }
    pub fn putPlacement(self: *@This(), value: FlyoutPlacementMode) core.HResult!void {
        const this: *IFlyoutBase = @ptrCast(self);
        return try this.putPlacement(value);
    }
    pub fn addOpened(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IFlyoutBase = @ptrCast(self);
        return try this.addOpened(handler);
    }
    pub fn removeOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IFlyoutBase = @ptrCast(self);
        return try this.removeOpened(token);
    }
    pub fn addClosed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IFlyoutBase = @ptrCast(self);
        return try this.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IFlyoutBase = @ptrCast(self);
        return try this.removeClosed(token);
    }
    pub fn addOpening(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IFlyoutBase = @ptrCast(self);
        return try this.addOpening(handler);
    }
    pub fn removeOpening(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IFlyoutBase = @ptrCast(self);
        return try this.removeOpening(token);
    }
    pub fn ShowAt(self: *@This(), placementTarget: *FrameworkElement) core.HResult!void {
        const this: *IFlyoutBase = @ptrCast(self);
        return try this.ShowAt(placementTarget);
    }
    pub fn Hide(self: *@This()) core.HResult!void {
        const this: *IFlyoutBase = @ptrCast(self);
        return try this.Hide();
    }
    pub fn getTarget(self: *@This()) core.HResult!*FrameworkElement {
        var this: ?*IFlyoutBase2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTarget();
    }
    pub fn getAllowFocusOnInteraction(self: *@This()) core.HResult!bool {
        var this: ?*IFlyoutBase2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowFocusOnInteraction();
    }
    pub fn putAllowFocusOnInteraction(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IFlyoutBase2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowFocusOnInteraction(value);
    }
    pub fn getLightDismissOverlayMode(self: *@This()) core.HResult!LightDismissOverlayMode {
        var this: ?*IFlyoutBase2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLightDismissOverlayMode();
    }
    pub fn putLightDismissOverlayMode(self: *@This(), value: LightDismissOverlayMode) core.HResult!void {
        var this: ?*IFlyoutBase2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLightDismissOverlayMode(value);
    }
    pub fn getAllowFocusWhenDisabled(self: *@This()) core.HResult!bool {
        var this: ?*IFlyoutBase2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAllowFocusWhenDisabled();
    }
    pub fn putAllowFocusWhenDisabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IFlyoutBase2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAllowFocusWhenDisabled(value);
    }
    pub fn getElementSoundMode(self: *@This()) core.HResult!ElementSoundMode {
        var this: ?*IFlyoutBase2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getElementSoundMode();
    }
    pub fn putElementSoundMode(self: *@This(), value: ElementSoundMode) core.HResult!void {
        var this: ?*IFlyoutBase2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putElementSoundMode(value);
    }
    pub fn addClosing(self: *@This(), handler: *TypedEventHandler(FlyoutBase,FlyoutBaseClosingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IFlyoutBase2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addClosing(handler);
    }
    pub fn removeClosing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IFlyoutBase2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeClosing(token);
    }
    pub fn getOverlayInputPassThroughElement(self: *@This()) core.HResult!*DependencyObject {
        var this: ?*IFlyoutBase3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOverlayInputPassThroughElement();
    }
    pub fn putOverlayInputPassThroughElement(self: *@This(), value: *DependencyObject) core.HResult!void {
        var this: ?*IFlyoutBase3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putOverlayInputPassThroughElement(value);
    }
    pub fn TryInvokeKeyboardAccelerator(self: *@This(), args: *ProcessKeyboardAcceleratorEventArgs) core.HResult!void {
        var this: ?*IFlyoutBase4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryInvokeKeyboardAccelerator(args);
    }
    pub fn getShowMode(self: *@This()) core.HResult!FlyoutShowMode {
        var this: ?*IFlyoutBase5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShowMode();
    }
    pub fn putShowMode(self: *@This(), value: FlyoutShowMode) core.HResult!void {
        var this: ?*IFlyoutBase5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putShowMode(value);
    }
    pub fn getInputDevicePrefersPrimaryCommands(self: *@This()) core.HResult!bool {
        var this: ?*IFlyoutBase5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInputDevicePrefersPrimaryCommands();
    }
    pub fn getAreOpenCloseAnimationsEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IFlyoutBase5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAreOpenCloseAnimationsEnabled();
    }
    pub fn putAreOpenCloseAnimationsEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IFlyoutBase5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putAreOpenCloseAnimationsEnabled(value);
    }
    pub fn getIsOpen(self: *@This()) core.HResult!bool {
        var this: ?*IFlyoutBase5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsOpen();
    }
    pub fn ShowAtWithShowOptions(self: *@This(), placementTarget: *DependencyObject, showOptions: *FlyoutShowOptions) core.HResult!void {
        var this: ?*IFlyoutBase5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShowAtWithShowOptions(placementTarget, showOptions);
    }
    pub fn getShouldConstrainToRootBounds(self: *@This()) core.HResult!bool {
        var this: ?*IFlyoutBase6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShouldConstrainToRootBounds();
    }
    pub fn putShouldConstrainToRootBounds(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IFlyoutBase6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putShouldConstrainToRootBounds(value);
    }
    pub fn getIsConstrainedToRootBounds(self: *@This()) core.HResult!bool {
        var this: ?*IFlyoutBase6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsConstrainedToRootBounds();
    }
    pub fn getXamlRoot(self: *@This()) core.HResult!*XamlRoot {
        var this: ?*IFlyoutBase6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getXamlRoot();
    }
    pub fn putXamlRoot(self: *@This(), value: *XamlRoot) core.HResult!void {
        var this: ?*IFlyoutBase6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBase6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putXamlRoot(value);
    }
    pub fn CreatePresenter(self: *@This()) core.HResult!*Control {
        var this: ?*IFlyoutBaseOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBaseOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreatePresenter();
    }
    pub fn OnProcessKeyboardAccelerators(self: *@This(), args: *ProcessKeyboardAcceleratorEventArgs) core.HResult!void {
        var this: ?*IFlyoutBaseOverrides4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IFlyoutBaseOverrides4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnProcessKeyboardAccelerators(args);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_OverlayInputPassThroughElementProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFlyoutBaseStatics3Cache.get();
        return try factory.getOverlayInputPassThroughElementProperty();
    }
    pub fn get_AllowFocusOnInteractionProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFlyoutBaseStatics2Cache.get();
        return try factory.getAllowFocusOnInteractionProperty();
    }
    pub fn get_LightDismissOverlayModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFlyoutBaseStatics2Cache.get();
        return try factory.getLightDismissOverlayModeProperty();
    }
    pub fn get_AllowFocusWhenDisabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFlyoutBaseStatics2Cache.get();
        return try factory.getAllowFocusWhenDisabledProperty();
    }
    pub fn get_ElementSoundModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFlyoutBaseStatics2Cache.get();
        return try factory.getElementSoundModeProperty();
    }
    pub fn get_PlacementProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFlyoutBaseStaticsCache.get();
        return try factory.getPlacementProperty();
    }
    pub fn get_AttachedFlyoutProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFlyoutBaseStaticsCache.get();
        return try factory.getAttachedFlyoutProperty();
    }
    pub fn GetAttachedFlyout(element: *FrameworkElement) core.HResult!*FlyoutBase {
        const factory = @This().IFlyoutBaseStaticsCache.get();
        return try factory.GetAttachedFlyout(element);
    }
    pub fn SetAttachedFlyout(element: *FrameworkElement, value: *FlyoutBase) core.HResult!void {
        const factory = @This().IFlyoutBaseStaticsCache.get();
        return try factory.SetAttachedFlyout(element, value);
    }
    pub fn ShowAttachedFlyout(flyoutOwner: *FrameworkElement) core.HResult!void {
        const factory = @This().IFlyoutBaseStaticsCache.get();
        return try factory.ShowAttachedFlyout(flyoutOwner);
    }
    pub fn get_ShouldConstrainToRootBoundsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFlyoutBaseStatics6Cache.get();
        return try factory.getShouldConstrainToRootBoundsProperty();
    }
    pub fn get_TargetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFlyoutBaseStatics5Cache.get();
        return try factory.getTargetProperty();
    }
    pub fn get_ShowModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFlyoutBaseStatics5Cache.get();
        return try factory.getShowModeProperty();
    }
    pub fn get_InputDevicePrefersPrimaryCommandsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFlyoutBaseStatics5Cache.get();
        return try factory.getInputDevicePrefersPrimaryCommandsProperty();
    }
    pub fn get_AreOpenCloseAnimationsEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFlyoutBaseStatics5Cache.get();
        return try factory.getAreOpenCloseAnimationsEnabledProperty();
    }
    pub fn get_IsOpenProperty() core.HResult!*DependencyProperty {
        const factory = @This().IFlyoutBaseStatics5Cache.get();
        return try factory.getIsOpenProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FlyoutBase {
        const factory = @This().IFlyoutBaseFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.FlyoutBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFlyoutBase.GUID;
    pub const IID: Guid = IFlyoutBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFlyoutBase.SIGNATURE);
    var _IFlyoutBaseStatics3Cache: FactoryCache(IFlyoutBaseStatics3, RUNTIME_NAME) = .{};
    var _IFlyoutBaseStatics2Cache: FactoryCache(IFlyoutBaseStatics2, RUNTIME_NAME) = .{};
    var _IFlyoutBaseStaticsCache: FactoryCache(IFlyoutBaseStatics, RUNTIME_NAME) = .{};
    var _IFlyoutBaseStatics6Cache: FactoryCache(IFlyoutBaseStatics6, RUNTIME_NAME) = .{};
    var _IFlyoutBaseStatics5Cache: FactoryCache(IFlyoutBaseStatics5, RUNTIME_NAME) = .{};
    var _IFlyoutBaseFactoryCache: FactoryCache(IFlyoutBaseFactory, RUNTIME_NAME) = .{};
};
pub const PickerFlyoutBase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn OnConfirmed(self: *@This()) core.HResult!void {
        var this: ?*IPickerFlyoutBaseOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPickerFlyoutBaseOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnConfirmed();
    }
    pub fn ShouldShowConfirmationButtons(self: *@This()) core.HResult!bool {
        var this: ?*IPickerFlyoutBaseOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPickerFlyoutBaseOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShouldShowConfirmationButtons();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_TitleProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPickerFlyoutBaseStaticsCache.get();
        return try factory.getTitleProperty();
    }
    pub fn GetTitle(element: *DependencyObject) core.HResult!HSTRING {
        const factory = @This().IPickerFlyoutBaseStaticsCache.get();
        return try factory.GetTitle(element);
    }
    pub fn SetTitle(element: *DependencyObject, value: HSTRING) core.HResult!void {
        const factory = @This().IPickerFlyoutBaseStaticsCache.get();
        return try factory.SetTitle(element, value);
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PickerFlyoutBase {
        const factory = @This().IPickerFlyoutBaseFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.PickerFlyoutBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPickerFlyoutBase.GUID;
    pub const IID: Guid = IPickerFlyoutBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPickerFlyoutBase.SIGNATURE);
    var _IPickerFlyoutBaseStaticsCache: FactoryCache(IPickerFlyoutBaseStatics, RUNTIME_NAME) = .{};
    var _IPickerFlyoutBaseFactoryCache: FactoryCache(IPickerFlyoutBaseFactory, RUNTIME_NAME) = .{};
};
pub const AnimationDirection = enum(i32) {
    Left = 0,
    Top = 1,
    Right = 2,
    Bottom = 3,
};
pub const AppBarButtonTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyboardAcceleratorTextMinWidth(self: *@This()) core.HResult!f64 {
        const this: *IAppBarButtonTemplateSettings = @ptrCast(self);
        return try this.getKeyboardAcceleratorTextMinWidth();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.AppBarButtonTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBarButtonTemplateSettings.GUID;
    pub const IID: Guid = IAppBarButtonTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBarButtonTemplateSettings.SIGNATURE);
};
pub const AppBarTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getClipRect(self: *@This()) core.HResult!Rect {
        const this: *IAppBarTemplateSettings = @ptrCast(self);
        return try this.getClipRect();
    }
    pub fn getCompactVerticalDelta(self: *@This()) core.HResult!f64 {
        const this: *IAppBarTemplateSettings = @ptrCast(self);
        return try this.getCompactVerticalDelta();
    }
    pub fn getCompactRootMargin(self: *@This()) core.HResult!Thickness {
        const this: *IAppBarTemplateSettings = @ptrCast(self);
        return try this.getCompactRootMargin();
    }
    pub fn getMinimalVerticalDelta(self: *@This()) core.HResult!f64 {
        const this: *IAppBarTemplateSettings = @ptrCast(self);
        return try this.getMinimalVerticalDelta();
    }
    pub fn getMinimalRootMargin(self: *@This()) core.HResult!Thickness {
        const this: *IAppBarTemplateSettings = @ptrCast(self);
        return try this.getMinimalRootMargin();
    }
    pub fn getHiddenVerticalDelta(self: *@This()) core.HResult!f64 {
        const this: *IAppBarTemplateSettings = @ptrCast(self);
        return try this.getHiddenVerticalDelta();
    }
    pub fn getHiddenRootMargin(self: *@This()) core.HResult!Thickness {
        const this: *IAppBarTemplateSettings = @ptrCast(self);
        return try this.getHiddenRootMargin();
    }
    pub fn getNegativeCompactVerticalDelta(self: *@This()) core.HResult!f64 {
        var this: ?*IAppBarTemplateSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBarTemplateSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNegativeCompactVerticalDelta();
    }
    pub fn getNegativeMinimalVerticalDelta(self: *@This()) core.HResult!f64 {
        var this: ?*IAppBarTemplateSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBarTemplateSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNegativeMinimalVerticalDelta();
    }
    pub fn getNegativeHiddenVerticalDelta(self: *@This()) core.HResult!f64 {
        var this: ?*IAppBarTemplateSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppBarTemplateSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNegativeHiddenVerticalDelta();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.AppBarTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBarTemplateSettings.GUID;
    pub const IID: Guid = IAppBarTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBarTemplateSettings.SIGNATURE);
};
pub const AppBarToggleButtonTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyboardAcceleratorTextMinWidth(self: *@This()) core.HResult!f64 {
        const this: *IAppBarToggleButtonTemplateSettings = @ptrCast(self);
        return try this.getKeyboardAcceleratorTextMinWidth();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.AppBarToggleButtonTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBarToggleButtonTemplateSettings.GUID;
    pub const IID: Guid = IAppBarToggleButtonTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBarToggleButtonTemplateSettings.SIGNATURE);
};
pub const CalendarPanel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICalendarPanel.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.CalendarPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICalendarPanel.GUID;
    pub const IID: Guid = ICalendarPanel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICalendarPanel.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const CalendarViewTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMinViewWidth(self: *@This()) core.HResult!f64 {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getMinViewWidth();
    }
    pub fn getHeaderText(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getHeaderText();
    }
    pub fn getWeekDay1(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getWeekDay1();
    }
    pub fn getWeekDay2(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getWeekDay2();
    }
    pub fn getWeekDay3(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getWeekDay3();
    }
    pub fn getWeekDay4(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getWeekDay4();
    }
    pub fn getWeekDay5(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getWeekDay5();
    }
    pub fn getWeekDay6(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getWeekDay6();
    }
    pub fn getWeekDay7(self: *@This()) core.HResult!HSTRING {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getWeekDay7();
    }
    pub fn getHasMoreContentAfter(self: *@This()) core.HResult!bool {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getHasMoreContentAfter();
    }
    pub fn getHasMoreContentBefore(self: *@This()) core.HResult!bool {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getHasMoreContentBefore();
    }
    pub fn getHasMoreViews(self: *@This()) core.HResult!bool {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getHasMoreViews();
    }
    pub fn getClipRect(self: *@This()) core.HResult!Rect {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getClipRect();
    }
    pub fn getCenterX(self: *@This()) core.HResult!f64 {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getCenterX();
    }
    pub fn getCenterY(self: *@This()) core.HResult!f64 {
        const this: *ICalendarViewTemplateSettings = @ptrCast(self);
        return try this.getCenterY();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.CalendarViewTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICalendarViewTemplateSettings.GUID;
    pub const IID: Guid = ICalendarViewTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICalendarViewTemplateSettings.SIGNATURE);
};
pub const CarouselPanel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanVerticallyScroll(self: *@This()) core.HResult!bool {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.getCanVerticallyScroll();
    }
    pub fn putCanVerticallyScroll(self: *@This(), value: bool) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.putCanVerticallyScroll(value);
    }
    pub fn getCanHorizontallyScroll(self: *@This()) core.HResult!bool {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.getCanHorizontallyScroll();
    }
    pub fn putCanHorizontallyScroll(self: *@This(), value: bool) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.putCanHorizontallyScroll(value);
    }
    pub fn getExtentWidth(self: *@This()) core.HResult!f64 {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.getExtentWidth();
    }
    pub fn getExtentHeight(self: *@This()) core.HResult!f64 {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.getExtentHeight();
    }
    pub fn getViewportWidth(self: *@This()) core.HResult!f64 {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.getViewportWidth();
    }
    pub fn getViewportHeight(self: *@This()) core.HResult!f64 {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.getViewportHeight();
    }
    pub fn getHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.getHorizontalOffset();
    }
    pub fn getVerticalOffset(self: *@This()) core.HResult!f64 {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.getVerticalOffset();
    }
    pub fn getScrollOwner(self: *@This()) core.HResult!*IInspectable {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.getScrollOwner();
    }
    pub fn putScrollOwner(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.putScrollOwner(value);
    }
    pub fn LineUp(self: *@This()) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.LineUp();
    }
    pub fn LineDown(self: *@This()) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.LineDown();
    }
    pub fn LineLeft(self: *@This()) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.LineLeft();
    }
    pub fn LineRight(self: *@This()) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.LineRight();
    }
    pub fn PageUp(self: *@This()) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.PageUp();
    }
    pub fn PageDown(self: *@This()) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.PageDown();
    }
    pub fn PageLeft(self: *@This()) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.PageLeft();
    }
    pub fn PageRight(self: *@This()) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.PageRight();
    }
    pub fn MouseWheelUp(self: *@This()) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.MouseWheelUp();
    }
    pub fn MouseWheelDown(self: *@This()) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.MouseWheelDown();
    }
    pub fn MouseWheelLeft(self: *@This()) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.MouseWheelLeft();
    }
    pub fn MouseWheelRight(self: *@This()) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.MouseWheelRight();
    }
    pub fn SetHorizontalOffset(self: *@This(), offset: f64) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.SetHorizontalOffset(offset);
    }
    pub fn SetVerticalOffset(self: *@This(), offset: f64) core.HResult!void {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.SetVerticalOffset(offset);
    }
    pub fn MakeVisible(self: *@This(), visual: *UIElement, rectangle: Rect) core.HResult!Rect {
        const this: *ICarouselPanel = @ptrCast(self);
        return try this.MakeVisible(visual, rectangle);
    }
    pub fn getAreHorizontalSnapPointsRegular(self: *@This()) core.HResult!bool {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAreHorizontalSnapPointsRegular();
    }
    pub fn getAreVerticalSnapPointsRegular(self: *@This()) core.HResult!bool {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAreVerticalSnapPointsRegular();
    }
    pub fn addHorizontalSnapPointsChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHorizontalSnapPointsChanged(handler);
    }
    pub fn removeHorizontalSnapPointsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHorizontalSnapPointsChanged(token);
    }
    pub fn addVerticalSnapPointsChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addVerticalSnapPointsChanged(handler);
    }
    pub fn removeVerticalSnapPointsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeVerticalSnapPointsChanged(token);
    }
    pub fn GetIrregularSnapPoints(self: *@This(), orientation: Orientation, alignment: SnapPointsAlignment) core.HResult!*IVectorView(f32) {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIrregularSnapPoints(orientation, alignment);
    }
    pub fn GetRegularSnapPoints(self: *@This(), orientation: Orientation, alignment: SnapPointsAlignment, offset: f32) core.HResult!f32 {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetRegularSnapPoints(orientation, alignment, offset);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CarouselPanel {
        const factory = @This().ICarouselPanelFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.CarouselPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICarouselPanel.GUID;
    pub const IID: Guid = ICarouselPanel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICarouselPanel.SIGNATURE);
    var _ICarouselPanelFactoryCache: FactoryCache(ICarouselPanelFactory, RUNTIME_NAME) = .{};
};
pub const RangeBase = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMinimum(self: *@This()) core.HResult!f64 {
        const this: *IRangeBase = @ptrCast(self);
        return try this.getMinimum();
    }
    pub fn putMinimum(self: *@This(), value: f64) core.HResult!void {
        const this: *IRangeBase = @ptrCast(self);
        return try this.putMinimum(value);
    }
    pub fn getMaximum(self: *@This()) core.HResult!f64 {
        const this: *IRangeBase = @ptrCast(self);
        return try this.getMaximum();
    }
    pub fn putMaximum(self: *@This(), value: f64) core.HResult!void {
        const this: *IRangeBase = @ptrCast(self);
        return try this.putMaximum(value);
    }
    pub fn getSmallChange(self: *@This()) core.HResult!f64 {
        const this: *IRangeBase = @ptrCast(self);
        return try this.getSmallChange();
    }
    pub fn putSmallChange(self: *@This(), value: f64) core.HResult!void {
        const this: *IRangeBase = @ptrCast(self);
        return try this.putSmallChange(value);
    }
    pub fn getLargeChange(self: *@This()) core.HResult!f64 {
        const this: *IRangeBase = @ptrCast(self);
        return try this.getLargeChange();
    }
    pub fn putLargeChange(self: *@This(), value: f64) core.HResult!void {
        const this: *IRangeBase = @ptrCast(self);
        return try this.putLargeChange(value);
    }
    pub fn getValue(self: *@This()) core.HResult!f64 {
        const this: *IRangeBase = @ptrCast(self);
        return try this.getValue();
    }
    pub fn putValue(self: *@This(), value: f64) core.HResult!void {
        const this: *IRangeBase = @ptrCast(self);
        return try this.putValue(value);
    }
    pub fn addValueChanged(self: *@This(), handler: *RangeBaseValueChangedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IRangeBase = @ptrCast(self);
        return try this.addValueChanged(handler);
    }
    pub fn removeValueChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IRangeBase = @ptrCast(self);
        return try this.removeValueChanged(token);
    }
    pub fn OnMinimumChanged(self: *@This(), oldMinimum: f64, newMinimum: f64) core.HResult!void {
        var this: ?*IRangeBaseOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRangeBaseOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnMinimumChanged(oldMinimum, newMinimum);
    }
    pub fn OnMaximumChanged(self: *@This(), oldMaximum: f64, newMaximum: f64) core.HResult!void {
        var this: ?*IRangeBaseOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRangeBaseOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnMaximumChanged(oldMaximum, newMaximum);
    }
    pub fn OnValueChanged(self: *@This(), oldValue: f64, newValue: f64) core.HResult!void {
        var this: ?*IRangeBaseOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRangeBaseOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnValueChanged(oldValue, newValue);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_MinimumProperty() core.HResult!*DependencyProperty {
        const factory = @This().IRangeBaseStaticsCache.get();
        return try factory.getMinimumProperty();
    }
    pub fn get_MaximumProperty() core.HResult!*DependencyProperty {
        const factory = @This().IRangeBaseStaticsCache.get();
        return try factory.getMaximumProperty();
    }
    pub fn get_SmallChangeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IRangeBaseStaticsCache.get();
        return try factory.getSmallChangeProperty();
    }
    pub fn get_LargeChangeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IRangeBaseStaticsCache.get();
        return try factory.getLargeChangeProperty();
    }
    pub fn get_ValueProperty() core.HResult!*DependencyProperty {
        const factory = @This().IRangeBaseStaticsCache.get();
        return try factory.getValueProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RangeBase {
        const factory = @This().IRangeBaseFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.RangeBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRangeBase.GUID;
    pub const IID: Guid = IRangeBase.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRangeBase.SIGNATURE);
    var _IRangeBaseStaticsCache: FactoryCache(IRangeBaseStatics, RUNTIME_NAME) = .{};
    var _IRangeBaseFactoryCache: FactoryCache(IRangeBaseFactory, RUNTIME_NAME) = .{};
};
pub const ColorPickerSlider = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColorChannel(self: *@This()) core.HResult!ColorPickerHsvChannel {
        const this: *IColorPickerSlider = @ptrCast(self);
        return try this.getColorChannel();
    }
    pub fn putColorChannel(self: *@This(), value: ColorPickerHsvChannel) core.HResult!void {
        const this: *IColorPickerSlider = @ptrCast(self);
        return try this.putColorChannel(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ColorChannelProperty() core.HResult!*DependencyProperty {
        const factory = @This().IColorPickerSliderStaticsCache.get();
        return try factory.getColorChannelProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ColorPickerSlider {
        const factory = @This().IColorPickerSliderFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ColorPickerSlider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IColorPickerSlider.GUID;
    pub const IID: Guid = IColorPickerSlider.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IColorPickerSlider.SIGNATURE);
    var _IColorPickerSliderStaticsCache: FactoryCache(IColorPickerSliderStatics, RUNTIME_NAME) = .{};
    var _IColorPickerSliderFactoryCache: FactoryCache(IColorPickerSliderFactory, RUNTIME_NAME) = .{};
};
pub const ColorSpectrum = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getColor(self: *@This()) core.HResult!Color {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.getColor();
    }
    pub fn putColor(self: *@This(), value: Color) core.HResult!void {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.putColor(value);
    }
    pub fn getHsvColor(self: *@This()) core.HResult!Vector4 {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.getHsvColor();
    }
    pub fn putHsvColor(self: *@This(), value: Vector4) core.HResult!void {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.putHsvColor(value);
    }
    pub fn getMinHue(self: *@This()) core.HResult!i32 {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.getMinHue();
    }
    pub fn putMinHue(self: *@This(), value: i32) core.HResult!void {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.putMinHue(value);
    }
    pub fn getMaxHue(self: *@This()) core.HResult!i32 {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.getMaxHue();
    }
    pub fn putMaxHue(self: *@This(), value: i32) core.HResult!void {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.putMaxHue(value);
    }
    pub fn getMinSaturation(self: *@This()) core.HResult!i32 {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.getMinSaturation();
    }
    pub fn putMinSaturation(self: *@This(), value: i32) core.HResult!void {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.putMinSaturation(value);
    }
    pub fn getMaxSaturation(self: *@This()) core.HResult!i32 {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.getMaxSaturation();
    }
    pub fn putMaxSaturation(self: *@This(), value: i32) core.HResult!void {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.putMaxSaturation(value);
    }
    pub fn getMinValue(self: *@This()) core.HResult!i32 {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.getMinValue();
    }
    pub fn putMinValue(self: *@This(), value: i32) core.HResult!void {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.putMinValue(value);
    }
    pub fn getMaxValue(self: *@This()) core.HResult!i32 {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.getMaxValue();
    }
    pub fn putMaxValue(self: *@This(), value: i32) core.HResult!void {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.putMaxValue(value);
    }
    pub fn getShape(self: *@This()) core.HResult!ColorSpectrumShape {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.getShape();
    }
    pub fn putShape(self: *@This(), value: ColorSpectrumShape) core.HResult!void {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.putShape(value);
    }
    pub fn getComponents(self: *@This()) core.HResult!ColorSpectrumComponents {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.getComponents();
    }
    pub fn putComponents(self: *@This(), value: ColorSpectrumComponents) core.HResult!void {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.putComponents(value);
    }
    pub fn addColorChanged(self: *@This(), handler: *TypedEventHandler(ColorSpectrum,ColorChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.addColorChanged(handler);
    }
    pub fn removeColorChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IColorSpectrum = @ptrCast(self);
        return try this.removeColorChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ColorProperty() core.HResult!*DependencyProperty {
        const factory = @This().IColorSpectrumStaticsCache.get();
        return try factory.getColorProperty();
    }
    pub fn get_HsvColorProperty() core.HResult!*DependencyProperty {
        const factory = @This().IColorSpectrumStaticsCache.get();
        return try factory.getHsvColorProperty();
    }
    pub fn get_MinHueProperty() core.HResult!*DependencyProperty {
        const factory = @This().IColorSpectrumStaticsCache.get();
        return try factory.getMinHueProperty();
    }
    pub fn get_MaxHueProperty() core.HResult!*DependencyProperty {
        const factory = @This().IColorSpectrumStaticsCache.get();
        return try factory.getMaxHueProperty();
    }
    pub fn get_MinSaturationProperty() core.HResult!*DependencyProperty {
        const factory = @This().IColorSpectrumStaticsCache.get();
        return try factory.getMinSaturationProperty();
    }
    pub fn get_MaxSaturationProperty() core.HResult!*DependencyProperty {
        const factory = @This().IColorSpectrumStaticsCache.get();
        return try factory.getMaxSaturationProperty();
    }
    pub fn get_MinValueProperty() core.HResult!*DependencyProperty {
        const factory = @This().IColorSpectrumStaticsCache.get();
        return try factory.getMinValueProperty();
    }
    pub fn get_MaxValueProperty() core.HResult!*DependencyProperty {
        const factory = @This().IColorSpectrumStaticsCache.get();
        return try factory.getMaxValueProperty();
    }
    pub fn get_ShapeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IColorSpectrumStaticsCache.get();
        return try factory.getShapeProperty();
    }
    pub fn get_ComponentsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IColorSpectrumStaticsCache.get();
        return try factory.getComponentsProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ColorSpectrum {
        const factory = @This().IColorSpectrumFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ColorSpectrum";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IColorSpectrum.GUID;
    pub const IID: Guid = IColorSpectrum.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IColorSpectrum.SIGNATURE);
    var _IColorSpectrumStaticsCache: FactoryCache(IColorSpectrumStatics, RUNTIME_NAME) = .{};
    var _IColorSpectrumFactoryCache: FactoryCache(IColorSpectrumFactory, RUNTIME_NAME) = .{};
};
pub const ComboBoxTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDropDownOpenedHeight(self: *@This()) core.HResult!f64 {
        const this: *IComboBoxTemplateSettings = @ptrCast(self);
        return try this.getDropDownOpenedHeight();
    }
    pub fn getDropDownClosedHeight(self: *@This()) core.HResult!f64 {
        const this: *IComboBoxTemplateSettings = @ptrCast(self);
        return try this.getDropDownClosedHeight();
    }
    pub fn getDropDownOffset(self: *@This()) core.HResult!f64 {
        const this: *IComboBoxTemplateSettings = @ptrCast(self);
        return try this.getDropDownOffset();
    }
    pub fn getSelectedItemDirection(self: *@This()) core.HResult!AnimationDirection {
        const this: *IComboBoxTemplateSettings = @ptrCast(self);
        return try this.getSelectedItemDirection();
    }
    pub fn getDropDownContentMinWidth(self: *@This()) core.HResult!f64 {
        var this: ?*IComboBoxTemplateSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IComboBoxTemplateSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDropDownContentMinWidth();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ComboBoxTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IComboBoxTemplateSettings.GUID;
    pub const IID: Guid = IComboBoxTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IComboBoxTemplateSettings.SIGNATURE);
};
pub const CommandBarFlyoutCommandBar = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFlyoutTemplateSettings(self: *@This()) core.HResult!*CommandBarFlyoutCommandBarTemplateSettings {
        const this: *ICommandBarFlyoutCommandBar = @ptrCast(self);
        return try this.getFlyoutTemplateSettings();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CommandBarFlyoutCommandBar {
        const factory = @This().ICommandBarFlyoutCommandBarFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.CommandBarFlyoutCommandBar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICommandBarFlyoutCommandBar.GUID;
    pub const IID: Guid = ICommandBarFlyoutCommandBar.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICommandBarFlyoutCommandBar.SIGNATURE);
    var _ICommandBarFlyoutCommandBarFactoryCache: FactoryCache(ICommandBarFlyoutCommandBarFactory, RUNTIME_NAME) = .{};
};
pub const CommandBarFlyoutCommandBarTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOpenAnimationStartPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getOpenAnimationStartPosition();
    }
    pub fn getOpenAnimationEndPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getOpenAnimationEndPosition();
    }
    pub fn getCloseAnimationEndPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getCloseAnimationEndPosition();
    }
    pub fn getCurrentWidth(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getCurrentWidth();
    }
    pub fn getExpandedWidth(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getExpandedWidth();
    }
    pub fn getWidthExpansionDelta(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getWidthExpansionDelta();
    }
    pub fn getWidthExpansionAnimationStartPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getWidthExpansionAnimationStartPosition();
    }
    pub fn getWidthExpansionAnimationEndPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getWidthExpansionAnimationEndPosition();
    }
    pub fn getWidthExpansionMoreButtonAnimationStartPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getWidthExpansionMoreButtonAnimationStartPosition();
    }
    pub fn getWidthExpansionMoreButtonAnimationEndPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getWidthExpansionMoreButtonAnimationEndPosition();
    }
    pub fn getExpandUpOverflowVerticalPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getExpandUpOverflowVerticalPosition();
    }
    pub fn getExpandDownOverflowVerticalPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getExpandDownOverflowVerticalPosition();
    }
    pub fn getExpandUpAnimationStartPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getExpandUpAnimationStartPosition();
    }
    pub fn getExpandUpAnimationEndPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getExpandUpAnimationEndPosition();
    }
    pub fn getExpandUpAnimationHoldPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getExpandUpAnimationHoldPosition();
    }
    pub fn getExpandDownAnimationStartPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getExpandDownAnimationStartPosition();
    }
    pub fn getExpandDownAnimationEndPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getExpandDownAnimationEndPosition();
    }
    pub fn getExpandDownAnimationHoldPosition(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getExpandDownAnimationHoldPosition();
    }
    pub fn getContentClipRect(self: *@This()) core.HResult!Rect {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getContentClipRect();
    }
    pub fn getOverflowContentClipRect(self: *@This()) core.HResult!Rect {
        const this: *ICommandBarFlyoutCommandBarTemplateSettings = @ptrCast(self);
        return try this.getOverflowContentClipRect();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.CommandBarFlyoutCommandBarTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICommandBarFlyoutCommandBarTemplateSettings.GUID;
    pub const IID: Guid = ICommandBarFlyoutCommandBarTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICommandBarFlyoutCommandBarTemplateSettings.SIGNATURE);
};
pub const CommandBarTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContentHeight(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarTemplateSettings = @ptrCast(self);
        return try this.getContentHeight();
    }
    pub fn getOverflowContentClipRect(self: *@This()) core.HResult!Rect {
        const this: *ICommandBarTemplateSettings = @ptrCast(self);
        return try this.getOverflowContentClipRect();
    }
    pub fn getOverflowContentMinWidth(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarTemplateSettings = @ptrCast(self);
        return try this.getOverflowContentMinWidth();
    }
    pub fn getOverflowContentMaxHeight(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarTemplateSettings = @ptrCast(self);
        return try this.getOverflowContentMaxHeight();
    }
    pub fn getOverflowContentHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarTemplateSettings = @ptrCast(self);
        return try this.getOverflowContentHorizontalOffset();
    }
    pub fn getOverflowContentHeight(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarTemplateSettings = @ptrCast(self);
        return try this.getOverflowContentHeight();
    }
    pub fn getNegativeOverflowContentHeight(self: *@This()) core.HResult!f64 {
        const this: *ICommandBarTemplateSettings = @ptrCast(self);
        return try this.getNegativeOverflowContentHeight();
    }
    pub fn getOverflowContentMaxWidth(self: *@This()) core.HResult!f64 {
        var this: ?*ICommandBarTemplateSettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommandBarTemplateSettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOverflowContentMaxWidth();
    }
    pub fn getEffectiveOverflowButtonVisibility(self: *@This()) core.HResult!Visibility {
        var this: ?*ICommandBarTemplateSettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommandBarTemplateSettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getEffectiveOverflowButtonVisibility();
    }
    pub fn getOverflowContentCompactYTranslation(self: *@This()) core.HResult!f64 {
        var this: ?*ICommandBarTemplateSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommandBarTemplateSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOverflowContentCompactYTranslation();
    }
    pub fn getOverflowContentMinimalYTranslation(self: *@This()) core.HResult!f64 {
        var this: ?*ICommandBarTemplateSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommandBarTemplateSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOverflowContentMinimalYTranslation();
    }
    pub fn getOverflowContentHiddenYTranslation(self: *@This()) core.HResult!f64 {
        var this: ?*ICommandBarTemplateSettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommandBarTemplateSettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOverflowContentHiddenYTranslation();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.CommandBarTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICommandBarTemplateSettings.GUID;
    pub const IID: Guid = ICommandBarTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICommandBarTemplateSettings.SIGNATURE);
};
pub const ComponentResourceLocation = enum(i32) {
    Application = 0,
    Nested = 1,
};
pub const DragCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHorizontalChange(self: *@This()) core.HResult!f64 {
        const this: *IDragCompletedEventArgs = @ptrCast(self);
        return try this.getHorizontalChange();
    }
    pub fn getVerticalChange(self: *@This()) core.HResult!f64 {
        const this: *IDragCompletedEventArgs = @ptrCast(self);
        return try this.getVerticalChange();
    }
    pub fn getCanceled(self: *@This()) core.HResult!bool {
        const this: *IDragCompletedEventArgs = @ptrCast(self);
        return try this.getCanceled();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithHorizontalChangeVerticalChangeAndCanceled(horizontalChange: f64, verticalChange: f64, canceled: bool, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DragCompletedEventArgs {
        const factory = @This().IDragCompletedEventArgsFactoryCache.get();
        return try factory.CreateInstanceWithHorizontalChangeVerticalChangeAndCanceled(horizontalChange, verticalChange, canceled, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.DragCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDragCompletedEventArgs.GUID;
    pub const IID: Guid = IDragCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDragCompletedEventArgs.SIGNATURE);
    var _IDragCompletedEventArgsFactoryCache: FactoryCache(IDragCompletedEventArgsFactory, RUNTIME_NAME) = .{};
};
pub const DragCompletedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DragCompletedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DragCompletedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *DragCompletedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.DragCompletedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "36b28888-19ac-4b4e-9137-a6cf2b023883";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *DragCompletedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const DragDeltaEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHorizontalChange(self: *@This()) core.HResult!f64 {
        const this: *IDragDeltaEventArgs = @ptrCast(self);
        return try this.getHorizontalChange();
    }
    pub fn getVerticalChange(self: *@This()) core.HResult!f64 {
        const this: *IDragDeltaEventArgs = @ptrCast(self);
        return try this.getVerticalChange();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithHorizontalChangeAndVerticalChange(horizontalChange: f64, verticalChange: f64, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DragDeltaEventArgs {
        const factory = @This().IDragDeltaEventArgsFactoryCache.get();
        return try factory.CreateInstanceWithHorizontalChangeAndVerticalChange(horizontalChange, verticalChange, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.DragDeltaEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDragDeltaEventArgs.GUID;
    pub const IID: Guid = IDragDeltaEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDragDeltaEventArgs.SIGNATURE);
    var _IDragDeltaEventArgsFactoryCache: FactoryCache(IDragDeltaEventArgsFactory, RUNTIME_NAME) = .{};
};
pub const DragDeltaEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DragDeltaEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DragDeltaEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *DragDeltaEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.DragDeltaEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ac24f9f-ac28-49e9-9189-dccffeb66472";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *DragDeltaEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const DragStartedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *IDragStartedEventArgs = @ptrCast(self);
        return try this.getHorizontalOffset();
    }
    pub fn getVerticalOffset(self: *@This()) core.HResult!f64 {
        const this: *IDragStartedEventArgs = @ptrCast(self);
        return try this.getVerticalOffset();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithHorizontalOffsetAndVerticalOffset(horizontalOffset: f64, verticalOffset: f64, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DragStartedEventArgs {
        const factory = @This().IDragStartedEventArgsFactoryCache.get();
        return try factory.CreateInstanceWithHorizontalOffsetAndVerticalOffset(horizontalOffset, verticalOffset, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.DragStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDragStartedEventArgs.GUID;
    pub const IID: Guid = IDragStartedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDragStartedEventArgs.SIGNATURE);
    var _IDragStartedEventArgsFactoryCache: FactoryCache(IDragStartedEventArgsFactory, RUNTIME_NAME) = .{};
};
pub const DragStartedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DragStartedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DragStartedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *DragStartedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.DragStartedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2eea48a-c65a-495d-a2f1-72c66989142d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *DragStartedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const EdgeTransitionLocation = enum(i32) {
    Left = 0,
    Top = 1,
    Right = 2,
    Bottom = 3,
};
pub const FlyoutBaseClosingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCancel(self: *@This()) core.HResult!bool {
        const this: *IFlyoutBaseClosingEventArgs = @ptrCast(self);
        return try this.getCancel();
    }
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const this: *IFlyoutBaseClosingEventArgs = @ptrCast(self);
        return try this.putCancel(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.FlyoutBaseClosingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFlyoutBaseClosingEventArgs.GUID;
    pub const IID: Guid = IFlyoutBaseClosingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFlyoutBaseClosingEventArgs.SIGNATURE);
};
pub const FlyoutPlacementMode = enum(i32) {
    Top = 0,
    Bottom = 1,
    Left = 2,
    Right = 3,
    Full = 4,
    TopEdgeAlignedLeft = 5,
    TopEdgeAlignedRight = 6,
    BottomEdgeAlignedLeft = 7,
    BottomEdgeAlignedRight = 8,
    LeftEdgeAlignedTop = 9,
    LeftEdgeAlignedBottom = 10,
    RightEdgeAlignedTop = 11,
    RightEdgeAlignedBottom = 12,
    Auto = 13,
};
pub const FlyoutShowMode = enum(i32) {
    Auto = 0,
    Standard = 1,
    Transient = 2,
    TransientWithDismissOnPointerMoveAway = 3,
};
pub const FlyoutShowOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPosition(self: *@This()) core.HResult!*IReference(Point) {
        const this: *IFlyoutShowOptions = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn putPosition(self: *@This(), value: *IReference(Point)) core.HResult!void {
        const this: *IFlyoutShowOptions = @ptrCast(self);
        return try this.putPosition(value);
    }
    pub fn getExclusionRect(self: *@This()) core.HResult!*IReference(Rect) {
        const this: *IFlyoutShowOptions = @ptrCast(self);
        return try this.getExclusionRect();
    }
    pub fn putExclusionRect(self: *@This(), value: *IReference(Rect)) core.HResult!void {
        const this: *IFlyoutShowOptions = @ptrCast(self);
        return try this.putExclusionRect(value);
    }
    pub fn getShowMode(self: *@This()) core.HResult!FlyoutShowMode {
        const this: *IFlyoutShowOptions = @ptrCast(self);
        return try this.getShowMode();
    }
    pub fn putShowMode(self: *@This(), value: FlyoutShowMode) core.HResult!void {
        const this: *IFlyoutShowOptions = @ptrCast(self);
        return try this.putShowMode(value);
    }
    pub fn getPlacement(self: *@This()) core.HResult!FlyoutPlacementMode {
        const this: *IFlyoutShowOptions = @ptrCast(self);
        return try this.getPlacement();
    }
    pub fn putPlacement(self: *@This(), value: FlyoutPlacementMode) core.HResult!void {
        const this: *IFlyoutShowOptions = @ptrCast(self);
        return try this.putPlacement(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FlyoutShowOptions {
        const factory = @This().IFlyoutShowOptionsFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.FlyoutShowOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFlyoutShowOptions.GUID;
    pub const IID: Guid = IFlyoutShowOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFlyoutShowOptions.SIGNATURE);
    var _IFlyoutShowOptionsFactoryCache: FactoryCache(IFlyoutShowOptionsFactory, RUNTIME_NAME) = .{};
};
pub const GeneratorDirection = enum(i32) {
    Forward = 0,
    Backward = 1,
};
pub const GeneratorPosition = extern struct {
    Index: i32,
    Offset: i32,
};
pub const GeneratorPositionHelper = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromIndexAndOffset(index: i32, offset: i32) core.HResult!GeneratorPosition {
        const factory = @This().IGeneratorPositionHelperStaticsCache.get();
        return try factory.FromIndexAndOffset(index, offset);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.GeneratorPositionHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGeneratorPositionHelper.GUID;
    pub const IID: Guid = IGeneratorPositionHelper.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGeneratorPositionHelper.SIGNATURE);
    var _IGeneratorPositionHelperStaticsCache: FactoryCache(IGeneratorPositionHelperStatics, RUNTIME_NAME) = .{};
};
pub const GridViewItemPresenter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSelectionCheckMarkVisualEnabled(self: *@This()) core.HResult!bool {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getSelectionCheckMarkVisualEnabled();
    }
    pub fn putSelectionCheckMarkVisualEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putSelectionCheckMarkVisualEnabled(value);
    }
    pub fn getCheckHintBrush(self: *@This()) core.HResult!*Brush {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getCheckHintBrush();
    }
    pub fn putCheckHintBrush(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putCheckHintBrush(value);
    }
    pub fn getCheckSelectingBrush(self: *@This()) core.HResult!*Brush {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getCheckSelectingBrush();
    }
    pub fn putCheckSelectingBrush(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putCheckSelectingBrush(value);
    }
    pub fn getCheckBrush(self: *@This()) core.HResult!*Brush {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getCheckBrush();
    }
    pub fn putCheckBrush(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putCheckBrush(value);
    }
    pub fn getDragBackground(self: *@This()) core.HResult!*Brush {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getDragBackground();
    }
    pub fn putDragBackground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putDragBackground(value);
    }
    pub fn getDragForeground(self: *@This()) core.HResult!*Brush {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getDragForeground();
    }
    pub fn putDragForeground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putDragForeground(value);
    }
    pub fn getFocusBorderBrush(self: *@This()) core.HResult!*Brush {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getFocusBorderBrush();
    }
    pub fn putFocusBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putFocusBorderBrush(value);
    }
    pub fn getPlaceholderBackground(self: *@This()) core.HResult!*Brush {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getPlaceholderBackground();
    }
    pub fn putPlaceholderBackground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putPlaceholderBackground(value);
    }
    pub fn getPointerOverBackground(self: *@This()) core.HResult!*Brush {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getPointerOverBackground();
    }
    pub fn putPointerOverBackground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putPointerOverBackground(value);
    }
    pub fn getSelectedBackground(self: *@This()) core.HResult!*Brush {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getSelectedBackground();
    }
    pub fn putSelectedBackground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putSelectedBackground(value);
    }
    pub fn getSelectedForeground(self: *@This()) core.HResult!*Brush {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getSelectedForeground();
    }
    pub fn putSelectedForeground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putSelectedForeground(value);
    }
    pub fn getSelectedPointerOverBackground(self: *@This()) core.HResult!*Brush {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getSelectedPointerOverBackground();
    }
    pub fn putSelectedPointerOverBackground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putSelectedPointerOverBackground(value);
    }
    pub fn getSelectedPointerOverBorderBrush(self: *@This()) core.HResult!*Brush {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getSelectedPointerOverBorderBrush();
    }
    pub fn putSelectedPointerOverBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putSelectedPointerOverBorderBrush(value);
    }
    pub fn getSelectedBorderThickness(self: *@This()) core.HResult!Thickness {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getSelectedBorderThickness();
    }
    pub fn putSelectedBorderThickness(self: *@This(), value: Thickness) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putSelectedBorderThickness(value);
    }
    pub fn getDisabledOpacity(self: *@This()) core.HResult!f64 {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getDisabledOpacity();
    }
    pub fn putDisabledOpacity(self: *@This(), value: f64) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putDisabledOpacity(value);
    }
    pub fn getDragOpacity(self: *@This()) core.HResult!f64 {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getDragOpacity();
    }
    pub fn putDragOpacity(self: *@This(), value: f64) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putDragOpacity(value);
    }
    pub fn getReorderHintOffset(self: *@This()) core.HResult!f64 {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getReorderHintOffset();
    }
    pub fn putReorderHintOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putReorderHintOffset(value);
    }
    pub fn getGridViewItemPresenterHorizontalContentAlignment(self: *@This()) core.HResult!HorizontalAlignment {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getGridViewItemPresenterHorizontalContentAlignment();
    }
    pub fn putGridViewItemPresenterHorizontalContentAlignment(self: *@This(), value: HorizontalAlignment) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putGridViewItemPresenterHorizontalContentAlignment(value);
    }
    pub fn getGridViewItemPresenterVerticalContentAlignment(self: *@This()) core.HResult!VerticalAlignment {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getGridViewItemPresenterVerticalContentAlignment();
    }
    pub fn putGridViewItemPresenterVerticalContentAlignment(self: *@This(), value: VerticalAlignment) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putGridViewItemPresenterVerticalContentAlignment(value);
    }
    pub fn getGridViewItemPresenterPadding(self: *@This()) core.HResult!Thickness {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getGridViewItemPresenterPadding();
    }
    pub fn putGridViewItemPresenterPadding(self: *@This(), value: Thickness) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putGridViewItemPresenterPadding(value);
    }
    pub fn getPointerOverBackgroundMargin(self: *@This()) core.HResult!Thickness {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getPointerOverBackgroundMargin();
    }
    pub fn putPointerOverBackgroundMargin(self: *@This(), value: Thickness) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putPointerOverBackgroundMargin(value);
    }
    pub fn getContentMargin(self: *@This()) core.HResult!Thickness {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.getContentMargin();
    }
    pub fn putContentMargin(self: *@This(), value: Thickness) core.HResult!void {
        const this: *IGridViewItemPresenter = @ptrCast(self);
        return try this.putContentMargin(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_SelectionCheckMarkVisualEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getSelectionCheckMarkVisualEnabledProperty();
    }
    pub fn get_CheckHintBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getCheckHintBrushProperty();
    }
    pub fn get_CheckSelectingBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getCheckSelectingBrushProperty();
    }
    pub fn get_CheckBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getCheckBrushProperty();
    }
    pub fn get_DragBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getDragBackgroundProperty();
    }
    pub fn get_DragForegroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getDragForegroundProperty();
    }
    pub fn get_FocusBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getFocusBorderBrushProperty();
    }
    pub fn get_PlaceholderBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getPlaceholderBackgroundProperty();
    }
    pub fn get_PointerOverBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getPointerOverBackgroundProperty();
    }
    pub fn get_SelectedBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getSelectedBackgroundProperty();
    }
    pub fn get_SelectedForegroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getSelectedForegroundProperty();
    }
    pub fn get_SelectedPointerOverBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getSelectedPointerOverBackgroundProperty();
    }
    pub fn get_SelectedPointerOverBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getSelectedPointerOverBorderBrushProperty();
    }
    pub fn get_SelectedBorderThicknessProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getSelectedBorderThicknessProperty();
    }
    pub fn get_DisabledOpacityProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getDisabledOpacityProperty();
    }
    pub fn get_DragOpacityProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getDragOpacityProperty();
    }
    pub fn get_ReorderHintOffsetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getReorderHintOffsetProperty();
    }
    pub fn get_GridViewItemPresenterHorizontalContentAlignmentProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getGridViewItemPresenterHorizontalContentAlignmentProperty();
    }
    pub fn get_GridViewItemPresenterVerticalContentAlignmentProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getGridViewItemPresenterVerticalContentAlignmentProperty();
    }
    pub fn get_GridViewItemPresenterPaddingProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getGridViewItemPresenterPaddingProperty();
    }
    pub fn get_PointerOverBackgroundMarginProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getPointerOverBackgroundMarginProperty();
    }
    pub fn get_ContentMarginProperty() core.HResult!*DependencyProperty {
        const factory = @This().IGridViewItemPresenterStaticsCache.get();
        return try factory.getContentMarginProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GridViewItemPresenter {
        const factory = @This().IGridViewItemPresenterFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.GridViewItemPresenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGridViewItemPresenter.GUID;
    pub const IID: Guid = IGridViewItemPresenter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGridViewItemPresenter.SIGNATURE);
    var _IGridViewItemPresenterStaticsCache: FactoryCache(IGridViewItemPresenterStatics, RUNTIME_NAME) = .{};
    var _IGridViewItemPresenterFactoryCache: FactoryCache(IGridViewItemPresenterFactory, RUNTIME_NAME) = .{};
};
pub const GridViewItemTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDragItemsCount(self: *@This()) core.HResult!i32 {
        const this: *IGridViewItemTemplateSettings = @ptrCast(self);
        return try this.getDragItemsCount();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.GridViewItemTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGridViewItemTemplateSettings.GUID;
    pub const IID: Guid = IGridViewItemTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGridViewItemTemplateSettings.SIGNATURE);
};
pub const GroupHeaderPlacement = enum(i32) {
    Top = 0,
    Left = 1,
};
pub const IAppBarButtonTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getKeyboardAcceleratorTextMinWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_KeyboardAcceleratorTextMinWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IAppBarButtonTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cbc9b39d-0c95-4951-bff2-13963691c366";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyboardAcceleratorTextMinWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IAppBarTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getClipRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_ClipRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCompactVerticalDelta(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CompactVerticalDelta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCompactRootMargin(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_CompactRootMargin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimalVerticalDelta(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinimalVerticalDelta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinimalRootMargin(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_MinimalRootMargin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHiddenVerticalDelta(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HiddenVerticalDelta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHiddenRootMargin(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_HiddenRootMargin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bcc2a863-eb35-423c-8389-d7827be3bf67";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ClipRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_CompactVerticalDelta: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_CompactRootMargin: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        get_MinimalVerticalDelta: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_MinimalRootMargin: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        get_HiddenVerticalDelta: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_HiddenRootMargin: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
    };
};
pub const IAppBarTemplateSettings2 = extern struct {
    vtable: *const VTable,
    pub fn getNegativeCompactVerticalDelta(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NegativeCompactVerticalDelta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNegativeMinimalVerticalDelta(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NegativeMinimalVerticalDelta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNegativeHiddenVerticalDelta(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NegativeHiddenVerticalDelta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IAppBarTemplateSettings2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cbe66259-0399-5bcc-b925-4d5f5c9a4568";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NegativeCompactVerticalDelta: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_NegativeMinimalVerticalDelta: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_NegativeHiddenVerticalDelta: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IAppBarToggleButtonTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getKeyboardAcceleratorTextMinWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_KeyboardAcceleratorTextMinWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IAppBarToggleButtonTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aaf99c48-d8f4-40d9-9fa3-3a64f0fec5d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyboardAcceleratorTextMinWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IButtonBase = extern struct {
    vtable: *const VTable,
    pub fn getClickMode(self: *@This()) core.HResult!ClickMode {
        var _r: ClickMode = undefined;
        const _c = self.vtable.get_ClickMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putClickMode(self: *@This(), value: ClickMode) core.HResult!void {
        const _c = self.vtable.put_ClickMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsPointerOver(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPointerOver(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPressed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsPressed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCommand(self: *@This()) core.HResult!*ICommand {
        var _r: *ICommand = undefined;
        const _c = self.vtable.get_Command(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCommand(self: *@This(), value: *ICommand) core.HResult!void {
        const _c = self.vtable.put_Command(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCommandParameter(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_CommandParameter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCommandParameter(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_CommandParameter(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addClick(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Click(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClick(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Click(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IButtonBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa002c1a-494e-46cf-91d4-e14a8d798674";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ClickMode: *const fn(self: *anyopaque, _r: *ClickMode) callconv(.winapi) HRESULT,
        put_ClickMode: *const fn(self: *anyopaque, value: ClickMode) callconv(.winapi) HRESULT,
        get_IsPointerOver: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsPressed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Command: *const fn(self: *anyopaque, _r: **ICommand) callconv(.winapi) HRESULT,
        put_Command: *const fn(self: *anyopaque, value: *ICommand) callconv(.winapi) HRESULT,
        get_CommandParameter: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_CommandParameter: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        add_Click: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Click: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IButtonBaseFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ButtonBase {
        var _r: *ButtonBase = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IButtonBaseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "389b7c71-5220-42b2-9992-2690c1a6702f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ButtonBase) callconv(.winapi) HRESULT,
    };
};
pub const IButtonBaseStatics = extern struct {
    vtable: *const VTable,
    pub fn getClickModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ClickModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPointerOverProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsPointerOverProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsPressedProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsPressedProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCommandProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CommandProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCommandParameterProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CommandParameterProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IButtonBaseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67ef17e1-fe37-474f-9e97-3b5e0b30f2df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ClickModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsPointerOverProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsPressedProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CommandProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CommandParameterProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ICalendarPanel = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ICalendarPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fcd55a2d-02d3-4ee6-9a90-9df3ead00994";
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
pub const ICalendarViewTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getMinViewWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MinViewWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeaderText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HeaderText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWeekDay1(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WeekDay1(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWeekDay2(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WeekDay2(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWeekDay3(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WeekDay3(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWeekDay4(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WeekDay4(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWeekDay5(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WeekDay5(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWeekDay6(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WeekDay6(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWeekDay7(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_WeekDay7(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasMoreContentAfter(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasMoreContentAfter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasMoreContentBefore(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasMoreContentBefore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHasMoreViews(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasMoreViews(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getClipRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_ClipRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCenterX(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterX(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCenterY(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CenterY(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ICalendarViewTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56c71483-64e1-477c-8a0b-cb2f3334b9b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinViewWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_HeaderText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WeekDay1: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WeekDay2: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WeekDay3: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WeekDay4: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WeekDay5: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WeekDay6: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_WeekDay7: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_HasMoreContentAfter: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasMoreContentBefore: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HasMoreViews: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_ClipRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_CenterX: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_CenterY: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const ICarouselPanel = extern struct {
    vtable: *const VTable,
    pub fn getCanVerticallyScroll(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanVerticallyScroll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanVerticallyScroll(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanVerticallyScroll(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanHorizontallyScroll(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanHorizontallyScroll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanHorizontallyScroll(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanHorizontallyScroll(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExtentWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ExtentWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtentHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ExtentHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViewportWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ViewportWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViewportHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ViewportHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_VerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScrollOwner(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_ScrollOwner(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScrollOwner(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_ScrollOwner(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LineUp(self: *@This()) core.HResult!void {
        const _c = self.vtable.LineUp(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LineDown(self: *@This()) core.HResult!void {
        const _c = self.vtable.LineDown(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LineLeft(self: *@This()) core.HResult!void {
        const _c = self.vtable.LineLeft(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LineRight(self: *@This()) core.HResult!void {
        const _c = self.vtable.LineRight(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PageUp(self: *@This()) core.HResult!void {
        const _c = self.vtable.PageUp(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PageDown(self: *@This()) core.HResult!void {
        const _c = self.vtable.PageDown(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PageLeft(self: *@This()) core.HResult!void {
        const _c = self.vtable.PageLeft(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PageRight(self: *@This()) core.HResult!void {
        const _c = self.vtable.PageRight(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MouseWheelUp(self: *@This()) core.HResult!void {
        const _c = self.vtable.MouseWheelUp(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MouseWheelDown(self: *@This()) core.HResult!void {
        const _c = self.vtable.MouseWheelDown(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MouseWheelLeft(self: *@This()) core.HResult!void {
        const _c = self.vtable.MouseWheelLeft(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MouseWheelRight(self: *@This()) core.HResult!void {
        const _c = self.vtable.MouseWheelRight(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetHorizontalOffset(self: *@This(), offset: f64) core.HResult!void {
        const _c = self.vtable.SetHorizontalOffset(@ptrCast(self), offset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetVerticalOffset(self: *@This(), offset: f64) core.HResult!void {
        const _c = self.vtable.SetVerticalOffset(@ptrCast(self), offset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MakeVisible(self: *@This(), visual: *UIElement, rectangle: Rect) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.MakeVisible(@ptrCast(self), visual, rectangle, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ICarouselPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "deab78b2-373b-4151-8785-e544d0d9362b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanVerticallyScroll: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanVerticallyScroll: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanHorizontallyScroll: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanHorizontallyScroll: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ExtentWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ExtentHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ViewportWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ViewportHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_HorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_VerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ScrollOwner: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_ScrollOwner: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        LineUp: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        LineDown: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        LineLeft: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        LineRight: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PageUp: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PageDown: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PageLeft: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PageRight: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        MouseWheelUp: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        MouseWheelDown: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        MouseWheelLeft: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        MouseWheelRight: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetHorizontalOffset: *const fn(self: *anyopaque, offset: f64) callconv(.winapi) HRESULT,
        SetVerticalOffset: *const fn(self: *anyopaque, offset: f64) callconv(.winapi) HRESULT,
        MakeVisible: *const fn(self: *anyopaque, visual: *UIElement, rectangle: Rect, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const ICarouselPanelFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CarouselPanel {
        var _r: *CarouselPanel = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ICarouselPanelFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c1109404-9ae1-440e-a0dd-bbb6e2293cbe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **CarouselPanel) callconv(.winapi) HRESULT,
    };
};
pub const IColorPickerSlider = extern struct {
    vtable: *const VTable,
    pub fn getColorChannel(self: *@This()) core.HResult!ColorPickerHsvChannel {
        var _r: ColorPickerHsvChannel = undefined;
        const _c = self.vtable.get_ColorChannel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putColorChannel(self: *@This(), value: ColorPickerHsvChannel) core.HResult!void {
        const _c = self.vtable.put_ColorChannel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IColorPickerSlider";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "94394d83-e0df-4c5f-bbcd-8155f4020440";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ColorChannel: *const fn(self: *anyopaque, _r: *ColorPickerHsvChannel) callconv(.winapi) HRESULT,
        put_ColorChannel: *const fn(self: *anyopaque, value: ColorPickerHsvChannel) callconv(.winapi) HRESULT,
    };
};
pub const IColorPickerSliderFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ColorPickerSlider {
        var _r: *ColorPickerSlider = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IColorPickerSliderFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "06d879a2-8c07-4b1e-a940-9fbce8f49639";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ColorPickerSlider) callconv(.winapi) HRESULT,
    };
};
pub const IColorPickerSliderStatics = extern struct {
    vtable: *const VTable,
    pub fn getColorChannelProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ColorChannelProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IColorPickerSliderStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "22eafc6a-9fe3-4eee-8734-a1398ec4413a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ColorChannelProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IColorSpectrum = extern struct {
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
    pub fn getHsvColor(self: *@This()) core.HResult!Vector4 {
        var _r: Vector4 = undefined;
        const _c = self.vtable.get_HsvColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHsvColor(self: *@This(), value: Vector4) core.HResult!void {
        const _c = self.vtable.put_HsvColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinHue(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MinHue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinHue(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_MinHue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxHue(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxHue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxHue(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_MaxHue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinSaturation(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MinSaturation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinSaturation(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_MinSaturation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxSaturation(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxSaturation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxSaturation(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_MaxSaturation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMinValue(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MinValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinValue(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_MinValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaxValue(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_MaxValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaxValue(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_MaxValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShape(self: *@This()) core.HResult!ColorSpectrumShape {
        var _r: ColorSpectrumShape = undefined;
        const _c = self.vtable.get_Shape(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShape(self: *@This(), value: ColorSpectrumShape) core.HResult!void {
        const _c = self.vtable.put_Shape(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getComponents(self: *@This()) core.HResult!ColorSpectrumComponents {
        var _r: ColorSpectrumComponents = undefined;
        const _c = self.vtable.get_Components(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putComponents(self: *@This(), value: ColorSpectrumComponents) core.HResult!void {
        const _c = self.vtable.put_Components(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addColorChanged(self: *@This(), handler: *TypedEventHandler(ColorSpectrum,ColorChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ColorChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeColorChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ColorChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IColorSpectrum";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce46f271-f509-4f98-8288-e4942fb385df";
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
        get_HsvColor: *const fn(self: *anyopaque, _r: *Vector4) callconv(.winapi) HRESULT,
        put_HsvColor: *const fn(self: *anyopaque, value: Vector4) callconv(.winapi) HRESULT,
        get_MinHue: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_MinHue: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_MaxHue: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_MaxHue: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_MinSaturation: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_MinSaturation: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_MaxSaturation: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_MaxSaturation: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_MinValue: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_MinValue: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_MaxValue: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_MaxValue: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Shape: *const fn(self: *anyopaque, _r: *ColorSpectrumShape) callconv(.winapi) HRESULT,
        put_Shape: *const fn(self: *anyopaque, value: ColorSpectrumShape) callconv(.winapi) HRESULT,
        get_Components: *const fn(self: *anyopaque, _r: *ColorSpectrumComponents) callconv(.winapi) HRESULT,
        put_Components: *const fn(self: *anyopaque, value: ColorSpectrumComponents) callconv(.winapi) HRESULT,
        add_ColorChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ColorSpectrum,ColorChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ColorChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IColorSpectrumFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ColorSpectrum {
        var _r: *ColorSpectrum = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IColorSpectrumFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90c7e61e-904d-42ab-b44f-e68dbf0cdee9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ColorSpectrum) callconv(.winapi) HRESULT,
    };
};
pub const IColorSpectrumStatics = extern struct {
    vtable: *const VTable,
    pub fn getColorProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ColorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHsvColorProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_HsvColorProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinHueProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MinHueProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxHueProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MaxHueProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinSaturationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MinSaturationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxSaturationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MaxSaturationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMinValueProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MinValueProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxValueProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MaxValueProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShapeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ShapeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getComponentsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ComponentsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IColorSpectrumStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "906bee7c-2cee-4e90-968b-f0a5bd691b4a";
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
        get_HsvColorProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MinHueProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MaxHueProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MinSaturationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MaxSaturationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MinValueProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MaxValueProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ShapeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ComponentsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IComboBoxTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getDropDownOpenedHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DropDownOpenedHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDropDownClosedHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DropDownClosedHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDropDownOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DropDownOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedItemDirection(self: *@This()) core.HResult!AnimationDirection {
        var _r: AnimationDirection = undefined;
        const _c = self.vtable.get_SelectedItemDirection(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "83285c4e-17f6-4aa3-b61b-e87c718604ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DropDownOpenedHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_DropDownClosedHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_DropDownOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_SelectedItemDirection: *const fn(self: *anyopaque, _r: *AnimationDirection) callconv(.winapi) HRESULT,
    };
};
pub const IComboBoxTemplateSettings2 = extern struct {
    vtable: *const VTable,
    pub fn getDropDownContentMinWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DropDownContentMinWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IComboBoxTemplateSettings2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00e90cd7-68be-449d-b5a7-76e26f703e9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DropDownContentMinWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const ICommandBarFlyoutCommandBar = extern struct {
    vtable: *const VTable,
    pub fn getFlyoutTemplateSettings(self: *@This()) core.HResult!*CommandBarFlyoutCommandBarTemplateSettings {
        var _r: *CommandBarFlyoutCommandBarTemplateSettings = undefined;
        const _c = self.vtable.get_FlyoutTemplateSettings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ICommandBarFlyoutCommandBar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14146e7c-38c4-55c4-b706-ce18f6061e7e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FlyoutTemplateSettings: *const fn(self: *anyopaque, _r: **CommandBarFlyoutCommandBarTemplateSettings) callconv(.winapi) HRESULT,
    };
};
pub const ICommandBarFlyoutCommandBarFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CommandBarFlyoutCommandBar {
        var _r: *CommandBarFlyoutCommandBar = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ICommandBarFlyoutCommandBarFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f8236f9f-5559-5697-8e6f-20d70ca17dd0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **CommandBarFlyoutCommandBar) callconv(.winapi) HRESULT,
    };
};
pub const ICommandBarFlyoutCommandBarTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getOpenAnimationStartPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OpenAnimationStartPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOpenAnimationEndPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OpenAnimationEndPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCloseAnimationEndPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CloseAnimationEndPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurrentWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CurrentWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpandedWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ExpandedWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWidthExpansionDelta(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_WidthExpansionDelta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWidthExpansionAnimationStartPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_WidthExpansionAnimationStartPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWidthExpansionAnimationEndPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_WidthExpansionAnimationEndPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWidthExpansionMoreButtonAnimationStartPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_WidthExpansionMoreButtonAnimationStartPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWidthExpansionMoreButtonAnimationEndPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_WidthExpansionMoreButtonAnimationEndPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpandUpOverflowVerticalPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ExpandUpOverflowVerticalPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpandDownOverflowVerticalPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ExpandDownOverflowVerticalPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpandUpAnimationStartPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ExpandUpAnimationStartPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpandUpAnimationEndPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ExpandUpAnimationEndPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpandUpAnimationHoldPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ExpandUpAnimationHoldPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpandDownAnimationStartPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ExpandDownAnimationStartPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpandDownAnimationEndPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ExpandDownAnimationEndPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpandDownAnimationHoldPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ExpandDownAnimationHoldPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentClipRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_ContentClipRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOverflowContentClipRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_OverflowContentClipRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ICommandBarFlyoutCommandBarTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "47642c44-26ff-5d14-9cfc-77dc64f3a447";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OpenAnimationStartPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_OpenAnimationEndPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_CloseAnimationEndPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_CurrentWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ExpandedWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_WidthExpansionDelta: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_WidthExpansionAnimationStartPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_WidthExpansionAnimationEndPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_WidthExpansionMoreButtonAnimationStartPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_WidthExpansionMoreButtonAnimationEndPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ExpandUpOverflowVerticalPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ExpandDownOverflowVerticalPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ExpandUpAnimationStartPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ExpandUpAnimationEndPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ExpandUpAnimationHoldPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ExpandDownAnimationStartPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ExpandDownAnimationEndPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ExpandDownAnimationHoldPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ContentClipRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_OverflowContentClipRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const ICommandBarTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getContentHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ContentHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOverflowContentClipRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_OverflowContentClipRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOverflowContentMinWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OverflowContentMinWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOverflowContentMaxHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OverflowContentMaxHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOverflowContentHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OverflowContentHorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOverflowContentHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OverflowContentHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNegativeOverflowContentHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NegativeOverflowContentHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61c8f92c-05aa-414a-a2ae-482c5a46c08e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ContentHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_OverflowContentClipRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_OverflowContentMinWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_OverflowContentMaxHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_OverflowContentHorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_OverflowContentHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_NegativeOverflowContentHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const ICommandBarTemplateSettings2 = extern struct {
    vtable: *const VTable,
    pub fn getOverflowContentMaxWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OverflowContentMaxWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbb24f93-c2e2-4177-a2b6-3cd705073cf6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OverflowContentMaxWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const ICommandBarTemplateSettings3 = extern struct {
    vtable: *const VTable,
    pub fn getEffectiveOverflowButtonVisibility(self: *@This()) core.HResult!Visibility {
        var _r: Visibility = undefined;
        const _c = self.vtable.get_EffectiveOverflowButtonVisibility(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3bd71eba-3403-4bfe-842d-2ce8c511d245";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EffectiveOverflowButtonVisibility: *const fn(self: *anyopaque, _r: *Visibility) callconv(.winapi) HRESULT,
    };
};
pub const ICommandBarTemplateSettings4 = extern struct {
    vtable: *const VTable,
    pub fn getOverflowContentCompactYTranslation(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OverflowContentCompactYTranslation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOverflowContentMinimalYTranslation(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OverflowContentMinimalYTranslation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOverflowContentHiddenYTranslation(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OverflowContentHiddenYTranslation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ICommandBarTemplateSettings4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2562dd3-aa58-59c5-853b-828a19d1214e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OverflowContentCompactYTranslation: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_OverflowContentMinimalYTranslation: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_OverflowContentHiddenYTranslation: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IDragCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getHorizontalChange(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HorizontalChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalChange(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_VerticalChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanceled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Canceled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b04f29a1-bd16-48f6-a511-9c2763641331";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HorizontalChange: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_VerticalChange: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Canceled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDragCompletedEventArgsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithHorizontalChangeVerticalChangeAndCanceled(self: *@This(), horizontalChange: f64, verticalChange: f64, canceled: bool, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DragCompletedEventArgs {
        var _r: *DragCompletedEventArgs = undefined;
        const _c = self.vtable.CreateInstanceWithHorizontalChangeVerticalChangeAndCanceled(@ptrCast(self), horizontalChange, verticalChange, canceled, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IDragCompletedEventArgsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "36a7d99d-148c-495f-a0fc-afc871d62f33";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithHorizontalChangeVerticalChangeAndCanceled: *const fn(self: *anyopaque, horizontalChange: f64, verticalChange: f64, canceled: bool, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **DragCompletedEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IDragDeltaEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getHorizontalChange(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HorizontalChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalChange(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_VerticalChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IDragDeltaEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c2dd73c-2806-49fc-aae9-6d792b572b6a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HorizontalChange: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_VerticalChange: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IDragDeltaEventArgsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithHorizontalChangeAndVerticalChange(self: *@This(), horizontalChange: f64, verticalChange: f64, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DragDeltaEventArgs {
        var _r: *DragDeltaEventArgs = undefined;
        const _c = self.vtable.CreateInstanceWithHorizontalChangeAndVerticalChange(@ptrCast(self), horizontalChange, verticalChange, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IDragDeltaEventArgsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "46e7a1ef-ae15-44a6-8a04-95b0bf9ab876";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithHorizontalChangeAndVerticalChange: *const fn(self: *anyopaque, horizontalChange: f64, verticalChange: f64, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **DragDeltaEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IDragStartedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_VerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IDragStartedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9f915dd0-a124-4366-bd85-2408214aeed4";
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
        get_VerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IDragStartedEventArgsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithHorizontalOffsetAndVerticalOffset(self: *@This(), horizontalOffset: f64, verticalOffset: f64, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DragStartedEventArgs {
        var _r: *DragStartedEventArgs = undefined;
        const _c = self.vtable.CreateInstanceWithHorizontalOffsetAndVerticalOffset(@ptrCast(self), horizontalOffset, verticalOffset, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IDragStartedEventArgsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5eefe579-c706-4781-a308-c9e7f4c6a1d7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithHorizontalOffsetAndVerticalOffset: *const fn(self: *anyopaque, horizontalOffset: f64, verticalOffset: f64, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **DragStartedEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBase = extern struct {
    vtable: *const VTable,
    pub fn getPlacement(self: *@This()) core.HResult!FlyoutPlacementMode {
        var _r: FlyoutPlacementMode = undefined;
        const _c = self.vtable.get_Placement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPlacement(self: *@This(), value: FlyoutPlacementMode) core.HResult!void {
        const _c = self.vtable.put_Placement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addOpened(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Opened(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Opened(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addClosed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addOpening(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Opening(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOpening(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Opening(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowAt(self: *@This(), placementTarget: *FrameworkElement) core.HResult!void {
        const _c = self.vtable.ShowAt(@ptrCast(self), placementTarget);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Hide(self: *@This()) core.HResult!void {
        const _c = self.vtable.Hide(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "723eea0b-d12e-430d-a9f0-9bb32bbf9913";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Placement: *const fn(self: *anyopaque, _r: *FlyoutPlacementMode) callconv(.winapi) HRESULT,
        put_Placement: *const fn(self: *anyopaque, value: FlyoutPlacementMode) callconv(.winapi) HRESULT,
        add_Opened: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Opened: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Opening: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Opening: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        ShowAt: *const fn(self: *anyopaque, placementTarget: *FrameworkElement) callconv(.winapi) HRESULT,
        Hide: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBase2 = extern struct {
    vtable: *const VTable,
    pub fn getTarget(self: *@This()) core.HResult!*FrameworkElement {
        var _r: *FrameworkElement = undefined;
        const _c = self.vtable.get_Target(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub fn getLightDismissOverlayMode(self: *@This()) core.HResult!LightDismissOverlayMode {
        var _r: LightDismissOverlayMode = undefined;
        const _c = self.vtable.get_LightDismissOverlayMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLightDismissOverlayMode(self: *@This(), value: LightDismissOverlayMode) core.HResult!void {
        const _c = self.vtable.put_LightDismissOverlayMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getAllowFocusWhenDisabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AllowFocusWhenDisabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAllowFocusWhenDisabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AllowFocusWhenDisabled(@ptrCast(self), value);
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
    pub fn addClosing(self: *@This(), handler: *TypedEventHandler(FlyoutBase,FlyoutBaseClosingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closing(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closing(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBase2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f82b435e-65b3-41c6-a9e2-77b67bc4c00c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Target: *const fn(self: *anyopaque, _r: **FrameworkElement) callconv(.winapi) HRESULT,
        get_AllowFocusOnInteraction: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowFocusOnInteraction: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_LightDismissOverlayMode: *const fn(self: *anyopaque, _r: *LightDismissOverlayMode) callconv(.winapi) HRESULT,
        put_LightDismissOverlayMode: *const fn(self: *anyopaque, value: LightDismissOverlayMode) callconv(.winapi) HRESULT,
        get_AllowFocusWhenDisabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AllowFocusWhenDisabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ElementSoundMode: *const fn(self: *anyopaque, _r: *ElementSoundMode) callconv(.winapi) HRESULT,
        put_ElementSoundMode: *const fn(self: *anyopaque, value: ElementSoundMode) callconv(.winapi) HRESULT,
        add_Closing: *const fn(self: *anyopaque, handler: *TypedEventHandler(FlyoutBase,FlyoutBaseClosingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closing: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBase3 = extern struct {
    vtable: *const VTable,
    pub fn getOverlayInputPassThroughElement(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_OverlayInputPassThroughElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOverlayInputPassThroughElement(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_OverlayInputPassThroughElement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBase3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a89c9712-48e0-4240-95b9-0dfd0826a8d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OverlayInputPassThroughElement: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_OverlayInputPassThroughElement: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBase4 = extern struct {
    vtable: *const VTable,
    pub fn TryInvokeKeyboardAccelerator(self: *@This(), args: *ProcessKeyboardAcceleratorEventArgs) core.HResult!void {
        const _c = self.vtable.TryInvokeKeyboardAccelerator(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBase4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3897d69-a37f-4828-9b70-0ef67c03b5f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryInvokeKeyboardAccelerator: *const fn(self: *anyopaque, args: *ProcessKeyboardAcceleratorEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBase5 = extern struct {
    vtable: *const VTable,
    pub fn getShowMode(self: *@This()) core.HResult!FlyoutShowMode {
        var _r: FlyoutShowMode = undefined;
        const _c = self.vtable.get_ShowMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShowMode(self: *@This(), value: FlyoutShowMode) core.HResult!void {
        const _c = self.vtable.put_ShowMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInputDevicePrefersPrimaryCommands(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_InputDevicePrefersPrimaryCommands(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAreOpenCloseAnimationsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AreOpenCloseAnimationsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAreOpenCloseAnimationsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AreOpenCloseAnimationsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsOpen(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOpen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAt(self: *@This(), placementTarget: *DependencyObject, showOptions: *FlyoutShowOptions) core.HResult!void {
        const _c = self.vtable.ShowAt(@ptrCast(self), placementTarget, showOptions);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBase5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad3ec0c7-12bb-5a73-b78e-105192ca73d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShowMode: *const fn(self: *anyopaque, _r: *FlyoutShowMode) callconv(.winapi) HRESULT,
        put_ShowMode: *const fn(self: *anyopaque, value: FlyoutShowMode) callconv(.winapi) HRESULT,
        get_InputDevicePrefersPrimaryCommands: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AreOpenCloseAnimationsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AreOpenCloseAnimationsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsOpen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ShowAt: *const fn(self: *anyopaque, placementTarget: *DependencyObject, showOptions: *FlyoutShowOptions) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBase6 = extern struct {
    vtable: *const VTable,
    pub fn getShouldConstrainToRootBounds(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldConstrainToRootBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShouldConstrainToRootBounds(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShouldConstrainToRootBounds(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsConstrainedToRootBounds(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConstrainedToRootBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBase6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5399de8c-06cc-5b52-b65a-ff9322d1c940";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShouldConstrainToRootBounds: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShouldConstrainToRootBounds: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsConstrainedToRootBounds: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_XamlRoot: *const fn(self: *anyopaque, _r: **XamlRoot) callconv(.winapi) HRESULT,
        put_XamlRoot: *const fn(self: *anyopaque, value: *XamlRoot) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBaseClosingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCancel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Cancel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Cancel(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseClosingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d075852d-b09a-4fd1-b005-db2ba01206fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Cancel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Cancel: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBaseFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FlyoutBase {
        var _r: *FlyoutBase = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c3363d7-fca7-407e-920e-70e15e9f0bf1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **FlyoutBase) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBaseOverrides = extern struct {
    vtable: *const VTable,
    pub fn CreatePresenter(self: *@This()) core.HResult!*Control {
        var _r: *Control = undefined;
        const _c = self.vtable.CreatePresenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "101dec86-6f4d-45a4-9d0e-3ece6f16977e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreatePresenter: *const fn(self: *anyopaque, _r: **Control) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBaseOverrides4 = extern struct {
    vtable: *const VTable,
    pub fn OnProcessKeyboardAccelerators(self: *@This(), args: *ProcessKeyboardAcceleratorEventArgs) core.HResult!void {
        const _c = self.vtable.OnProcessKeyboardAccelerators(@ptrCast(self), args);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseOverrides4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6bfd04d-5ff3-4418-add8-4042a88d2da5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnProcessKeyboardAccelerators: *const fn(self: *anyopaque, args: *ProcessKeyboardAcceleratorEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBaseStatics = extern struct {
    vtable: *const VTable,
    pub fn getPlacementProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PlacementProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAttachedFlyoutProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AttachedFlyoutProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAttachedFlyout(self: *@This(), element: *FrameworkElement) core.HResult!*FlyoutBase {
        var _r: *FlyoutBase = undefined;
        const _c = self.vtable.GetAttachedFlyout(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetAttachedFlyout(self: *@This(), element: *FrameworkElement, value: *FlyoutBase) core.HResult!void {
        const _c = self.vtable.SetAttachedFlyout(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowAttachedFlyout(self: *@This(), flyoutOwner: *FrameworkElement) core.HResult!void {
        const _c = self.vtable.ShowAttachedFlyout(@ptrCast(self), flyoutOwner);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e2d795e3-85c0-4de2-bac1-5294ca011a78";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PlacementProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AttachedFlyoutProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetAttachedFlyout: *const fn(self: *anyopaque, element: *FrameworkElement, _r: **FlyoutBase) callconv(.winapi) HRESULT,
        SetAttachedFlyout: *const fn(self: *anyopaque, element: *FrameworkElement, value: *FlyoutBase) callconv(.winapi) HRESULT,
        ShowAttachedFlyout: *const fn(self: *anyopaque, flyoutOwner: *FrameworkElement) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBaseStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getAllowFocusOnInteractionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AllowFocusOnInteractionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLightDismissOverlayModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LightDismissOverlayModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAllowFocusWhenDisabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AllowFocusWhenDisabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getElementSoundModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ElementSoundModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a8e913fe-2d60-4307-aad9-56b450121b58";
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
        get_LightDismissOverlayModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AllowFocusWhenDisabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ElementSoundModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBaseStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getOverlayInputPassThroughElementProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OverlayInputPassThroughElementProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ba92e4f-dd16-4be4-99db-bd9d4406c0f8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OverlayInputPassThroughElementProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBaseStatics5 = extern struct {
    vtable: *const VTable,
    pub fn getTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getShowModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ShowModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getInputDevicePrefersPrimaryCommandsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_InputDevicePrefersPrimaryCommandsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAreOpenCloseAnimationsEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AreOpenCloseAnimationsEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOpenProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsOpenProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69edb25c-992a-542b-bcff-2f7f855523bd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ShowModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_InputDevicePrefersPrimaryCommandsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AreOpenCloseAnimationsEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsOpenProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutBaseStatics6 = extern struct {
    vtable: *const VTable,
    pub fn getShouldConstrainToRootBoundsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ShouldConstrainToRootBoundsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutBaseStatics6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96d49254-c91b-5246-8b39-afc2a2c50cf8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShouldConstrainToRootBoundsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutShowOptions = extern struct {
    vtable: *const VTable,
    pub fn getPosition(self: *@This()) core.HResult!*IReference(Point) {
        var _r: *IReference(Point) = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPosition(self: *@This(), value: *IReference(Point)) core.HResult!void {
        const _c = self.vtable.put_Position(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExclusionRect(self: *@This()) core.HResult!*IReference(Rect) {
        var _r: *IReference(Rect) = undefined;
        const _c = self.vtable.get_ExclusionRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExclusionRect(self: *@This(), value: *IReference(Rect)) core.HResult!void {
        const _c = self.vtable.put_ExclusionRect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getShowMode(self: *@This()) core.HResult!FlyoutShowMode {
        var _r: FlyoutShowMode = undefined;
        const _c = self.vtable.get_ShowMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShowMode(self: *@This(), value: FlyoutShowMode) core.HResult!void {
        const _c = self.vtable.put_ShowMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPlacement(self: *@This()) core.HResult!FlyoutPlacementMode {
        var _r: FlyoutPlacementMode = undefined;
        const _c = self.vtable.get_Placement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPlacement(self: *@This(), value: FlyoutPlacementMode) core.HResult!void {
        const _c = self.vtable.put_Placement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutShowOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "57d693ad-0c74-54dd-b110-1ee43fabadd9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: **IReference(Point)) callconv(.winapi) HRESULT,
        put_Position: *const fn(self: *anyopaque, value: *IReference(Point)) callconv(.winapi) HRESULT,
        get_ExclusionRect: *const fn(self: *anyopaque, _r: **IReference(Rect)) callconv(.winapi) HRESULT,
        put_ExclusionRect: *const fn(self: *anyopaque, value: *IReference(Rect)) callconv(.winapi) HRESULT,
        get_ShowMode: *const fn(self: *anyopaque, _r: *FlyoutShowMode) callconv(.winapi) HRESULT,
        put_ShowMode: *const fn(self: *anyopaque, value: FlyoutShowMode) callconv(.winapi) HRESULT,
        get_Placement: *const fn(self: *anyopaque, _r: *FlyoutPlacementMode) callconv(.winapi) HRESULT,
        put_Placement: *const fn(self: *anyopaque, value: FlyoutPlacementMode) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutShowOptionsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FlyoutShowOptions {
        var _r: *FlyoutShowOptions = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IFlyoutShowOptionsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ce596f61-2eb4-5b4e-af69-f9af42320eee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **FlyoutShowOptions) callconv(.winapi) HRESULT,
    };
};
pub const IGeneratorPositionHelper = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IGeneratorPositionHelper";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd40318d-7745-40d9-ab9d-abbda4a7ffea";
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
pub const IGeneratorPositionHelperStatics = extern struct {
    vtable: *const VTable,
    pub fn FromIndexAndOffset(self: *@This(), index: i32, offset: i32) core.HResult!GeneratorPosition {
        var _r: GeneratorPosition = undefined;
        const _c = self.vtable.FromIndexAndOffset(@ptrCast(self), index, offset, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IGeneratorPositionHelperStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad4095cd-60ec-4588-8d60-39d29097a4df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromIndexAndOffset: *const fn(self: *anyopaque, index: i32, offset: i32, _r: *GeneratorPosition) callconv(.winapi) HRESULT,
    };
};
pub const IGridViewItemPresenter = extern struct {
    vtable: *const VTable,
    pub fn getSelectionCheckMarkVisualEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SelectionCheckMarkVisualEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectionCheckMarkVisualEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SelectionCheckMarkVisualEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckHintBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckHintBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckHintBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckHintBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckSelectingBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckSelectingBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckSelectingBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckSelectingBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDragBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_DragBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDragBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_DragBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDragForeground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_DragForeground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDragForeground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_DragForeground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFocusBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_FocusBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFocusBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_FocusBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPlaceholderBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_PlaceholderBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPlaceholderBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_PlaceholderBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPointerOverBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_PointerOverBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPointerOverBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_PointerOverBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedForeground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedForeground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedForeground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedForeground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedPointerOverBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedPointerOverBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedPointerOverBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedPointerOverBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedPointerOverBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedPointerOverBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedPointerOverBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedPointerOverBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedBorderThickness(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_SelectedBorderThickness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedBorderThickness(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_SelectedBorderThickness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisabledOpacity(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DisabledOpacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisabledOpacity(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DisabledOpacity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDragOpacity(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DragOpacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDragOpacity(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DragOpacity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReorderHintOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ReorderHintOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReorderHintOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ReorderHintOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGridViewItemPresenterHorizontalContentAlignment(self: *@This()) core.HResult!HorizontalAlignment {
        var _r: HorizontalAlignment = undefined;
        const _c = self.vtable.get_GridViewItemPresenterHorizontalContentAlignment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGridViewItemPresenterHorizontalContentAlignment(self: *@This(), value: HorizontalAlignment) core.HResult!void {
        const _c = self.vtable.put_GridViewItemPresenterHorizontalContentAlignment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGridViewItemPresenterVerticalContentAlignment(self: *@This()) core.HResult!VerticalAlignment {
        var _r: VerticalAlignment = undefined;
        const _c = self.vtable.get_GridViewItemPresenterVerticalContentAlignment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGridViewItemPresenterVerticalContentAlignment(self: *@This(), value: VerticalAlignment) core.HResult!void {
        const _c = self.vtable.put_GridViewItemPresenterVerticalContentAlignment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getGridViewItemPresenterPadding(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_GridViewItemPresenterPadding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putGridViewItemPresenterPadding(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_GridViewItemPresenterPadding(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPointerOverBackgroundMargin(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_PointerOverBackgroundMargin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPointerOverBackgroundMargin(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_PointerOverBackgroundMargin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentMargin(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_ContentMargin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentMargin(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_ContentMargin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "214f9010-56e2-4821-8a1c-2305709af94b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectionCheckMarkVisualEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SelectionCheckMarkVisualEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CheckHintBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckHintBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckSelectingBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckSelectingBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_DragBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_DragBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_DragForeground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_DragForeground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_FocusBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_FocusBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_PlaceholderBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_PlaceholderBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_PointerOverBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_PointerOverBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedForeground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedForeground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedPointerOverBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedPointerOverBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedPointerOverBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedPointerOverBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedBorderThickness: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_SelectedBorderThickness: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
        get_DisabledOpacity: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DisabledOpacity: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_DragOpacity: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DragOpacity: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ReorderHintOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ReorderHintOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_GridViewItemPresenterHorizontalContentAlignment: *const fn(self: *anyopaque, _r: *HorizontalAlignment) callconv(.winapi) HRESULT,
        put_GridViewItemPresenterHorizontalContentAlignment: *const fn(self: *anyopaque, value: HorizontalAlignment) callconv(.winapi) HRESULT,
        get_GridViewItemPresenterVerticalContentAlignment: *const fn(self: *anyopaque, _r: *VerticalAlignment) callconv(.winapi) HRESULT,
        put_GridViewItemPresenterVerticalContentAlignment: *const fn(self: *anyopaque, value: VerticalAlignment) callconv(.winapi) HRESULT,
        get_GridViewItemPresenterPadding: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_GridViewItemPresenterPadding: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
        get_PointerOverBackgroundMargin: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_PointerOverBackgroundMargin: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
        get_ContentMargin: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_ContentMargin: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
    };
};
pub const IGridViewItemPresenterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GridViewItemPresenter {
        var _r: *GridViewItemPresenter = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "53c12178-63bb-4a65-a3f1-ab114cfc6ffe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **GridViewItemPresenter) callconv(.winapi) HRESULT,
    };
};
pub const IGridViewItemPresenterStatics = extern struct {
    vtable: *const VTable,
    pub fn getSelectionCheckMarkVisualEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectionCheckMarkVisualEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckHintBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckHintBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckSelectingBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckSelectingBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDragBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DragBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDragForegroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DragForegroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FocusBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlaceholderBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PlaceholderBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerOverBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointerOverBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedForegroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedForegroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedPointerOverBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedPointerOverBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedPointerOverBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedPointerOverBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedBorderThicknessProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedBorderThicknessProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisabledOpacityProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DisabledOpacityProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDragOpacityProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DragOpacityProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReorderHintOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ReorderHintOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGridViewItemPresenterHorizontalContentAlignmentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_GridViewItemPresenterHorizontalContentAlignmentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGridViewItemPresenterVerticalContentAlignmentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_GridViewItemPresenterVerticalContentAlignmentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getGridViewItemPresenterPaddingProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_GridViewItemPresenterPaddingProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerOverBackgroundMarginProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointerOverBackgroundMarginProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentMarginProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContentMarginProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IGridViewItemPresenterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e958f8c4-277e-4a72-a01e-9e1688980178";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectionCheckMarkVisualEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckHintBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckSelectingBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DragBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DragForegroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FocusBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PlaceholderBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PointerOverBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedForegroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedPointerOverBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedPointerOverBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedBorderThicknessProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DisabledOpacityProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DragOpacityProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ReorderHintOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_GridViewItemPresenterHorizontalContentAlignmentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_GridViewItemPresenterVerticalContentAlignmentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_GridViewItemPresenterPaddingProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PointerOverBackgroundMarginProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ContentMarginProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IGridViewItemTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getDragItemsCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_DragItemsCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IGridViewItemTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9e30baaf-165d-4267-a45e-1a43a75706ac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DragItemsCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IItemsChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getAction(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Action(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!GeneratorPosition {
        var _r: GeneratorPosition = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOldPosition(self: *@This()) core.HResult!GeneratorPosition {
        var _r: GeneratorPosition = undefined;
        const _c = self.vtable.get_OldPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ItemCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemUICount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ItemUICount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IItemsChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8b45568-7d10-421e-be29-81839a91de20";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Action: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *GeneratorPosition) callconv(.winapi) HRESULT,
        get_OldPosition: *const fn(self: *anyopaque, _r: *GeneratorPosition) callconv(.winapi) HRESULT,
        get_ItemCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_ItemUICount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IJumpListItemBackgroundConverter = extern struct {
    vtable: *const VTable,
    pub fn getEnabled(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnabled(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_Enabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisabled(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_Disabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisabled(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_Disabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "81177858-d224-410c-b16c-c5b6bb6188b2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_Enabled: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_Disabled: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_Disabled: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
    };
};
pub const IJumpListItemBackgroundConverterStatics = extern struct {
    vtable: *const VTable,
    pub fn getEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DisabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IJumpListItemBackgroundConverterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20e7c3dd-6f27-4808-b0be-83e0e9b5cc45";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DisabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IJumpListItemForegroundConverter = extern struct {
    vtable: *const VTable,
    pub fn getEnabled(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_Enabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnabled(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_Enabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisabled(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_Disabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisabled(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_Disabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1590ed38-c504-4796-a63a-5bfc9eefaae8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Enabled: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_Enabled: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_Disabled: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_Disabled: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
    };
};
pub const IJumpListItemForegroundConverterStatics = extern struct {
    vtable: *const VTable,
    pub fn getEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_EnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DisabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IJumpListItemForegroundConverterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "474e7352-210c-4673-ac6a-413f0e2c7750";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DisabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ILayoutInformation = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ILayoutInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5384c9b-c8cf-41b3-bf16-18c8420e72c9";
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
pub const ILayoutInformationStatics = extern struct {
    vtable: *const VTable,
    pub fn GetLayoutExceptionElement(self: *@This(), dispatcher: *IInspectable) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.GetLayoutExceptionElement(@ptrCast(self), dispatcher, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLayoutSlot(self: *@This(), element: *FrameworkElement) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.GetLayoutSlot(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ILayoutInformationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf06cf99-58e9-4682-8326-50caab65ed7c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetLayoutExceptionElement: *const fn(self: *anyopaque, dispatcher: *IInspectable, _r: **UIElement) callconv(.winapi) HRESULT,
        GetLayoutSlot: *const fn(self: *anyopaque, element: *FrameworkElement, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const ILayoutInformationStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetAvailableSize(self: *@This(), element: *UIElement) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.GetAvailableSize(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ILayoutInformationStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "760315b5-6d4e-4939-ac61-639863cea36b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetAvailableSize: *const fn(self: *anyopaque, element: *UIElement, _r: *Size) callconv(.winapi) HRESULT,
    };
};
pub const IListViewItemPresenter = extern struct {
    vtable: *const VTable,
    pub fn getSelectionCheckMarkVisualEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SelectionCheckMarkVisualEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectionCheckMarkVisualEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SelectionCheckMarkVisualEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckHintBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckHintBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckHintBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckHintBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckSelectingBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckSelectingBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckSelectingBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckSelectingBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDragBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_DragBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDragBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_DragBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDragForeground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_DragForeground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDragForeground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_DragForeground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFocusBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_FocusBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFocusBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_FocusBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPlaceholderBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_PlaceholderBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPlaceholderBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_PlaceholderBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPointerOverBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_PointerOverBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPointerOverBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_PointerOverBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedForeground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedForeground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedForeground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedForeground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedPointerOverBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedPointerOverBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedPointerOverBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedPointerOverBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedPointerOverBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedPointerOverBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedPointerOverBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedPointerOverBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedBorderThickness(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_SelectedBorderThickness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedBorderThickness(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_SelectedBorderThickness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDisabledOpacity(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DisabledOpacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDisabledOpacity(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DisabledOpacity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDragOpacity(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DragOpacity(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDragOpacity(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DragOpacity(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getReorderHintOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ReorderHintOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putReorderHintOffset(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ReorderHintOffset(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getListViewItemPresenterHorizontalContentAlignment(self: *@This()) core.HResult!HorizontalAlignment {
        var _r: HorizontalAlignment = undefined;
        const _c = self.vtable.get_ListViewItemPresenterHorizontalContentAlignment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putListViewItemPresenterHorizontalContentAlignment(self: *@This(), value: HorizontalAlignment) core.HResult!void {
        const _c = self.vtable.put_ListViewItemPresenterHorizontalContentAlignment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getListViewItemPresenterVerticalContentAlignment(self: *@This()) core.HResult!VerticalAlignment {
        var _r: VerticalAlignment = undefined;
        const _c = self.vtable.get_ListViewItemPresenterVerticalContentAlignment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putListViewItemPresenterVerticalContentAlignment(self: *@This(), value: VerticalAlignment) core.HResult!void {
        const _c = self.vtable.put_ListViewItemPresenterVerticalContentAlignment(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getListViewItemPresenterPadding(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_ListViewItemPresenterPadding(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putListViewItemPresenterPadding(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_ListViewItemPresenterPadding(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPointerOverBackgroundMargin(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_PointerOverBackgroundMargin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPointerOverBackgroundMargin(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_PointerOverBackgroundMargin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContentMargin(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_ContentMargin(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContentMargin(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_ContentMargin(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fc8946bd-a3a2-4969-8174-25b5d3c28033";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectionCheckMarkVisualEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SelectionCheckMarkVisualEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CheckHintBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckHintBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckSelectingBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckSelectingBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_DragBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_DragBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_DragForeground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_DragForeground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_FocusBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_FocusBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_PlaceholderBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_PlaceholderBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_PointerOverBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_PointerOverBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedForeground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedForeground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedPointerOverBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedPointerOverBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedPointerOverBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedPointerOverBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedBorderThickness: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_SelectedBorderThickness: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
        get_DisabledOpacity: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DisabledOpacity: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_DragOpacity: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DragOpacity: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ReorderHintOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ReorderHintOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ListViewItemPresenterHorizontalContentAlignment: *const fn(self: *anyopaque, _r: *HorizontalAlignment) callconv(.winapi) HRESULT,
        put_ListViewItemPresenterHorizontalContentAlignment: *const fn(self: *anyopaque, value: HorizontalAlignment) callconv(.winapi) HRESULT,
        get_ListViewItemPresenterVerticalContentAlignment: *const fn(self: *anyopaque, _r: *VerticalAlignment) callconv(.winapi) HRESULT,
        put_ListViewItemPresenterVerticalContentAlignment: *const fn(self: *anyopaque, value: VerticalAlignment) callconv(.winapi) HRESULT,
        get_ListViewItemPresenterPadding: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_ListViewItemPresenterPadding: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
        get_PointerOverBackgroundMargin: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_PointerOverBackgroundMargin: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
        get_ContentMargin: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_ContentMargin: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
    };
};
pub const IListViewItemPresenter2 = extern struct {
    vtable: *const VTable,
    pub fn getSelectedPressedBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedPressedBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedPressedBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedPressedBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPressedBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_PressedBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPressedBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_PressedBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBoxBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBoxBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBoxBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBoxBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFocusSecondaryBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_FocusSecondaryBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFocusSecondaryBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_FocusSecondaryBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckMode(self: *@This()) core.HResult!ListViewItemPresenterCheckMode {
        var _r: ListViewItemPresenterCheckMode = undefined;
        const _c = self.vtable.get_CheckMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckMode(self: *@This(), value: ListViewItemPresenterCheckMode) core.HResult!void {
        const _c = self.vtable.put_CheckMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPointerOverForeground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_PointerOverForeground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPointerOverForeground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_PointerOverForeground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f5dc5496-e122-4c57-a625-ac4b08fb2d4c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectedPressedBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedPressedBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_PressedBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_PressedBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBoxBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBoxBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_FocusSecondaryBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_FocusSecondaryBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckMode: *const fn(self: *anyopaque, _r: *ListViewItemPresenterCheckMode) callconv(.winapi) HRESULT,
        put_CheckMode: *const fn(self: *anyopaque, value: ListViewItemPresenterCheckMode) callconv(.winapi) HRESULT,
        get_PointerOverForeground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_PointerOverForeground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
    };
};
pub const IListViewItemPresenter3 = extern struct {
    vtable: *const VTable,
    pub fn getRevealBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_RevealBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRevealBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_RevealBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRevealBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_RevealBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRevealBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_RevealBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRevealBorderThickness(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_RevealBorderThickness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRevealBorderThickness(self: *@This(), value: Thickness) core.HResult!void {
        const _c = self.vtable.put_RevealBorderThickness(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRevealBackgroundShowsAboveContent(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_RevealBackgroundShowsAboveContent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRevealBackgroundShowsAboveContent(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_RevealBackgroundShowsAboveContent(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "36620013-0390-4e30-ad97-8744404f7010";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RevealBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_RevealBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_RevealBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_RevealBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_RevealBorderThickness: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        put_RevealBorderThickness: *const fn(self: *anyopaque, value: Thickness) callconv(.winapi) HRESULT,
        get_RevealBackgroundShowsAboveContent: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_RevealBackgroundShowsAboveContent: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IListViewItemPresenter4 = extern struct {
    vtable: *const VTable,
    pub fn getSelectedDisabledBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedDisabledBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedDisabledBackground(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedDisabledBackground(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckPressedBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckPressedBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckPressedBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckPressedBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckDisabledBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckDisabledBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckDisabledBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckDisabledBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBoxPointerOverBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBoxPointerOverBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBoxPointerOverBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBoxPointerOverBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBoxPressedBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBoxPressedBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBoxPressedBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBoxPressedBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBoxDisabledBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBoxDisabledBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBoxDisabledBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBoxDisabledBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBoxSelectedBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBoxSelectedBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBoxSelectedBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBoxSelectedBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBoxSelectedPointerOverBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBoxSelectedPointerOverBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBoxSelectedPointerOverBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBoxSelectedPointerOverBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBoxSelectedPressedBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBoxSelectedPressedBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBoxSelectedPressedBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBoxSelectedPressedBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBoxSelectedDisabledBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBoxSelectedDisabledBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBoxSelectedDisabledBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBoxSelectedDisabledBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBoxBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBoxBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBoxBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBoxBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBoxPointerOverBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBoxPointerOverBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBoxPointerOverBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBoxPointerOverBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBoxPressedBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBoxPressedBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBoxPressedBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBoxPressedBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBoxDisabledBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_CheckBoxDisabledBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBoxDisabledBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_CheckBoxDisabledBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCheckBoxCornerRadius(self: *@This()) core.HResult!CornerRadius {
        var _r: CornerRadius = undefined;
        const _c = self.vtable.get_CheckBoxCornerRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCheckBoxCornerRadius(self: *@This(), value: CornerRadius) core.HResult!void {
        const _c = self.vtable.put_CheckBoxCornerRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectionIndicatorCornerRadius(self: *@This()) core.HResult!CornerRadius {
        var _r: CornerRadius = undefined;
        const _c = self.vtable.get_SelectionIndicatorCornerRadius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectionIndicatorCornerRadius(self: *@This(), value: CornerRadius) core.HResult!void {
        const _c = self.vtable.put_SelectionIndicatorCornerRadius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectionIndicatorVisualEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SelectionIndicatorVisualEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectionIndicatorVisualEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SelectionIndicatorVisualEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectionIndicatorMode(self: *@This()) core.HResult!ListViewItemPresenterSelectionIndicatorMode {
        var _r: ListViewItemPresenterSelectionIndicatorMode = undefined;
        const _c = self.vtable.get_SelectionIndicatorMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectionIndicatorMode(self: *@This(), value: ListViewItemPresenterSelectionIndicatorMode) core.HResult!void {
        const _c = self.vtable.put_SelectionIndicatorMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectionIndicatorBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectionIndicatorBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectionIndicatorBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectionIndicatorBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectionIndicatorPointerOverBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectionIndicatorPointerOverBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectionIndicatorPointerOverBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectionIndicatorPointerOverBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectionIndicatorPressedBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectionIndicatorPressedBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectionIndicatorPressedBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectionIndicatorPressedBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectionIndicatorDisabledBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectionIndicatorDisabledBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectionIndicatorDisabledBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectionIndicatorDisabledBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedPressedBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedPressedBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedPressedBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedPressedBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedDisabledBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedDisabledBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedDisabledBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedDisabledBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedInnerBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_SelectedInnerBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedInnerBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_SelectedInnerBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPointerOverBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_PointerOverBorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPointerOverBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const _c = self.vtable.put_PointerOverBorderBrush(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenter4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da600ac1-adea-5940-a18f-57582f96d99a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectedDisabledBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedDisabledBackground: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckPressedBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckPressedBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckDisabledBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckDisabledBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBoxPointerOverBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBoxPointerOverBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBoxPressedBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBoxPressedBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBoxDisabledBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBoxDisabledBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBoxSelectedBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBoxSelectedBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBoxSelectedPointerOverBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBoxSelectedPointerOverBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBoxSelectedPressedBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBoxSelectedPressedBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBoxSelectedDisabledBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBoxSelectedDisabledBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBoxBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBoxBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBoxPointerOverBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBoxPointerOverBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBoxPressedBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBoxPressedBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBoxDisabledBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_CheckBoxDisabledBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_CheckBoxCornerRadius: *const fn(self: *anyopaque, _r: *CornerRadius) callconv(.winapi) HRESULT,
        put_CheckBoxCornerRadius: *const fn(self: *anyopaque, value: CornerRadius) callconv(.winapi) HRESULT,
        get_SelectionIndicatorCornerRadius: *const fn(self: *anyopaque, _r: *CornerRadius) callconv(.winapi) HRESULT,
        put_SelectionIndicatorCornerRadius: *const fn(self: *anyopaque, value: CornerRadius) callconv(.winapi) HRESULT,
        get_SelectionIndicatorVisualEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SelectionIndicatorVisualEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_SelectionIndicatorMode: *const fn(self: *anyopaque, _r: *ListViewItemPresenterSelectionIndicatorMode) callconv(.winapi) HRESULT,
        put_SelectionIndicatorMode: *const fn(self: *anyopaque, value: ListViewItemPresenterSelectionIndicatorMode) callconv(.winapi) HRESULT,
        get_SelectionIndicatorBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectionIndicatorBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectionIndicatorPointerOverBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectionIndicatorPointerOverBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectionIndicatorPressedBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectionIndicatorPressedBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectionIndicatorDisabledBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectionIndicatorDisabledBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedPressedBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedPressedBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedDisabledBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedDisabledBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_SelectedInnerBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_SelectedInnerBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
        get_PointerOverBorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_PointerOverBorderBrush: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
    };
};
pub const IListViewItemPresenterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewItemPresenter {
        var _r: *ListViewItemPresenter = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e0777cfd-f7e4-4a67-9ac0-a994fcacd020";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ListViewItemPresenter) callconv(.winapi) HRESULT,
    };
};
pub const IListViewItemPresenterStatics = extern struct {
    vtable: *const VTable,
    pub fn getSelectionCheckMarkVisualEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectionCheckMarkVisualEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckHintBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckHintBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckSelectingBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckSelectingBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDragBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DragBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDragForegroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DragForegroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FocusBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPlaceholderBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PlaceholderBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerOverBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointerOverBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedForegroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedForegroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedPointerOverBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedPointerOverBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedPointerOverBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedPointerOverBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedBorderThicknessProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedBorderThicknessProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDisabledOpacityProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DisabledOpacityProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDragOpacityProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DragOpacityProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReorderHintOffsetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ReorderHintOffsetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getListViewItemPresenterHorizontalContentAlignmentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ListViewItemPresenterHorizontalContentAlignmentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getListViewItemPresenterVerticalContentAlignmentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ListViewItemPresenterVerticalContentAlignmentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getListViewItemPresenterPaddingProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ListViewItemPresenterPaddingProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerOverBackgroundMarginProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointerOverBackgroundMarginProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentMarginProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ContentMarginProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6504a55a-15dd-42fb-aa5d-2d8ce2e9c294";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectionCheckMarkVisualEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckHintBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckSelectingBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DragBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DragForegroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FocusBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PlaceholderBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PointerOverBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedForegroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedPointerOverBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedPointerOverBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedBorderThicknessProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DisabledOpacityProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DragOpacityProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ReorderHintOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ListViewItemPresenterHorizontalContentAlignmentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ListViewItemPresenterVerticalContentAlignmentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ListViewItemPresenterPaddingProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PointerOverBackgroundMarginProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ContentMarginProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IListViewItemPresenterStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getSelectedPressedBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedPressedBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPressedBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PressedBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBoxBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBoxBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFocusSecondaryBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FocusSecondaryBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerOverForegroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointerOverForegroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenterStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4cb3b945-d24d-42a3-9e83-a86d0618bf1b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectedPressedBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PressedBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBoxBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_FocusSecondaryBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PointerOverForegroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IListViewItemPresenterStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getRevealBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RevealBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRevealBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RevealBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRevealBorderThicknessProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RevealBorderThicknessProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRevealBackgroundShowsAboveContentProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_RevealBackgroundShowsAboveContentProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenterStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c3d3d11e-fa26-4ce7-a4ed-ff948f01b7c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RevealBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RevealBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RevealBorderThicknessProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_RevealBackgroundShowsAboveContentProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IListViewItemPresenterStatics4 = extern struct {
    vtable: *const VTable,
    pub fn getSelectedDisabledBackgroundProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedDisabledBackgroundProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckPressedBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckPressedBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckDisabledBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckDisabledBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBoxPointerOverBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBoxPointerOverBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBoxPressedBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBoxPressedBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBoxDisabledBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBoxDisabledBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBoxSelectedBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBoxSelectedBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBoxSelectedPointerOverBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBoxSelectedPointerOverBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBoxSelectedPressedBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBoxSelectedPressedBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBoxSelectedDisabledBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBoxSelectedDisabledBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBoxBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBoxBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBoxPointerOverBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBoxPointerOverBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBoxPressedBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBoxPressedBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBoxDisabledBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBoxDisabledBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCheckBoxCornerRadiusProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CheckBoxCornerRadiusProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionIndicatorCornerRadiusProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectionIndicatorCornerRadiusProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionIndicatorVisualEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectionIndicatorVisualEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionIndicatorModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectionIndicatorModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionIndicatorBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectionIndicatorBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionIndicatorPointerOverBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectionIndicatorPointerOverBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionIndicatorPressedBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectionIndicatorPressedBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectionIndicatorDisabledBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectionIndicatorDisabledBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedPressedBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedPressedBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedDisabledBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedDisabledBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedInnerBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedInnerBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerOverBorderBrushProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PointerOverBorderBrushProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IListViewItemPresenterStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3917159e-74a1-5e7e-a743-e45be9fb919b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectedDisabledBackgroundProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckPressedBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckDisabledBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBoxPointerOverBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBoxPressedBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBoxDisabledBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBoxSelectedBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBoxSelectedPointerOverBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBoxSelectedPressedBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBoxSelectedDisabledBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBoxBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBoxPointerOverBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBoxPressedBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBoxDisabledBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CheckBoxCornerRadiusProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectionIndicatorCornerRadiusProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectionIndicatorVisualEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectionIndicatorModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectionIndicatorBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectionIndicatorPointerOverBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectionIndicatorPressedBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectionIndicatorDisabledBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedPressedBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedDisabledBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedInnerBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_PointerOverBorderBrushProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IListViewItemTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getDragItemsCount(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_DragItemsCount(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IListViewItemTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67af84bf-8279-4686-9326-cd189f27575d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DragItemsCount: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const ILoopingSelector = extern struct {
    vtable: *const VTable,
    pub fn getShouldLoop(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldLoop(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShouldLoop(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShouldLoop(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getItems(self: *@This()) core.HResult!*IVector(IInspectable) {
        var _r: *IVector(IInspectable) = undefined;
        const _c = self.vtable.get_Items(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putItems(self: *@This(), value: *IVector(IInspectable)) core.HResult!void {
        const _c = self.vtable.put_Items(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_SelectedIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_SelectedIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedItem(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_SelectedItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedItem(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_SelectedItem(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getItemWidth(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ItemWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putItemWidth(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ItemWidth(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getItemHeight(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ItemHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putItemHeight(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ItemHeight(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getItemTemplate(self: *@This()) core.HResult!*DataTemplate {
        var _r: *DataTemplate = undefined;
        const _c = self.vtable.get_ItemTemplate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putItemTemplate(self: *@This(), value: *DataTemplate) core.HResult!void {
        const _c = self.vtable.put_ItemTemplate(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSelectionChanged(self: *@This(), handler: *SelectionChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SelectionChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSelectionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SelectionChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ILoopingSelector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4c9a3e04-4827-49d9-8806-093957b0fd21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShouldLoop: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShouldLoop: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_Items: *const fn(self: *anyopaque, _r: **IVector(IInspectable)) callconv(.winapi) HRESULT,
        put_Items: *const fn(self: *anyopaque, value: *IVector(IInspectable)) callconv(.winapi) HRESULT,
        get_SelectedIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_SelectedIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_SelectedItem: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_SelectedItem: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_ItemWidth: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ItemWidth: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_ItemHeight: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ItemHeight: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_ItemTemplate: *const fn(self: *anyopaque, _r: **DataTemplate) callconv(.winapi) HRESULT,
        put_ItemTemplate: *const fn(self: *anyopaque, value: *DataTemplate) callconv(.winapi) HRESULT,
        add_SelectionChanged: *const fn(self: *anyopaque, handler: *SelectionChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SelectionChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ILoopingSelectorItem = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ILoopingSelectorItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c69714b9-27c6-4433-9d7c-0dbfb2f4344f";
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
pub const ILoopingSelectorPanel = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ILoopingSelectorPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40a9ba70-1011-4778-87f7-6bfd20d6377d";
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
pub const ILoopingSelectorStatics = extern struct {
    vtable: *const VTable,
    pub fn getShouldLoopProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ShouldLoopProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ItemsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedIndexProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedIndexProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedItemProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedItemProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemWidthProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ItemWidthProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemHeightProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ItemHeightProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemTemplateProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ItemTemplateProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ILoopingSelectorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03e8bafa-8c7d-4fc5-b92a-f049fb933cc5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShouldLoopProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ItemsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedIndexProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedItemProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ItemWidthProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ItemHeightProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ItemTemplateProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IMenuFlyoutItemTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getKeyboardAcceleratorTextMinWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_KeyboardAcceleratorTextMinWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IMenuFlyoutItemTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56ad1809-3a16-4147-81cb-d0b35c834e0f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyboardAcceleratorTextMinWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IMenuFlyoutPresenterTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getFlyoutContentMinWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FlyoutContentMinWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IMenuFlyoutPresenterTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d68fd00d-629d-4349-ac51-b877c80983b8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FlyoutContentMinWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const INavigationViewItemPresenter = extern struct {
    vtable: *const VTable,
    pub fn getIcon(self: *@This()) core.HResult!*IconElement {
        var _r: *IconElement = undefined;
        const _c = self.vtable.get_Icon(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIcon(self: *@This(), value: *IconElement) core.HResult!void {
        const _c = self.vtable.put_Icon(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.INavigationViewItemPresenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9956d3fc-4693-59cb-b6bf-37249058be96";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Icon: *const fn(self: *anyopaque, _r: **IconElement) callconv(.winapi) HRESULT,
        put_Icon: *const fn(self: *anyopaque, value: *IconElement) callconv(.winapi) HRESULT,
    };
};
pub const INavigationViewItemPresenterFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*NavigationViewItemPresenter {
        var _r: *NavigationViewItemPresenter = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.INavigationViewItemPresenterFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bb062c50-4a36-52e7-9459-e89d02f3fc42";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **NavigationViewItemPresenter) callconv(.winapi) HRESULT,
    };
};
pub const INavigationViewItemPresenterStatics = extern struct {
    vtable: *const VTable,
    pub fn getIconProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IconProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.INavigationViewItemPresenterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52814604-cfc1-5ad5-a3aa-fa355be6bd76";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IconProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IOrientedVirtualizingPanel = extern struct {
    vtable: *const VTable,
    pub fn getCanVerticallyScroll(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanVerticallyScroll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanVerticallyScroll(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanVerticallyScroll(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCanHorizontallyScroll(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanHorizontallyScroll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanHorizontallyScroll(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanHorizontallyScroll(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExtentWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ExtentWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExtentHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ExtentHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViewportWidth(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ViewportWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViewportHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ViewportHeight(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_HorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_VerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScrollOwner(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_ScrollOwner(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScrollOwner(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_ScrollOwner(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LineUp(self: *@This()) core.HResult!void {
        const _c = self.vtable.LineUp(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LineDown(self: *@This()) core.HResult!void {
        const _c = self.vtable.LineDown(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LineLeft(self: *@This()) core.HResult!void {
        const _c = self.vtable.LineLeft(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn LineRight(self: *@This()) core.HResult!void {
        const _c = self.vtable.LineRight(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PageUp(self: *@This()) core.HResult!void {
        const _c = self.vtable.PageUp(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PageDown(self: *@This()) core.HResult!void {
        const _c = self.vtable.PageDown(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PageLeft(self: *@This()) core.HResult!void {
        const _c = self.vtable.PageLeft(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn PageRight(self: *@This()) core.HResult!void {
        const _c = self.vtable.PageRight(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MouseWheelUp(self: *@This()) core.HResult!void {
        const _c = self.vtable.MouseWheelUp(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MouseWheelDown(self: *@This()) core.HResult!void {
        const _c = self.vtable.MouseWheelDown(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MouseWheelLeft(self: *@This()) core.HResult!void {
        const _c = self.vtable.MouseWheelLeft(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MouseWheelRight(self: *@This()) core.HResult!void {
        const _c = self.vtable.MouseWheelRight(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetHorizontalOffset(self: *@This(), offset: f64) core.HResult!void {
        const _c = self.vtable.SetHorizontalOffset(@ptrCast(self), offset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetVerticalOffset(self: *@This(), offset: f64) core.HResult!void {
        const _c = self.vtable.SetVerticalOffset(@ptrCast(self), offset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn MakeVisible(self: *@This(), visual: *UIElement, rectangle: Rect) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.MakeVisible(@ptrCast(self), visual, rectangle, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f077b577-39bd-46ee-bdd7-0826beed71b8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CanVerticallyScroll: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanVerticallyScroll: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_CanHorizontallyScroll: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanHorizontallyScroll: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ExtentWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ExtentHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ViewportWidth: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ViewportHeight: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_HorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_VerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ScrollOwner: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_ScrollOwner: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        LineUp: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        LineDown: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        LineLeft: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        LineRight: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PageUp: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PageDown: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PageLeft: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        PageRight: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        MouseWheelUp: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        MouseWheelDown: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        MouseWheelLeft: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        MouseWheelRight: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        SetHorizontalOffset: *const fn(self: *anyopaque, offset: f64) callconv(.winapi) HRESULT,
        SetVerticalOffset: *const fn(self: *anyopaque, offset: f64) callconv(.winapi) HRESULT,
        MakeVisible: *const fn(self: *anyopaque, visual: *UIElement, rectangle: Rect, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const IOrientedVirtualizingPanelFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IOrientedVirtualizingPanelFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b8eaeaf-f92f-439d-9ebf-e9919f56c94d";
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
pub const IPickerFlyoutBase = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e33574ea-1076-44d1-9383-dc24ac5cff2a";
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
pub const IPickerFlyoutBaseFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PickerFlyoutBase {
        var _r: *PickerFlyoutBase = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ec27a53-9502-4beb-b342-00566c8f16b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **PickerFlyoutBase) callconv(.winapi) HRESULT,
    };
};
pub const IPickerFlyoutBaseOverrides = extern struct {
    vtable: *const VTable,
    pub fn OnConfirmed(self: *@This()) core.HResult!void {
        const _c = self.vtable.OnConfirmed(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShouldShowConfirmationButtons(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ShouldShowConfirmationButtons(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5bfc4f4a-4822-47b4-a958-77c20ba120d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnConfirmed: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ShouldShowConfirmationButtons: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPickerFlyoutBaseStatics = extern struct {
    vtable: *const VTable,
    pub fn getTitleProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TitleProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTitle(self: *@This(), element: *DependencyObject) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetTitle(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetTitle(self: *@This(), element: *DependencyObject, value: HSTRING) core.HResult!void {
        const _c = self.vtable.SetTitle(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPickerFlyoutBaseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5a4d0ac5-89ae-40e5-a7f1-bb702355adf3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TitleProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetTitle: *const fn(self: *anyopaque, element: *DependencyObject, _r: *HSTRING) callconv(.winapi) HRESULT,
        SetTitle: *const fn(self: *anyopaque, element: *DependencyObject, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IPivotHeaderItem = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPivotHeaderItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "594572c2-82aa-410b-9e55-fd8e2c98862d";
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
pub const IPivotHeaderItemFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PivotHeaderItem {
        var _r: *PivotHeaderItem = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPivotHeaderItemFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14308b37-185b-4117-bc77-dda2eb261b99";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **PivotHeaderItem) callconv(.winapi) HRESULT,
    };
};
pub const IPivotHeaderPanel = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPivotHeaderPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "21484ebc-9241-4203-bd37-6c08fb096612";
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
pub const IPivotPanel = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPivotPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ad4ebe80-22a9-4ca3-9212-2773b6359ff3";
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
pub const IPopup = extern struct {
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
    pub fn getIsOpen(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOpen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsOpen(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsOpen(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub fn getChildTransitions(self: *@This()) core.HResult!*TransitionCollection {
        var _r: *TransitionCollection = undefined;
        const _c = self.vtable.get_ChildTransitions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putChildTransitions(self: *@This(), value: *TransitionCollection) core.HResult!void {
        const _c = self.vtable.put_ChildTransitions(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsLightDismissEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsLightDismissEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsLightDismissEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsLightDismissEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addOpened(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Opened(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Opened(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addClosed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPopup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "62418240-e6d3-4705-a1dc-39156456ee29";
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
        get_IsOpen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsOpen: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_HorizontalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_HorizontalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_VerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_VerticalOffset: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_ChildTransitions: *const fn(self: *anyopaque, _r: **TransitionCollection) callconv(.winapi) HRESULT,
        put_ChildTransitions: *const fn(self: *anyopaque, value: *TransitionCollection) callconv(.winapi) HRESULT,
        get_IsLightDismissEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsLightDismissEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        add_Opened: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Opened: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPopup2 = extern struct {
    vtable: *const VTable,
    pub fn getLightDismissOverlayMode(self: *@This()) core.HResult!LightDismissOverlayMode {
        var _r: LightDismissOverlayMode = undefined;
        const _c = self.vtable.get_LightDismissOverlayMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLightDismissOverlayMode(self: *@This(), value: LightDismissOverlayMode) core.HResult!void {
        const _c = self.vtable.put_LightDismissOverlayMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPopup2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "376a8c4c-aac0-4b20-966a-0b9364feb4b5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LightDismissOverlayMode: *const fn(self: *anyopaque, _r: *LightDismissOverlayMode) callconv(.winapi) HRESULT,
        put_LightDismissOverlayMode: *const fn(self: *anyopaque, value: LightDismissOverlayMode) callconv(.winapi) HRESULT,
    };
};
pub const IPopup3 = extern struct {
    vtable: *const VTable,
    pub fn getShouldConstrainToRootBounds(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ShouldConstrainToRootBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putShouldConstrainToRootBounds(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ShouldConstrainToRootBounds(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsConstrainedToRootBounds(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsConstrainedToRootBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPopup3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f9c46915-a65c-5f68-9f54-310a1b51095f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShouldConstrainToRootBounds: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ShouldConstrainToRootBounds: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsConstrainedToRootBounds: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPopup4 = extern struct {
    vtable: *const VTable,
    pub fn getPlacementTarget(self: *@This()) core.HResult!*FrameworkElement {
        var _r: *FrameworkElement = undefined;
        const _c = self.vtable.get_PlacementTarget(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPlacementTarget(self: *@This(), value: *FrameworkElement) core.HResult!void {
        const _c = self.vtable.put_PlacementTarget(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredPlacement(self: *@This()) core.HResult!PopupPlacementMode {
        var _r: PopupPlacementMode = undefined;
        const _c = self.vtable.get_DesiredPlacement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredPlacement(self: *@This(), value: PopupPlacementMode) core.HResult!void {
        const _c = self.vtable.put_DesiredPlacement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getActualPlacement(self: *@This()) core.HResult!PopupPlacementMode {
        var _r: PopupPlacementMode = undefined;
        const _c = self.vtable.get_ActualPlacement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addActualPlacementChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ActualPlacementChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActualPlacementChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ActualPlacementChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPopup4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1870b836-df2f-5fc6-a5f2-748ed6ce7321";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PlacementTarget: *const fn(self: *anyopaque, _r: **FrameworkElement) callconv(.winapi) HRESULT,
        put_PlacementTarget: *const fn(self: *anyopaque, value: *FrameworkElement) callconv(.winapi) HRESULT,
        get_DesiredPlacement: *const fn(self: *anyopaque, _r: *PopupPlacementMode) callconv(.winapi) HRESULT,
        put_DesiredPlacement: *const fn(self: *anyopaque, value: PopupPlacementMode) callconv(.winapi) HRESULT,
        get_ActualPlacement: *const fn(self: *anyopaque, _r: *PopupPlacementMode) callconv(.winapi) HRESULT,
        add_ActualPlacementChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ActualPlacementChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IPopupStatics = extern struct {
    vtable: *const VTable,
    pub fn getChildProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ChildProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOpenProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsOpenProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub fn getChildTransitionsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ChildTransitionsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsLightDismissEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsLightDismissEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPopupStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ae3bf1a-6e34-40d6-8a7f-ca822aaf59e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ChildProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsOpenProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_HorizontalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_VerticalOffsetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ChildTransitionsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsLightDismissEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPopupStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getLightDismissOverlayModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LightDismissOverlayModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPopupStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2b9ae9ec-55ef-43b6-b459-12e40ffa4302";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LightDismissOverlayModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPopupStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getShouldConstrainToRootBoundsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ShouldConstrainToRootBoundsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPopupStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00789589-c580-558f-945a-7d02ee004d3e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ShouldConstrainToRootBoundsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IPopupStatics4 = extern struct {
    vtable: *const VTable,
    pub fn getPlacementTargetProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PlacementTargetProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesiredPlacementProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DesiredPlacementProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IPopupStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d1a42c06-8bfa-5164-8554-48bfe6bd4cc6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PlacementTargetProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DesiredPlacementProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IProgressBarTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getEllipseDiameter(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_EllipseDiameter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEllipseOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_EllipseOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEllipseAnimationWellPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_EllipseAnimationWellPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEllipseAnimationEndPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_EllipseAnimationEndPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContainerAnimationStartPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ContainerAnimationStartPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContainerAnimationEndPosition(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ContainerAnimationEndPosition(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIndicatorLengthDelta(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_IndicatorLengthDelta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IProgressBarTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3fe2ea2a-e3f2-4c2b-9488-918d77d2bbe4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EllipseDiameter: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_EllipseOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_EllipseAnimationWellPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_EllipseAnimationEndPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ContainerAnimationStartPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ContainerAnimationEndPosition: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_IndicatorLengthDelta: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IProgressRingTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getEllipseDiameter(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_EllipseDiameter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getEllipseOffset(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_EllipseOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaxSideLength(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_MaxSideLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IProgressRingTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9b675ec-c723-42e6-83e9-9826272bdc0e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EllipseDiameter: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_EllipseOffset: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        get_MaxSideLength: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IRangeBase = extern struct {
    vtable: *const VTable,
    pub fn getMinimum(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Minimum(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMinimum(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Minimum(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getMaximum(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Maximum(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMaximum(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Maximum(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSmallChange(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SmallChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSmallChange(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_SmallChange(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getLargeChange(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_LargeChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLargeChange(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_LargeChange(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
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
    pub fn addValueChanged(self: *@This(), handler: *RangeBaseValueChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ValueChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeValueChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ValueChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IRangeBase";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa002c1a-494e-46cf-91d4-e14a8d798675";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Minimum: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Minimum: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Maximum: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Maximum: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_SmallChange: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_SmallChange: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_LargeChange: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_LargeChange: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Value: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        add_ValueChanged: *const fn(self: *anyopaque, handler: *RangeBaseValueChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ValueChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IRangeBaseFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RangeBase {
        var _r: *RangeBase = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IRangeBaseFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "389b7c71-5220-42b2-9992-2690c1a67030";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **RangeBase) callconv(.winapi) HRESULT,
    };
};
pub const IRangeBaseOverrides = extern struct {
    vtable: *const VTable,
    pub fn OnMinimumChanged(self: *@This(), oldMinimum: f64, newMinimum: f64) core.HResult!void {
        const _c = self.vtable.OnMinimumChanged(@ptrCast(self), oldMinimum, newMinimum);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnMaximumChanged(self: *@This(), oldMaximum: f64, newMaximum: f64) core.HResult!void {
        const _c = self.vtable.OnMaximumChanged(@ptrCast(self), oldMaximum, newMaximum);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn OnValueChanged(self: *@This(), oldValue: f64, newValue: f64) core.HResult!void {
        const _c = self.vtable.OnValueChanged(@ptrCast(self), oldValue, newValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IRangeBaseOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4291af39-7f0b-4bc2-99c4-06e7062682d8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnMinimumChanged: *const fn(self: *anyopaque, oldMinimum: f64, newMinimum: f64) callconv(.winapi) HRESULT,
        OnMaximumChanged: *const fn(self: *anyopaque, oldMaximum: f64, newMaximum: f64) callconv(.winapi) HRESULT,
        OnValueChanged: *const fn(self: *anyopaque, oldValue: f64, newValue: f64) callconv(.winapi) HRESULT,
    };
};
pub const IRangeBaseStatics = extern struct {
    vtable: *const VTable,
    pub fn getMinimumProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MinimumProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMaximumProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_MaximumProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSmallChangeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SmallChangeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getLargeChangeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LargeChangeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValueProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ValueProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IRangeBaseStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67ef17e1-fe37-474f-9e97-3b5e0b30f2e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_MinimumProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_MaximumProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SmallChangeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_LargeChangeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ValueProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IRangeBaseValueChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOldValue(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OldValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewValue(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NewValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IRangeBaseValueChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a1921777-d5c1-4f9c-a7b0-0401b7e6dc5c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OldValue: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_NewValue: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IRepeatButton = extern struct {
    vtable: *const VTable,
    pub fn getDelay(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Delay(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDelay(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Delay(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInterval(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Interval(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInterval(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_Interval(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IRepeatButton";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "02200df9-021a-484a-a93b-0f31020314e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Delay: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Delay: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_Interval: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_Interval: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IRepeatButtonStatics = extern struct {
    vtable: *const VTable,
    pub fn getDelayProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DelayProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIntervalProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IntervalProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IRepeatButtonStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3914ac4e-f462-4f73-8197-e8846639c682";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DelayProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IntervalProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IScrollBar = extern struct {
    vtable: *const VTable,
    pub fn getOrientation(self: *@This()) core.HResult!Orientation {
        var _r: Orientation = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putOrientation(self: *@This(), value: Orientation) core.HResult!void {
        const _c = self.vtable.put_Orientation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getViewportSize(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_ViewportSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putViewportSize(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_ViewportSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIndicatorMode(self: *@This()) core.HResult!ScrollingIndicatorMode {
        var _r: ScrollingIndicatorMode = undefined;
        const _c = self.vtable.get_IndicatorMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIndicatorMode(self: *@This(), value: ScrollingIndicatorMode) core.HResult!void {
        const _c = self.vtable.put_IndicatorMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addScroll(self: *@This(), handler: *ScrollEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Scroll(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeScroll(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Scroll(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IScrollBar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f57ae6ca-d1a6-4b90-a4e9-54df1ba8d2ec";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *Orientation) callconv(.winapi) HRESULT,
        put_Orientation: *const fn(self: *anyopaque, value: Orientation) callconv(.winapi) HRESULT,
        get_ViewportSize: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_ViewportSize: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_IndicatorMode: *const fn(self: *anyopaque, _r: *ScrollingIndicatorMode) callconv(.winapi) HRESULT,
        put_IndicatorMode: *const fn(self: *anyopaque, value: ScrollingIndicatorMode) callconv(.winapi) HRESULT,
        add_Scroll: *const fn(self: *anyopaque, handler: *ScrollEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Scroll: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IScrollBarStatics = extern struct {
    vtable: *const VTable,
    pub fn getOrientationProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_OrientationProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViewportSizeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ViewportSizeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIndicatorModeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IndicatorModeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IScrollBarStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45eaf38d-b814-48cf-97f2-539eb16dfd4d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OrientationProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ViewportSizeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IndicatorModeProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IScrollEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getNewValue(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NewValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScrollEventType(self: *@This()) core.HResult!ScrollEventType {
        var _r: ScrollEventType = undefined;
        const _c = self.vtable.get_ScrollEventType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IScrollEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c57e5168-3afe-448d-b752-2f364c75d743";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NewValue: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_ScrollEventType: *const fn(self: *anyopaque, _r: *ScrollEventType) callconv(.winapi) HRESULT,
    };
};
pub const IScrollSnapPointsInfo = extern struct {
    vtable: *const VTable,
    pub fn getAreHorizontalSnapPointsRegular(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AreHorizontalSnapPointsRegular(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAreVerticalSnapPointsRegular(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AreVerticalSnapPointsRegular(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addHorizontalSnapPointsChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HorizontalSnapPointsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHorizontalSnapPointsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HorizontalSnapPointsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addVerticalSnapPointsChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VerticalSnapPointsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVerticalSnapPointsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VerticalSnapPointsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetIrregularSnapPoints(self: *@This(), orientation: Orientation, alignment: SnapPointsAlignment) core.HResult!*IVectorView(f32) {
        var _r: *IVectorView(f32) = undefined;
        const _c = self.vtable.GetIrregularSnapPoints(@ptrCast(self), orientation, alignment, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetRegularSnapPoints(self: *@This(), orientation: Orientation, alignment: SnapPointsAlignment, offset: f32) core.HResult!f32 {
        var _r: f32 = undefined;
        const _c = self.vtable.GetRegularSnapPoints(@ptrCast(self), orientation, alignment, offset, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IScrollSnapPointsInfo";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b5d1336-e61b-4d51-be41-fd8ddc55c58c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AreHorizontalSnapPointsRegular: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AreVerticalSnapPointsRegular: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_HorizontalSnapPointsChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HorizontalSnapPointsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_VerticalSnapPointsChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VerticalSnapPointsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        GetIrregularSnapPoints: *const fn(self: *anyopaque, orientation: Orientation, alignment: SnapPointsAlignment, _r: **IVectorView(f32)) callconv(.winapi) HRESULT,
        GetRegularSnapPoints: *const fn(self: *anyopaque, orientation: Orientation, alignment: SnapPointsAlignment, offset: f32, _r: *f32) callconv(.winapi) HRESULT,
    };
};
pub const ISelector = extern struct {
    vtable: *const VTable,
    pub fn getSelectedIndex(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_SelectedIndex(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedIndex(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_SelectedIndex(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedItem(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_SelectedItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedItem(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_SelectedItem(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedValue(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_SelectedValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedValue(self: *@This(), value: *IInspectable) core.HResult!void {
        const _c = self.vtable.put_SelectedValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getSelectedValuePath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_SelectedValuePath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSelectedValuePath(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_SelectedValuePath(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsSynchronizedWithCurrentItem(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_IsSynchronizedWithCurrentItem(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsSynchronizedWithCurrentItem(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const _c = self.vtable.put_IsSynchronizedWithCurrentItem(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addSelectionChanged(self: *@This(), handler: *SelectionChangedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_SelectionChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSelectionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_SelectionChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ISelector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e30eb3a5-b36b-42dc-8527-cd25136c083c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectedIndex: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_SelectedIndex: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
        get_SelectedItem: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_SelectedItem: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_SelectedValue: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        put_SelectedValue: *const fn(self: *anyopaque, value: *IInspectable) callconv(.winapi) HRESULT,
        get_SelectedValuePath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_SelectedValuePath: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IsSynchronizedWithCurrentItem: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
        put_IsSynchronizedWithCurrentItem: *const fn(self: *anyopaque, value: *IReference(bool)) callconv(.winapi) HRESULT,
        add_SelectionChanged: *const fn(self: *anyopaque, handler: *SelectionChangedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_SelectionChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ISelectorFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ISelectorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9be2995-d136-4600-b187-8ad56079b48a";
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
pub const ISelectorItem = extern struct {
    vtable: *const VTable,
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSelected(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsSelected(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsSelected(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ISelectorItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "541c8d6c-0283-4581-b945-2a64c28a0646";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSelected: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsSelected: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ISelectorItemFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SelectorItem {
        var _r: *SelectorItem = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ISelectorItemFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9363945-c86a-4b1e-9440-1879378d5313";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **SelectorItem) callconv(.winapi) HRESULT,
    };
};
pub const ISelectorItemStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsSelectedProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsSelectedProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ISelectorItemStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a353ab8-cbe9-4303-92e7-c8906e218392";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsSelectedProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ISelectorStatics = extern struct {
    vtable: *const VTable,
    pub fn getSelectedIndexProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedIndexProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedItemProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedItemProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedValueProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedValueProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSelectedValuePathProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_SelectedValuePathProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSynchronizedWithCurrentItemProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsSynchronizedWithCurrentItemProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIsSelectionActive(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.GetIsSelectionActive(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ISelectorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "13300b06-bd10-4e09-bff7-71efb8bbb42b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SelectedIndexProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedItemProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedValueProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_SelectedValuePathProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsSynchronizedWithCurrentItemProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        GetIsSelectionActive: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ISettingsFlyoutTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getHeaderBackground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_HeaderBackground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeaderForeground(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_HeaderForeground(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBorderBrush(self: *@This()) core.HResult!*Brush {
        var _r: *Brush = undefined;
        const _c = self.vtable.get_BorderBrush(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getBorderThickness(self: *@This()) core.HResult!Thickness {
        var _r: Thickness = undefined;
        const _c = self.vtable.get_BorderThickness(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIconSource(self: *@This()) core.HResult!*ImageSource {
        var _r: *ImageSource = undefined;
        const _c = self.vtable.get_IconSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContentTransitions(self: *@This()) core.HResult!*TransitionCollection {
        var _r: *TransitionCollection = undefined;
        const _c = self.vtable.get_ContentTransitions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ISettingsFlyoutTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bcf14c10-cea7-43f1-9d68-57605ded69d4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HeaderBackground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        get_HeaderForeground: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        get_BorderBrush: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        get_BorderThickness: *const fn(self: *anyopaque, _r: *Thickness) callconv(.winapi) HRESULT,
        get_IconSource: *const fn(self: *anyopaque, _r: **ImageSource) callconv(.winapi) HRESULT,
        get_ContentTransitions: *const fn(self: *anyopaque, _r: **TransitionCollection) callconv(.winapi) HRESULT,
    };
};
pub const ISplitViewTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getOpenPaneLength(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OpenPaneLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNegativeOpenPaneLength(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NegativeOpenPaneLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOpenPaneLengthMinusCompactLength(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_OpenPaneLengthMinusCompactLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNegativeOpenPaneLengthMinusCompactLength(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_NegativeOpenPaneLengthMinusCompactLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOpenPaneGridLength(self: *@This()) core.HResult!GridLength {
        var _r: GridLength = undefined;
        const _c = self.vtable.get_OpenPaneGridLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCompactPaneGridLength(self: *@This()) core.HResult!GridLength {
        var _r: GridLength = undefined;
        const _c = self.vtable.get_CompactPaneGridLength(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ISplitViewTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c16ab5a7-4996-4443-b199-6b6b89124eab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OpenPaneLength: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_NegativeOpenPaneLength: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_OpenPaneLengthMinusCompactLength: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_NegativeOpenPaneLengthMinusCompactLength: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_OpenPaneGridLength: *const fn(self: *anyopaque, _r: *GridLength) callconv(.winapi) HRESULT,
        get_CompactPaneGridLength: *const fn(self: *anyopaque, _r: *GridLength) callconv(.winapi) HRESULT,
    };
};
pub const IThumb = extern struct {
    vtable: *const VTable,
    pub fn getIsDragging(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDragging(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDragStarted(self: *@This(), handler: *DragStartedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DragStarted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDragStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DragStarted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDragDelta(self: *@This(), handler: *DragDeltaEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DragDelta(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDragDelta(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DragDelta(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDragCompleted(self: *@This(), handler: *DragCompletedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DragCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDragCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DragCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CancelDrag(self: *@This()) core.HResult!void {
        const _c = self.vtable.CancelDrag(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IThumb";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e8b2b281-0d6a-45cf-b333-2402b037f099";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsDragging: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_DragStarted: *const fn(self: *anyopaque, handler: *DragStartedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DragStarted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DragDelta: *const fn(self: *anyopaque, handler: *DragDeltaEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DragDelta: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DragCompleted: *const fn(self: *anyopaque, handler: *DragCompletedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DragCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        CancelDrag: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IThumbStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsDraggingProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsDraggingProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IThumbStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "955024eb-36f3-4672-a186-baaf626ac4ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsDraggingProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITickBar = extern struct {
    vtable: *const VTable,
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ITickBar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "994683fa-f1f6-487d-a5ac-c15921bfa995";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Fill: *const fn(self: *anyopaque, _r: **Brush) callconv(.winapi) HRESULT,
        put_Fill: *const fn(self: *anyopaque, value: *Brush) callconv(.winapi) HRESULT,
    };
};
pub const ITickBarStatics = extern struct {
    vtable: *const VTable,
    pub fn getFillProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_FillProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ITickBarStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c6d7e40-799d-4a54-be09-1fefc61d018e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_FillProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IToggleButton = extern struct {
    vtable: *const VTable,
    pub fn getIsChecked(self: *@This()) core.HResult!*IReference(bool) {
        var _r: *IReference(bool) = undefined;
        const _c = self.vtable.get_IsChecked(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsChecked(self: *@This(), value: *IReference(bool)) core.HResult!void {
        const _c = self.vtable.put_IsChecked(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsThreeState(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsThreeState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsThreeState(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsThreeState(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addChecked(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Checked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChecked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Checked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUnchecked(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Unchecked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUnchecked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Unchecked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addIndeterminate(self: *@This(), handler: *RoutedEventHandler) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Indeterminate(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIndeterminate(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Indeterminate(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IToggleButton";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "589877fb-0fc7-4036-9d8b-127dfa75c16d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsChecked: *const fn(self: *anyopaque, _r: **IReference(bool)) callconv(.winapi) HRESULT,
        put_IsChecked: *const fn(self: *anyopaque, value: *IReference(bool)) callconv(.winapi) HRESULT,
        get_IsThreeState: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsThreeState: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        add_Checked: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Checked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Unchecked: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Unchecked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Indeterminate: *const fn(self: *anyopaque, handler: *RoutedEventHandler, _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Indeterminate: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IToggleButtonFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ToggleButton {
        var _r: *ToggleButton = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IToggleButtonFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d56aa2fc-fc7f-449c-9855-7a1055d668a8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ToggleButton) callconv(.winapi) HRESULT,
    };
};
pub const IToggleButtonOverrides = extern struct {
    vtable: *const VTable,
    pub fn OnToggle(self: *@This()) core.HResult!void {
        const _c = self.vtable.OnToggle(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IToggleButtonOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d20e4c28-f18b-491a-9a45-f1a04a9369a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnToggle: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IToggleButtonStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsCheckedProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsCheckedProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsThreeStateProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsThreeStateProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IToggleButtonStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af1eab12-0128-4f67-9c5a-82320c445d19";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsCheckedProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsThreeStateProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IToggleSwitchTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getKnobCurrentToOnOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_KnobCurrentToOnOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKnobCurrentToOffOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_KnobCurrentToOffOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKnobOnToOffOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_KnobOnToOffOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKnobOffToOnOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_KnobOffToOnOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurtainCurrentToOnOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CurtainCurrentToOnOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurtainCurrentToOffOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CurtainCurrentToOffOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurtainOnToOffOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CurtainOnToOffOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCurtainOffToOnOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_CurtainOffToOnOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IToggleSwitchTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "02b7bdcd-628a-4363-86e0-51d6e2e89e58";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KnobCurrentToOnOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_KnobCurrentToOffOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_KnobOnToOffOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_KnobOffToOnOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_CurtainCurrentToOnOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_CurtainCurrentToOffOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_CurtainOnToOffOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_CurtainOffToOnOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const IToolTipTemplateSettings = extern struct {
    vtable: *const VTable,
    pub fn getFromHorizontalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FromHorizontalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFromVerticalOffset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_FromVerticalOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.IToolTipTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4388247-0ec4-4506-affd-afac2225b48c";
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
        get_FromVerticalOffset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
    };
};
pub const ItemsChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAction(self: *@This()) core.HResult!i32 {
        const this: *IItemsChangedEventArgs = @ptrCast(self);
        return try this.getAction();
    }
    pub fn getPosition(self: *@This()) core.HResult!GeneratorPosition {
        const this: *IItemsChangedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getOldPosition(self: *@This()) core.HResult!GeneratorPosition {
        const this: *IItemsChangedEventArgs = @ptrCast(self);
        return try this.getOldPosition();
    }
    pub fn getItemCount(self: *@This()) core.HResult!i32 {
        const this: *IItemsChangedEventArgs = @ptrCast(self);
        return try this.getItemCount();
    }
    pub fn getItemUICount(self: *@This()) core.HResult!i32 {
        const this: *IItemsChangedEventArgs = @ptrCast(self);
        return try this.getItemUICount();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ItemsChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IItemsChangedEventArgs.GUID;
    pub const IID: Guid = IItemsChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IItemsChangedEventArgs.SIGNATURE);
};
pub const ItemsChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ItemsChangedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ItemsChangedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *ItemsChangedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ItemsChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "178257be-a304-482f-8bf0-b9d2e39612a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *ItemsChangedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const JumpListItemBackgroundConverter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEnabled(self: *@This()) core.HResult!*Brush {
        const this: *IJumpListItemBackgroundConverter = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn putEnabled(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IJumpListItemBackgroundConverter = @ptrCast(self);
        return try this.putEnabled(value);
    }
    pub fn getDisabled(self: *@This()) core.HResult!*Brush {
        const this: *IJumpListItemBackgroundConverter = @ptrCast(self);
        return try this.getDisabled();
    }
    pub fn putDisabled(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IJumpListItemBackgroundConverter = @ptrCast(self);
        return try this.putDisabled(value);
    }
    pub fn Convert(self: *@This(), value: *IInspectable, targetType: TypeName, parameter: *IInspectable, language: HSTRING) core.HResult!*IInspectable {
        var this: ?*IValueConverter = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IValueConverter.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Convert(value, targetType, parameter, language);
    }
    pub fn ConvertBack(self: *@This(), value: *IInspectable, targetType: TypeName, parameter: *IInspectable, language: HSTRING) core.HResult!*IInspectable {
        var this: ?*IValueConverter = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IValueConverter.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConvertBack(value, targetType, parameter, language);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IJumpListItemBackgroundConverter.IID)));
    }
    pub fn get_EnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IJumpListItemBackgroundConverterStaticsCache.get();
        return try factory.getEnabledProperty();
    }
    pub fn get_DisabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IJumpListItemBackgroundConverterStaticsCache.get();
        return try factory.getDisabledProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.JumpListItemBackgroundConverter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IJumpListItemBackgroundConverter.GUID;
    pub const IID: Guid = IJumpListItemBackgroundConverter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IJumpListItemBackgroundConverter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IJumpListItemBackgroundConverterStaticsCache: FactoryCache(IJumpListItemBackgroundConverterStatics, RUNTIME_NAME) = .{};
};
pub const JumpListItemForegroundConverter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEnabled(self: *@This()) core.HResult!*Brush {
        const this: *IJumpListItemForegroundConverter = @ptrCast(self);
        return try this.getEnabled();
    }
    pub fn putEnabled(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IJumpListItemForegroundConverter = @ptrCast(self);
        return try this.putEnabled(value);
    }
    pub fn getDisabled(self: *@This()) core.HResult!*Brush {
        const this: *IJumpListItemForegroundConverter = @ptrCast(self);
        return try this.getDisabled();
    }
    pub fn putDisabled(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IJumpListItemForegroundConverter = @ptrCast(self);
        return try this.putDisabled(value);
    }
    pub fn Convert(self: *@This(), value: *IInspectable, targetType: TypeName, parameter: *IInspectable, language: HSTRING) core.HResult!*IInspectable {
        var this: ?*IValueConverter = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IValueConverter.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Convert(value, targetType, parameter, language);
    }
    pub fn ConvertBack(self: *@This(), value: *IInspectable, targetType: TypeName, parameter: *IInspectable, language: HSTRING) core.HResult!*IInspectable {
        var this: ?*IValueConverter = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IValueConverter.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ConvertBack(value, targetType, parameter, language);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IJumpListItemForegroundConverter.IID)));
    }
    pub fn get_EnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IJumpListItemForegroundConverterStaticsCache.get();
        return try factory.getEnabledProperty();
    }
    pub fn get_DisabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IJumpListItemForegroundConverterStaticsCache.get();
        return try factory.getDisabledProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.JumpListItemForegroundConverter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IJumpListItemForegroundConverter.GUID;
    pub const IID: Guid = IJumpListItemForegroundConverter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IJumpListItemForegroundConverter.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IJumpListItemForegroundConverterStaticsCache: FactoryCache(IJumpListItemForegroundConverterStatics, RUNTIME_NAME) = .{};
};
pub const LayoutInformation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetLayoutExceptionElement(dispatcher: *IInspectable) core.HResult!*UIElement {
        const factory = @This().ILayoutInformationStaticsCache.get();
        return try factory.GetLayoutExceptionElement(dispatcher);
    }
    pub fn GetLayoutSlot(element: *FrameworkElement) core.HResult!Rect {
        const factory = @This().ILayoutInformationStaticsCache.get();
        return try factory.GetLayoutSlot(element);
    }
    pub fn GetAvailableSize(element: *UIElement) core.HResult!Size {
        const factory = @This().ILayoutInformationStatics2Cache.get();
        return try factory.GetAvailableSize(element);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.LayoutInformation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILayoutInformation.GUID;
    pub const IID: Guid = ILayoutInformation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILayoutInformation.SIGNATURE);
    var _ILayoutInformationStaticsCache: FactoryCache(ILayoutInformationStatics, RUNTIME_NAME) = .{};
    var _ILayoutInformationStatics2Cache: FactoryCache(ILayoutInformationStatics2, RUNTIME_NAME) = .{};
};
pub const ListViewItemPresenter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSelectionCheckMarkVisualEnabled(self: *@This()) core.HResult!bool {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getSelectionCheckMarkVisualEnabled();
    }
    pub fn putSelectionCheckMarkVisualEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putSelectionCheckMarkVisualEnabled(value);
    }
    pub fn getCheckHintBrush(self: *@This()) core.HResult!*Brush {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getCheckHintBrush();
    }
    pub fn putCheckHintBrush(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putCheckHintBrush(value);
    }
    pub fn getCheckSelectingBrush(self: *@This()) core.HResult!*Brush {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getCheckSelectingBrush();
    }
    pub fn putCheckSelectingBrush(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putCheckSelectingBrush(value);
    }
    pub fn getCheckBrush(self: *@This()) core.HResult!*Brush {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getCheckBrush();
    }
    pub fn putCheckBrush(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putCheckBrush(value);
    }
    pub fn getDragBackground(self: *@This()) core.HResult!*Brush {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getDragBackground();
    }
    pub fn putDragBackground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putDragBackground(value);
    }
    pub fn getDragForeground(self: *@This()) core.HResult!*Brush {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getDragForeground();
    }
    pub fn putDragForeground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putDragForeground(value);
    }
    pub fn getFocusBorderBrush(self: *@This()) core.HResult!*Brush {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getFocusBorderBrush();
    }
    pub fn putFocusBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putFocusBorderBrush(value);
    }
    pub fn getPlaceholderBackground(self: *@This()) core.HResult!*Brush {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getPlaceholderBackground();
    }
    pub fn putPlaceholderBackground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putPlaceholderBackground(value);
    }
    pub fn getPointerOverBackground(self: *@This()) core.HResult!*Brush {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getPointerOverBackground();
    }
    pub fn putPointerOverBackground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putPointerOverBackground(value);
    }
    pub fn getSelectedBackground(self: *@This()) core.HResult!*Brush {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getSelectedBackground();
    }
    pub fn putSelectedBackground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putSelectedBackground(value);
    }
    pub fn getSelectedForeground(self: *@This()) core.HResult!*Brush {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getSelectedForeground();
    }
    pub fn putSelectedForeground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putSelectedForeground(value);
    }
    pub fn getSelectedPointerOverBackground(self: *@This()) core.HResult!*Brush {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getSelectedPointerOverBackground();
    }
    pub fn putSelectedPointerOverBackground(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putSelectedPointerOverBackground(value);
    }
    pub fn getSelectedPointerOverBorderBrush(self: *@This()) core.HResult!*Brush {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getSelectedPointerOverBorderBrush();
    }
    pub fn putSelectedPointerOverBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putSelectedPointerOverBorderBrush(value);
    }
    pub fn getSelectedBorderThickness(self: *@This()) core.HResult!Thickness {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getSelectedBorderThickness();
    }
    pub fn putSelectedBorderThickness(self: *@This(), value: Thickness) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putSelectedBorderThickness(value);
    }
    pub fn getDisabledOpacity(self: *@This()) core.HResult!f64 {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getDisabledOpacity();
    }
    pub fn putDisabledOpacity(self: *@This(), value: f64) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putDisabledOpacity(value);
    }
    pub fn getDragOpacity(self: *@This()) core.HResult!f64 {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getDragOpacity();
    }
    pub fn putDragOpacity(self: *@This(), value: f64) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putDragOpacity(value);
    }
    pub fn getReorderHintOffset(self: *@This()) core.HResult!f64 {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getReorderHintOffset();
    }
    pub fn putReorderHintOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putReorderHintOffset(value);
    }
    pub fn getListViewItemPresenterHorizontalContentAlignment(self: *@This()) core.HResult!HorizontalAlignment {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getListViewItemPresenterHorizontalContentAlignment();
    }
    pub fn putListViewItemPresenterHorizontalContentAlignment(self: *@This(), value: HorizontalAlignment) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putListViewItemPresenterHorizontalContentAlignment(value);
    }
    pub fn getListViewItemPresenterVerticalContentAlignment(self: *@This()) core.HResult!VerticalAlignment {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getListViewItemPresenterVerticalContentAlignment();
    }
    pub fn putListViewItemPresenterVerticalContentAlignment(self: *@This(), value: VerticalAlignment) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putListViewItemPresenterVerticalContentAlignment(value);
    }
    pub fn getListViewItemPresenterPadding(self: *@This()) core.HResult!Thickness {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getListViewItemPresenterPadding();
    }
    pub fn putListViewItemPresenterPadding(self: *@This(), value: Thickness) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putListViewItemPresenterPadding(value);
    }
    pub fn getPointerOverBackgroundMargin(self: *@This()) core.HResult!Thickness {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getPointerOverBackgroundMargin();
    }
    pub fn putPointerOverBackgroundMargin(self: *@This(), value: Thickness) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putPointerOverBackgroundMargin(value);
    }
    pub fn getContentMargin(self: *@This()) core.HResult!Thickness {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.getContentMargin();
    }
    pub fn putContentMargin(self: *@This(), value: Thickness) core.HResult!void {
        const this: *IListViewItemPresenter = @ptrCast(self);
        return try this.putContentMargin(value);
    }
    pub fn getSelectedPressedBackground(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectedPressedBackground();
    }
    pub fn putSelectedPressedBackground(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectedPressedBackground(value);
    }
    pub fn getPressedBackground(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPressedBackground();
    }
    pub fn putPressedBackground(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPressedBackground(value);
    }
    pub fn getCheckBoxBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckBoxBrush();
    }
    pub fn putCheckBoxBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckBoxBrush(value);
    }
    pub fn getFocusSecondaryBorderBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFocusSecondaryBorderBrush();
    }
    pub fn putFocusSecondaryBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFocusSecondaryBorderBrush(value);
    }
    pub fn getCheckMode(self: *@This()) core.HResult!ListViewItemPresenterCheckMode {
        var this: ?*IListViewItemPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckMode();
    }
    pub fn putCheckMode(self: *@This(), value: ListViewItemPresenterCheckMode) core.HResult!void {
        var this: ?*IListViewItemPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckMode(value);
    }
    pub fn getPointerOverForeground(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPointerOverForeground();
    }
    pub fn putPointerOverForeground(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPointerOverForeground(value);
    }
    pub fn getRevealBackground(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRevealBackground();
    }
    pub fn putRevealBackground(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRevealBackground(value);
    }
    pub fn getRevealBorderBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRevealBorderBrush();
    }
    pub fn putRevealBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRevealBorderBrush(value);
    }
    pub fn getRevealBorderThickness(self: *@This()) core.HResult!Thickness {
        var this: ?*IListViewItemPresenter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRevealBorderThickness();
    }
    pub fn putRevealBorderThickness(self: *@This(), value: Thickness) core.HResult!void {
        var this: ?*IListViewItemPresenter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRevealBorderThickness(value);
    }
    pub fn getRevealBackgroundShowsAboveContent(self: *@This()) core.HResult!bool {
        var this: ?*IListViewItemPresenter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getRevealBackgroundShowsAboveContent();
    }
    pub fn putRevealBackgroundShowsAboveContent(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IListViewItemPresenter3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putRevealBackgroundShowsAboveContent(value);
    }
    pub fn getSelectedDisabledBackground(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectedDisabledBackground();
    }
    pub fn putSelectedDisabledBackground(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectedDisabledBackground(value);
    }
    pub fn getCheckPressedBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckPressedBrush();
    }
    pub fn putCheckPressedBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckPressedBrush(value);
    }
    pub fn getCheckDisabledBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckDisabledBrush();
    }
    pub fn putCheckDisabledBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckDisabledBrush(value);
    }
    pub fn getCheckBoxPointerOverBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckBoxPointerOverBrush();
    }
    pub fn putCheckBoxPointerOverBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckBoxPointerOverBrush(value);
    }
    pub fn getCheckBoxPressedBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckBoxPressedBrush();
    }
    pub fn putCheckBoxPressedBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckBoxPressedBrush(value);
    }
    pub fn getCheckBoxDisabledBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckBoxDisabledBrush();
    }
    pub fn putCheckBoxDisabledBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckBoxDisabledBrush(value);
    }
    pub fn getCheckBoxSelectedBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckBoxSelectedBrush();
    }
    pub fn putCheckBoxSelectedBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckBoxSelectedBrush(value);
    }
    pub fn getCheckBoxSelectedPointerOverBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckBoxSelectedPointerOverBrush();
    }
    pub fn putCheckBoxSelectedPointerOverBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckBoxSelectedPointerOverBrush(value);
    }
    pub fn getCheckBoxSelectedPressedBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckBoxSelectedPressedBrush();
    }
    pub fn putCheckBoxSelectedPressedBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckBoxSelectedPressedBrush(value);
    }
    pub fn getCheckBoxSelectedDisabledBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckBoxSelectedDisabledBrush();
    }
    pub fn putCheckBoxSelectedDisabledBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckBoxSelectedDisabledBrush(value);
    }
    pub fn getCheckBoxBorderBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckBoxBorderBrush();
    }
    pub fn putCheckBoxBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckBoxBorderBrush(value);
    }
    pub fn getCheckBoxPointerOverBorderBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckBoxPointerOverBorderBrush();
    }
    pub fn putCheckBoxPointerOverBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckBoxPointerOverBorderBrush(value);
    }
    pub fn getCheckBoxPressedBorderBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckBoxPressedBorderBrush();
    }
    pub fn putCheckBoxPressedBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckBoxPressedBorderBrush(value);
    }
    pub fn getCheckBoxDisabledBorderBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckBoxDisabledBorderBrush();
    }
    pub fn putCheckBoxDisabledBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckBoxDisabledBorderBrush(value);
    }
    pub fn getCheckBoxCornerRadius(self: *@This()) core.HResult!CornerRadius {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCheckBoxCornerRadius();
    }
    pub fn putCheckBoxCornerRadius(self: *@This(), value: CornerRadius) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putCheckBoxCornerRadius(value);
    }
    pub fn getSelectionIndicatorCornerRadius(self: *@This()) core.HResult!CornerRadius {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectionIndicatorCornerRadius();
    }
    pub fn putSelectionIndicatorCornerRadius(self: *@This(), value: CornerRadius) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectionIndicatorCornerRadius(value);
    }
    pub fn getSelectionIndicatorVisualEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectionIndicatorVisualEnabled();
    }
    pub fn putSelectionIndicatorVisualEnabled(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectionIndicatorVisualEnabled(value);
    }
    pub fn getSelectionIndicatorMode(self: *@This()) core.HResult!ListViewItemPresenterSelectionIndicatorMode {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectionIndicatorMode();
    }
    pub fn putSelectionIndicatorMode(self: *@This(), value: ListViewItemPresenterSelectionIndicatorMode) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectionIndicatorMode(value);
    }
    pub fn getSelectionIndicatorBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectionIndicatorBrush();
    }
    pub fn putSelectionIndicatorBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectionIndicatorBrush(value);
    }
    pub fn getSelectionIndicatorPointerOverBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectionIndicatorPointerOverBrush();
    }
    pub fn putSelectionIndicatorPointerOverBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectionIndicatorPointerOverBrush(value);
    }
    pub fn getSelectionIndicatorPressedBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectionIndicatorPressedBrush();
    }
    pub fn putSelectionIndicatorPressedBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectionIndicatorPressedBrush(value);
    }
    pub fn getSelectionIndicatorDisabledBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectionIndicatorDisabledBrush();
    }
    pub fn putSelectionIndicatorDisabledBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectionIndicatorDisabledBrush(value);
    }
    pub fn getSelectedBorderBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectedBorderBrush();
    }
    pub fn putSelectedBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectedBorderBrush(value);
    }
    pub fn getSelectedPressedBorderBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectedPressedBorderBrush();
    }
    pub fn putSelectedPressedBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectedPressedBorderBrush(value);
    }
    pub fn getSelectedDisabledBorderBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectedDisabledBorderBrush();
    }
    pub fn putSelectedDisabledBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectedDisabledBorderBrush(value);
    }
    pub fn getSelectedInnerBorderBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectedInnerBorderBrush();
    }
    pub fn putSelectedInnerBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSelectedInnerBorderBrush(value);
    }
    pub fn getPointerOverBorderBrush(self: *@This()) core.HResult!*Brush {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPointerOverBorderBrush();
    }
    pub fn putPointerOverBorderBrush(self: *@This(), value: *Brush) core.HResult!void {
        var this: ?*IListViewItemPresenter4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IListViewItemPresenter4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPointerOverBorderBrush(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_SelectionCheckMarkVisualEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getSelectionCheckMarkVisualEnabledProperty();
    }
    pub fn get_CheckHintBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getCheckHintBrushProperty();
    }
    pub fn get_CheckSelectingBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getCheckSelectingBrushProperty();
    }
    pub fn get_CheckBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getCheckBrushProperty();
    }
    pub fn get_DragBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getDragBackgroundProperty();
    }
    pub fn get_DragForegroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getDragForegroundProperty();
    }
    pub fn get_FocusBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getFocusBorderBrushProperty();
    }
    pub fn get_PlaceholderBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getPlaceholderBackgroundProperty();
    }
    pub fn get_PointerOverBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getPointerOverBackgroundProperty();
    }
    pub fn get_SelectedBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getSelectedBackgroundProperty();
    }
    pub fn get_SelectedForegroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getSelectedForegroundProperty();
    }
    pub fn get_SelectedPointerOverBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getSelectedPointerOverBackgroundProperty();
    }
    pub fn get_SelectedPointerOverBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getSelectedPointerOverBorderBrushProperty();
    }
    pub fn get_SelectedBorderThicknessProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getSelectedBorderThicknessProperty();
    }
    pub fn get_DisabledOpacityProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getDisabledOpacityProperty();
    }
    pub fn get_DragOpacityProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getDragOpacityProperty();
    }
    pub fn get_ReorderHintOffsetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getReorderHintOffsetProperty();
    }
    pub fn get_ListViewItemPresenterHorizontalContentAlignmentProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getListViewItemPresenterHorizontalContentAlignmentProperty();
    }
    pub fn get_ListViewItemPresenterVerticalContentAlignmentProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getListViewItemPresenterVerticalContentAlignmentProperty();
    }
    pub fn get_ListViewItemPresenterPaddingProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getListViewItemPresenterPaddingProperty();
    }
    pub fn get_PointerOverBackgroundMarginProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getPointerOverBackgroundMarginProperty();
    }
    pub fn get_ContentMarginProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStaticsCache.get();
        return try factory.getContentMarginProperty();
    }
    pub fn get_SelectedPressedBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics2Cache.get();
        return try factory.getSelectedPressedBackgroundProperty();
    }
    pub fn get_PressedBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics2Cache.get();
        return try factory.getPressedBackgroundProperty();
    }
    pub fn get_CheckBoxBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics2Cache.get();
        return try factory.getCheckBoxBrushProperty();
    }
    pub fn get_FocusSecondaryBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics2Cache.get();
        return try factory.getFocusSecondaryBorderBrushProperty();
    }
    pub fn get_CheckModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics2Cache.get();
        return try factory.getCheckModeProperty();
    }
    pub fn get_PointerOverForegroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics2Cache.get();
        return try factory.getPointerOverForegroundProperty();
    }
    pub fn get_SelectedDisabledBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getSelectedDisabledBackgroundProperty();
    }
    pub fn get_CheckPressedBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckPressedBrushProperty();
    }
    pub fn get_CheckDisabledBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckDisabledBrushProperty();
    }
    pub fn get_CheckBoxPointerOverBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckBoxPointerOverBrushProperty();
    }
    pub fn get_CheckBoxPressedBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckBoxPressedBrushProperty();
    }
    pub fn get_CheckBoxDisabledBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckBoxDisabledBrushProperty();
    }
    pub fn get_CheckBoxSelectedBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckBoxSelectedBrushProperty();
    }
    pub fn get_CheckBoxSelectedPointerOverBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckBoxSelectedPointerOverBrushProperty();
    }
    pub fn get_CheckBoxSelectedPressedBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckBoxSelectedPressedBrushProperty();
    }
    pub fn get_CheckBoxSelectedDisabledBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckBoxSelectedDisabledBrushProperty();
    }
    pub fn get_CheckBoxBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckBoxBorderBrushProperty();
    }
    pub fn get_CheckBoxPointerOverBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckBoxPointerOverBorderBrushProperty();
    }
    pub fn get_CheckBoxPressedBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckBoxPressedBorderBrushProperty();
    }
    pub fn get_CheckBoxDisabledBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckBoxDisabledBorderBrushProperty();
    }
    pub fn get_CheckBoxCornerRadiusProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getCheckBoxCornerRadiusProperty();
    }
    pub fn get_SelectionIndicatorCornerRadiusProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getSelectionIndicatorCornerRadiusProperty();
    }
    pub fn get_SelectionIndicatorVisualEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getSelectionIndicatorVisualEnabledProperty();
    }
    pub fn get_SelectionIndicatorModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getSelectionIndicatorModeProperty();
    }
    pub fn get_SelectionIndicatorBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getSelectionIndicatorBrushProperty();
    }
    pub fn get_SelectionIndicatorPointerOverBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getSelectionIndicatorPointerOverBrushProperty();
    }
    pub fn get_SelectionIndicatorPressedBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getSelectionIndicatorPressedBrushProperty();
    }
    pub fn get_SelectionIndicatorDisabledBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getSelectionIndicatorDisabledBrushProperty();
    }
    pub fn get_SelectedBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getSelectedBorderBrushProperty();
    }
    pub fn get_SelectedPressedBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getSelectedPressedBorderBrushProperty();
    }
    pub fn get_SelectedDisabledBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getSelectedDisabledBorderBrushProperty();
    }
    pub fn get_SelectedInnerBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getSelectedInnerBorderBrushProperty();
    }
    pub fn get_PointerOverBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics4Cache.get();
        return try factory.getPointerOverBorderBrushProperty();
    }
    pub fn get_RevealBackgroundProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics3Cache.get();
        return try factory.getRevealBackgroundProperty();
    }
    pub fn get_RevealBorderBrushProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics3Cache.get();
        return try factory.getRevealBorderBrushProperty();
    }
    pub fn get_RevealBorderThicknessProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics3Cache.get();
        return try factory.getRevealBorderThicknessProperty();
    }
    pub fn get_RevealBackgroundShowsAboveContentProperty() core.HResult!*DependencyProperty {
        const factory = @This().IListViewItemPresenterStatics3Cache.get();
        return try factory.getRevealBackgroundShowsAboveContentProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewItemPresenter {
        const factory = @This().IListViewItemPresenterFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ListViewItemPresenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IListViewItemPresenter.GUID;
    pub const IID: Guid = IListViewItemPresenter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IListViewItemPresenter.SIGNATURE);
    var _IListViewItemPresenterStaticsCache: FactoryCache(IListViewItemPresenterStatics, RUNTIME_NAME) = .{};
    var _IListViewItemPresenterStatics2Cache: FactoryCache(IListViewItemPresenterStatics2, RUNTIME_NAME) = .{};
    var _IListViewItemPresenterStatics4Cache: FactoryCache(IListViewItemPresenterStatics4, RUNTIME_NAME) = .{};
    var _IListViewItemPresenterStatics3Cache: FactoryCache(IListViewItemPresenterStatics3, RUNTIME_NAME) = .{};
    var _IListViewItemPresenterFactoryCache: FactoryCache(IListViewItemPresenterFactory, RUNTIME_NAME) = .{};
};
pub const ListViewItemPresenterCheckMode = enum(i32) {
    Inline = 0,
    Overlay = 1,
};
pub const ListViewItemPresenterSelectionIndicatorMode = enum(i32) {
    Inline = 0,
    Overlay = 1,
};
pub const ListViewItemTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDragItemsCount(self: *@This()) core.HResult!i32 {
        const this: *IListViewItemTemplateSettings = @ptrCast(self);
        return try this.getDragItemsCount();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ListViewItemTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IListViewItemTemplateSettings.GUID;
    pub const IID: Guid = IListViewItemTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IListViewItemTemplateSettings.SIGNATURE);
};
pub const LoopingSelector = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getShouldLoop(self: *@This()) core.HResult!bool {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.getShouldLoop();
    }
    pub fn putShouldLoop(self: *@This(), value: bool) core.HResult!void {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.putShouldLoop(value);
    }
    pub fn getItems(self: *@This()) core.HResult!*IVector(IInspectable) {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.getItems();
    }
    pub fn putItems(self: *@This(), value: *IVector(IInspectable)) core.HResult!void {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.putItems(value);
    }
    pub fn getSelectedIndex(self: *@This()) core.HResult!i32 {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.getSelectedIndex();
    }
    pub fn putSelectedIndex(self: *@This(), value: i32) core.HResult!void {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.putSelectedIndex(value);
    }
    pub fn getSelectedItem(self: *@This()) core.HResult!*IInspectable {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.getSelectedItem();
    }
    pub fn putSelectedItem(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.putSelectedItem(value);
    }
    pub fn getItemWidth(self: *@This()) core.HResult!i32 {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.getItemWidth();
    }
    pub fn putItemWidth(self: *@This(), value: i32) core.HResult!void {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.putItemWidth(value);
    }
    pub fn getItemHeight(self: *@This()) core.HResult!i32 {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.getItemHeight();
    }
    pub fn putItemHeight(self: *@This(), value: i32) core.HResult!void {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.putItemHeight(value);
    }
    pub fn getItemTemplate(self: *@This()) core.HResult!*DataTemplate {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.getItemTemplate();
    }
    pub fn putItemTemplate(self: *@This(), value: *DataTemplate) core.HResult!void {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.putItemTemplate(value);
    }
    pub fn addSelectionChanged(self: *@This(), handler: *SelectionChangedEventHandler) core.HResult!EventRegistrationToken {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.addSelectionChanged(handler);
    }
    pub fn removeSelectionChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ILoopingSelector = @ptrCast(self);
        return try this.removeSelectionChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_ShouldLoopProperty() core.HResult!*DependencyProperty {
        const factory = @This().ILoopingSelectorStaticsCache.get();
        return try factory.getShouldLoopProperty();
    }
    pub fn get_ItemsProperty() core.HResult!*DependencyProperty {
        const factory = @This().ILoopingSelectorStaticsCache.get();
        return try factory.getItemsProperty();
    }
    pub fn get_SelectedIndexProperty() core.HResult!*DependencyProperty {
        const factory = @This().ILoopingSelectorStaticsCache.get();
        return try factory.getSelectedIndexProperty();
    }
    pub fn get_SelectedItemProperty() core.HResult!*DependencyProperty {
        const factory = @This().ILoopingSelectorStaticsCache.get();
        return try factory.getSelectedItemProperty();
    }
    pub fn get_ItemWidthProperty() core.HResult!*DependencyProperty {
        const factory = @This().ILoopingSelectorStaticsCache.get();
        return try factory.getItemWidthProperty();
    }
    pub fn get_ItemHeightProperty() core.HResult!*DependencyProperty {
        const factory = @This().ILoopingSelectorStaticsCache.get();
        return try factory.getItemHeightProperty();
    }
    pub fn get_ItemTemplateProperty() core.HResult!*DependencyProperty {
        const factory = @This().ILoopingSelectorStaticsCache.get();
        return try factory.getItemTemplateProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.LoopingSelector";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoopingSelector.GUID;
    pub const IID: Guid = ILoopingSelector.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoopingSelector.SIGNATURE);
    var _ILoopingSelectorStaticsCache: FactoryCache(ILoopingSelectorStatics, RUNTIME_NAME) = .{};
};
pub const LoopingSelectorItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.LoopingSelectorItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoopingSelectorItem.GUID;
    pub const IID: Guid = ILoopingSelectorItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoopingSelectorItem.SIGNATURE);
};
pub const LoopingSelectorPanel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAreHorizontalSnapPointsRegular(self: *@This()) core.HResult!bool {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAreHorizontalSnapPointsRegular();
    }
    pub fn getAreVerticalSnapPointsRegular(self: *@This()) core.HResult!bool {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAreVerticalSnapPointsRegular();
    }
    pub fn addHorizontalSnapPointsChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHorizontalSnapPointsChanged(handler);
    }
    pub fn removeHorizontalSnapPointsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHorizontalSnapPointsChanged(token);
    }
    pub fn addVerticalSnapPointsChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addVerticalSnapPointsChanged(handler);
    }
    pub fn removeVerticalSnapPointsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeVerticalSnapPointsChanged(token);
    }
    pub fn GetIrregularSnapPoints(self: *@This(), orientation: Orientation, alignment: SnapPointsAlignment) core.HResult!*IVectorView(f32) {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIrregularSnapPoints(orientation, alignment);
    }
    pub fn GetRegularSnapPoints(self: *@This(), orientation: Orientation, alignment: SnapPointsAlignment, offset: f32) core.HResult!f32 {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetRegularSnapPoints(orientation, alignment, offset);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.LoopingSelectorPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoopingSelectorPanel.GUID;
    pub const IID: Guid = ILoopingSelectorPanel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoopingSelectorPanel.SIGNATURE);
};
pub const MenuFlyoutItemTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKeyboardAcceleratorTextMinWidth(self: *@This()) core.HResult!f64 {
        const this: *IMenuFlyoutItemTemplateSettings = @ptrCast(self);
        return try this.getKeyboardAcceleratorTextMinWidth();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.MenuFlyoutItemTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMenuFlyoutItemTemplateSettings.GUID;
    pub const IID: Guid = IMenuFlyoutItemTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMenuFlyoutItemTemplateSettings.SIGNATURE);
};
pub const MenuFlyoutPresenterTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFlyoutContentMinWidth(self: *@This()) core.HResult!f64 {
        const this: *IMenuFlyoutPresenterTemplateSettings = @ptrCast(self);
        return try this.getFlyoutContentMinWidth();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.MenuFlyoutPresenterTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMenuFlyoutPresenterTemplateSettings.GUID;
    pub const IID: Guid = IMenuFlyoutPresenterTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMenuFlyoutPresenterTemplateSettings.SIGNATURE);
};
pub const NavigationViewItemPresenter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIcon(self: *@This()) core.HResult!*IconElement {
        const this: *INavigationViewItemPresenter = @ptrCast(self);
        return try this.getIcon();
    }
    pub fn putIcon(self: *@This(), value: *IconElement) core.HResult!void {
        const this: *INavigationViewItemPresenter = @ptrCast(self);
        return try this.putIcon(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_IconProperty() core.HResult!*DependencyProperty {
        const factory = @This().INavigationViewItemPresenterStaticsCache.get();
        return try factory.getIconProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*NavigationViewItemPresenter {
        const factory = @This().INavigationViewItemPresenterFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.NavigationViewItemPresenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INavigationViewItemPresenter.GUID;
    pub const IID: Guid = INavigationViewItemPresenter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INavigationViewItemPresenter.SIGNATURE);
    var _INavigationViewItemPresenterStaticsCache: FactoryCache(INavigationViewItemPresenterStatics, RUNTIME_NAME) = .{};
    var _INavigationViewItemPresenterFactoryCache: FactoryCache(INavigationViewItemPresenterFactory, RUNTIME_NAME) = .{};
};
pub const OrientedVirtualizingPanel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanVerticallyScroll(self: *@This()) core.HResult!bool {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.getCanVerticallyScroll();
    }
    pub fn putCanVerticallyScroll(self: *@This(), value: bool) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.putCanVerticallyScroll(value);
    }
    pub fn getCanHorizontallyScroll(self: *@This()) core.HResult!bool {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.getCanHorizontallyScroll();
    }
    pub fn putCanHorizontallyScroll(self: *@This(), value: bool) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.putCanHorizontallyScroll(value);
    }
    pub fn getExtentWidth(self: *@This()) core.HResult!f64 {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.getExtentWidth();
    }
    pub fn getExtentHeight(self: *@This()) core.HResult!f64 {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.getExtentHeight();
    }
    pub fn getViewportWidth(self: *@This()) core.HResult!f64 {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.getViewportWidth();
    }
    pub fn getViewportHeight(self: *@This()) core.HResult!f64 {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.getViewportHeight();
    }
    pub fn getHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.getHorizontalOffset();
    }
    pub fn getVerticalOffset(self: *@This()) core.HResult!f64 {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.getVerticalOffset();
    }
    pub fn getScrollOwner(self: *@This()) core.HResult!*IInspectable {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.getScrollOwner();
    }
    pub fn putScrollOwner(self: *@This(), value: *IInspectable) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.putScrollOwner(value);
    }
    pub fn LineUp(self: *@This()) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.LineUp();
    }
    pub fn LineDown(self: *@This()) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.LineDown();
    }
    pub fn LineLeft(self: *@This()) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.LineLeft();
    }
    pub fn LineRight(self: *@This()) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.LineRight();
    }
    pub fn PageUp(self: *@This()) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.PageUp();
    }
    pub fn PageDown(self: *@This()) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.PageDown();
    }
    pub fn PageLeft(self: *@This()) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.PageLeft();
    }
    pub fn PageRight(self: *@This()) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.PageRight();
    }
    pub fn MouseWheelUp(self: *@This()) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.MouseWheelUp();
    }
    pub fn MouseWheelDown(self: *@This()) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.MouseWheelDown();
    }
    pub fn MouseWheelLeft(self: *@This()) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.MouseWheelLeft();
    }
    pub fn MouseWheelRight(self: *@This()) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.MouseWheelRight();
    }
    pub fn SetHorizontalOffset(self: *@This(), offset: f64) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.SetHorizontalOffset(offset);
    }
    pub fn SetVerticalOffset(self: *@This(), offset: f64) core.HResult!void {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.SetVerticalOffset(offset);
    }
    pub fn MakeVisible(self: *@This(), visual: *UIElement, rectangle: Rect) core.HResult!Rect {
        const this: *IOrientedVirtualizingPanel = @ptrCast(self);
        return try this.MakeVisible(visual, rectangle);
    }
    pub fn getAreHorizontalSnapPointsRegular(self: *@This()) core.HResult!bool {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAreHorizontalSnapPointsRegular();
    }
    pub fn getAreVerticalSnapPointsRegular(self: *@This()) core.HResult!bool {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAreVerticalSnapPointsRegular();
    }
    pub fn addHorizontalSnapPointsChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHorizontalSnapPointsChanged(handler);
    }
    pub fn removeHorizontalSnapPointsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHorizontalSnapPointsChanged(token);
    }
    pub fn addVerticalSnapPointsChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addVerticalSnapPointsChanged(handler);
    }
    pub fn removeVerticalSnapPointsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeVerticalSnapPointsChanged(token);
    }
    pub fn GetIrregularSnapPoints(self: *@This(), orientation: Orientation, alignment: SnapPointsAlignment) core.HResult!*IVectorView(f32) {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIrregularSnapPoints(orientation, alignment);
    }
    pub fn GetRegularSnapPoints(self: *@This(), orientation: Orientation, alignment: SnapPointsAlignment, offset: f32) core.HResult!f32 {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetRegularSnapPoints(orientation, alignment, offset);
    }
    pub fn GetInsertionIndexes(self: *@This(), position: Point, first: i32, second: i32) core.HResult!void {
        var this: ?*IInsertionPanel = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInsertionPanel.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetInsertionIndexes(position, first, second);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.OrientedVirtualizingPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IOrientedVirtualizingPanel.GUID;
    pub const IID: Guid = IOrientedVirtualizingPanel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IOrientedVirtualizingPanel.SIGNATURE);
    var _IOrientedVirtualizingPanelFactoryCache: FactoryCache(IOrientedVirtualizingPanelFactory, RUNTIME_NAME) = .{};
};
pub const PivotHeaderItem = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PivotHeaderItem {
        const factory = @This().IPivotHeaderItemFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.PivotHeaderItem";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPivotHeaderItem.GUID;
    pub const IID: Guid = IPivotHeaderItem.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPivotHeaderItem.SIGNATURE);
    var _IPivotHeaderItemFactoryCache: FactoryCache(IPivotHeaderItemFactory, RUNTIME_NAME) = .{};
};
pub const PivotHeaderPanel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPivotHeaderPanel.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.PivotHeaderPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPivotHeaderPanel.GUID;
    pub const IID: Guid = IPivotHeaderPanel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPivotHeaderPanel.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PivotPanel = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAreHorizontalSnapPointsRegular(self: *@This()) core.HResult!bool {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAreHorizontalSnapPointsRegular();
    }
    pub fn getAreVerticalSnapPointsRegular(self: *@This()) core.HResult!bool {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAreVerticalSnapPointsRegular();
    }
    pub fn addHorizontalSnapPointsChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHorizontalSnapPointsChanged(handler);
    }
    pub fn removeHorizontalSnapPointsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHorizontalSnapPointsChanged(token);
    }
    pub fn addVerticalSnapPointsChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addVerticalSnapPointsChanged(handler);
    }
    pub fn removeVerticalSnapPointsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeVerticalSnapPointsChanged(token);
    }
    pub fn GetIrregularSnapPoints(self: *@This(), orientation: Orientation, alignment: SnapPointsAlignment) core.HResult!*IVectorView(f32) {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetIrregularSnapPoints(orientation, alignment);
    }
    pub fn GetRegularSnapPoints(self: *@This(), orientation: Orientation, alignment: SnapPointsAlignment, offset: f32) core.HResult!f32 {
        var this: ?*IScrollSnapPointsInfo = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollSnapPointsInfo.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetRegularSnapPoints(orientation, alignment, offset);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPivotPanel.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.PivotPanel";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPivotPanel.GUID;
    pub const IID: Guid = IPivotPanel.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPivotPanel.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const PlacementMode = enum(i32) {
    Bottom = 2,
    Left = 9,
    Mouse = 7,
    Right = 4,
    Top = 10,
};
pub const Popup = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getChild(self: *@This()) core.HResult!*UIElement {
        const this: *IPopup = @ptrCast(self);
        return try this.getChild();
    }
    pub fn putChild(self: *@This(), value: *UIElement) core.HResult!void {
        const this: *IPopup = @ptrCast(self);
        return try this.putChild(value);
    }
    pub fn getIsOpen(self: *@This()) core.HResult!bool {
        const this: *IPopup = @ptrCast(self);
        return try this.getIsOpen();
    }
    pub fn putIsOpen(self: *@This(), value: bool) core.HResult!void {
        const this: *IPopup = @ptrCast(self);
        return try this.putIsOpen(value);
    }
    pub fn getHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *IPopup = @ptrCast(self);
        return try this.getHorizontalOffset();
    }
    pub fn putHorizontalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IPopup = @ptrCast(self);
        return try this.putHorizontalOffset(value);
    }
    pub fn getVerticalOffset(self: *@This()) core.HResult!f64 {
        const this: *IPopup = @ptrCast(self);
        return try this.getVerticalOffset();
    }
    pub fn putVerticalOffset(self: *@This(), value: f64) core.HResult!void {
        const this: *IPopup = @ptrCast(self);
        return try this.putVerticalOffset(value);
    }
    pub fn getChildTransitions(self: *@This()) core.HResult!*TransitionCollection {
        const this: *IPopup = @ptrCast(self);
        return try this.getChildTransitions();
    }
    pub fn putChildTransitions(self: *@This(), value: *TransitionCollection) core.HResult!void {
        const this: *IPopup = @ptrCast(self);
        return try this.putChildTransitions(value);
    }
    pub fn getIsLightDismissEnabled(self: *@This()) core.HResult!bool {
        const this: *IPopup = @ptrCast(self);
        return try this.getIsLightDismissEnabled();
    }
    pub fn putIsLightDismissEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IPopup = @ptrCast(self);
        return try this.putIsLightDismissEnabled(value);
    }
    pub fn addOpened(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPopup = @ptrCast(self);
        return try this.addOpened(handler);
    }
    pub fn removeOpened(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPopup = @ptrCast(self);
        return try this.removeOpened(token);
    }
    pub fn addClosed(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IPopup = @ptrCast(self);
        return try this.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IPopup = @ptrCast(self);
        return try this.removeClosed(token);
    }
    pub fn getLightDismissOverlayMode(self: *@This()) core.HResult!LightDismissOverlayMode {
        var this: ?*IPopup2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPopup2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLightDismissOverlayMode();
    }
    pub fn putLightDismissOverlayMode(self: *@This(), value: LightDismissOverlayMode) core.HResult!void {
        var this: ?*IPopup2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPopup2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putLightDismissOverlayMode(value);
    }
    pub fn getShouldConstrainToRootBounds(self: *@This()) core.HResult!bool {
        var this: ?*IPopup3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPopup3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getShouldConstrainToRootBounds();
    }
    pub fn putShouldConstrainToRootBounds(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IPopup3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPopup3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putShouldConstrainToRootBounds(value);
    }
    pub fn getIsConstrainedToRootBounds(self: *@This()) core.HResult!bool {
        var this: ?*IPopup3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPopup3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsConstrainedToRootBounds();
    }
    pub fn getPlacementTarget(self: *@This()) core.HResult!*FrameworkElement {
        var this: ?*IPopup4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPopup4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPlacementTarget();
    }
    pub fn putPlacementTarget(self: *@This(), value: *FrameworkElement) core.HResult!void {
        var this: ?*IPopup4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPopup4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPlacementTarget(value);
    }
    pub fn getDesiredPlacement(self: *@This()) core.HResult!PopupPlacementMode {
        var this: ?*IPopup4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPopup4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDesiredPlacement();
    }
    pub fn putDesiredPlacement(self: *@This(), value: PopupPlacementMode) core.HResult!void {
        var this: ?*IPopup4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPopup4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putDesiredPlacement(value);
    }
    pub fn getActualPlacement(self: *@This()) core.HResult!PopupPlacementMode {
        var this: ?*IPopup4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPopup4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getActualPlacement();
    }
    pub fn addActualPlacementChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IPopup4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPopup4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addActualPlacementChanged(handler);
    }
    pub fn removeActualPlacementChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IPopup4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPopup4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeActualPlacementChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IPopup.IID)));
    }
    pub fn get_PlacementTargetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPopupStatics4Cache.get();
        return try factory.getPlacementTargetProperty();
    }
    pub fn get_DesiredPlacementProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPopupStatics4Cache.get();
        return try factory.getDesiredPlacementProperty();
    }
    pub fn get_ShouldConstrainToRootBoundsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPopupStatics3Cache.get();
        return try factory.getShouldConstrainToRootBoundsProperty();
    }
    pub fn get_LightDismissOverlayModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPopupStatics2Cache.get();
        return try factory.getLightDismissOverlayModeProperty();
    }
    pub fn get_ChildProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPopupStaticsCache.get();
        return try factory.getChildProperty();
    }
    pub fn get_IsOpenProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPopupStaticsCache.get();
        return try factory.getIsOpenProperty();
    }
    pub fn get_HorizontalOffsetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPopupStaticsCache.get();
        return try factory.getHorizontalOffsetProperty();
    }
    pub fn get_VerticalOffsetProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPopupStaticsCache.get();
        return try factory.getVerticalOffsetProperty();
    }
    pub fn get_ChildTransitionsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPopupStaticsCache.get();
        return try factory.getChildTransitionsProperty();
    }
    pub fn get_IsLightDismissEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IPopupStaticsCache.get();
        return try factory.getIsLightDismissEnabledProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.Popup";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPopup.GUID;
    pub const IID: Guid = IPopup.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPopup.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IPopupStatics4Cache: FactoryCache(IPopupStatics4, RUNTIME_NAME) = .{};
    var _IPopupStatics3Cache: FactoryCache(IPopupStatics3, RUNTIME_NAME) = .{};
    var _IPopupStatics2Cache: FactoryCache(IPopupStatics2, RUNTIME_NAME) = .{};
    var _IPopupStaticsCache: FactoryCache(IPopupStatics, RUNTIME_NAME) = .{};
};
pub const PopupPlacementMode = enum(i32) {
    Auto = 0,
    Top = 1,
    Bottom = 2,
    Left = 3,
    Right = 4,
    TopEdgeAlignedLeft = 5,
    TopEdgeAlignedRight = 6,
    BottomEdgeAlignedLeft = 7,
    BottomEdgeAlignedRight = 8,
    LeftEdgeAlignedTop = 9,
    LeftEdgeAlignedBottom = 10,
    RightEdgeAlignedTop = 11,
    RightEdgeAlignedBottom = 12,
};
pub const ProgressBarTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEllipseDiameter(self: *@This()) core.HResult!f64 {
        const this: *IProgressBarTemplateSettings = @ptrCast(self);
        return try this.getEllipseDiameter();
    }
    pub fn getEllipseOffset(self: *@This()) core.HResult!f64 {
        const this: *IProgressBarTemplateSettings = @ptrCast(self);
        return try this.getEllipseOffset();
    }
    pub fn getEllipseAnimationWellPosition(self: *@This()) core.HResult!f64 {
        const this: *IProgressBarTemplateSettings = @ptrCast(self);
        return try this.getEllipseAnimationWellPosition();
    }
    pub fn getEllipseAnimationEndPosition(self: *@This()) core.HResult!f64 {
        const this: *IProgressBarTemplateSettings = @ptrCast(self);
        return try this.getEllipseAnimationEndPosition();
    }
    pub fn getContainerAnimationStartPosition(self: *@This()) core.HResult!f64 {
        const this: *IProgressBarTemplateSettings = @ptrCast(self);
        return try this.getContainerAnimationStartPosition();
    }
    pub fn getContainerAnimationEndPosition(self: *@This()) core.HResult!f64 {
        const this: *IProgressBarTemplateSettings = @ptrCast(self);
        return try this.getContainerAnimationEndPosition();
    }
    pub fn getIndicatorLengthDelta(self: *@This()) core.HResult!f64 {
        const this: *IProgressBarTemplateSettings = @ptrCast(self);
        return try this.getIndicatorLengthDelta();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ProgressBarTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProgressBarTemplateSettings.GUID;
    pub const IID: Guid = IProgressBarTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProgressBarTemplateSettings.SIGNATURE);
};
pub const ProgressRingTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEllipseDiameter(self: *@This()) core.HResult!f64 {
        const this: *IProgressRingTemplateSettings = @ptrCast(self);
        return try this.getEllipseDiameter();
    }
    pub fn getEllipseOffset(self: *@This()) core.HResult!Thickness {
        const this: *IProgressRingTemplateSettings = @ptrCast(self);
        return try this.getEllipseOffset();
    }
    pub fn getMaxSideLength(self: *@This()) core.HResult!f64 {
        const this: *IProgressRingTemplateSettings = @ptrCast(self);
        return try this.getMaxSideLength();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ProgressRingTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProgressRingTemplateSettings.GUID;
    pub const IID: Guid = IProgressRingTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProgressRingTemplateSettings.SIGNATURE);
};
pub const RangeBaseValueChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOldValue(self: *@This()) core.HResult!f64 {
        const this: *IRangeBaseValueChangedEventArgs = @ptrCast(self);
        return try this.getOldValue();
    }
    pub fn getNewValue(self: *@This()) core.HResult!f64 {
        const this: *IRangeBaseValueChangedEventArgs = @ptrCast(self);
        return try this.getNewValue();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.RangeBaseValueChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRangeBaseValueChangedEventArgs.GUID;
    pub const IID: Guid = IRangeBaseValueChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRangeBaseValueChangedEventArgs.SIGNATURE);
};
pub const RangeBaseValueChangedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *RangeBaseValueChangedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *RangeBaseValueChangedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *RangeBaseValueChangedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.RangeBaseValueChangedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3906fd9-4d1b-4ac8-a43c-c3b908742799";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *RangeBaseValueChangedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const RepeatButton = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDelay(self: *@This()) core.HResult!i32 {
        const this: *IRepeatButton = @ptrCast(self);
        return try this.getDelay();
    }
    pub fn putDelay(self: *@This(), value: i32) core.HResult!void {
        const this: *IRepeatButton = @ptrCast(self);
        return try this.putDelay(value);
    }
    pub fn getInterval(self: *@This()) core.HResult!i32 {
        const this: *IRepeatButton = @ptrCast(self);
        return try this.getInterval();
    }
    pub fn putInterval(self: *@This(), value: i32) core.HResult!void {
        const this: *IRepeatButton = @ptrCast(self);
        return try this.putInterval(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRepeatButton.IID)));
    }
    pub fn get_DelayProperty() core.HResult!*DependencyProperty {
        const factory = @This().IRepeatButtonStaticsCache.get();
        return try factory.getDelayProperty();
    }
    pub fn get_IntervalProperty() core.HResult!*DependencyProperty {
        const factory = @This().IRepeatButtonStaticsCache.get();
        return try factory.getIntervalProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.RepeatButton";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRepeatButton.GUID;
    pub const IID: Guid = IRepeatButton.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRepeatButton.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IRepeatButtonStaticsCache: FactoryCache(IRepeatButtonStatics, RUNTIME_NAME) = .{};
};
pub const ScrollBar = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOrientation(self: *@This()) core.HResult!Orientation {
        const this: *IScrollBar = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn putOrientation(self: *@This(), value: Orientation) core.HResult!void {
        const this: *IScrollBar = @ptrCast(self);
        return try this.putOrientation(value);
    }
    pub fn getViewportSize(self: *@This()) core.HResult!f64 {
        const this: *IScrollBar = @ptrCast(self);
        return try this.getViewportSize();
    }
    pub fn putViewportSize(self: *@This(), value: f64) core.HResult!void {
        const this: *IScrollBar = @ptrCast(self);
        return try this.putViewportSize(value);
    }
    pub fn getIndicatorMode(self: *@This()) core.HResult!ScrollingIndicatorMode {
        const this: *IScrollBar = @ptrCast(self);
        return try this.getIndicatorMode();
    }
    pub fn putIndicatorMode(self: *@This(), value: ScrollingIndicatorMode) core.HResult!void {
        const this: *IScrollBar = @ptrCast(self);
        return try this.putIndicatorMode(value);
    }
    pub fn addScroll(self: *@This(), handler: *ScrollEventHandler) core.HResult!EventRegistrationToken {
        const this: *IScrollBar = @ptrCast(self);
        return try this.addScroll(handler);
    }
    pub fn removeScroll(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IScrollBar = @ptrCast(self);
        return try this.removeScroll(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IScrollBar.IID)));
    }
    pub fn get_OrientationProperty() core.HResult!*DependencyProperty {
        const factory = @This().IScrollBarStaticsCache.get();
        return try factory.getOrientationProperty();
    }
    pub fn get_ViewportSizeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IScrollBarStaticsCache.get();
        return try factory.getViewportSizeProperty();
    }
    pub fn get_IndicatorModeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IScrollBarStaticsCache.get();
        return try factory.getIndicatorModeProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ScrollBar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScrollBar.GUID;
    pub const IID: Guid = IScrollBar.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScrollBar.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IScrollBarStaticsCache: FactoryCache(IScrollBarStatics, RUNTIME_NAME) = .{};
};
pub const ScrollEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNewValue(self: *@This()) core.HResult!f64 {
        const this: *IScrollEventArgs = @ptrCast(self);
        return try this.getNewValue();
    }
    pub fn getScrollEventType(self: *@This()) core.HResult!ScrollEventType {
        const this: *IScrollEventArgs = @ptrCast(self);
        return try this.getScrollEventType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IScrollEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ScrollEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScrollEventArgs.GUID;
    pub const IID: Guid = IScrollEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScrollEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ScrollEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ScrollEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ScrollEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *ScrollEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ScrollEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8860b0a4-a383-4c83-b306-a1c39d7db87f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *ScrollEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const ScrollEventType = enum(i32) {
    SmallDecrement = 0,
    SmallIncrement = 1,
    LargeDecrement = 2,
    LargeIncrement = 3,
    ThumbPosition = 4,
    ThumbTrack = 5,
    First = 6,
    Last = 7,
    EndScroll = 8,
};
pub const ScrollingIndicatorMode = enum(i32) {
    None = 0,
    TouchIndicator = 1,
    MouseIndicator = 2,
};
pub const SettingsFlyoutTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHeaderBackground(self: *@This()) core.HResult!*Brush {
        const this: *ISettingsFlyoutTemplateSettings = @ptrCast(self);
        return try this.getHeaderBackground();
    }
    pub fn getHeaderForeground(self: *@This()) core.HResult!*Brush {
        const this: *ISettingsFlyoutTemplateSettings = @ptrCast(self);
        return try this.getHeaderForeground();
    }
    pub fn getBorderBrush(self: *@This()) core.HResult!*Brush {
        const this: *ISettingsFlyoutTemplateSettings = @ptrCast(self);
        return try this.getBorderBrush();
    }
    pub fn getBorderThickness(self: *@This()) core.HResult!Thickness {
        const this: *ISettingsFlyoutTemplateSettings = @ptrCast(self);
        return try this.getBorderThickness();
    }
    pub fn getIconSource(self: *@This()) core.HResult!*ImageSource {
        const this: *ISettingsFlyoutTemplateSettings = @ptrCast(self);
        return try this.getIconSource();
    }
    pub fn getContentTransitions(self: *@This()) core.HResult!*TransitionCollection {
        const this: *ISettingsFlyoutTemplateSettings = @ptrCast(self);
        return try this.getContentTransitions();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.SettingsFlyoutTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISettingsFlyoutTemplateSettings.GUID;
    pub const IID: Guid = ISettingsFlyoutTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISettingsFlyoutTemplateSettings.SIGNATURE);
};
pub const SliderSnapsTo = enum(i32) {
    StepValues = 0,
    Ticks = 1,
};
pub const SnapPointsAlignment = enum(i32) {
    Near = 0,
    Center = 1,
    Far = 2,
};
pub const SplitViewTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOpenPaneLength(self: *@This()) core.HResult!f64 {
        const this: *ISplitViewTemplateSettings = @ptrCast(self);
        return try this.getOpenPaneLength();
    }
    pub fn getNegativeOpenPaneLength(self: *@This()) core.HResult!f64 {
        const this: *ISplitViewTemplateSettings = @ptrCast(self);
        return try this.getNegativeOpenPaneLength();
    }
    pub fn getOpenPaneLengthMinusCompactLength(self: *@This()) core.HResult!f64 {
        const this: *ISplitViewTemplateSettings = @ptrCast(self);
        return try this.getOpenPaneLengthMinusCompactLength();
    }
    pub fn getNegativeOpenPaneLengthMinusCompactLength(self: *@This()) core.HResult!f64 {
        const this: *ISplitViewTemplateSettings = @ptrCast(self);
        return try this.getNegativeOpenPaneLengthMinusCompactLength();
    }
    pub fn getOpenPaneGridLength(self: *@This()) core.HResult!GridLength {
        const this: *ISplitViewTemplateSettings = @ptrCast(self);
        return try this.getOpenPaneGridLength();
    }
    pub fn getCompactPaneGridLength(self: *@This()) core.HResult!GridLength {
        const this: *ISplitViewTemplateSettings = @ptrCast(self);
        return try this.getCompactPaneGridLength();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.SplitViewTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISplitViewTemplateSettings.GUID;
    pub const IID: Guid = ISplitViewTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISplitViewTemplateSettings.SIGNATURE);
};
pub const Thumb = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsDragging(self: *@This()) core.HResult!bool {
        const this: *IThumb = @ptrCast(self);
        return try this.getIsDragging();
    }
    pub fn addDragStarted(self: *@This(), handler: *DragStartedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IThumb = @ptrCast(self);
        return try this.addDragStarted(handler);
    }
    pub fn removeDragStarted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IThumb = @ptrCast(self);
        return try this.removeDragStarted(token);
    }
    pub fn addDragDelta(self: *@This(), handler: *DragDeltaEventHandler) core.HResult!EventRegistrationToken {
        const this: *IThumb = @ptrCast(self);
        return try this.addDragDelta(handler);
    }
    pub fn removeDragDelta(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IThumb = @ptrCast(self);
        return try this.removeDragDelta(token);
    }
    pub fn addDragCompleted(self: *@This(), handler: *DragCompletedEventHandler) core.HResult!EventRegistrationToken {
        const this: *IThumb = @ptrCast(self);
        return try this.addDragCompleted(handler);
    }
    pub fn removeDragCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IThumb = @ptrCast(self);
        return try this.removeDragCompleted(token);
    }
    pub fn CancelDrag(self: *@This()) core.HResult!void {
        const this: *IThumb = @ptrCast(self);
        return try this.CancelDrag();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IThumb.IID)));
    }
    pub fn get_IsDraggingProperty() core.HResult!*DependencyProperty {
        const factory = @This().IThumbStaticsCache.get();
        return try factory.getIsDraggingProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.Thumb";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IThumb.GUID;
    pub const IID: Guid = IThumb.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IThumb.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IThumbStaticsCache: FactoryCache(IThumbStatics, RUNTIME_NAME) = .{};
};
pub const TickBar = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFill(self: *@This()) core.HResult!*Brush {
        const this: *ITickBar = @ptrCast(self);
        return try this.getFill();
    }
    pub fn putFill(self: *@This(), value: *Brush) core.HResult!void {
        const this: *ITickBar = @ptrCast(self);
        return try this.putFill(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ITickBar.IID)));
    }
    pub fn get_FillProperty() core.HResult!*DependencyProperty {
        const factory = @This().ITickBarStaticsCache.get();
        return try factory.getFillProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.TickBar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITickBar.GUID;
    pub const IID: Guid = ITickBar.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITickBar.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _ITickBarStaticsCache: FactoryCache(ITickBarStatics, RUNTIME_NAME) = .{};
};
pub const TickPlacement = enum(i32) {
    None = 0,
    TopLeft = 1,
    BottomRight = 2,
    Outside = 3,
    Inline = 4,
};
pub const ToggleSwitchTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKnobCurrentToOnOffset(self: *@This()) core.HResult!f64 {
        const this: *IToggleSwitchTemplateSettings = @ptrCast(self);
        return try this.getKnobCurrentToOnOffset();
    }
    pub fn getKnobCurrentToOffOffset(self: *@This()) core.HResult!f64 {
        const this: *IToggleSwitchTemplateSettings = @ptrCast(self);
        return try this.getKnobCurrentToOffOffset();
    }
    pub fn getKnobOnToOffOffset(self: *@This()) core.HResult!f64 {
        const this: *IToggleSwitchTemplateSettings = @ptrCast(self);
        return try this.getKnobOnToOffOffset();
    }
    pub fn getKnobOffToOnOffset(self: *@This()) core.HResult!f64 {
        const this: *IToggleSwitchTemplateSettings = @ptrCast(self);
        return try this.getKnobOffToOnOffset();
    }
    pub fn getCurtainCurrentToOnOffset(self: *@This()) core.HResult!f64 {
        const this: *IToggleSwitchTemplateSettings = @ptrCast(self);
        return try this.getCurtainCurrentToOnOffset();
    }
    pub fn getCurtainCurrentToOffOffset(self: *@This()) core.HResult!f64 {
        const this: *IToggleSwitchTemplateSettings = @ptrCast(self);
        return try this.getCurtainCurrentToOffOffset();
    }
    pub fn getCurtainOnToOffOffset(self: *@This()) core.HResult!f64 {
        const this: *IToggleSwitchTemplateSettings = @ptrCast(self);
        return try this.getCurtainOnToOffOffset();
    }
    pub fn getCurtainOffToOnOffset(self: *@This()) core.HResult!f64 {
        const this: *IToggleSwitchTemplateSettings = @ptrCast(self);
        return try this.getCurtainOffToOnOffset();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ToggleSwitchTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToggleSwitchTemplateSettings.GUID;
    pub const IID: Guid = IToggleSwitchTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToggleSwitchTemplateSettings.SIGNATURE);
};
pub const ToolTipTemplateSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getFromHorizontalOffset(self: *@This()) core.HResult!f64 {
        const this: *IToolTipTemplateSettings = @ptrCast(self);
        return try this.getFromHorizontalOffset();
    }
    pub fn getFromVerticalOffset(self: *@This()) core.HResult!f64 {
        const this: *IToolTipTemplateSettings = @ptrCast(self);
        return try this.getFromVerticalOffset();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Controls.Primitives.ToolTipTemplateSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToolTipTemplateSettings.GUID;
    pub const IID: Guid = IToolTipTemplateSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToolTipTemplateSettings.SIGNATURE);
};
const IUnknown = @import("../../../root.zig").IUnknown;
const IActivationFactory = @import("../../../Foundation.zig").IActivationFactory;
const GridLength = @import("../../Xaml.zig").GridLength;
const HorizontalAlignment = @import("../../Xaml.zig").HorizontalAlignment;
const Control = @import("../Controls.zig").Control;
const ProcessKeyboardAcceleratorEventArgs = @import("../Input.zig").ProcessKeyboardAcceleratorEventArgs;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const UIElement = @import("../../Xaml.zig").UIElement;
const ClickMode = @import("../Controls.zig").ClickMode;
const EventRegistrationToken = @import("../../../Foundation.zig").EventRegistrationToken;
const CornerRadius = @import("../../Xaml.zig").CornerRadius;
const IVectorView = @import("../../../Foundation/Collections.zig").IVectorView;
const ColorChangedEventArgs = @import("../Controls.zig").ColorChangedEventArgs;
const IReference = @import("../../../Foundation.zig").IReference;
const Point = @import("../../../Foundation.zig").Point;
const ColorSpectrumShape = @import("../Controls.zig").ColorSpectrumShape;
const ImageSource = @import("../Media.zig").ImageSource;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const Rect = @import("../../../Foundation.zig").Rect;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const IAgileObject = @import("../../../root.zig").IAgileObject;
const SelectionChangedEventHandler = @import("../Controls.zig").SelectionChangedEventHandler;
const ICommand = @import("../Input.zig").ICommand;
const Thickness = @import("../../Xaml.zig").Thickness;
const DataTemplate = @import("../../Xaml.zig").DataTemplate;
const IconElement = @import("../Controls.zig").IconElement;
const RoutedEventHandler = @import("../../Xaml.zig").RoutedEventHandler;
const Guid = @import("../../../root.zig").Guid;
const Size = @import("../../../Foundation.zig").Size;
const IVector = @import("../../../Foundation/Collections.zig").IVector;
const VerticalAlignment = @import("../../Xaml.zig").VerticalAlignment;
const TransitionCollection = @import("../Media/Animation.zig").TransitionCollection;
const DependencyProperty = @import("../../Xaml.zig").DependencyProperty;
const ElementSoundMode = @import("../../Xaml.zig").ElementSoundMode;
const DependencyObject = @import("../../Xaml.zig").DependencyObject;
const IValueConverter = @import("../Data.zig").IValueConverter;
const TypeName = @import("../Interop.zig").TypeName;
const XamlRoot = @import("../../Xaml.zig").XamlRoot;
const HRESULT = @import("../../../root.zig").HRESULT;
const Brush = @import("../Media.zig").Brush;
const LightDismissOverlayMode = @import("../Controls.zig").LightDismissOverlayMode;
const IInsertionPanel = @import("../Controls.zig").IInsertionPanel;
const Visibility = @import("../../Xaml.zig").Visibility;
const ColorSpectrumComponents = @import("../Controls.zig").ColorSpectrumComponents;
const ColorPickerHsvChannel = @import("../Controls.zig").ColorPickerHsvChannel;
const TypedEventHandler = @import("../../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../../root.zig").HSTRING;
const Vector4 = @import("../../../Foundation/Numerics.zig").Vector4;
const Color = @import("../../../UI.zig").Color;
const FrameworkElement = @import("../../Xaml.zig").FrameworkElement;
const Orientation = @import("../Controls.zig").Orientation;
const EventHandler = @import("../../../Foundation.zig").EventHandler;
const core = @import("../../../root.zig").core;
