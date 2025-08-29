pub const AccessibilityView = enum(i32) {
    Raw = 0,
    Control = 1,
    Content = 2,
};
pub const AutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getEventsSource(self: *@This()) core.HResult!*AutomationPeer {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.getEventsSource();
    }
    pub fn putEventsSource(self: *@This(), value: *AutomationPeer) core.HResult!void {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.putEventsSource(value);
    }
    pub fn GetPattern(self: *@This(), patternInterface: PatternInterface) core.HResult!*IInspectable {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetPattern(patternInterface);
    }
    pub fn RaiseAutomationEvent(self: *@This(), eventId: AutomationEvents) core.HResult!void {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.RaiseAutomationEvent(eventId);
    }
    pub fn RaisePropertyChangedEvent(self: *@This(), automationProperty: *AutomationProperty, oldValue: *IInspectable, newValue: *IInspectable) core.HResult!void {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.RaisePropertyChangedEvent(automationProperty, oldValue, newValue);
    }
    pub fn GetAcceleratorKey(self: *@This()) core.HResult!HSTRING {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetAcceleratorKey();
    }
    pub fn GetAccessKey(self: *@This()) core.HResult!HSTRING {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetAccessKey();
    }
    pub fn GetAutomationControlType(self: *@This()) core.HResult!AutomationControlType {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetAutomationControlType();
    }
    pub fn GetAutomationId(self: *@This()) core.HResult!HSTRING {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetAutomationId();
    }
    pub fn GetBoundingRectangle(self: *@This()) core.HResult!Rect {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetBoundingRectangle();
    }
    pub fn GetChildren(self: *@This()) core.HResult!*IVector(AutomationPeer) {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetChildren();
    }
    pub fn GetClassName(self: *@This()) core.HResult!HSTRING {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetClassName();
    }
    pub fn GetClickablePoint(self: *@This()) core.HResult!Point {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetClickablePoint();
    }
    pub fn GetHelpText(self: *@This()) core.HResult!HSTRING {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetHelpText();
    }
    pub fn GetItemStatus(self: *@This()) core.HResult!HSTRING {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetItemStatus();
    }
    pub fn GetItemType(self: *@This()) core.HResult!HSTRING {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetItemType();
    }
    pub fn GetLabeledBy(self: *@This()) core.HResult!*AutomationPeer {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetLabeledBy();
    }
    pub fn GetLocalizedControlType(self: *@This()) core.HResult!HSTRING {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetLocalizedControlType();
    }
    pub fn GetName(self: *@This()) core.HResult!HSTRING {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetName();
    }
    pub fn GetOrientation(self: *@This()) core.HResult!AutomationOrientation {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetOrientation();
    }
    pub fn HasKeyboardFocus(self: *@This()) core.HResult!bool {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.HasKeyboardFocus();
    }
    pub fn IsContentElement(self: *@This()) core.HResult!bool {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.IsContentElement();
    }
    pub fn IsControlElement(self: *@This()) core.HResult!bool {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.IsControlElement();
    }
    pub fn IsEnabled(self: *@This()) core.HResult!bool {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.IsEnabled();
    }
    pub fn IsKeyboardFocusable(self: *@This()) core.HResult!bool {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.IsKeyboardFocusable();
    }
    pub fn IsOffscreen(self: *@This()) core.HResult!bool {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.IsOffscreen();
    }
    pub fn IsPassword(self: *@This()) core.HResult!bool {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.IsPassword();
    }
    pub fn IsRequiredForForm(self: *@This()) core.HResult!bool {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.IsRequiredForForm();
    }
    pub fn SetFocus(self: *@This()) core.HResult!void {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.SetFocus();
    }
    pub fn GetParent(self: *@This()) core.HResult!*AutomationPeer {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetParent();
    }
    pub fn InvalidatePeer(self: *@This()) core.HResult!void {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.InvalidatePeer();
    }
    pub fn GetPeerFromPoint(self: *@This(), point: Point) core.HResult!*AutomationPeer {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetPeerFromPoint(point);
    }
    pub fn GetLiveSetting(self: *@This()) core.HResult!AutomationLiveSetting {
        const this: *IAutomationPeer = @ptrCast(self);
        return try this.GetLiveSetting();
    }
    pub fn Navigate(self: *@This(), direction: AutomationNavigationDirection) core.HResult!*IInspectable {
        var this: ?*IAutomationPeer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Navigate(direction);
    }
    pub fn GetElementFromPoint(self: *@This(), pointInWindowCoordinates: Point) core.HResult!*IInspectable {
        var this: ?*IAutomationPeer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetElementFromPoint(pointInWindowCoordinates);
    }
    pub fn GetFocusedElement(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IAutomationPeer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFocusedElement();
    }
    pub fn ShowContextMenu(self: *@This()) core.HResult!void {
        var this: ?*IAutomationPeer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShowContextMenu();
    }
    pub fn GetControlledPeers(self: *@This()) core.HResult!*IVectorView(AutomationPeer) {
        var this: ?*IAutomationPeer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetControlledPeers();
    }
    pub fn GetAnnotations(self: *@This()) core.HResult!*IVector(AutomationPeerAnnotation) {
        var this: ?*IAutomationPeer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAnnotations();
    }
    pub fn SetParent(self: *@This(), peer: *AutomationPeer) core.HResult!void {
        var this: ?*IAutomationPeer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetParent(peer);
    }
    pub fn RaiseTextEditTextChangedEvent(self: *@This(), automationTextEditChangeType: AutomationTextEditChangeType, changedData: *IVectorView(HSTRING)) core.HResult!void {
        var this: ?*IAutomationPeer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RaiseTextEditTextChangedEvent(automationTextEditChangeType, changedData);
    }
    pub fn GetPositionInSet(self: *@This()) core.HResult!i32 {
        var this: ?*IAutomationPeer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPositionInSet();
    }
    pub fn GetSizeOfSet(self: *@This()) core.HResult!i32 {
        var this: ?*IAutomationPeer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSizeOfSet();
    }
    pub fn GetLevel(self: *@This()) core.HResult!i32 {
        var this: ?*IAutomationPeer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetLevel();
    }
    pub fn RaiseStructureChangedEvent(self: *@This(), structureChangeType: AutomationStructureChangeType, child: *AutomationPeer) core.HResult!void {
        var this: ?*IAutomationPeer3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RaiseStructureChangedEvent(structureChangeType, child);
    }
    pub fn GetLandmarkType(self: *@This()) core.HResult!AutomationLandmarkType {
        var this: ?*IAutomationPeer4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetLandmarkType();
    }
    pub fn GetLocalizedLandmarkType(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAutomationPeer4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetLocalizedLandmarkType();
    }
    pub fn IsPeripheral(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeer5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsPeripheral();
    }
    pub fn IsDataValidForForm(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeer5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsDataValidForForm();
    }
    pub fn GetFullDescription(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAutomationPeer5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFullDescription();
    }
    pub fn GetCulture(self: *@This()) core.HResult!i32 {
        var this: ?*IAutomationPeer6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCulture();
    }
    pub fn RaiseNotificationEvent(self: *@This(), notificationKind: AutomationNotificationKind, notificationProcessing: AutomationNotificationProcessing, displayString: HSTRING, activityId: HSTRING) core.HResult!void {
        var this: ?*IAutomationPeer7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RaiseNotificationEvent(notificationKind, notificationProcessing, displayString, activityId);
    }
    pub fn GetHeadingLevel(self: *@This()) core.HResult!AutomationHeadingLevel {
        var this: ?*IAutomationPeer8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetHeadingLevel();
    }
    pub fn IsDialog(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeer9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeer9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsDialog();
    }
    pub fn PeerFromProvider(self: *@This(), provider: *IRawElementProviderSimple) core.HResult!*AutomationPeer {
        var this: ?*IAutomationPeerProtected = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerProtected.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.PeerFromProvider(provider);
    }
    pub fn ProviderFromPeer(self: *@This(), peer: *AutomationPeer) core.HResult!*IRawElementProviderSimple {
        var this: ?*IAutomationPeerProtected = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerProtected.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ProviderFromPeer(peer);
    }
    pub fn GetPatternCore(self: *@This(), patternInterface: PatternInterface) core.HResult!*IInspectable {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPatternCore(patternInterface);
    }
    pub fn GetAcceleratorKeyCore(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAcceleratorKeyCore();
    }
    pub fn GetAccessKeyCore(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAccessKeyCore();
    }
    pub fn GetAutomationControlTypeCore(self: *@This()) core.HResult!AutomationControlType {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAutomationControlTypeCore();
    }
    pub fn GetAutomationIdCore(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAutomationIdCore();
    }
    pub fn GetBoundingRectangleCore(self: *@This()) core.HResult!Rect {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetBoundingRectangleCore();
    }
    pub fn GetChildrenCore(self: *@This()) core.HResult!*IVector(AutomationPeer) {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetChildrenCore();
    }
    pub fn GetClassNameCore(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetClassNameCore();
    }
    pub fn GetClickablePointCore(self: *@This()) core.HResult!Point {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetClickablePointCore();
    }
    pub fn GetHelpTextCore(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetHelpTextCore();
    }
    pub fn GetItemStatusCore(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetItemStatusCore();
    }
    pub fn GetItemTypeCore(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetItemTypeCore();
    }
    pub fn GetLabeledByCore(self: *@This()) core.HResult!*AutomationPeer {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetLabeledByCore();
    }
    pub fn GetLocalizedControlTypeCore(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetLocalizedControlTypeCore();
    }
    pub fn GetNameCore(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetNameCore();
    }
    pub fn GetOrientationCore(self: *@This()) core.HResult!AutomationOrientation {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetOrientationCore();
    }
    pub fn HasKeyboardFocusCore(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.HasKeyboardFocusCore();
    }
    pub fn IsContentElementCore(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsContentElementCore();
    }
    pub fn IsControlElementCore(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsControlElementCore();
    }
    pub fn IsEnabledCore(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsEnabledCore();
    }
    pub fn IsKeyboardFocusableCore(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsKeyboardFocusableCore();
    }
    pub fn IsOffscreenCore(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsOffscreenCore();
    }
    pub fn IsPasswordCore(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsPasswordCore();
    }
    pub fn IsRequiredForFormCore(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsRequiredForFormCore();
    }
    pub fn SetFocusCore(self: *@This()) core.HResult!void {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetFocusCore();
    }
    pub fn GetPeerFromPointCore(self: *@This(), point: Point) core.HResult!*AutomationPeer {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPeerFromPointCore(point);
    }
    pub fn GetLiveSettingCore(self: *@This()) core.HResult!AutomationLiveSetting {
        var this: ?*IAutomationPeerOverrides = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetLiveSettingCore();
    }
    pub fn ShowContextMenuCore(self: *@This()) core.HResult!void {
        var this: ?*IAutomationPeerOverrides2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShowContextMenuCore();
    }
    pub fn GetControlledPeersCore(self: *@This()) core.HResult!*IVectorView(AutomationPeer) {
        var this: ?*IAutomationPeerOverrides2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetControlledPeersCore();
    }
    pub fn NavigateCore(self: *@This(), direction: AutomationNavigationDirection) core.HResult!*IInspectable {
        var this: ?*IAutomationPeerOverrides3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.NavigateCore(direction);
    }
    pub fn GetElementFromPointCore(self: *@This(), pointInWindowCoordinates: Point) core.HResult!*IInspectable {
        var this: ?*IAutomationPeerOverrides3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetElementFromPointCore(pointInWindowCoordinates);
    }
    pub fn GetFocusedElementCore(self: *@This()) core.HResult!*IInspectable {
        var this: ?*IAutomationPeerOverrides3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFocusedElementCore();
    }
    pub fn GetAnnotationsCore(self: *@This()) core.HResult!*IVector(AutomationPeerAnnotation) {
        var this: ?*IAutomationPeerOverrides3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetAnnotationsCore();
    }
    pub fn GetPositionInSetCore(self: *@This()) core.HResult!i32 {
        var this: ?*IAutomationPeerOverrides3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPositionInSetCore();
    }
    pub fn GetSizeOfSetCore(self: *@This()) core.HResult!i32 {
        var this: ?*IAutomationPeerOverrides3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSizeOfSetCore();
    }
    pub fn GetLevelCore(self: *@This()) core.HResult!i32 {
        var this: ?*IAutomationPeerOverrides3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetLevelCore();
    }
    pub fn GetLandmarkTypeCore(self: *@This()) core.HResult!AutomationLandmarkType {
        var this: ?*IAutomationPeerOverrides4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetLandmarkTypeCore();
    }
    pub fn GetLocalizedLandmarkTypeCore(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAutomationPeerOverrides4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetLocalizedLandmarkTypeCore();
    }
    pub fn IsPeripheralCore(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeerOverrides5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsPeripheralCore();
    }
    pub fn IsDataValidForFormCore(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeerOverrides5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsDataValidForFormCore();
    }
    pub fn GetFullDescriptionCore(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAutomationPeerOverrides5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFullDescriptionCore();
    }
    pub fn GetDescribedByCore(self: *@This()) core.HResult!*IIterable(AutomationPeer) {
        var this: ?*IAutomationPeerOverrides5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDescribedByCore();
    }
    pub fn GetFlowsToCore(self: *@This()) core.HResult!*IIterable(AutomationPeer) {
        var this: ?*IAutomationPeerOverrides5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFlowsToCore();
    }
    pub fn GetFlowsFromCore(self: *@This()) core.HResult!*IIterable(AutomationPeer) {
        var this: ?*IAutomationPeerOverrides5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFlowsFromCore();
    }
    pub fn GetCultureCore(self: *@This()) core.HResult!i32 {
        var this: ?*IAutomationPeerOverrides6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetCultureCore();
    }
    pub fn GetHeadingLevelCore(self: *@This()) core.HResult!AutomationHeadingLevel {
        var this: ?*IAutomationPeerOverrides8 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides8.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetHeadingLevelCore();
    }
    pub fn IsDialogCore(self: *@This()) core.HResult!bool {
        var this: ?*IAutomationPeerOverrides9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAutomationPeerOverrides9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsDialogCore();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GenerateRawElementProviderRuntimeId() core.HResult!RawElementProviderRuntimeId {
        const factory = @This().IAutomationPeerStatics3Cache.get();
        return try factory.GenerateRawElementProviderRuntimeId();
    }
    pub fn ListenerExists(eventId: AutomationEvents) core.HResult!bool {
        const factory = @This().IAutomationPeerStaticsCache.get();
        return try factory.ListenerExists(eventId);
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*AutomationPeer {
        const factory = @This().IAutomationPeerFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.AutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutomationPeer.GUID;
    pub const IID: Guid = IAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutomationPeer.SIGNATURE);
    var _IAutomationPeerStatics3Cache: FactoryCache(IAutomationPeerStatics3, RUNTIME_NAME) = .{};
    var _IAutomationPeerStaticsCache: FactoryCache(IAutomationPeerStatics, RUNTIME_NAME) = .{};
    var _IAutomationPeerFactoryCache: FactoryCache(IAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const FrameworkElementAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOwner(self: *@This()) core.HResult!*UIElement {
        const this: *IFrameworkElementAutomationPeer = @ptrCast(self);
        return try this.getOwner();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FromElement(element: *UIElement) core.HResult!*AutomationPeer {
        const factory = @This().IFrameworkElementAutomationPeerStaticsCache.get();
        return try factory.FromElement(element);
    }
    pub fn CreatePeerForElement(element: *UIElement) core.HResult!*AutomationPeer {
        const factory = @This().IFrameworkElementAutomationPeerStaticsCache.get();
        return try factory.CreatePeerForElement(element);
    }
    pub fn CreateInstanceWithOwner(owner: *FrameworkElement, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FrameworkElementAutomationPeer {
        const factory = @This().IFrameworkElementAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.FrameworkElementAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFrameworkElementAutomationPeer.GUID;
    pub const IID: Guid = IFrameworkElementAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFrameworkElementAutomationPeer.SIGNATURE);
    var _IFrameworkElementAutomationPeerStaticsCache: FactoryCache(IFrameworkElementAutomationPeerStatics, RUNTIME_NAME) = .{};
    var _IFrameworkElementAutomationPeerFactoryCache: FactoryCache(IFrameworkElementAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const AppBarAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getToggleState(self: *@This()) core.HResult!ToggleState {
        var this: ?*IToggleProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToggleProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getToggleState();
    }
    pub fn Toggle(self: *@This()) core.HResult!void {
        var this: ?*IToggleProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToggleProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Toggle();
    }
    pub fn getExpandCollapseState(self: *@This()) core.HResult!ExpandCollapseState {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExpandCollapseState();
    }
    pub fn Collapse(self: *@This()) core.HResult!void {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Collapse();
    }
    pub fn Expand(self: *@This()) core.HResult!void {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Expand();
    }
    pub fn getIsModal(self: *@This()) core.HResult!bool {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsModal();
    }
    pub fn getIsTopmost(self: *@This()) core.HResult!bool {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsTopmost();
    }
    pub fn getMaximizable(self: *@This()) core.HResult!bool {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaximizable();
    }
    pub fn getMinimizable(self: *@This()) core.HResult!bool {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinimizable();
    }
    pub fn getInteractionState(self: *@This()) core.HResult!WindowInteractionState {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInteractionState();
    }
    pub fn getVisualState(self: *@This()) core.HResult!WindowVisualState {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVisualState();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn SetVisualState(self: *@This(), state: WindowVisualState) core.HResult!void {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetVisualState(state);
    }
    pub fn WaitForInputIdle(self: *@This(), milliseconds: i32) core.HResult!bool {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.WaitForInputIdle(milliseconds);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *AppBar, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*AppBarAutomationPeer {
        const factory = @This().IAppBarAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.AppBarAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBarAutomationPeer.GUID;
    pub const IID: Guid = IAppBarAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBarAutomationPeer.SIGNATURE);
    var _IAppBarAutomationPeerFactoryCache: FactoryCache(IAppBarAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ButtonBaseAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ButtonBase, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ButtonBaseAutomationPeer {
        const factory = @This().IButtonBaseAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ButtonBaseAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IButtonBaseAutomationPeer.GUID;
    pub const IID: Guid = IButtonBaseAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IButtonBaseAutomationPeer.SIGNATURE);
    var _IButtonBaseAutomationPeerFactoryCache: FactoryCache(IButtonBaseAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ButtonAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Invoke(self: *@This()) core.HResult!void {
        var this: ?*IInvokeProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInvokeProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Invoke();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *Button, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ButtonAutomationPeer {
        const factory = @This().IButtonAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IButtonAutomationPeer.GUID;
    pub const IID: Guid = IButtonAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IButtonAutomationPeer.SIGNATURE);
    var _IButtonAutomationPeerFactoryCache: FactoryCache(IButtonAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const AppBarButtonAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExpandCollapseState(self: *@This()) core.HResult!ExpandCollapseState {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExpandCollapseState();
    }
    pub fn Collapse(self: *@This()) core.HResult!void {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Collapse();
    }
    pub fn Expand(self: *@This()) core.HResult!void {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Expand();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *AppBarButton, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*AppBarButtonAutomationPeer {
        const factory = @This().IAppBarButtonAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.AppBarButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBarButtonAutomationPeer.GUID;
    pub const IID: Guid = IAppBarButtonAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBarButtonAutomationPeer.SIGNATURE);
    var _IAppBarButtonAutomationPeerFactoryCache: FactoryCache(IAppBarButtonAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ToggleButtonAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getToggleState(self: *@This()) core.HResult!ToggleState {
        var this: ?*IToggleProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToggleProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getToggleState();
    }
    pub fn Toggle(self: *@This()) core.HResult!void {
        var this: ?*IToggleProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToggleProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Toggle();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ToggleButton, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ToggleButtonAutomationPeer {
        const factory = @This().IToggleButtonAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ToggleButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToggleButtonAutomationPeer.GUID;
    pub const IID: Guid = IToggleButtonAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToggleButtonAutomationPeer.SIGNATURE);
    var _IToggleButtonAutomationPeerFactoryCache: FactoryCache(IToggleButtonAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const AppBarToggleButtonAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *AppBarToggleButton, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*AppBarToggleButtonAutomationPeer {
        const factory = @This().IAppBarToggleButtonAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.AppBarToggleButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppBarToggleButtonAutomationPeer.GUID;
    pub const IID: Guid = IAppBarToggleButtonAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppBarToggleButtonAutomationPeer.SIGNATURE);
    var _IAppBarToggleButtonAutomationPeerFactoryCache: FactoryCache(IAppBarToggleButtonAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const AutoSuggestBoxAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Invoke(self: *@This()) core.HResult!void {
        var this: ?*IInvokeProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInvokeProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Invoke();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *AutoSuggestBox) core.HResult!*AutoSuggestBoxAutomationPeer {
        const factory = @This().IAutoSuggestBoxAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.AutoSuggestBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutoSuggestBoxAutomationPeer.GUID;
    pub const IID: Guid = IAutoSuggestBoxAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutoSuggestBoxAutomationPeer.SIGNATURE);
    var _IAutoSuggestBoxAutomationPeerFactoryCache: FactoryCache(IAutoSuggestBoxAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const AutomationControlType = enum(i32) {
    Button = 0,
    Calendar = 1,
    CheckBox = 2,
    ComboBox = 3,
    Edit = 4,
    Hyperlink = 5,
    Image = 6,
    ListItem = 7,
    List = 8,
    Menu = 9,
    MenuBar = 10,
    MenuItem = 11,
    ProgressBar = 12,
    RadioButton = 13,
    ScrollBar = 14,
    Slider = 15,
    Spinner = 16,
    StatusBar = 17,
    Tab = 18,
    TabItem = 19,
    Text = 20,
    ToolBar = 21,
    ToolTip = 22,
    Tree = 23,
    TreeItem = 24,
    Custom = 25,
    Group = 26,
    Thumb = 27,
    DataGrid = 28,
    DataItem = 29,
    Document = 30,
    SplitButton = 31,
    Window = 32,
    Pane = 33,
    Header = 34,
    HeaderItem = 35,
    Table = 36,
    TitleBar = 37,
    Separator = 38,
    SemanticZoom = 39,
    AppBar = 40,
};
pub const AutomationEvents = enum(i32) {
    ToolTipOpened = 0,
    ToolTipClosed = 1,
    MenuOpened = 2,
    MenuClosed = 3,
    AutomationFocusChanged = 4,
    InvokePatternOnInvoked = 5,
    SelectionItemPatternOnElementAddedToSelection = 6,
    SelectionItemPatternOnElementRemovedFromSelection = 7,
    SelectionItemPatternOnElementSelected = 8,
    SelectionPatternOnInvalidated = 9,
    TextPatternOnTextSelectionChanged = 10,
    TextPatternOnTextChanged = 11,
    AsyncContentLoaded = 12,
    PropertyChanged = 13,
    StructureChanged = 14,
    DragStart = 15,
    DragCancel = 16,
    DragComplete = 17,
    DragEnter = 18,
    DragLeave = 19,
    Dropped = 20,
    LiveRegionChanged = 21,
    InputReachedTarget = 22,
    InputReachedOtherElement = 23,
    InputDiscarded = 24,
    WindowClosed = 25,
    WindowOpened = 26,
    ConversionTargetChanged = 27,
    TextEditTextChanged = 28,
    LayoutInvalidated = 29,
};
pub const AutomationHeadingLevel = enum(i32) {
    None = 0,
    Level1 = 1,
    Level2 = 2,
    Level3 = 3,
    Level4 = 4,
    Level5 = 5,
    Level6 = 6,
    Level7 = 7,
    Level8 = 8,
    Level9 = 9,
};
pub const AutomationLandmarkType = enum(i32) {
    None = 0,
    Custom = 1,
    Form = 2,
    Main = 3,
    Navigation = 4,
    Search = 5,
};
pub const AutomationLiveSetting = enum(i32) {
    Off = 0,
    Polite = 1,
    Assertive = 2,
};
pub const AutomationNavigationDirection = enum(i32) {
    Parent = 0,
    NextSibling = 1,
    PreviousSibling = 2,
    FirstChild = 3,
    LastChild = 4,
};
pub const AutomationNotificationKind = enum(i32) {
    ItemAdded = 0,
    ItemRemoved = 1,
    ActionCompleted = 2,
    ActionAborted = 3,
    Other = 4,
};
pub const AutomationNotificationProcessing = enum(i32) {
    ImportantAll = 0,
    ImportantMostRecent = 1,
    All = 2,
    MostRecent = 3,
    CurrentThenMostRecent = 4,
};
pub const AutomationOrientation = enum(i32) {
    None = 0,
    Horizontal = 1,
    Vertical = 2,
};
pub const AutomationPeerAnnotation = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getType(self: *@This()) core.HResult!AnnotationType {
        const this: *IAutomationPeerAnnotation = @ptrCast(self);
        return try this.getType();
    }
    pub fn putType(self: *@This(), value: AnnotationType) core.HResult!void {
        const this: *IAutomationPeerAnnotation = @ptrCast(self);
        return try this.putType(value);
    }
    pub fn getPeer(self: *@This()) core.HResult!*AutomationPeer {
        const this: *IAutomationPeerAnnotation = @ptrCast(self);
        return try this.getPeer();
    }
    pub fn putPeer(self: *@This(), value: *AutomationPeer) core.HResult!void {
        const this: *IAutomationPeerAnnotation = @ptrCast(self);
        return try this.putPeer(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAutomationPeerAnnotation.IID)));
    }
    pub fn CreateInstance(ty: AnnotationType) core.HResult!*AutomationPeerAnnotation {
        const factory = @This().IAutomationPeerAnnotationFactoryCache.get();
        return try factory.CreateInstance(ty);
    }
    pub fn CreateWithPeerParameter(ty: AnnotationType, peer: *AutomationPeer) core.HResult!*AutomationPeerAnnotation {
        const factory = @This().IAutomationPeerAnnotationFactoryCache.get();
        return try factory.CreateWithPeerParameter(ty, peer);
    }
    pub fn getTypeProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPeerAnnotationStaticsCache.get();
        return try factory.getTypeProperty();
    }
    pub fn getPeerProperty() core.HResult!*DependencyProperty {
        const factory = @This().IAutomationPeerAnnotationStaticsCache.get();
        return try factory.getPeerProperty();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.AutomationPeerAnnotation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAutomationPeerAnnotation.GUID;
    pub const IID: Guid = IAutomationPeerAnnotation.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAutomationPeerAnnotation.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IAutomationPeerAnnotationFactoryCache: FactoryCache(IAutomationPeerAnnotationFactory, RUNTIME_NAME) = .{};
    var _IAutomationPeerAnnotationStaticsCache: FactoryCache(IAutomationPeerAnnotationStatics, RUNTIME_NAME) = .{};
};
pub const AutomationStructureChangeType = enum(i32) {
    ChildAdded = 0,
    ChildRemoved = 1,
    ChildrenInvalidated = 2,
    ChildrenBulkAdded = 3,
    ChildrenBulkRemoved = 4,
    ChildrenReordered = 5,
};
pub const CalendarDatePickerAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Invoke(self: *@This()) core.HResult!void {
        var this: ?*IInvokeProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInvokeProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Invoke();
    }
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var this: ?*IValueProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IValueProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReadOnly();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var this: ?*IValueProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IValueProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getValue();
    }
    pub fn SetValue(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IValueProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IValueProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetValue(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *CalendarDatePicker, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CalendarDatePickerAutomationPeer {
        const factory = @This().ICalendarDatePickerAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.CalendarDatePickerAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICalendarDatePickerAutomationPeer.GUID;
    pub const IID: Guid = ICalendarDatePickerAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICalendarDatePickerAutomationPeer.SIGNATURE);
    var _ICalendarDatePickerAutomationPeerFactoryCache: FactoryCache(ICalendarDatePickerAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const CaptureElementAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *CaptureElement, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CaptureElementAutomationPeer {
        const factory = @This().ICaptureElementAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.CaptureElementAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICaptureElementAutomationPeer.GUID;
    pub const IID: Guid = ICaptureElementAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICaptureElementAutomationPeer.SIGNATURE);
    var _ICaptureElementAutomationPeerFactoryCache: FactoryCache(ICaptureElementAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const CheckBoxAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *CheckBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CheckBoxAutomationPeer {
        const factory = @This().ICheckBoxAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.CheckBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICheckBoxAutomationPeer.GUID;
    pub const IID: Guid = ICheckBoxAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICheckBoxAutomationPeer.SIGNATURE);
    var _ICheckBoxAutomationPeerFactoryCache: FactoryCache(ICheckBoxAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const RangeBaseAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var this: ?*IRangeValueProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRangeValueProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReadOnly();
    }
    pub fn getLargeChange(self: *@This()) core.HResult!f64 {
        var this: ?*IRangeValueProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRangeValueProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getLargeChange();
    }
    pub fn getMaximum(self: *@This()) core.HResult!f64 {
        var this: ?*IRangeValueProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRangeValueProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaximum();
    }
    pub fn getMinimum(self: *@This()) core.HResult!f64 {
        var this: ?*IRangeValueProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRangeValueProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinimum();
    }
    pub fn getSmallChange(self: *@This()) core.HResult!f64 {
        var this: ?*IRangeValueProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRangeValueProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSmallChange();
    }
    pub fn getValue(self: *@This()) core.HResult!f64 {
        var this: ?*IRangeValueProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRangeValueProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getValue();
    }
    pub fn SetValue(self: *@This(), value: f64) core.HResult!void {
        var this: ?*IRangeValueProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IRangeValueProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetValue(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *RangeBase, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RangeBaseAutomationPeer {
        const factory = @This().IRangeBaseAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.RangeBaseAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRangeBaseAutomationPeer.GUID;
    pub const IID: Guid = IRangeBaseAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRangeBaseAutomationPeer.SIGNATURE);
    var _IRangeBaseAutomationPeerFactoryCache: FactoryCache(IRangeBaseAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const SliderAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *Slider, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SliderAutomationPeer {
        const factory = @This().ISliderAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.SliderAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISliderAutomationPeer.GUID;
    pub const IID: Guid = ISliderAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISliderAutomationPeer.SIGNATURE);
    var _ISliderAutomationPeerFactoryCache: FactoryCache(ISliderAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ColorPickerSliderAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ColorPickerSlider, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ColorPickerSliderAutomationPeer {
        const factory = @This().IColorPickerSliderAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ColorPickerSliderAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IColorPickerSliderAutomationPeer.GUID;
    pub const IID: Guid = IColorPickerSliderAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IColorPickerSliderAutomationPeer.SIGNATURE);
    var _IColorPickerSliderAutomationPeerFactoryCache: FactoryCache(IColorPickerSliderAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ColorSpectrumAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ColorSpectrum, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ColorSpectrumAutomationPeer {
        const factory = @This().IColorSpectrumAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ColorSpectrumAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IColorSpectrumAutomationPeer.GUID;
    pub const IID: Guid = IColorSpectrumAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IColorSpectrumAutomationPeer.SIGNATURE);
    var _IColorSpectrumAutomationPeerFactoryCache: FactoryCache(IColorSpectrumAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ItemsControlAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn CreateItemAutomationPeer(self: *@This(), item: *IInspectable) core.HResult!*ItemAutomationPeer {
        var this: ?*IItemsControlAutomationPeer2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IItemsControlAutomationPeer2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CreateItemAutomationPeer(item);
    }
    pub fn OnCreateItemAutomationPeer(self: *@This(), item: *IInspectable) core.HResult!*ItemAutomationPeer {
        var this: ?*IItemsControlAutomationPeerOverrides2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IItemsControlAutomationPeerOverrides2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.OnCreateItemAutomationPeer(item);
    }
    pub fn FindItemByProperty(self: *@This(), startAfter: *IRawElementProviderSimple, automationProperty: *AutomationProperty, value: *IInspectable) core.HResult!*IRawElementProviderSimple {
        var this: ?*IItemContainerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IItemContainerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindItemByProperty(startAfter, automationProperty, value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ItemsControl, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ItemsControlAutomationPeer {
        const factory = @This().IItemsControlAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ItemsControlAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IItemsControlAutomationPeer.GUID;
    pub const IID: Guid = IItemsControlAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IItemsControlAutomationPeer.SIGNATURE);
    var _IItemsControlAutomationPeerFactoryCache: FactoryCache(IItemsControlAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const SelectorAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanSelectMultiple(self: *@This()) core.HResult!bool {
        var this: ?*ISelectionProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanSelectMultiple();
    }
    pub fn getIsSelectionRequired(self: *@This()) core.HResult!bool {
        var this: ?*ISelectionProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSelectionRequired();
    }
    pub fn GetSelection(self: *@This()) core.HResult![*]IRawElementProviderSimple {
        var this: ?*ISelectionProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSelection();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *Selector, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SelectorAutomationPeer {
        const factory = @This().ISelectorAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.SelectorAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISelectorAutomationPeer.GUID;
    pub const IID: Guid = ISelectorAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISelectorAutomationPeer.SIGNATURE);
    var _ISelectorAutomationPeerFactoryCache: FactoryCache(ISelectorAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ComboBoxAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsReadOnly(self: *@This()) core.HResult!bool {
        var this: ?*IValueProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IValueProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsReadOnly();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var this: ?*IValueProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IValueProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getValue();
    }
    pub fn SetValue(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IValueProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IValueProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetValue(value);
    }
    pub fn getExpandCollapseState(self: *@This()) core.HResult!ExpandCollapseState {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExpandCollapseState();
    }
    pub fn Collapse(self: *@This()) core.HResult!void {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Collapse();
    }
    pub fn Expand(self: *@This()) core.HResult!void {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Expand();
    }
    pub fn getIsModal(self: *@This()) core.HResult!bool {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsModal();
    }
    pub fn getIsTopmost(self: *@This()) core.HResult!bool {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsTopmost();
    }
    pub fn getMaximizable(self: *@This()) core.HResult!bool {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaximizable();
    }
    pub fn getMinimizable(self: *@This()) core.HResult!bool {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinimizable();
    }
    pub fn getInteractionState(self: *@This()) core.HResult!WindowInteractionState {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getInteractionState();
    }
    pub fn getVisualState(self: *@This()) core.HResult!WindowVisualState {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVisualState();
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn SetVisualState(self: *@This(), state: WindowVisualState) core.HResult!void {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetVisualState(state);
    }
    pub fn WaitForInputIdle(self: *@This(), milliseconds: i32) core.HResult!bool {
        var this: ?*IWindowProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWindowProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.WaitForInputIdle(milliseconds);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ComboBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ComboBoxAutomationPeer {
        const factory = @This().IComboBoxAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ComboBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IComboBoxAutomationPeer.GUID;
    pub const IID: Guid = IComboBoxAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IComboBoxAutomationPeer.SIGNATURE);
    var _IComboBoxAutomationPeerFactoryCache: FactoryCache(IComboBoxAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ComboBoxItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ComboBoxItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ComboBoxItemAutomationPeer {
        const factory = @This().IComboBoxItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ComboBoxItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IComboBoxItemAutomationPeer.GUID;
    pub const IID: Guid = IComboBoxItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IComboBoxItemAutomationPeer.SIGNATURE);
    var _IComboBoxItemAutomationPeerFactoryCache: FactoryCache(IComboBoxItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getItem(self: *@This()) core.HResult!*IInspectable {
        const this: *IItemAutomationPeer = @ptrCast(self);
        return try this.getItem();
    }
    pub fn getItemsControlAutomationPeer(self: *@This()) core.HResult!*ItemsControlAutomationPeer {
        const this: *IItemAutomationPeer = @ptrCast(self);
        return try this.getItemsControlAutomationPeer();
    }
    pub fn Realize(self: *@This()) core.HResult!void {
        var this: ?*IVirtualizedItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVirtualizedItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Realize();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithParentAndItem(item: *IInspectable, parent: *ItemsControlAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ItemAutomationPeer {
        const factory = @This().IItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithParentAndItem(item, parent, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IItemAutomationPeer.GUID;
    pub const IID: Guid = IItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IItemAutomationPeer.SIGNATURE);
    var _IItemAutomationPeerFactoryCache: FactoryCache(IItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const SelectorItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSelected();
    }
    pub fn getSelectionContainer(self: *@This()) core.HResult!*IRawElementProviderSimple {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectionContainer();
    }
    pub fn AddToSelection(self: *@This()) core.HResult!void {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddToSelection();
    }
    pub fn RemoveFromSelection(self: *@This()) core.HResult!void {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveFromSelection();
    }
    pub fn Select(self: *@This()) core.HResult!void {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Select();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithParentAndItem(item: *IInspectable, parent: *SelectorAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SelectorItemAutomationPeer {
        const factory = @This().ISelectorItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithParentAndItem(item, parent, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.SelectorItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISelectorItemAutomationPeer.GUID;
    pub const IID: Guid = ISelectorItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISelectorItemAutomationPeer.SIGNATURE);
    var _ISelectorItemAutomationPeerFactoryCache: FactoryCache(ISelectorItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ComboBoxItemDataAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ScrollIntoView(self: *@This()) core.HResult!void {
        var this: ?*IScrollItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ScrollIntoView();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithParentAndItem(item: *IInspectable, parent: *ComboBoxAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ComboBoxItemDataAutomationPeer {
        const factory = @This().IComboBoxItemDataAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithParentAndItem(item, parent, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ComboBoxItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IComboBoxItemDataAutomationPeer.GUID;
    pub const IID: Guid = IComboBoxItemDataAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IComboBoxItemDataAutomationPeer.SIGNATURE);
    var _IComboBoxItemDataAutomationPeerFactoryCache: FactoryCache(IComboBoxItemDataAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const DatePickerAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *DatePicker, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DatePickerAutomationPeer {
        const factory = @This().IDatePickerAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.DatePickerAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDatePickerAutomationPeer.GUID;
    pub const IID: Guid = IDatePickerAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDatePickerAutomationPeer.SIGNATURE);
    var _IDatePickerAutomationPeerFactoryCache: FactoryCache(IDatePickerAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const DatePickerFlyoutPresenterAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.DatePickerFlyoutPresenterAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDatePickerFlyoutPresenterAutomationPeer.GUID;
    pub const IID: Guid = IDatePickerFlyoutPresenterAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDatePickerFlyoutPresenterAutomationPeer.SIGNATURE);
};
pub const FlipViewAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *FlipView, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FlipViewAutomationPeer {
        const factory = @This().IFlipViewAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.FlipViewAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFlipViewAutomationPeer.GUID;
    pub const IID: Guid = IFlipViewAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFlipViewAutomationPeer.SIGNATURE);
    var _IFlipViewAutomationPeerFactoryCache: FactoryCache(IFlipViewAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const FlipViewItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *FlipViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FlipViewItemAutomationPeer {
        const factory = @This().IFlipViewItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.FlipViewItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFlipViewItemAutomationPeer.GUID;
    pub const IID: Guid = IFlipViewItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFlipViewItemAutomationPeer.SIGNATURE);
    var _IFlipViewItemAutomationPeerFactoryCache: FactoryCache(IFlipViewItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const FlipViewItemDataAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ScrollIntoView(self: *@This()) core.HResult!void {
        var this: ?*IScrollItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ScrollIntoView();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithParentAndItem(item: *IInspectable, parent: *FlipViewAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FlipViewItemDataAutomationPeer {
        const factory = @This().IFlipViewItemDataAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithParentAndItem(item, parent, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.FlipViewItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFlipViewItemDataAutomationPeer.GUID;
    pub const IID: Guid = IFlipViewItemDataAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFlipViewItemDataAutomationPeer.SIGNATURE);
    var _IFlipViewItemDataAutomationPeerFactoryCache: FactoryCache(IFlipViewItemDataAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const FlyoutPresenterAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *FlyoutPresenter, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FlyoutPresenterAutomationPeer {
        const factory = @This().IFlyoutPresenterAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.FlyoutPresenterAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFlyoutPresenterAutomationPeer.GUID;
    pub const IID: Guid = IFlyoutPresenterAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFlyoutPresenterAutomationPeer.SIGNATURE);
    var _IFlyoutPresenterAutomationPeerFactoryCache: FactoryCache(IFlyoutPresenterAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ListViewBaseAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDropEffect(self: *@This()) core.HResult!HSTRING {
        var this: ?*IDropTargetProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDropTargetProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDropEffect();
    }
    pub fn getDropEffects(self: *@This()) core.HResult![*]HSTRING {
        var this: ?*IDropTargetProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IDropTargetProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDropEffects();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ListViewBase, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewBaseAutomationPeer {
        const factory = @This().IListViewBaseAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ListViewBaseAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IListViewBaseAutomationPeer.GUID;
    pub const IID: Guid = IListViewBaseAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IListViewBaseAutomationPeer.SIGNATURE);
    var _IListViewBaseAutomationPeerFactoryCache: FactoryCache(IListViewBaseAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const GridViewAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *GridView, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GridViewAutomationPeer {
        const factory = @This().IGridViewAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.GridViewAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGridViewAutomationPeer.GUID;
    pub const IID: Guid = IGridViewAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGridViewAutomationPeer.SIGNATURE);
    var _IGridViewAutomationPeerFactoryCache: FactoryCache(IGridViewAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ListViewBaseHeaderItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ListViewBaseHeaderItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewBaseHeaderItemAutomationPeer {
        const factory = @This().IListViewBaseHeaderItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ListViewBaseHeaderItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IListViewBaseHeaderItemAutomationPeer.GUID;
    pub const IID: Guid = IListViewBaseHeaderItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IListViewBaseHeaderItemAutomationPeer.SIGNATURE);
    var _IListViewBaseHeaderItemAutomationPeerFactoryCache: FactoryCache(IListViewBaseHeaderItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const GridViewHeaderItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *GridViewHeaderItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GridViewHeaderItemAutomationPeer {
        const factory = @This().IGridViewHeaderItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.GridViewHeaderItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGridViewHeaderItemAutomationPeer.GUID;
    pub const IID: Guid = IGridViewHeaderItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGridViewHeaderItemAutomationPeer.SIGNATURE);
    var _IGridViewHeaderItemAutomationPeerFactoryCache: FactoryCache(IGridViewHeaderItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const GridViewItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *GridViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GridViewItemAutomationPeer {
        const factory = @This().IGridViewItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.GridViewItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGridViewItemAutomationPeer.GUID;
    pub const IID: Guid = IGridViewItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGridViewItemAutomationPeer.SIGNATURE);
    var _IGridViewItemAutomationPeerFactoryCache: FactoryCache(IGridViewItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const GridViewItemDataAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ScrollIntoView(self: *@This()) core.HResult!void {
        var this: ?*IScrollItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ScrollIntoView();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithParentAndItem(item: *IInspectable, parent: *GridViewAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GridViewItemDataAutomationPeer {
        const factory = @This().IGridViewItemDataAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithParentAndItem(item, parent, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.GridViewItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGridViewItemDataAutomationPeer.GUID;
    pub const IID: Guid = IGridViewItemDataAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGridViewItemDataAutomationPeer.SIGNATURE);
    var _IGridViewItemDataAutomationPeerFactoryCache: FactoryCache(IGridViewItemDataAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const GroupItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *GroupItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GroupItemAutomationPeer {
        const factory = @This().IGroupItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.GroupItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGroupItemAutomationPeer.GUID;
    pub const IID: Guid = IGroupItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGroupItemAutomationPeer.SIGNATURE);
    var _IGroupItemAutomationPeerFactoryCache: FactoryCache(IGroupItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const HubAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *Hub, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*HubAutomationPeer {
        const factory = @This().IHubAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.HubAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHubAutomationPeer.GUID;
    pub const IID: Guid = IHubAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHubAutomationPeer.SIGNATURE);
    var _IHubAutomationPeerFactoryCache: FactoryCache(IHubAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const HubSectionAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ScrollIntoView(self: *@This()) core.HResult!void {
        var this: ?*IScrollItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ScrollIntoView();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *HubSection, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*HubSectionAutomationPeer {
        const factory = @This().IHubSectionAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.HubSectionAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHubSectionAutomationPeer.GUID;
    pub const IID: Guid = IHubSectionAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHubSectionAutomationPeer.SIGNATURE);
    var _IHubSectionAutomationPeerFactoryCache: FactoryCache(IHubSectionAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const HyperlinkButtonAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Invoke(self: *@This()) core.HResult!void {
        var this: ?*IInvokeProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInvokeProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Invoke();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *HyperlinkButton, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*HyperlinkButtonAutomationPeer {
        const factory = @This().IHyperlinkButtonAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.HyperlinkButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHyperlinkButtonAutomationPeer.GUID;
    pub const IID: Guid = IHyperlinkButtonAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHyperlinkButtonAutomationPeer.SIGNATURE);
    var _IHyperlinkButtonAutomationPeerFactoryCache: FactoryCache(IHyperlinkButtonAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const IAppBarAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAppBarAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8b4acfeb-89fa-4f13-84be-35ca5b7c9590";
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
pub const IAppBarAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *AppBar, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*AppBarAutomationPeer {
        var _r: *AppBarAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAppBarAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8360f4e2-e396-4517-af5d-f4cf34c54edf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *AppBar, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **AppBarAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IAppBarButtonAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAppBarButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "443262b2-4f6d-4b76-9d2e-3eff777e8864";
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
pub const IAppBarButtonAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *AppBarButton, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*AppBarButtonAutomationPeer {
        var _r: *AppBarButtonAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAppBarButtonAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aef0342a-acb7-42dc-97e3-847071865fd6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *AppBarButton, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **AppBarButtonAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IAppBarToggleButtonAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAppBarToggleButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8464efad-9655-4aff-9550-63ae9ec8fe9c";
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
pub const IAppBarToggleButtonAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *AppBarToggleButton, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*AppBarToggleButtonAutomationPeer {
        var _r: *AppBarToggleButtonAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAppBarToggleButtonAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d6f9139d-02c1-4221-9591-7d4efeb74701";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *AppBarToggleButton, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **AppBarToggleButtonAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IAutoSuggestBoxAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutoSuggestBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2f32c302-f99b-491d-9726-a5e181643efa";
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
pub const IAutoSuggestBoxAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *AutoSuggestBox) core.HResult!*AutoSuggestBoxAutomationPeer {
        var _r: *AutoSuggestBoxAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutoSuggestBoxAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "80046849-18e7-4475-b362-4bbd53d24562";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *AutoSuggestBox, _r: **AutoSuggestBoxAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeer = extern struct {
    vtable: *const VTable,
    pub fn getEventsSource(self: *@This()) core.HResult!*AutomationPeer {
        var _r: *AutomationPeer = undefined;
        const _c = self.vtable.get_EventsSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEventsSource(self: *@This(), value: *AutomationPeer) core.HResult!void {
        const _c = self.vtable.put_EventsSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetPattern(self: *@This(), patternInterface: PatternInterface) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetPattern(@ptrCast(self), patternInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RaiseAutomationEvent(self: *@This(), eventId: AutomationEvents) core.HResult!void {
        const _c = self.vtable.RaiseAutomationEvent(@ptrCast(self), eventId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RaisePropertyChangedEvent(self: *@This(), automationProperty: *AutomationProperty, oldValue: *IInspectable, newValue: *IInspectable) core.HResult!void {
        const _c = self.vtable.RaisePropertyChangedEvent(@ptrCast(self), automationProperty, oldValue, newValue);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetAcceleratorKey(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAcceleratorKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAccessKey(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAccessKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAutomationControlType(self: *@This()) core.HResult!AutomationControlType {
        var _r: AutomationControlType = undefined;
        const _c = self.vtable.GetAutomationControlType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAutomationId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAutomationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBoundingRectangle(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.GetBoundingRectangle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetChildren(self: *@This()) core.HResult!*IVector(AutomationPeer) {
        var _r: *IVector(AutomationPeer) = undefined;
        const _c = self.vtable.GetChildren(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetClassName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetClassName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetClickablePoint(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.GetClickablePoint(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHelpText(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetHelpText(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemStatus(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetItemStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetItemType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLabeledBy(self: *@This()) core.HResult!*AutomationPeer {
        var _r: *AutomationPeer = undefined;
        const _c = self.vtable.GetLabeledBy(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLocalizedControlType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetLocalizedControlType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetName(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetName(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetOrientation(self: *@This()) core.HResult!AutomationOrientation {
        var _r: AutomationOrientation = undefined;
        const _c = self.vtable.GetOrientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn HasKeyboardFocus(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.HasKeyboardFocus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsContentElement(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsContentElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsControlElement(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsControlElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsKeyboardFocusable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsKeyboardFocusable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsOffscreen(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsOffscreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsPassword(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPassword(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsRequiredForForm(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsRequiredForForm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetFocus(self: *@This()) core.HResult!void {
        const _c = self.vtable.SetFocus(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetParent(self: *@This()) core.HResult!*AutomationPeer {
        var _r: *AutomationPeer = undefined;
        const _c = self.vtable.GetParent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn InvalidatePeer(self: *@This()) core.HResult!void {
        const _c = self.vtable.InvalidatePeer(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetPeerFromPoint(self: *@This(), point: Point) core.HResult!*AutomationPeer {
        var _r: *AutomationPeer = undefined;
        const _c = self.vtable.GetPeerFromPoint(@ptrCast(self), point, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLiveSetting(self: *@This()) core.HResult!AutomationLiveSetting {
        var _r: AutomationLiveSetting = undefined;
        const _c = self.vtable.GetLiveSetting(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "35aac87a-62ee-4d3e-a24c-2bc8432d68b7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_EventsSource: *const fn(self: *anyopaque, _r: **AutomationPeer) callconv(.winapi) HRESULT,
        put_EventsSource: *const fn(self: *anyopaque, value: *AutomationPeer) callconv(.winapi) HRESULT,
        GetPattern: *const fn(self: *anyopaque, patternInterface: PatternInterface, _r: **IInspectable) callconv(.winapi) HRESULT,
        RaiseAutomationEvent: *const fn(self: *anyopaque, eventId: AutomationEvents) callconv(.winapi) HRESULT,
        RaisePropertyChangedEvent: *const fn(self: *anyopaque, automationProperty: *AutomationProperty, oldValue: *IInspectable, newValue: *IInspectable) callconv(.winapi) HRESULT,
        GetAcceleratorKey: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetAccessKey: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetAutomationControlType: *const fn(self: *anyopaque, _r: *AutomationControlType) callconv(.winapi) HRESULT,
        GetAutomationId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetBoundingRectangle: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        GetChildren: *const fn(self: *anyopaque, _r: **IVector(AutomationPeer)) callconv(.winapi) HRESULT,
        GetClassName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetClickablePoint: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        GetHelpText: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetItemStatus: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetItemType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetLabeledBy: *const fn(self: *anyopaque, _r: **AutomationPeer) callconv(.winapi) HRESULT,
        GetLocalizedControlType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetName: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetOrientation: *const fn(self: *anyopaque, _r: *AutomationOrientation) callconv(.winapi) HRESULT,
        HasKeyboardFocus: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsContentElement: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsControlElement: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsKeyboardFocusable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsOffscreen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsPassword: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsRequiredForForm: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        SetFocus: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetParent: *const fn(self: *anyopaque, _r: **AutomationPeer) callconv(.winapi) HRESULT,
        InvalidatePeer: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetPeerFromPoint: *const fn(self: *anyopaque, point: Point, _r: **AutomationPeer) callconv(.winapi) HRESULT,
        GetLiveSetting: *const fn(self: *anyopaque, _r: *AutomationLiveSetting) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeer2 = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ea1f89c7-ebf5-4ab8-88f7-680d821dac61";
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
pub const IAutomationPeer3 = extern struct {
    vtable: *const VTable,
    pub fn Navigate(self: *@This(), direction: AutomationNavigationDirection) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.Navigate(@ptrCast(self), direction, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetElementFromPoint(self: *@This(), pointInWindowCoordinates: Point) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetElementFromPoint(@ptrCast(self), pointInWindowCoordinates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFocusedElement(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetFocusedElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowContextMenu(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowContextMenu(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetControlledPeers(self: *@This()) core.HResult!*IVectorView(AutomationPeer) {
        var _r: *IVectorView(AutomationPeer) = undefined;
        const _c = self.vtable.GetControlledPeers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAnnotations(self: *@This()) core.HResult!*IVector(AutomationPeerAnnotation) {
        var _r: *IVector(AutomationPeerAnnotation) = undefined;
        const _c = self.vtable.GetAnnotations(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetParent(self: *@This(), peer: *AutomationPeer) core.HResult!void {
        const _c = self.vtable.SetParent(@ptrCast(self), peer);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RaiseTextEditTextChangedEvent(self: *@This(), automationTextEditChangeType: AutomationTextEditChangeType, changedData: *IVectorView(HSTRING)) core.HResult!void {
        const _c = self.vtable.RaiseTextEditTextChangedEvent(@ptrCast(self), automationTextEditChangeType, changedData);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetPositionInSet(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetPositionInSet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSizeOfSet(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetSizeOfSet(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLevel(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RaiseStructureChangedEvent(self: *@This(), structureChangeType: AutomationStructureChangeType, child: *AutomationPeer) core.HResult!void {
        const _c = self.vtable.RaiseStructureChangedEvent(@ptrCast(self), structureChangeType, child);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeer3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d3cfb977-0084-41d7-a221-28158d3bc32c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Navigate: *const fn(self: *anyopaque, direction: AutomationNavigationDirection, _r: **IInspectable) callconv(.winapi) HRESULT,
        GetElementFromPoint: *const fn(self: *anyopaque, pointInWindowCoordinates: Point, _r: **IInspectable) callconv(.winapi) HRESULT,
        GetFocusedElement: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        ShowContextMenu: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetControlledPeers: *const fn(self: *anyopaque, _r: **IVectorView(AutomationPeer)) callconv(.winapi) HRESULT,
        GetAnnotations: *const fn(self: *anyopaque, _r: **IVector(AutomationPeerAnnotation)) callconv(.winapi) HRESULT,
        SetParent: *const fn(self: *anyopaque, peer: *AutomationPeer) callconv(.winapi) HRESULT,
        RaiseTextEditTextChangedEvent: *const fn(self: *anyopaque, automationTextEditChangeType: AutomationTextEditChangeType, changedData: *IVectorView(HSTRING)) callconv(.winapi) HRESULT,
        GetPositionInSet: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetSizeOfSet: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetLevel: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        RaiseStructureChangedEvent: *const fn(self: *anyopaque, structureChangeType: AutomationStructureChangeType, child: *AutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeer4 = extern struct {
    vtable: *const VTable,
    pub fn GetLandmarkType(self: *@This()) core.HResult!AutomationLandmarkType {
        var _r: AutomationLandmarkType = undefined;
        const _c = self.vtable.GetLandmarkType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLocalizedLandmarkType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetLocalizedLandmarkType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeer4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "761ce752-73c1-4f44-be75-43c49ec0d4d5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetLandmarkType: *const fn(self: *anyopaque, _r: *AutomationLandmarkType) callconv(.winapi) HRESULT,
        GetLocalizedLandmarkType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeer5 = extern struct {
    vtable: *const VTable,
    pub fn IsPeripheral(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPeripheral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsDataValidForForm(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsDataValidForForm(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFullDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetFullDescription(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeer5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f632e1c6-0a3f-4574-9fef-cdc151765674";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsPeripheral: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsDataValidForForm: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetFullDescription: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeer6 = extern struct {
    vtable: *const VTable,
    pub fn GetCulture(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetCulture(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeer6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "caf8608f-13ff-42fb-866d-22206434cc6b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCulture: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeer7 = extern struct {
    vtable: *const VTable,
    pub fn RaiseNotificationEvent(self: *@This(), notificationKind: AutomationNotificationKind, notificationProcessing: AutomationNotificationProcessing, displayString: HSTRING, activityId: HSTRING) core.HResult!void {
        const _c = self.vtable.RaiseNotificationEvent(@ptrCast(self), notificationKind, notificationProcessing, displayString, activityId);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeer7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "796b3287-e642-48ab-b223-5208b41da9d6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RaiseNotificationEvent: *const fn(self: *anyopaque, notificationKind: AutomationNotificationKind, notificationProcessing: AutomationNotificationProcessing, displayString: HSTRING, activityId: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeer8 = extern struct {
    vtable: *const VTable,
    pub fn GetHeadingLevel(self: *@This()) core.HResult!AutomationHeadingLevel {
        var _r: AutomationHeadingLevel = undefined;
        const _c = self.vtable.GetHeadingLevel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeer8";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c6a1fe6-9a55-4d7f-9498-cfe429e92da8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetHeadingLevel: *const fn(self: *anyopaque, _r: *AutomationHeadingLevel) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeer9 = extern struct {
    vtable: *const VTable,
    pub fn IsDialog(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsDialog(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeer9";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "df2e0265-1d74-57fa-8094-f81c2f626b8c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsDialog: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerAnnotation = extern struct {
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
    pub fn getPeer(self: *@This()) core.HResult!*AutomationPeer {
        var _r: *AutomationPeer = undefined;
        const _c = self.vtable.get_Peer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPeer(self: *@This(), value: *AutomationPeer) core.HResult!void {
        const _c = self.vtable.put_Peer(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerAnnotation";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c456061-52cf-43fa-82f8-07f137351e5a";
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
        get_Peer: *const fn(self: *anyopaque, _r: **AutomationPeer) callconv(.winapi) HRESULT,
        put_Peer: *const fn(self: *anyopaque, value: *AutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerAnnotationFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), ty: AnnotationType) core.HResult!*AutomationPeerAnnotation {
        var _r: *AutomationPeerAnnotation = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), ty, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateWithPeerParameter(self: *@This(), ty: AnnotationType, peer: *AutomationPeer) core.HResult!*AutomationPeerAnnotation {
        var _r: *AutomationPeerAnnotation = undefined;
        const _c = self.vtable.CreateWithPeerParameter(@ptrCast(self), ty, peer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerAnnotationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f59c439e-c65b-43cd-9009-03fc023363a7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, ty: AnnotationType, _r: **AutomationPeerAnnotation) callconv(.winapi) HRESULT,
        CreateWithPeerParameter: *const fn(self: *anyopaque, ty: AnnotationType, peer: *AutomationPeer, _r: **AutomationPeerAnnotation) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerAnnotationStatics = extern struct {
    vtable: *const VTable,
    pub fn getTypeProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_TypeProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPeerProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_PeerProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerAnnotationStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8809a87d-09b2-4d45-b78b-1d3b3b09f661";
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
        get_PeerProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*AutomationPeer {
        var _r: *AutomationPeer = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20c27545-a88b-43c8-bc24-cea9dafd04a3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **AutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerOverrides = extern struct {
    vtable: *const VTable,
    pub fn GetPatternCore(self: *@This(), patternInterface: PatternInterface) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetPatternCore(@ptrCast(self), patternInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAcceleratorKeyCore(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAcceleratorKeyCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAccessKeyCore(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAccessKeyCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAutomationControlTypeCore(self: *@This()) core.HResult!AutomationControlType {
        var _r: AutomationControlType = undefined;
        const _c = self.vtable.GetAutomationControlTypeCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAutomationIdCore(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetAutomationIdCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetBoundingRectangleCore(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.GetBoundingRectangleCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetChildrenCore(self: *@This()) core.HResult!*IVector(AutomationPeer) {
        var _r: *IVector(AutomationPeer) = undefined;
        const _c = self.vtable.GetChildrenCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetClassNameCore(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetClassNameCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetClickablePointCore(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.GetClickablePointCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetHelpTextCore(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetHelpTextCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemStatusCore(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetItemStatusCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetItemTypeCore(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetItemTypeCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLabeledByCore(self: *@This()) core.HResult!*AutomationPeer {
        var _r: *AutomationPeer = undefined;
        const _c = self.vtable.GetLabeledByCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLocalizedControlTypeCore(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetLocalizedControlTypeCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetNameCore(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetNameCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetOrientationCore(self: *@This()) core.HResult!AutomationOrientation {
        var _r: AutomationOrientation = undefined;
        const _c = self.vtable.GetOrientationCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn HasKeyboardFocusCore(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.HasKeyboardFocusCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsContentElementCore(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsContentElementCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsControlElementCore(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsControlElementCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsEnabledCore(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsEnabledCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsKeyboardFocusableCore(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsKeyboardFocusableCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsOffscreenCore(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsOffscreenCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsPasswordCore(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPasswordCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsRequiredForFormCore(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsRequiredForFormCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetFocusCore(self: *@This()) core.HResult!void {
        const _c = self.vtable.SetFocusCore(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetPeerFromPointCore(self: *@This(), point: Point) core.HResult!*AutomationPeer {
        var _r: *AutomationPeer = undefined;
        const _c = self.vtable.GetPeerFromPointCore(@ptrCast(self), point, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLiveSettingCore(self: *@This()) core.HResult!AutomationLiveSetting {
        var _r: AutomationLiveSetting = undefined;
        const _c = self.vtable.GetLiveSettingCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bea93e67-dbee-4f7b-af0d-a79aae5333bf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPatternCore: *const fn(self: *anyopaque, patternInterface: PatternInterface, _r: **IInspectable) callconv(.winapi) HRESULT,
        GetAcceleratorKeyCore: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetAccessKeyCore: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetAutomationControlTypeCore: *const fn(self: *anyopaque, _r: *AutomationControlType) callconv(.winapi) HRESULT,
        GetAutomationIdCore: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetBoundingRectangleCore: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        GetChildrenCore: *const fn(self: *anyopaque, _r: **IVector(AutomationPeer)) callconv(.winapi) HRESULT,
        GetClassNameCore: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetClickablePointCore: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        GetHelpTextCore: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetItemStatusCore: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetItemTypeCore: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetLabeledByCore: *const fn(self: *anyopaque, _r: **AutomationPeer) callconv(.winapi) HRESULT,
        GetLocalizedControlTypeCore: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetNameCore: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetOrientationCore: *const fn(self: *anyopaque, _r: *AutomationOrientation) callconv(.winapi) HRESULT,
        HasKeyboardFocusCore: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsContentElementCore: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsControlElementCore: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsEnabledCore: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsKeyboardFocusableCore: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsOffscreenCore: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsPasswordCore: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsRequiredForFormCore: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        SetFocusCore: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetPeerFromPointCore: *const fn(self: *anyopaque, point: Point, _r: **AutomationPeer) callconv(.winapi) HRESULT,
        GetLiveSettingCore: *const fn(self: *anyopaque, _r: *AutomationLiveSetting) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerOverrides2 = extern struct {
    vtable: *const VTable,
    pub fn ShowContextMenuCore(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowContextMenuCore(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetControlledPeersCore(self: *@This()) core.HResult!*IVectorView(AutomationPeer) {
        var _r: *IVectorView(AutomationPeer) = undefined;
        const _c = self.vtable.GetControlledPeersCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2603682a-9da6-4023-b496-496e5ef228d2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowContextMenuCore: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GetControlledPeersCore: *const fn(self: *anyopaque, _r: **IVectorView(AutomationPeer)) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerOverrides3 = extern struct {
    vtable: *const VTable,
    pub fn NavigateCore(self: *@This(), direction: AutomationNavigationDirection) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.NavigateCore(@ptrCast(self), direction, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetElementFromPointCore(self: *@This(), pointInWindowCoordinates: Point) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetElementFromPointCore(@ptrCast(self), pointInWindowCoordinates, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFocusedElementCore(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetFocusedElementCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetAnnotationsCore(self: *@This()) core.HResult!*IVector(AutomationPeerAnnotation) {
        var _r: *IVector(AutomationPeerAnnotation) = undefined;
        const _c = self.vtable.GetAnnotationsCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPositionInSetCore(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetPositionInSetCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetSizeOfSetCore(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetSizeOfSetCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLevelCore(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetLevelCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6f0c4ad-4d39-49e6-bb91-d924eefd8538";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        NavigateCore: *const fn(self: *anyopaque, direction: AutomationNavigationDirection, _r: **IInspectable) callconv(.winapi) HRESULT,
        GetElementFromPointCore: *const fn(self: *anyopaque, pointInWindowCoordinates: Point, _r: **IInspectable) callconv(.winapi) HRESULT,
        GetFocusedElementCore: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        GetAnnotationsCore: *const fn(self: *anyopaque, _r: **IVector(AutomationPeerAnnotation)) callconv(.winapi) HRESULT,
        GetPositionInSetCore: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetSizeOfSetCore: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        GetLevelCore: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerOverrides4 = extern struct {
    vtable: *const VTable,
    pub fn GetLandmarkTypeCore(self: *@This()) core.HResult!AutomationLandmarkType {
        var _r: AutomationLandmarkType = undefined;
        const _c = self.vtable.GetLandmarkTypeCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetLocalizedLandmarkTypeCore(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetLocalizedLandmarkTypeCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b186cda2-5d46-4bcd-a811-269ad15b3aee";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetLandmarkTypeCore: *const fn(self: *anyopaque, _r: *AutomationLandmarkType) callconv(.winapi) HRESULT,
        GetLocalizedLandmarkTypeCore: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerOverrides5 = extern struct {
    vtable: *const VTable,
    pub fn IsPeripheralCore(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPeripheralCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsDataValidForFormCore(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsDataValidForFormCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFullDescriptionCore(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetFullDescriptionCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDescribedByCore(self: *@This()) core.HResult!*IIterable(AutomationPeer) {
        var _r: *IIterable(AutomationPeer) = undefined;
        const _c = self.vtable.GetDescribedByCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFlowsToCore(self: *@This()) core.HResult!*IIterable(AutomationPeer) {
        var _r: *IIterable(AutomationPeer) = undefined;
        const _c = self.vtable.GetFlowsToCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFlowsFromCore(self: *@This()) core.HResult!*IIterable(AutomationPeer) {
        var _r: *IIterable(AutomationPeer) = undefined;
        const _c = self.vtable.GetFlowsFromCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c847c85-781e-49f7-9fef-b9e14d014707";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsPeripheralCore: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        IsDataValidForFormCore: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetFullDescriptionCore: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        GetDescribedByCore: *const fn(self: *anyopaque, _r: **IIterable(AutomationPeer)) callconv(.winapi) HRESULT,
        GetFlowsToCore: *const fn(self: *anyopaque, _r: **IIterable(AutomationPeer)) callconv(.winapi) HRESULT,
        GetFlowsFromCore: *const fn(self: *anyopaque, _r: **IIterable(AutomationPeer)) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerOverrides6 = extern struct {
    vtable: *const VTable,
    pub fn GetCultureCore(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetCultureCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e98babe7-f6ff-444c-9c0d-277eaf0ad9c0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetCultureCore: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerOverrides8 = extern struct {
    vtable: *const VTable,
    pub fn GetHeadingLevelCore(self: *@This()) core.HResult!AutomationHeadingLevel {
        var _r: AutomationHeadingLevel = undefined;
        const _c = self.vtable.GetHeadingLevelCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides8";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0e1ebbd4-a003-4936-8175-f5457c07f0c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetHeadingLevelCore: *const fn(self: *anyopaque, _r: *AutomationHeadingLevel) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerOverrides9 = extern struct {
    vtable: *const VTable,
    pub fn IsDialogCore(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsDialogCore(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerOverrides9";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3709e8b-091a-5db5-b896-ff78f01990c9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IsDialogCore: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerProtected = extern struct {
    vtable: *const VTable,
    pub fn PeerFromProvider(self: *@This(), provider: *IRawElementProviderSimple) core.HResult!*AutomationPeer {
        var _r: *AutomationPeer = undefined;
        const _c = self.vtable.PeerFromProvider(@ptrCast(self), provider, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ProviderFromPeer(self: *@This(), peer: *AutomationPeer) core.HResult!*IRawElementProviderSimple {
        var _r: *IRawElementProviderSimple = undefined;
        const _c = self.vtable.ProviderFromPeer(@ptrCast(self), peer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerProtected";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f4b40e52-642f-4629-a54a-ea5d2349c448";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        PeerFromProvider: *const fn(self: *anyopaque, provider: *IRawElementProviderSimple, _r: **AutomationPeer) callconv(.winapi) HRESULT,
        ProviderFromPeer: *const fn(self: *anyopaque, peer: *AutomationPeer, _r: **IRawElementProviderSimple) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerStatics = extern struct {
    vtable: *const VTable,
    pub fn ListenerExists(self: *@This(), eventId: AutomationEvents) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.ListenerExists(@ptrCast(self), eventId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "562f7fb0-a331-4a9c-9dec-bfb7586fffff";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ListenerExists: *const fn(self: *anyopaque, eventId: AutomationEvents, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAutomationPeerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn GenerateRawElementProviderRuntimeId(self: *@This()) core.HResult!RawElementProviderRuntimeId {
        var _r: RawElementProviderRuntimeId = undefined;
        const _c = self.vtable.GenerateRawElementProviderRuntimeId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IAutomationPeerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "572c5714-7f87-4271-819f-6cf4c4d022d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GenerateRawElementProviderRuntimeId: *const fn(self: *anyopaque, _r: *RawElementProviderRuntimeId) callconv(.winapi) HRESULT,
    };
};
pub const IButtonAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb77efbe-39ec-4508-8ac3-51a1424027d7";
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
pub const IButtonAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *Button, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ButtonAutomationPeer {
        var _r: *ButtonAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IButtonAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3fdb9f49-f4ab-4780-8644-03376299a175";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *Button, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ButtonAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IButtonBaseAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IButtonBaseAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a4f3b5b6-7585-4e0b-96d2-08cf6f28befa";
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
pub const IButtonBaseAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ButtonBase, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ButtonBaseAutomationPeer {
        var _r: *ButtonBaseAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IButtonBaseAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a04091e-e6b2-4c60-a759-c13ca45165ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ButtonBase, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ButtonBaseAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ICalendarDatePickerAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ICalendarDatePickerAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40d8938e-db5e-4b03-beba-d10f62419787";
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
pub const ICalendarDatePickerAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *CalendarDatePicker, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CalendarDatePickerAutomationPeer {
        var _r: *CalendarDatePickerAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ICalendarDatePickerAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ab705dd2-d293-45bf-9f19-26f7603a5e9b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *CalendarDatePicker, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **CalendarDatePickerAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ICaptureElementAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ICaptureElementAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dcc44ee0-fa45-45c6-8bb7-320d808f5958";
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
pub const ICaptureElementAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *CaptureElement, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CaptureElementAutomationPeer {
        var _r: *CaptureElementAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ICaptureElementAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b92ef48-85e9-4869-b175-8f7cf45a6d9f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *CaptureElement, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **CaptureElementAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ICheckBoxAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ICheckBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "eb15bc42-c0a9-46c6-ac24-b83de429c733";
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
pub const ICheckBoxAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *CheckBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*CheckBoxAutomationPeer {
        var _r: *CheckBoxAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ICheckBoxAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b75c775d-eb8f-44ef-a27c-e26ac7de8333";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *CheckBox, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **CheckBoxAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IColorPickerSliderAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IColorPickerSliderAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a514215a-7293-4577-924c-47d4e0bf9b90";
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
pub const IColorPickerSliderAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ColorPickerSlider, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ColorPickerSliderAutomationPeer {
        var _r: *ColorPickerSliderAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IColorPickerSliderAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a55c77e-9dd6-45a3-9042-b40200fea1a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ColorPickerSlider, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ColorPickerSliderAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IColorSpectrumAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IColorSpectrumAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "15d5ba03-010d-4ff7-9087-f4dd09f831b7";
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
pub const IColorSpectrumAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ColorSpectrum, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ColorSpectrumAutomationPeer {
        var _r: *ColorSpectrumAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IColorSpectrumAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0ac400e1-b743-4496-837a-8889e6ac6497";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ColorSpectrum, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ColorSpectrumAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IComboBoxAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IComboBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7eb40d0b-75c5-4263-ba6a-d4a54fb0f239";
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
pub const IComboBoxAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ComboBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ComboBoxAutomationPeer {
        var _r: *ComboBoxAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IComboBoxAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "098e5b0d-1b90-40b9-9be3-b23267eb13cf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ComboBox, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ComboBoxAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IComboBoxItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IComboBoxItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "12ddc76e-9552-446a-82ee-938cc371800f";
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
pub const IComboBoxItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ComboBoxItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ComboBoxItemAutomationPeer {
        var _r: *ComboBoxItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IComboBoxItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "134ac7fc-397a-403f-a6ec-1ce8beda15e5";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ComboBoxItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ComboBoxItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IComboBoxItemDataAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IComboBoxItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4fef6df2-289c-4c04-831b-5a668c6d7104";
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
pub const IComboBoxItemDataAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithParentAndItem(self: *@This(), item: *IInspectable, parent: *ComboBoxAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ComboBoxItemDataAutomationPeer {
        var _r: *ComboBoxItemDataAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithParentAndItem(@ptrCast(self), item, parent, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IComboBoxItemDataAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "14a8d4f6-469a-41ba-9d93-44a1a55da872";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithParentAndItem: *const fn(self: *anyopaque, item: *IInspectable, parent: *ComboBoxAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ComboBoxItemDataAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IDatePickerAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IDatePickerAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d07d357f-a0b9-45dc-991a-76c505e7d0f5";
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
pub const IDatePickerAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *DatePicker, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DatePickerAutomationPeer {
        var _r: *DatePickerAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IDatePickerAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5667d19-9157-4436-9f4d-7fb99174b48e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *DatePicker, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **DatePickerAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IDatePickerFlyoutPresenterAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IDatePickerFlyoutPresenterAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "752aed38-c2bf-4880-82b2-a6c05e90c135";
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
pub const IFlipViewAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IFlipViewAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8ec0353a-4284-4b00-aef8-a2688ea5e3c4";
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
pub const IFlipViewAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *FlipView, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FlipViewAutomationPeer {
        var _r: *FlipViewAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IFlipViewAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4395ab0d-8d83-483c-88eb-e2617b0d293f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *FlipView, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **FlipViewAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IFlipViewItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IFlipViewItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c83034de-fa08-4bd3-aeb2-d2e5bfa04df9";
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
pub const IFlipViewItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *FlipViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FlipViewItemAutomationPeer {
        var _r: *FlipViewItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IFlipViewItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69109356-d0e5-4c10-a09c-ad0bf1b0cb01";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *FlipViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **FlipViewItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IFlipViewItemDataAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IFlipViewItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b0986175-00bc-4118-8a6f-16ee9c15d968";
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
pub const IFlipViewItemDataAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithParentAndItem(self: *@This(), item: *IInspectable, parent: *FlipViewAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FlipViewItemDataAutomationPeer {
        var _r: *FlipViewItemDataAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithParentAndItem(@ptrCast(self), item, parent, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IFlipViewItemDataAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c864393-0aea-4e78-bc11-b775cac4114c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithParentAndItem: *const fn(self: *anyopaque, item: *IInspectable, parent: *FlipViewAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **FlipViewItemDataAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IFlyoutPresenterAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IFlyoutPresenterAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a01840b4-5fca-456f-98ea-300eb40b585e";
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
pub const IFlyoutPresenterAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *FlyoutPresenter, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FlyoutPresenterAutomationPeer {
        var _r: *FlyoutPresenterAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IFlyoutPresenterAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f350155f-8924-44c0-ba44-653fe79f1efb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *FlyoutPresenter, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **FlyoutPresenterAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElementAutomationPeer = extern struct {
    vtable: *const VTable,
    pub fn getOwner(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Owner(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IFrameworkElementAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b90ad781-bfeb-4451-bd47-9f3a63ebd24a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Owner: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElementAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *FrameworkElement, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*FrameworkElementAutomationPeer {
        var _r: *FrameworkElementAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IFrameworkElementAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0db9b8bc-b812-48e3-af1f-dbc57600c325";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *FrameworkElement, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **FrameworkElementAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkElementAutomationPeerStatics = extern struct {
    vtable: *const VTable,
    pub fn FromElement(self: *@This(), element: *UIElement) core.HResult!*AutomationPeer {
        var _r: *AutomationPeer = undefined;
        const _c = self.vtable.FromElement(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreatePeerForElement(self: *@This(), element: *UIElement) core.HResult!*AutomationPeer {
        var _r: *AutomationPeer = undefined;
        const _c = self.vtable.CreatePeerForElement(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IFrameworkElementAutomationPeerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b9c0b997-2820-44a1-a5a8-9b801edc269e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FromElement: *const fn(self: *anyopaque, element: *UIElement, _r: **AutomationPeer) callconv(.winapi) HRESULT,
        CreatePeerForElement: *const fn(self: *anyopaque, element: *UIElement, _r: **AutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IGridViewAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IGridViewAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c4401a4-d951-49ca-8f82-c7f3c60681b0";
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
pub const IGridViewAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *GridView, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GridViewAutomationPeer {
        var _r: *GridViewAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IGridViewAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8aca59dd-22a7-4800-894b-c1f485f38953";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *GridView, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **GridViewAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IGridViewHeaderItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IGridViewHeaderItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3dcef3a-e08a-48e7-b23a-2be5b66e474e";
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
pub const IGridViewHeaderItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *GridViewHeaderItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GridViewHeaderItemAutomationPeer {
        var _r: *GridViewHeaderItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IGridViewHeaderItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2c80b4d2-ffc2-4157-88dd-59cd92e39715";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *GridViewHeaderItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **GridViewHeaderItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IGridViewItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IGridViewItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93ef2d07-346c-4166-a4ba-bc6a181e7f33";
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
pub const IGridViewItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *GridViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GridViewItemAutomationPeer {
        var _r: *GridViewItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IGridViewItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fafec376-f22e-466d-913c-ae24ccdb160f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *GridViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **GridViewItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IGridViewItemDataAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IGridViewItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3f4868f-29d4-4094-8c54-ea61a88294a4";
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
pub const IGridViewItemDataAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithParentAndItem(self: *@This(), item: *IInspectable, parent: *GridViewAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GridViewItemDataAutomationPeer {
        var _r: *GridViewItemDataAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithParentAndItem(@ptrCast(self), item, parent, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IGridViewItemDataAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a65e7a88-770d-402c-996f-67506af2a4af";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithParentAndItem: *const fn(self: *anyopaque, item: *IInspectable, parent: *GridViewAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **GridViewItemDataAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IGroupItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IGroupItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1914fe6d-0740-4236-9ee1-38cf19c1c388";
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
pub const IGroupItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *GroupItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*GroupItemAutomationPeer {
        var _r: *GroupItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IGroupItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56a64567-f21c-4c90-b379-15a27c7f8409";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *GroupItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **GroupItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IHubAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IHubAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ddee056-4ebc-4620-a05d-903e3c9a4ead";
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
pub const IHubAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *Hub, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*HubAutomationPeer {
        var _r: *HubAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IHubAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c762d43f-79dd-43ee-8777-8d08b39aa065";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *Hub, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **HubAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IHubSectionAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IHubSectionAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "16d91ff7-7431-4d82-83ce-cfa3192b0f18";
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
pub const IHubSectionAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *HubSection, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*HubSectionAutomationPeer {
        var _r: *HubSectionAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IHubSectionAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c68e27e8-17ec-4329-91ae-2d0b2339d498";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *HubSection, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **HubSectionAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IHyperlinkButtonAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IHyperlinkButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa7afcb1-0edf-46d9-aa9e-0eb21d140097";
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
pub const IHyperlinkButtonAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *HyperlinkButton, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*HyperlinkButtonAutomationPeer {
        var _r: *HyperlinkButtonAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IHyperlinkButtonAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "59bc1661-c182-49af-9526-44b88e628455";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *HyperlinkButton, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **HyperlinkButtonAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IImageAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IImageAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9b0bbf8c-60a2-48bf-ab2c-1a52a451d2d4";
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
pub const IImageAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *Image, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ImageAutomationPeer {
        var _r: *ImageAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IImageAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "90304003-687d-47bf-b3a2-4babcad8ef50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *Image, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ImageAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IInkToolbarAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IInkToolbarAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "123baaa4-f2e8-4bcb-9382-5dfdd11fe45f";
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
pub const IItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub fn getItem(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Item(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getItemsControlAutomationPeer(self: *@This()) core.HResult!*ItemsControlAutomationPeer {
        var _r: *ItemsControlAutomationPeer = undefined;
        const _c = self.vtable.get_ItemsControlAutomationPeer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "953c34f6-3b31-47a7-b3bf-25d3ae99c317";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Item: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_ItemsControlAutomationPeer: *const fn(self: *anyopaque, _r: **ItemsControlAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithParentAndItem(self: *@This(), item: *IInspectable, parent: *ItemsControlAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ItemAutomationPeer {
        var _r: *ItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithParentAndItem(@ptrCast(self), item, parent, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29065073-de3d-4d3f-97b4-4d6f9d53444d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithParentAndItem: *const fn(self: *anyopaque, item: *IInspectable, parent: *ItemsControlAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IItemsControlAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IItemsControlAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "96e76bf1-37f7-4088-925d-65268e83e34d";
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
pub const IItemsControlAutomationPeer2 = extern struct {
    vtable: *const VTable,
    pub fn CreateItemAutomationPeer(self: *@This(), item: *IInspectable) core.HResult!*ItemAutomationPeer {
        var _r: *ItemAutomationPeer = undefined;
        const _c = self.vtable.CreateItemAutomationPeer(@ptrCast(self), item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IItemsControlAutomationPeer2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c48d8917-95a8-47b8-a517-bf891a6c039b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateItemAutomationPeer: *const fn(self: *anyopaque, item: *IInspectable, _r: **ItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IItemsControlAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ItemsControl, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ItemsControlAutomationPeer {
        var _r: *ItemsControlAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IItemsControlAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4038a259-2e1a-49ca-a533-c64f181577e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ItemsControl, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ItemsControlAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IItemsControlAutomationPeerOverrides2 = extern struct {
    vtable: *const VTable,
    pub fn OnCreateItemAutomationPeer(self: *@This(), item: *IInspectable) core.HResult!*ItemAutomationPeer {
        var _r: *ItemAutomationPeer = undefined;
        const _c = self.vtable.OnCreateItemAutomationPeer(@ptrCast(self), item, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IItemsControlAutomationPeerOverrides2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "361dc0e8-b56f-45e9-80fe-10a0fb0fe177";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        OnCreateItemAutomationPeer: *const fn(self: *anyopaque, item: *IInspectable, _r: **ItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IListBoxAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8cd0d608-b402-4a6e-bd9a-343f8845eb32";
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
pub const IListBoxAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ListBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListBoxAutomationPeer {
        var _r: *ListBoxAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListBoxAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e2362185-7df6-49f7-8abc-4c33f1a3d46e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ListBox, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ListBoxAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IListBoxItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListBoxItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1bc6e1c6-2997-42df-99eb-92bc1dd149fb";
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
pub const IListBoxItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ListBoxItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListBoxItemAutomationPeer {
        var _r: *ListBoxItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListBoxItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "509f9dd8-b0aa-443f-a110-41209af44f1c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ListBoxItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ListBoxItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IListBoxItemDataAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListBoxItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fd7d5fee-fde0-482a-8084-dcebba5b9806";
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
pub const IListBoxItemDataAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithParentAndItem(self: *@This(), item: *IInspectable, parent: *ListBoxAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListBoxItemDataAutomationPeer {
        var _r: *ListBoxItemDataAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithParentAndItem(@ptrCast(self), item, parent, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListBoxItemDataAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d7924e16-bd8d-4662-a995-20ff9a056093";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithParentAndItem: *const fn(self: *anyopaque, item: *IInspectable, parent: *ListBoxAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ListBoxItemDataAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IListPickerFlyoutPresenterAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListPickerFlyoutPresenterAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56dfdc58-2395-4060-8047-8ea463698a24";
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
pub const IListViewAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListViewAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73cecc87-c0dc-4260-9148-75e9864a7230";
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
pub const IListViewAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ListView, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewAutomationPeer {
        var _r: *ListViewAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListViewAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "65f39174-eaa2-4e44-8be6-4cca28cd0288";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ListView, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ListViewAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IListViewBaseAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListViewBaseAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87ec7649-b83d-4e55-9afd-bd835e748f5c";
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
pub const IListViewBaseAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ListViewBase, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewBaseAutomationPeer {
        var _r: *ListViewBaseAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListViewBaseAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "70d3c2be-8950-4647-9362-fd002f8ff82e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ListViewBase, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ListViewBaseAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IListViewBaseHeaderItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListViewBaseHeaderItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7cb8b732-c1f0-4a3c-bc14-85dd48dedb85";
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
pub const IListViewBaseHeaderItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ListViewBaseHeaderItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewBaseHeaderItemAutomationPeer {
        var _r: *ListViewBaseHeaderItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListViewBaseHeaderItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "40ec995f-d631-4004-832e-6d8643e51561";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ListViewBaseHeaderItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ListViewBaseHeaderItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IListViewHeaderItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListViewHeaderItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "67ab1e4b-ad61-4c88-ba45-0f3a8d061f8f";
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
pub const IListViewHeaderItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ListViewHeaderItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewHeaderItemAutomationPeer {
        var _r: *ListViewHeaderItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListViewHeaderItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "07668694-2ca5-4be4-a8b9-592d48f76087";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ListViewHeaderItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ListViewHeaderItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IListViewItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListViewItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ca114e70-a16d-4d09-a1cf-1856ef98a9ec";
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
pub const IListViewItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ListViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewItemAutomationPeer {
        var _r: *ListViewItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListViewItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c47dfbc0-facc-4024-a73b-17ec4e662654";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ListViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ListViewItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IListViewItemDataAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListViewItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "15a8d7fd-d7a5-4a6c-963c-6f7ce464671a";
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
pub const IListViewItemDataAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithParentAndItem(self: *@This(), item: *IInspectable, parent: *ListViewBaseAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewItemDataAutomationPeer {
        var _r: *ListViewItemDataAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithParentAndItem(@ptrCast(self), item, parent, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IListViewItemDataAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0db12bb-d715-4523-acc0-1e1072d8e32b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithParentAndItem: *const fn(self: *anyopaque, item: *IInspectable, parent: *ListViewBaseAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ListViewItemDataAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ILoopingSelectorAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ILoopingSelectorAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "50b406ca-bae9-4816-8a3a-0cb4f96478a2";
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
pub const ILoopingSelectorItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ILoopingSelectorItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d3fa68bf-04cf-4f4c-8d3e-4780a19d4788";
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
pub const ILoopingSelectorItemDataAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ILoopingSelectorItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef567e32-7cd2-4d32-9590-1f588d5ef38d";
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
pub const IMapControlAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMapControlAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "425beee4-f2e8-4bcb-9382-5dfdd11fe45f";
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
pub const IMediaElementAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMediaElementAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ba0b9fc2-a6e2-41a5-b17a-d1594613efba";
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
pub const IMediaElementAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *MediaElement, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MediaElementAutomationPeer {
        var _r: *MediaElementAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMediaElementAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b2ad3b28-7575-4173-9bc7-80367a164ed2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *MediaElement, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MediaElementAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IMediaPlayerElementAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMediaPlayerElementAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "02bed209-3f65-4fdd-b5ca-c4750d4e6ea4";
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
pub const IMediaPlayerElementAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *MediaPlayerElement, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MediaPlayerElementAutomationPeer {
        var _r: *MediaPlayerElementAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMediaPlayerElementAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08848077-82af-4d19-b170-282a9e0e7f37";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *MediaPlayerElement, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MediaPlayerElementAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IMediaTransportControlsAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMediaTransportControlsAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a3ad8d93-79f8-4958-a3c8-980defb83d15";
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
pub const IMediaTransportControlsAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *MediaTransportControls, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MediaTransportControlsAutomationPeer {
        var _r: *MediaTransportControlsAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMediaTransportControlsAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f41cb003-e103-4ab0-812a-a08fbdb570ce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *MediaTransportControls, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MediaTransportControlsAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IMenuBarAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMenuBarAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4b6adcf1-f274-5592-85a8-7b099e99b320";
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
pub const IMenuBarAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), owner: *MenuBar, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MenuBarAutomationPeer {
        var _r: *MenuBarAutomationPeer = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMenuBarAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a094871-4a9b-5a0b-9fda-7bc3ae957c53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, owner: *MenuBar, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MenuBarAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IMenuBarItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMenuBarItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0fce49b4-cff5-5c4b-98ee-e75fdddf799a";
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
pub const IMenuBarItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), owner: *MenuBarItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MenuBarItemAutomationPeer {
        var _r: *MenuBarItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMenuBarItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9c77746-130f-5b19-83a6-61db584613aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, owner: *MenuBarItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MenuBarItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IMenuFlyoutItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMenuFlyoutItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1fc19462-21df-456e-aa11-8fac6b4b2af6";
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
pub const IMenuFlyoutItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *MenuFlyoutItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MenuFlyoutItemAutomationPeer {
        var _r: *MenuFlyoutItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMenuFlyoutItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d08bfcb8-20d1-45d8-a2c2-2f130df714e0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *MenuFlyoutItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MenuFlyoutItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IMenuFlyoutPresenterAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMenuFlyoutPresenterAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e244a871-fcbb-48fc-8a93-41ea134b53ce";
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
pub const IMenuFlyoutPresenterAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *MenuFlyoutPresenter, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MenuFlyoutPresenterAutomationPeer {
        var _r: *MenuFlyoutPresenterAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IMenuFlyoutPresenterAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "07b5172d-761d-452b-9e6d-fa2a8be0ad26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *MenuFlyoutPresenter, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **MenuFlyoutPresenterAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const INavigationViewItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.INavigationViewItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "309847a5-9971-4d8d-a81c-085c7086a1b9";
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
pub const INavigationViewItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *NavigationViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*NavigationViewItemAutomationPeer {
        var _r: *NavigationViewItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.INavigationViewItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0bc2835d-aa38-4f97-9664-e6fc821d81ed";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *NavigationViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **NavigationViewItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IPasswordBoxAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IPasswordBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "684f065e-3df3-4b9f-82ad-8819db3b218a";
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
pub const IPasswordBoxAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *PasswordBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PasswordBoxAutomationPeer {
        var _r: *PasswordBoxAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IPasswordBoxAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac3d7ede-dca4-481c-b520-4a9b3f3b179c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *PasswordBox, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **PasswordBoxAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IPersonPictureAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IPersonPictureAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "27156d4c-a66f-4aaf-8286-4f796d30628c";
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
pub const IPersonPictureAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *PersonPicture, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PersonPictureAutomationPeer {
        var _r: *PersonPictureAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IPersonPictureAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a95f1f6d-2524-44a4-97fd-1181130100ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *PersonPicture, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **PersonPictureAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IPickerFlyoutPresenterAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IPickerFlyoutPresenterAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "28414bf7-8382-4eae-93c1-d6f035aa8155";
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
pub const IPivotAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IPivotAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e715a8f8-3b9d-402c-81e2-6e912ef58981";
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
pub const IPivotAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *Pivot) core.HResult!*PivotAutomationPeer {
        var _r: *PivotAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IPivotAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3efe0f94-0c91-4341-b9ac-1b56b4e6b84f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *Pivot, _r: **PivotAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IPivotItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IPivotItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1a4241ad-5d55-4d27-b40f-2d37506fbe78";
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
pub const IPivotItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *PivotItem) core.HResult!*PivotItemAutomationPeer {
        var _r: *PivotItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IPivotItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f2810471-183f-416b-b41a-1e5a958a91f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *PivotItem, _r: **PivotItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IPivotItemDataAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IPivotItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a2a3b788-ea1d-48b7-88ee-f08b6aa07fee";
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
pub const IPivotItemDataAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithParentAndItem(self: *@This(), item: *IInspectable, parent: *PivotAutomationPeer) core.HResult!*PivotItemDataAutomationPeer {
        var _r: *PivotItemDataAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithParentAndItem(@ptrCast(self), item, parent, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IPivotItemDataAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "517a2480-d3b6-412e-82b6-94a0a84c13b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithParentAndItem: *const fn(self: *anyopaque, item: *IInspectable, parent: *PivotAutomationPeer, _r: **PivotItemDataAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IProgressBarAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IProgressBarAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93f48f86-d840-4fb6-ac2f-5f779b854b0d";
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
pub const IProgressBarAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ProgressBar, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ProgressBarAutomationPeer {
        var _r: *ProgressBarAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IProgressBarAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "364679ab-b80f-41b4-8eea-2f5251bc739c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ProgressBar, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ProgressBarAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IProgressRingAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IProgressRingAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc305eee-39d3-4eeb-ac33-2394de123e2e";
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
pub const IProgressRingAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ProgressRing, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ProgressRingAutomationPeer {
        var _r: *ProgressRingAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IProgressRingAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f3db204b-157e-40bc-9593-55bc5c71a4f6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ProgressRing, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ProgressRingAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IRadioButtonAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRadioButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7e6a5ed8-0b30-4743-b102-dcdf548e3131";
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
pub const IRadioButtonAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *RadioButton, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RadioButtonAutomationPeer {
        var _r: *RadioButtonAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRadioButtonAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4940c4fd-3d88-49ca-8f31-924187af0bfe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *RadioButton, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **RadioButtonAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IRangeBaseAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRangeBaseAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e454b549-4b2c-42ad-b04b-d35947d1ee50";
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
pub const IRangeBaseAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *RangeBase, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RangeBaseAutomationPeer {
        var _r: *RangeBaseAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRangeBaseAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "827c7601-3078-4479-95ea-91374ca06207";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *RangeBase, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **RangeBaseAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IRatingControlAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRatingControlAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3d14349a-9963-4a47-823c-f457cb3209d5";
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
pub const IRatingControlAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *RatingControl, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RatingControlAutomationPeer {
        var _r: *RatingControlAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRatingControlAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f179f272-9846-4632-8b9c-be6fa8d3c9bb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *RatingControl, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **RatingControlAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IRepeatButtonAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRepeatButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29e41ad5-a8ac-4e8a-83d8-09e37e054257";
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
pub const IRepeatButtonAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *RepeatButton, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RepeatButtonAutomationPeer {
        var _r: *RepeatButtonAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRepeatButtonAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6a6ff9d4-575e-4e60-bdd6-ec14419b4ff6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *RepeatButton, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **RepeatButtonAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IRichEditBoxAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRichEditBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c69f5c04-16ee-467a-a833-c3da8458ad64";
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
pub const IRichEditBoxAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *RichEditBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RichEditBoxAutomationPeer {
        var _r: *RichEditBoxAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRichEditBoxAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "752c8399-d296-4d87-9020-a4750e885b3c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *RichEditBox, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **RichEditBoxAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IRichTextBlockAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRichTextBlockAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "93a01a9c-9609-41fa-82f3-909c09f49a72";
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
pub const IRichTextBlockAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *RichTextBlock, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RichTextBlockAutomationPeer {
        var _r: *RichTextBlockAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRichTextBlockAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2038ae61-1389-467a-aed6-37334da9622b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *RichTextBlock, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **RichTextBlockAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IRichTextBlockOverflowAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRichTextBlockOverflowAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8c9a409a-2736-437b-ab36-a16a202f105d";
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
pub const IRichTextBlockOverflowAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *RichTextBlockOverflow, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RichTextBlockOverflowAutomationPeer {
        var _r: *RichTextBlockOverflowAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IRichTextBlockOverflowAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd5eb663-2c14-4665-adef-f2b033947beb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *RichTextBlockOverflow, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **RichTextBlockOverflowAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IScrollBarAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IScrollBarAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69e0c369-bbe7-41f2-87ca-aad813fe550e";
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
pub const IScrollBarAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ScrollBar, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ScrollBarAutomationPeer {
        var _r: *ScrollBarAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IScrollBarAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e1302110-afeb-4595-8e3d-edc0844a2b21";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ScrollBar, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ScrollBarAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IScrollViewerAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IScrollViewerAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d985f259-1b09-4e88-88fd-421750dc6b45";
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
pub const IScrollViewerAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ScrollViewer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ScrollViewerAutomationPeer {
        var _r: *ScrollViewerAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IScrollViewerAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "270dff7d-d96d-48f9-a36a-c252aa9c4670";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ScrollViewer, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ScrollViewerAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ISearchBoxAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ISearchBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "854011a4-18a6-4f30-939b-8871afa3f5e9";
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
pub const ISearchBoxAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *SearchBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SearchBoxAutomationPeer {
        var _r: *SearchBoxAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ISearchBoxAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b3c01430-7faa-41bb-8e91-7c761c5267f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *SearchBox, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **SearchBoxAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ISelectorAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ISelectorAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "162ac829-7115-43ec-b383-a7b71644069d";
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
pub const ISelectorAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *Selector, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SelectorAutomationPeer {
        var _r: *SelectorAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ISelectorAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7b525646-829b-4dcc-bd52-5a8d0399387a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *Selector, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **SelectorAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ISelectorItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ISelectorItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ae8b3477-860a-45bb-bf7c-e1b27419d1dd";
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
pub const ISelectorItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithParentAndItem(self: *@This(), item: *IInspectable, parent: *SelectorAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SelectorItemAutomationPeer {
        var _r: *SelectorItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithParentAndItem(@ptrCast(self), item, parent, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ISelectorItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66d7edfb-786d-4362-a964-ebfb21776c30";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithParentAndItem: *const fn(self: *anyopaque, item: *IInspectable, parent: *SelectorAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **SelectorItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ISemanticZoomAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ISemanticZoomAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3c2fac6c-a977-47fc-b44e-2754c0b2bea9";
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
pub const ISemanticZoomAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *SemanticZoom, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SemanticZoomAutomationPeer {
        var _r: *SemanticZoomAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ISemanticZoomAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f518d44d-a493-4496-b077-9674c7f4c5fa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *SemanticZoom, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **SemanticZoomAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ISettingsFlyoutAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ISettingsFlyoutAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0de0cdb-30cf-47a6-a5eb-9c77f0b0d6dd";
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
pub const ISettingsFlyoutAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *SettingsFlyout, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SettingsFlyoutAutomationPeer {
        var _r: *SettingsFlyoutAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ISettingsFlyoutAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f94762bd-8a14-40e4-94a7-3f33c922e945";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *SettingsFlyout, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **SettingsFlyoutAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ISliderAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ISliderAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ec30015a-d611-46d0-ae4f-6ecf27dfbaa5";
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
pub const ISliderAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *Slider, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SliderAutomationPeer {
        var _r: *SliderAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ISliderAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "971b8056-9a7a-4df9-95fa-6f5c04c91cac";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *Slider, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **SliderAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ITextBlockAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ITextBlockAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be2057f5-6715-4e69-a050-92bd0ce232a9";
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
pub const ITextBlockAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *TextBlock, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TextBlockAutomationPeer {
        var _r: *TextBlockAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ITextBlockAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "76bf924b-7ca0-4b01-bc5c-a8cf4d3691de";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *TextBlock, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **TextBlockAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ITextBoxAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ITextBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3a4f1ca0-5e5d-4d26-9067-e740bf657a9f";
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
pub const ITextBoxAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *TextBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TextBoxAutomationPeer {
        var _r: *TextBoxAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ITextBoxAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "01f0c067-966b-4130-b872-469e42bd4a7f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *TextBox, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **TextBoxAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IThumbAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IThumbAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dc2949b5-b45e-4d6d-892f-d9422c950efb";
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
pub const IThumbAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *Thumb, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ThumbAutomationPeer {
        var _r: *ThumbAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IThumbAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "970743ff-af41-4600-b55d-26d43df860e1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *Thumb, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ThumbAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ITimePickerAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ITimePickerAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a43d44ef-3285-4df7-b4a4-e4cdf36a3a17";
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
pub const ITimePickerAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *TimePicker, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TimePickerAutomationPeer {
        var _r: *TimePickerAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ITimePickerAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "978f6671-47f8-40a7-9e21-68128b16b4fd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *TimePicker, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **TimePickerAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ITimePickerFlyoutPresenterAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ITimePickerFlyoutPresenterAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da93ee27-82f1-4701-8706-be297bf06043";
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
pub const IToggleButtonAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IToggleButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "62dbe6c5-bc0a-45bb-bf77-ea0f1502891f";
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
pub const IToggleButtonAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ToggleButton, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ToggleButtonAutomationPeer {
        var _r: *ToggleButtonAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IToggleButtonAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9218cc4-ad4b-4d03-a6a4-7d59e6360004";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ToggleButton, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ToggleButtonAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IToggleMenuFlyoutItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IToggleMenuFlyoutItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6b57eafe-6af1-4903-8373-3437bf352345";
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
pub const IToggleMenuFlyoutItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ToggleMenuFlyoutItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ToggleMenuFlyoutItemAutomationPeer {
        var _r: *ToggleMenuFlyoutItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IToggleMenuFlyoutItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "94364b77-8f6c-4837-aae3-94d010d8d162";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ToggleMenuFlyoutItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ToggleMenuFlyoutItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const IToggleSwitchAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IToggleSwitchAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c011f174-e89e-4790-bf9a-78ebb5f59e9f";
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
pub const IToggleSwitchAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *ToggleSwitch, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ToggleSwitchAutomationPeer {
        var _r: *ToggleSwitchAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.IToggleSwitchAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "31f933e3-fef8-4419-9df5-d9ef7196ea34";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *ToggleSwitch, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ToggleSwitchAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ITreeViewItemAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ITreeViewItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2331d648-b617-437f-920c-71d450503e65";
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
pub const ITreeViewItemAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *TreeViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TreeViewItemAutomationPeer {
        var _r: *TreeViewItemAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ITreeViewItemAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "73d388bf-1d01-4159-82c0-2b2996dbfdce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *TreeViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **TreeViewItemAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ITreeViewListAutomationPeer = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ITreeViewListAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71c1b5bc-bb29-4479-a8a8-606be6b823ae";
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
pub const ITreeViewListAutomationPeerFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithOwner(self: *@This(), owner: *TreeViewList, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TreeViewListAutomationPeer {
        var _r: *TreeViewListAutomationPeer = undefined;
        const _c = self.vtable.CreateInstanceWithOwner(@ptrCast(self), owner, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ITreeViewListAutomationPeerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00f597e2-f811-475a-bfe6-290fe707fa88";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithOwner: *const fn(self: *anyopaque, owner: *TreeViewList, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **TreeViewListAutomationPeer) callconv(.winapi) HRESULT,
    };
};
pub const ImageAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *Image, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ImageAutomationPeer {
        const factory = @This().IImageAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ImageAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IImageAutomationPeer.GUID;
    pub const IID: Guid = IImageAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IImageAutomationPeer.SIGNATURE);
    var _IImageAutomationPeerFactoryCache: FactoryCache(IImageAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const InkToolbarAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.InkToolbarAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInkToolbarAutomationPeer.GUID;
    pub const IID: Guid = IInkToolbarAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInkToolbarAutomationPeer.SIGNATURE);
};
pub const ListBoxAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ListBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListBoxAutomationPeer {
        const factory = @This().IListBoxAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ListBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IListBoxAutomationPeer.GUID;
    pub const IID: Guid = IListBoxAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IListBoxAutomationPeer.SIGNATURE);
    var _IListBoxAutomationPeerFactoryCache: FactoryCache(IListBoxAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ListBoxItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ListBoxItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListBoxItemAutomationPeer {
        const factory = @This().IListBoxItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ListBoxItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IListBoxItemAutomationPeer.GUID;
    pub const IID: Guid = IListBoxItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IListBoxItemAutomationPeer.SIGNATURE);
    var _IListBoxItemAutomationPeerFactoryCache: FactoryCache(IListBoxItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ListBoxItemDataAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ScrollIntoView(self: *@This()) core.HResult!void {
        var this: ?*IScrollItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ScrollIntoView();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithParentAndItem(item: *IInspectable, parent: *ListBoxAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListBoxItemDataAutomationPeer {
        const factory = @This().IListBoxItemDataAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithParentAndItem(item, parent, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ListBoxItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IListBoxItemDataAutomationPeer.GUID;
    pub const IID: Guid = IListBoxItemDataAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IListBoxItemDataAutomationPeer.SIGNATURE);
    var _IListBoxItemDataAutomationPeerFactoryCache: FactoryCache(IListBoxItemDataAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ListPickerFlyoutPresenterAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ListPickerFlyoutPresenterAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IListPickerFlyoutPresenterAutomationPeer.GUID;
    pub const IID: Guid = IListPickerFlyoutPresenterAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IListPickerFlyoutPresenterAutomationPeer.SIGNATURE);
};
pub const ListViewAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ListView, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewAutomationPeer {
        const factory = @This().IListViewAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ListViewAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IListViewAutomationPeer.GUID;
    pub const IID: Guid = IListViewAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IListViewAutomationPeer.SIGNATURE);
    var _IListViewAutomationPeerFactoryCache: FactoryCache(IListViewAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ListViewHeaderItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ListViewHeaderItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewHeaderItemAutomationPeer {
        const factory = @This().IListViewHeaderItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ListViewHeaderItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IListViewHeaderItemAutomationPeer.GUID;
    pub const IID: Guid = IListViewHeaderItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IListViewHeaderItemAutomationPeer.SIGNATURE);
    var _IListViewHeaderItemAutomationPeerFactoryCache: FactoryCache(IListViewHeaderItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ListViewItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ListViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewItemAutomationPeer {
        const factory = @This().IListViewItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ListViewItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IListViewItemAutomationPeer.GUID;
    pub const IID: Guid = IListViewItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IListViewItemAutomationPeer.SIGNATURE);
    var _IListViewItemAutomationPeerFactoryCache: FactoryCache(IListViewItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ListViewItemDataAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ScrollIntoView(self: *@This()) core.HResult!void {
        var this: ?*IScrollItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ScrollIntoView();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithParentAndItem(item: *IInspectable, parent: *ListViewBaseAutomationPeer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ListViewItemDataAutomationPeer {
        const factory = @This().IListViewItemDataAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithParentAndItem(item, parent, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ListViewItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IListViewItemDataAutomationPeer.GUID;
    pub const IID: Guid = IListViewItemDataAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IListViewItemDataAutomationPeer.SIGNATURE);
    var _IListViewItemDataAutomationPeerFactoryCache: FactoryCache(IListViewItemDataAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const LoopingSelectorAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanSelectMultiple(self: *@This()) core.HResult!bool {
        var this: ?*ISelectionProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanSelectMultiple();
    }
    pub fn getIsSelectionRequired(self: *@This()) core.HResult!bool {
        var this: ?*ISelectionProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSelectionRequired();
    }
    pub fn GetSelection(self: *@This()) core.HResult![*]IRawElementProviderSimple {
        var this: ?*ISelectionProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSelection();
    }
    pub fn FindItemByProperty(self: *@This(), startAfter: *IRawElementProviderSimple, automationProperty: *AutomationProperty, value: *IInspectable) core.HResult!*IRawElementProviderSimple {
        var this: ?*IItemContainerProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IItemContainerProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.FindItemByProperty(startAfter, automationProperty, value);
    }
    pub fn getExpandCollapseState(self: *@This()) core.HResult!ExpandCollapseState {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExpandCollapseState();
    }
    pub fn Collapse(self: *@This()) core.HResult!void {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Collapse();
    }
    pub fn Expand(self: *@This()) core.HResult!void {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Expand();
    }
    pub fn getHorizontallyScrollable(self: *@This()) core.HResult!bool {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontallyScrollable();
    }
    pub fn getHorizontalScrollPercent(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontalScrollPercent();
    }
    pub fn getHorizontalViewSize(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontalViewSize();
    }
    pub fn getVerticallyScrollable(self: *@This()) core.HResult!bool {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticallyScrollable();
    }
    pub fn getVerticalScrollPercent(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticalScrollPercent();
    }
    pub fn getVerticalViewSize(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticalViewSize();
    }
    pub fn Scroll(self: *@This(), horizontalAmount: ScrollAmount, verticalAmount: ScrollAmount) core.HResult!void {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Scroll(horizontalAmount, verticalAmount);
    }
    pub fn SetScrollPercent(self: *@This(), horizontalPercent: f64, verticalPercent: f64) core.HResult!void {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetScrollPercent(horizontalPercent, verticalPercent);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.LoopingSelectorAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoopingSelectorAutomationPeer.GUID;
    pub const IID: Guid = ILoopingSelectorAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoopingSelectorAutomationPeer.SIGNATURE);
};
pub const LoopingSelectorItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ScrollIntoView(self: *@This()) core.HResult!void {
        var this: ?*IScrollItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ScrollIntoView();
    }
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSelected();
    }
    pub fn getSelectionContainer(self: *@This()) core.HResult!*IRawElementProviderSimple {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectionContainer();
    }
    pub fn AddToSelection(self: *@This()) core.HResult!void {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddToSelection();
    }
    pub fn RemoveFromSelection(self: *@This()) core.HResult!void {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveFromSelection();
    }
    pub fn Select(self: *@This()) core.HResult!void {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Select();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.LoopingSelectorItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoopingSelectorItemAutomationPeer.GUID;
    pub const IID: Guid = ILoopingSelectorItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoopingSelectorItemAutomationPeer.SIGNATURE);
};
pub const LoopingSelectorItemDataAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Realize(self: *@This()) core.HResult!void {
        var this: ?*IVirtualizedItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVirtualizedItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Realize();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.LoopingSelectorItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILoopingSelectorItemDataAutomationPeer.GUID;
    pub const IID: Guid = ILoopingSelectorItemDataAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILoopingSelectorItemDataAutomationPeer.SIGNATURE);
};
pub const MapControlAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHorizontallyScrollable(self: *@This()) core.HResult!bool {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontallyScrollable();
    }
    pub fn getHorizontalScrollPercent(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontalScrollPercent();
    }
    pub fn getHorizontalViewSize(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontalViewSize();
    }
    pub fn getVerticallyScrollable(self: *@This()) core.HResult!bool {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticallyScrollable();
    }
    pub fn getVerticalScrollPercent(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticalScrollPercent();
    }
    pub fn getVerticalViewSize(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticalViewSize();
    }
    pub fn Scroll(self: *@This(), horizontalAmount: ScrollAmount, verticalAmount: ScrollAmount) core.HResult!void {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Scroll(horizontalAmount, verticalAmount);
    }
    pub fn SetScrollPercent(self: *@This(), horizontalPercent: f64, verticalPercent: f64) core.HResult!void {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetScrollPercent(horizontalPercent, verticalPercent);
    }
    pub fn getCanZoom(self: *@This()) core.HResult!bool {
        var this: ?*ITransformProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITransformProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanZoom();
    }
    pub fn getZoomLevel(self: *@This()) core.HResult!f64 {
        var this: ?*ITransformProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITransformProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getZoomLevel();
    }
    pub fn getMaxZoom(self: *@This()) core.HResult!f64 {
        var this: ?*ITransformProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITransformProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMaxZoom();
    }
    pub fn getMinZoom(self: *@This()) core.HResult!f64 {
        var this: ?*ITransformProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITransformProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getMinZoom();
    }
    pub fn Zoom(self: *@This(), zoom: f64) core.HResult!void {
        var this: ?*ITransformProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITransformProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Zoom(zoom);
    }
    pub fn ZoomByUnit(self: *@This(), zoomUnit: ZoomUnit) core.HResult!void {
        var this: ?*ITransformProvider2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITransformProvider2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ZoomByUnit(zoomUnit);
    }
    pub fn getCanMove(self: *@This()) core.HResult!bool {
        var this: ?*ITransformProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITransformProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanMove();
    }
    pub fn getCanResize(self: *@This()) core.HResult!bool {
        var this: ?*ITransformProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITransformProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanResize();
    }
    pub fn getCanRotate(self: *@This()) core.HResult!bool {
        var this: ?*ITransformProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITransformProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanRotate();
    }
    pub fn Move(self: *@This(), x: f64, y: f64) core.HResult!void {
        var this: ?*ITransformProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITransformProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Move(x, y);
    }
    pub fn Resize(self: *@This(), width: f64, height: f64) core.HResult!void {
        var this: ?*ITransformProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITransformProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Resize(width, height);
    }
    pub fn Rotate(self: *@This(), degrees: f64) core.HResult!void {
        var this: ?*ITransformProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ITransformProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Rotate(degrees);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.MapControlAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMapControlAutomationPeer.GUID;
    pub const IID: Guid = IMapControlAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMapControlAutomationPeer.SIGNATURE);
};
pub const MediaElementAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *MediaElement, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MediaElementAutomationPeer {
        const factory = @This().IMediaElementAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.MediaElementAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaElementAutomationPeer.GUID;
    pub const IID: Guid = IMediaElementAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaElementAutomationPeer.SIGNATURE);
    var _IMediaElementAutomationPeerFactoryCache: FactoryCache(IMediaElementAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const MediaPlayerElementAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *MediaPlayerElement, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MediaPlayerElementAutomationPeer {
        const factory = @This().IMediaPlayerElementAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.MediaPlayerElementAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaPlayerElementAutomationPeer.GUID;
    pub const IID: Guid = IMediaPlayerElementAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaPlayerElementAutomationPeer.SIGNATURE);
    var _IMediaPlayerElementAutomationPeerFactoryCache: FactoryCache(IMediaPlayerElementAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const MediaTransportControlsAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *MediaTransportControls, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MediaTransportControlsAutomationPeer {
        const factory = @This().IMediaTransportControlsAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.MediaTransportControlsAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMediaTransportControlsAutomationPeer.GUID;
    pub const IID: Guid = IMediaTransportControlsAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMediaTransportControlsAutomationPeer.SIGNATURE);
    var _IMediaTransportControlsAutomationPeerFactoryCache: FactoryCache(IMediaTransportControlsAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const MenuBarAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(owner: *MenuBar, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MenuBarAutomationPeer {
        const factory = @This().IMenuBarAutomationPeerFactoryCache.get();
        return try factory.CreateInstance(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.MenuBarAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMenuBarAutomationPeer.GUID;
    pub const IID: Guid = IMenuBarAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMenuBarAutomationPeer.SIGNATURE);
    var _IMenuBarAutomationPeerFactoryCache: FactoryCache(IMenuBarAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const MenuBarItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExpandCollapseState(self: *@This()) core.HResult!ExpandCollapseState {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExpandCollapseState();
    }
    pub fn Collapse(self: *@This()) core.HResult!void {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Collapse();
    }
    pub fn Expand(self: *@This()) core.HResult!void {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Expand();
    }
    pub fn Invoke(self: *@This()) core.HResult!void {
        var this: ?*IInvokeProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInvokeProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Invoke();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(owner: *MenuBarItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MenuBarItemAutomationPeer {
        const factory = @This().IMenuBarItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstance(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.MenuBarItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMenuBarItemAutomationPeer.GUID;
    pub const IID: Guid = IMenuBarItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMenuBarItemAutomationPeer.SIGNATURE);
    var _IMenuBarItemAutomationPeerFactoryCache: FactoryCache(IMenuBarItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const MenuFlyoutItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Invoke(self: *@This()) core.HResult!void {
        var this: ?*IInvokeProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInvokeProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Invoke();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *MenuFlyoutItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MenuFlyoutItemAutomationPeer {
        const factory = @This().IMenuFlyoutItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.MenuFlyoutItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMenuFlyoutItemAutomationPeer.GUID;
    pub const IID: Guid = IMenuFlyoutItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMenuFlyoutItemAutomationPeer.SIGNATURE);
    var _IMenuFlyoutItemAutomationPeerFactoryCache: FactoryCache(IMenuFlyoutItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const MenuFlyoutPresenterAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *MenuFlyoutPresenter, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*MenuFlyoutPresenterAutomationPeer {
        const factory = @This().IMenuFlyoutPresenterAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.MenuFlyoutPresenterAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IMenuFlyoutPresenterAutomationPeer.GUID;
    pub const IID: Guid = IMenuFlyoutPresenterAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IMenuFlyoutPresenterAutomationPeer.SIGNATURE);
    var _IMenuFlyoutPresenterAutomationPeerFactoryCache: FactoryCache(IMenuFlyoutPresenterAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const NavigationViewItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *NavigationViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*NavigationViewItemAutomationPeer {
        const factory = @This().INavigationViewItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.NavigationViewItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INavigationViewItemAutomationPeer.GUID;
    pub const IID: Guid = INavigationViewItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INavigationViewItemAutomationPeer.SIGNATURE);
    var _INavigationViewItemAutomationPeerFactoryCache: FactoryCache(INavigationViewItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const PasswordBoxAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *PasswordBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PasswordBoxAutomationPeer {
        const factory = @This().IPasswordBoxAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.PasswordBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPasswordBoxAutomationPeer.GUID;
    pub const IID: Guid = IPasswordBoxAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPasswordBoxAutomationPeer.SIGNATURE);
    var _IPasswordBoxAutomationPeerFactoryCache: FactoryCache(IPasswordBoxAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const PatternInterface = enum(i32) {
    Invoke = 0,
    Selection = 1,
    Value = 2,
    RangeValue = 3,
    Scroll = 4,
    ScrollItem = 5,
    ExpandCollapse = 6,
    Grid = 7,
    GridItem = 8,
    MultipleView = 9,
    Window = 10,
    SelectionItem = 11,
    Dock = 12,
    Table = 13,
    TableItem = 14,
    Toggle = 15,
    Transform = 16,
    Text = 17,
    ItemContainer = 18,
    VirtualizedItem = 19,
    Text2 = 20,
    TextChild = 21,
    TextRange = 22,
    Annotation = 23,
    Drag = 24,
    DropTarget = 25,
    ObjectModel = 26,
    Spreadsheet = 27,
    SpreadsheetItem = 28,
    Styles = 29,
    Transform2 = 30,
    SynchronizedInput = 31,
    TextEdit = 32,
    CustomNavigation = 33,
};
pub const PersonPictureAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *PersonPicture, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*PersonPictureAutomationPeer {
        const factory = @This().IPersonPictureAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.PersonPictureAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPersonPictureAutomationPeer.GUID;
    pub const IID: Guid = IPersonPictureAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPersonPictureAutomationPeer.SIGNATURE);
    var _IPersonPictureAutomationPeerFactoryCache: FactoryCache(IPersonPictureAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const PickerFlyoutPresenterAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.PickerFlyoutPresenterAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPickerFlyoutPresenterAutomationPeer.GUID;
    pub const IID: Guid = IPickerFlyoutPresenterAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPickerFlyoutPresenterAutomationPeer.SIGNATURE);
};
pub const PivotAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCanSelectMultiple(self: *@This()) core.HResult!bool {
        var this: ?*ISelectionProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCanSelectMultiple();
    }
    pub fn getIsSelectionRequired(self: *@This()) core.HResult!bool {
        var this: ?*ISelectionProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSelectionRequired();
    }
    pub fn GetSelection(self: *@This()) core.HResult![*]IRawElementProviderSimple {
        var this: ?*ISelectionProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetSelection();
    }
    pub fn getHorizontallyScrollable(self: *@This()) core.HResult!bool {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontallyScrollable();
    }
    pub fn getHorizontalScrollPercent(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontalScrollPercent();
    }
    pub fn getHorizontalViewSize(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontalViewSize();
    }
    pub fn getVerticallyScrollable(self: *@This()) core.HResult!bool {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticallyScrollable();
    }
    pub fn getVerticalScrollPercent(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticalScrollPercent();
    }
    pub fn getVerticalViewSize(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticalViewSize();
    }
    pub fn Scroll(self: *@This(), horizontalAmount: ScrollAmount, verticalAmount: ScrollAmount) core.HResult!void {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Scroll(horizontalAmount, verticalAmount);
    }
    pub fn SetScrollPercent(self: *@This(), horizontalPercent: f64, verticalPercent: f64) core.HResult!void {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetScrollPercent(horizontalPercent, verticalPercent);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *Pivot) core.HResult!*PivotAutomationPeer {
        const factory = @This().IPivotAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.PivotAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPivotAutomationPeer.GUID;
    pub const IID: Guid = IPivotAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPivotAutomationPeer.SIGNATURE);
    var _IPivotAutomationPeerFactoryCache: FactoryCache(IPivotAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const PivotItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *PivotItem) core.HResult!*PivotItemAutomationPeer {
        const factory = @This().IPivotItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.PivotItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPivotItemAutomationPeer.GUID;
    pub const IID: Guid = IPivotItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPivotItemAutomationPeer.SIGNATURE);
    var _IPivotItemAutomationPeerFactoryCache: FactoryCache(IPivotItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const PivotItemDataAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ScrollIntoView(self: *@This()) core.HResult!void {
        var this: ?*IScrollItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ScrollIntoView();
    }
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSelected();
    }
    pub fn getSelectionContainer(self: *@This()) core.HResult!*IRawElementProviderSimple {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectionContainer();
    }
    pub fn AddToSelection(self: *@This()) core.HResult!void {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddToSelection();
    }
    pub fn RemoveFromSelection(self: *@This()) core.HResult!void {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveFromSelection();
    }
    pub fn Select(self: *@This()) core.HResult!void {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Select();
    }
    pub fn Realize(self: *@This()) core.HResult!void {
        var this: ?*IVirtualizedItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IVirtualizedItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Realize();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithParentAndItem(item: *IInspectable, parent: *PivotAutomationPeer) core.HResult!*PivotItemDataAutomationPeer {
        const factory = @This().IPivotItemDataAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithParentAndItem(item, parent);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.PivotItemDataAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPivotItemDataAutomationPeer.GUID;
    pub const IID: Guid = IPivotItemDataAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPivotItemDataAutomationPeer.SIGNATURE);
    var _IPivotItemDataAutomationPeerFactoryCache: FactoryCache(IPivotItemDataAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ProgressBarAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ProgressBar, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ProgressBarAutomationPeer {
        const factory = @This().IProgressBarAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ProgressBarAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProgressBarAutomationPeer.GUID;
    pub const IID: Guid = IProgressBarAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProgressBarAutomationPeer.SIGNATURE);
    var _IProgressBarAutomationPeerFactoryCache: FactoryCache(IProgressBarAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ProgressRingAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ProgressRing, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ProgressRingAutomationPeer {
        const factory = @This().IProgressRingAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ProgressRingAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProgressRingAutomationPeer.GUID;
    pub const IID: Guid = IProgressRingAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProgressRingAutomationPeer.SIGNATURE);
    var _IProgressRingAutomationPeerFactoryCache: FactoryCache(IProgressRingAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const RadioButtonAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsSelected(self: *@This()) core.HResult!bool {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsSelected();
    }
    pub fn getSelectionContainer(self: *@This()) core.HResult!*IRawElementProviderSimple {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSelectionContainer();
    }
    pub fn AddToSelection(self: *@This()) core.HResult!void {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.AddToSelection();
    }
    pub fn RemoveFromSelection(self: *@This()) core.HResult!void {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.RemoveFromSelection();
    }
    pub fn Select(self: *@This()) core.HResult!void {
        var this: ?*ISelectionItemProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ISelectionItemProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Select();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *RadioButton, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RadioButtonAutomationPeer {
        const factory = @This().IRadioButtonAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.RadioButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRadioButtonAutomationPeer.GUID;
    pub const IID: Guid = IRadioButtonAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRadioButtonAutomationPeer.SIGNATURE);
    var _IRadioButtonAutomationPeerFactoryCache: FactoryCache(IRadioButtonAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const RatingControlAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *RatingControl, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RatingControlAutomationPeer {
        const factory = @This().IRatingControlAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.RatingControlAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRatingControlAutomationPeer.GUID;
    pub const IID: Guid = IRatingControlAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRatingControlAutomationPeer.SIGNATURE);
    var _IRatingControlAutomationPeerFactoryCache: FactoryCache(IRatingControlAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const RawElementProviderRuntimeId = extern struct {
    Part1: u32,
    Part2: u32,
};
pub const RepeatButtonAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Invoke(self: *@This()) core.HResult!void {
        var this: ?*IInvokeProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInvokeProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Invoke();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *RepeatButton, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RepeatButtonAutomationPeer {
        const factory = @This().IRepeatButtonAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.RepeatButtonAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRepeatButtonAutomationPeer.GUID;
    pub const IID: Guid = IRepeatButtonAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRepeatButtonAutomationPeer.SIGNATURE);
    var _IRepeatButtonAutomationPeerFactoryCache: FactoryCache(IRepeatButtonAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const RichEditBoxAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *RichEditBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RichEditBoxAutomationPeer {
        const factory = @This().IRichEditBoxAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.RichEditBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRichEditBoxAutomationPeer.GUID;
    pub const IID: Guid = IRichEditBoxAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRichEditBoxAutomationPeer.SIGNATURE);
    var _IRichEditBoxAutomationPeerFactoryCache: FactoryCache(IRichEditBoxAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const RichTextBlockAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *RichTextBlock, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RichTextBlockAutomationPeer {
        const factory = @This().IRichTextBlockAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.RichTextBlockAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRichTextBlockAutomationPeer.GUID;
    pub const IID: Guid = IRichTextBlockAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRichTextBlockAutomationPeer.SIGNATURE);
    var _IRichTextBlockAutomationPeerFactoryCache: FactoryCache(IRichTextBlockAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const RichTextBlockOverflowAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *RichTextBlockOverflow, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*RichTextBlockOverflowAutomationPeer {
        const factory = @This().IRichTextBlockOverflowAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.RichTextBlockOverflowAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRichTextBlockOverflowAutomationPeer.GUID;
    pub const IID: Guid = IRichTextBlockOverflowAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRichTextBlockOverflowAutomationPeer.SIGNATURE);
    var _IRichTextBlockOverflowAutomationPeerFactoryCache: FactoryCache(IRichTextBlockOverflowAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ScrollBarAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ScrollBar, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ScrollBarAutomationPeer {
        const factory = @This().IScrollBarAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ScrollBarAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScrollBarAutomationPeer.GUID;
    pub const IID: Guid = IScrollBarAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScrollBarAutomationPeer.SIGNATURE);
    var _IScrollBarAutomationPeerFactoryCache: FactoryCache(IScrollBarAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ScrollViewerAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHorizontallyScrollable(self: *@This()) core.HResult!bool {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontallyScrollable();
    }
    pub fn getHorizontalScrollPercent(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontalScrollPercent();
    }
    pub fn getHorizontalViewSize(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getHorizontalViewSize();
    }
    pub fn getVerticallyScrollable(self: *@This()) core.HResult!bool {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticallyScrollable();
    }
    pub fn getVerticalScrollPercent(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticalScrollPercent();
    }
    pub fn getVerticalViewSize(self: *@This()) core.HResult!f64 {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVerticalViewSize();
    }
    pub fn Scroll(self: *@This(), horizontalAmount: ScrollAmount, verticalAmount: ScrollAmount) core.HResult!void {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Scroll(horizontalAmount, verticalAmount);
    }
    pub fn SetScrollPercent(self: *@This(), horizontalPercent: f64, verticalPercent: f64) core.HResult!void {
        var this: ?*IScrollProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IScrollProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetScrollPercent(horizontalPercent, verticalPercent);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ScrollViewer, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ScrollViewerAutomationPeer {
        const factory = @This().IScrollViewerAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ScrollViewerAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IScrollViewerAutomationPeer.GUID;
    pub const IID: Guid = IScrollViewerAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IScrollViewerAutomationPeer.SIGNATURE);
    var _IScrollViewerAutomationPeerFactoryCache: FactoryCache(IScrollViewerAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const SearchBoxAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *SearchBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SearchBoxAutomationPeer {
        const factory = @This().ISearchBoxAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.SearchBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISearchBoxAutomationPeer.GUID;
    pub const IID: Guid = ISearchBoxAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISearchBoxAutomationPeer.SIGNATURE);
    var _ISearchBoxAutomationPeerFactoryCache: FactoryCache(ISearchBoxAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const SemanticZoomAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getToggleState(self: *@This()) core.HResult!ToggleState {
        var this: ?*IToggleProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToggleProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getToggleState();
    }
    pub fn Toggle(self: *@This()) core.HResult!void {
        var this: ?*IToggleProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToggleProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Toggle();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *SemanticZoom, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SemanticZoomAutomationPeer {
        const factory = @This().ISemanticZoomAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.SemanticZoomAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISemanticZoomAutomationPeer.GUID;
    pub const IID: Guid = ISemanticZoomAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISemanticZoomAutomationPeer.SIGNATURE);
    var _ISemanticZoomAutomationPeerFactoryCache: FactoryCache(ISemanticZoomAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const SettingsFlyoutAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *SettingsFlyout, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*SettingsFlyoutAutomationPeer {
        const factory = @This().ISettingsFlyoutAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.SettingsFlyoutAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ISettingsFlyoutAutomationPeer.GUID;
    pub const IID: Guid = ISettingsFlyoutAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ISettingsFlyoutAutomationPeer.SIGNATURE);
    var _ISettingsFlyoutAutomationPeerFactoryCache: FactoryCache(ISettingsFlyoutAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const TextBlockAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *TextBlock, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TextBlockAutomationPeer {
        const factory = @This().ITextBlockAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.TextBlockAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextBlockAutomationPeer.GUID;
    pub const IID: Guid = ITextBlockAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextBlockAutomationPeer.SIGNATURE);
    var _ITextBlockAutomationPeerFactoryCache: FactoryCache(ITextBlockAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const TextBoxAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *TextBox, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TextBoxAutomationPeer {
        const factory = @This().ITextBoxAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.TextBoxAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITextBoxAutomationPeer.GUID;
    pub const IID: Guid = ITextBoxAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITextBoxAutomationPeer.SIGNATURE);
    var _ITextBoxAutomationPeerFactoryCache: FactoryCache(ITextBoxAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ThumbAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *Thumb, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ThumbAutomationPeer {
        const factory = @This().IThumbAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ThumbAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IThumbAutomationPeer.GUID;
    pub const IID: Guid = IThumbAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IThumbAutomationPeer.SIGNATURE);
    var _IThumbAutomationPeerFactoryCache: FactoryCache(IThumbAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const TimePickerAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *TimePicker, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TimePickerAutomationPeer {
        const factory = @This().ITimePickerAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.TimePickerAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimePickerAutomationPeer.GUID;
    pub const IID: Guid = ITimePickerAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimePickerAutomationPeer.SIGNATURE);
    var _ITimePickerAutomationPeerFactoryCache: FactoryCache(ITimePickerAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const TimePickerFlyoutPresenterAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.TimePickerFlyoutPresenterAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITimePickerFlyoutPresenterAutomationPeer.GUID;
    pub const IID: Guid = ITimePickerFlyoutPresenterAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITimePickerFlyoutPresenterAutomationPeer.SIGNATURE);
};
pub const ToggleMenuFlyoutItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getToggleState(self: *@This()) core.HResult!ToggleState {
        var this: ?*IToggleProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToggleProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getToggleState();
    }
    pub fn Toggle(self: *@This()) core.HResult!void {
        var this: ?*IToggleProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToggleProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Toggle();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ToggleMenuFlyoutItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ToggleMenuFlyoutItemAutomationPeer {
        const factory = @This().IToggleMenuFlyoutItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ToggleMenuFlyoutItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToggleMenuFlyoutItemAutomationPeer.GUID;
    pub const IID: Guid = IToggleMenuFlyoutItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToggleMenuFlyoutItemAutomationPeer.SIGNATURE);
    var _IToggleMenuFlyoutItemAutomationPeerFactoryCache: FactoryCache(IToggleMenuFlyoutItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const ToggleSwitchAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getToggleState(self: *@This()) core.HResult!ToggleState {
        var this: ?*IToggleProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToggleProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getToggleState();
    }
    pub fn Toggle(self: *@This()) core.HResult!void {
        var this: ?*IToggleProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IToggleProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Toggle();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *ToggleSwitch, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ToggleSwitchAutomationPeer {
        const factory = @This().IToggleSwitchAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.ToggleSwitchAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IToggleSwitchAutomationPeer.GUID;
    pub const IID: Guid = IToggleSwitchAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IToggleSwitchAutomationPeer.SIGNATURE);
    var _IToggleSwitchAutomationPeerFactoryCache: FactoryCache(IToggleSwitchAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const TreeViewItemAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExpandCollapseState(self: *@This()) core.HResult!ExpandCollapseState {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getExpandCollapseState();
    }
    pub fn Collapse(self: *@This()) core.HResult!void {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Collapse();
    }
    pub fn Expand(self: *@This()) core.HResult!void {
        var this: ?*IExpandCollapseProvider = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IExpandCollapseProvider.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Expand();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *TreeViewItem, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TreeViewItemAutomationPeer {
        const factory = @This().ITreeViewItemAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.TreeViewItemAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITreeViewItemAutomationPeer.GUID;
    pub const IID: Guid = ITreeViewItemAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITreeViewItemAutomationPeer.SIGNATURE);
    var _ITreeViewItemAutomationPeerFactoryCache: FactoryCache(ITreeViewItemAutomationPeerFactory, RUNTIME_NAME) = .{};
};
pub const TreeViewListAutomationPeer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstanceWithOwner(owner: *TreeViewList, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*TreeViewListAutomationPeer {
        const factory = @This().ITreeViewListAutomationPeerFactoryCache.get();
        return try factory.CreateInstanceWithOwner(owner, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Automation.Peers.TreeViewListAutomationPeer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITreeViewListAutomationPeer.GUID;
    pub const IID: Guid = ITreeViewListAutomationPeer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITreeViewListAutomationPeer.SIGNATURE);
    var _ITreeViewListAutomationPeerFactoryCache: FactoryCache(ITreeViewListAutomationPeerFactory, RUNTIME_NAME) = .{};
};
const IUnknown = @import("../../../root.zig").IUnknown;
const IActivationFactory = @import("../../../Foundation.zig").IActivationFactory;
const IWindowProvider = @import("./Provider.zig").IWindowProvider;
const ITransformProvider = @import("./Provider.zig").ITransformProvider;
const MediaTransportControls = @import("../Controls.zig").MediaTransportControls;
const MediaElement = @import("../Controls.zig").MediaElement;
const WindowInteractionState = @import("../Automation.zig").WindowInteractionState;
const RepeatButton = @import("../Controls/Primitives.zig").RepeatButton;
const IInvokeProvider = @import("./Provider.zig").IInvokeProvider;
const GridView = @import("../Controls.zig").GridView;
const ToggleButton = @import("../Controls/Primitives.zig").ToggleButton;
const CaptureElement = @import("../Controls.zig").CaptureElement;
const IIterable = @import("../../../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../../../Foundation.zig").IInspectable;
const MenuFlyoutItem = @import("../Controls.zig").MenuFlyoutItem;
const IExpandCollapseProvider = @import("./Provider.zig").IExpandCollapseProvider;
const CalendarDatePicker = @import("../Controls.zig").CalendarDatePicker;
const ItemsControl = @import("../Controls.zig").ItemsControl;
const UIElement = @import("../../Xaml.zig").UIElement;
const PivotItem = @import("../Controls.zig").PivotItem;
const ListViewHeaderItem = @import("../Controls.zig").ListViewHeaderItem;
const ListView = @import("../Controls.zig").ListView;
const WindowVisualState = @import("../Automation.zig").WindowVisualState;
const CheckBox = @import("../Controls.zig").CheckBox;
const ProgressBar = @import("../Controls.zig").ProgressBar;
const RadioButton = @import("../Controls.zig").RadioButton;
const Thumb = @import("../Controls/Primitives.zig").Thumb;
const Hub = @import("../Controls.zig").Hub;
const IVectorView = @import("../../../Foundation/Collections.zig").IVectorView;
const GridViewHeaderItem = @import("../Controls.zig").GridViewHeaderItem;
const ListViewBase = @import("../Controls.zig").ListViewBase;
const ComboBox = @import("../Controls.zig").ComboBox;
const Point = @import("../../../Foundation.zig").Point;
const IVirtualizedItemProvider = @import("./Provider.zig").IVirtualizedItemProvider;
const SettingsFlyout = @import("../Controls.zig").SettingsFlyout;
const FactoryCache = @import("../../../core.zig").FactoryCache;
const HyperlinkButton = @import("../Controls.zig").HyperlinkButton;
const Rect = @import("../../../Foundation.zig").Rect;
const ButtonBase = @import("../Controls/Primitives.zig").ButtonBase;
const ISelectionItemProvider = @import("./Provider.zig").ISelectionItemProvider;
const TrustLevel = @import("../../../root.zig").TrustLevel;
const RatingControl = @import("../Controls.zig").RatingControl;
const MenuFlyoutPresenter = @import("../Controls.zig").MenuFlyoutPresenter;
const FlipViewItem = @import("../Controls.zig").FlipViewItem;
const AppBarButton = @import("../Controls.zig").AppBarButton;
const AutomationTextEditChangeType = @import("../Automation.zig").AutomationTextEditChangeType;
const IItemContainerProvider = @import("./Provider.zig").IItemContainerProvider;
const AppBar = @import("../Controls.zig").AppBar;
const IToggleProvider = @import("./Provider.zig").IToggleProvider;
const ListBox = @import("../Controls.zig").ListBox;
const SearchBox = @import("../Controls.zig").SearchBox;
const TextBlock = @import("../Controls.zig").TextBlock;
const IScrollItemProvider = @import("./Provider.zig").IScrollItemProvider;
const ITransformProvider2 = @import("./Provider.zig").ITransformProvider2;
const ScrollViewer = @import("../Controls.zig").ScrollViewer;
const GroupItem = @import("../Controls.zig").GroupItem;
const Guid = @import("../../../root.zig").Guid;
const Button = @import("../Controls.zig").Button;
const NavigationViewItem = @import("../Controls.zig").NavigationViewItem;
const IVector = @import("../../../Foundation/Collections.zig").IVector;
const ColorPickerSlider = @import("../Controls/Primitives.zig").ColorPickerSlider;
const Pivot = @import("../Controls.zig").Pivot;
const RichEditBox = @import("../Controls.zig").RichEditBox;
const TimePicker = @import("../Controls.zig").TimePicker;
const MenuBarItem = @import("../Controls.zig").MenuBarItem;
const ZoomUnit = @import("../Automation.zig").ZoomUnit;
const TreeViewList = @import("../Controls.zig").TreeViewList;
const DependencyProperty = @import("../../Xaml.zig").DependencyProperty;
const IDropTargetProvider = @import("./Provider.zig").IDropTargetProvider;
const ListBoxItem = @import("../Controls.zig").ListBoxItem;
const FlyoutPresenter = @import("../Controls.zig").FlyoutPresenter;
const ToggleState = @import("../Automation.zig").ToggleState;
const ExpandCollapseState = @import("../Automation.zig").ExpandCollapseState;
const ComboBoxItem = @import("../Controls.zig").ComboBoxItem;
const IValueProvider = @import("./Provider.zig").IValueProvider;
const MenuBar = @import("../Controls.zig").MenuBar;
const RangeBase = @import("../Controls/Primitives.zig").RangeBase;
const ListViewItem = @import("../Controls.zig").ListViewItem;
const IRawElementProviderSimple = @import("./Provider.zig").IRawElementProviderSimple;
const AnnotationType = @import("../Automation.zig").AnnotationType;
const HRESULT = @import("../../../root.zig").HRESULT;
const DatePicker = @import("../Controls.zig").DatePicker;
const ToggleMenuFlyoutItem = @import("../Controls.zig").ToggleMenuFlyoutItem;
const Slider = @import("../Controls.zig").Slider;
const ColorSpectrum = @import("../Controls/Primitives.zig").ColorSpectrum;
const HubSection = @import("../Controls.zig").HubSection;
const GridViewItem = @import("../Controls.zig").GridViewItem;
const ToggleSwitch = @import("../Controls.zig").ToggleSwitch;
const IRangeValueProvider = @import("./Provider.zig").IRangeValueProvider;
const AutomationProperty = @import("../Automation.zig").AutomationProperty;
const ListViewBaseHeaderItem = @import("../Controls.zig").ListViewBaseHeaderItem;
const TextBox = @import("../Controls.zig").TextBox;
const ProgressRing = @import("../Controls.zig").ProgressRing;
const TreeViewItem = @import("../Controls.zig").TreeViewItem;
const HSTRING = @import("../../../root.zig").HSTRING;
const ISelectionProvider = @import("./Provider.zig").ISelectionProvider;
const MediaPlayerElement = @import("../Controls.zig").MediaPlayerElement;
const RichTextBlockOverflow = @import("../Controls.zig").RichTextBlockOverflow;
const FrameworkElement = @import("../../Xaml.zig").FrameworkElement;
const IScrollProvider = @import("./Provider.zig").IScrollProvider;
const RichTextBlock = @import("../Controls.zig").RichTextBlock;
const PersonPicture = @import("../Controls.zig").PersonPicture;
const ScrollBar = @import("../Controls/Primitives.zig").ScrollBar;
const core = @import("../../../root.zig").core;
const Selector = @import("../Controls/Primitives.zig").Selector;
const SemanticZoom = @import("../Controls.zig").SemanticZoom;
const AppBarToggleButton = @import("../Controls.zig").AppBarToggleButton;
const PasswordBox = @import("../Controls.zig").PasswordBox;
const Image = @import("../Controls.zig").Image;
const ScrollAmount = @import("../Automation.zig").ScrollAmount;
const AutoSuggestBox = @import("../Controls.zig").AutoSuggestBox;
const FlipView = @import("../Controls.zig").FlipView;
