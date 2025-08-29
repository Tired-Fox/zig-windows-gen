pub const AccessKeyDisplayDismissedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAccessKeyDisplayDismissedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.AccessKeyDisplayDismissedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAccessKeyDisplayDismissedEventArgs.GUID;
    pub const IID: Guid = IAccessKeyDisplayDismissedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAccessKeyDisplayDismissedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AccessKeyDisplayRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPressedKeys(self: *@This()) core.HResult!HSTRING {
        const this: *IAccessKeyDisplayRequestedEventArgs = @ptrCast(self);
        return try this.getPressedKeys();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAccessKeyDisplayRequestedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.AccessKeyDisplayRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAccessKeyDisplayRequestedEventArgs.GUID;
    pub const IID: Guid = IAccessKeyDisplayRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAccessKeyDisplayRequestedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AccessKeyInvokedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IAccessKeyInvokedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IAccessKeyInvokedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAccessKeyInvokedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.AccessKeyInvokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAccessKeyInvokedEventArgs.GUID;
    pub const IID: Guid = IAccessKeyInvokedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAccessKeyInvokedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const AccessKeyManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_IsDisplayModeEnabled() core.HResult!bool {
        const factory = @This().IAccessKeyManagerStaticsCache.get();
        return try factory.getIsDisplayModeEnabled();
    }
    pub fn add_IsDisplayModeEnabledChanged(handler: *TypedEventHandler(IInspectable,IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().IAccessKeyManagerStaticsCache.get();
        return try factory.addIsDisplayModeEnabledChanged(handler);
    }
    pub fn remove_IsDisplayModeEnabledChanged(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IAccessKeyManagerStaticsCache.get();
        return try factory.removeIsDisplayModeEnabledChanged(token);
    }
    pub fn ExitDisplayMode() core.HResult!void {
        const factory = @This().IAccessKeyManagerStaticsCache.get();
        return try factory.ExitDisplayMode();
    }
    pub fn get_AreKeyTipsEnabled() core.HResult!bool {
        const factory = @This().IAccessKeyManagerStatics2Cache.get();
        return try factory.getAreKeyTipsEnabled();
    }
    pub fn put_AreKeyTipsEnabled(value: bool) core.HResult!void {
        const factory = @This().IAccessKeyManagerStatics2Cache.get();
        return try factory.putAreKeyTipsEnabled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.AccessKeyManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAccessKeyManager.GUID;
    pub const IID: Guid = IAccessKeyManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAccessKeyManager.SIGNATURE);
    var _IAccessKeyManagerStaticsCache: FactoryCache(IAccessKeyManagerStatics, RUNTIME_NAME) = .{};
    var _IAccessKeyManagerStatics2Cache: FactoryCache(IAccessKeyManagerStatics2, RUNTIME_NAME) = .{};
};
pub const CanExecuteRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getParameter(self: *@This()) core.HResult!*IInspectable {
        const this: *ICanExecuteRequestedEventArgs = @ptrCast(self);
        return try this.getParameter();
    }
    pub fn getCanExecute(self: *@This()) core.HResult!bool {
        const this: *ICanExecuteRequestedEventArgs = @ptrCast(self);
        return try this.getCanExecute();
    }
    pub fn putCanExecute(self: *@This(), value: bool) core.HResult!void {
        const this: *ICanExecuteRequestedEventArgs = @ptrCast(self);
        return try this.putCanExecute(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.CanExecuteRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICanExecuteRequestedEventArgs.GUID;
    pub const IID: Guid = ICanExecuteRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICanExecuteRequestedEventArgs.SIGNATURE);
};
pub const CharacterReceivedRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCharacter(self: *@This()) core.HResult!u16 {
        const this: *ICharacterReceivedRoutedEventArgs = @ptrCast(self);
        return try this.getCharacter();
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        const this: *ICharacterReceivedRoutedEventArgs = @ptrCast(self);
        return try this.getKeyStatus();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *ICharacterReceivedRoutedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *ICharacterReceivedRoutedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.CharacterReceivedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICharacterReceivedRoutedEventArgs.GUID;
    pub const IID: Guid = ICharacterReceivedRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICharacterReceivedRoutedEventArgs.SIGNATURE);
};
pub const ContextRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IContextRequestedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IContextRequestedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn TryGetPosition(self: *@This(), relativeTo: *UIElement, point: Point) core.HResult!bool {
        const this: *IContextRequestedEventArgs = @ptrCast(self);
        return try this.TryGetPosition(relativeTo, point);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IContextRequestedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ContextRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IContextRequestedEventArgs.GUID;
    pub const IID: Guid = IContextRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IContextRequestedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DoubleTappedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DoubleTappedRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *DoubleTappedRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *DoubleTappedRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.DoubleTappedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3124d025-04a7-4d45-825e-8204a624dbf4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *DoubleTappedRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const DoubleTappedRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IDoubleTappedRoutedEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IDoubleTappedRoutedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IDoubleTappedRoutedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetPosition(self: *@This(), relativeTo: *UIElement) core.HResult!Point {
        const this: *IDoubleTappedRoutedEventArgs = @ptrCast(self);
        return try this.GetPosition(relativeTo);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDoubleTappedRoutedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.DoubleTappedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDoubleTappedRoutedEventArgs.GUID;
    pub const IID: Guid = IDoubleTappedRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDoubleTappedRoutedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ExecuteRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getParameter(self: *@This()) core.HResult!*IInspectable {
        const this: *IExecuteRequestedEventArgs = @ptrCast(self);
        return try this.getParameter();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ExecuteRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IExecuteRequestedEventArgs.GUID;
    pub const IID: Guid = IExecuteRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IExecuteRequestedEventArgs.SIGNATURE);
};
pub const FindNextElementOptions = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSearchRoot(self: *@This()) core.HResult!*DependencyObject {
        const this: *IFindNextElementOptions = @ptrCast(self);
        return try this.getSearchRoot();
    }
    pub fn putSearchRoot(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *IFindNextElementOptions = @ptrCast(self);
        return try this.putSearchRoot(value);
    }
    pub fn getExclusionRect(self: *@This()) core.HResult!Rect {
        const this: *IFindNextElementOptions = @ptrCast(self);
        return try this.getExclusionRect();
    }
    pub fn putExclusionRect(self: *@This(), value: Rect) core.HResult!void {
        const this: *IFindNextElementOptions = @ptrCast(self);
        return try this.putExclusionRect(value);
    }
    pub fn getHintRect(self: *@This()) core.HResult!Rect {
        const this: *IFindNextElementOptions = @ptrCast(self);
        return try this.getHintRect();
    }
    pub fn putHintRect(self: *@This(), value: Rect) core.HResult!void {
        const this: *IFindNextElementOptions = @ptrCast(self);
        return try this.putHintRect(value);
    }
    pub fn getXYFocusNavigationStrategyOverride(self: *@This()) core.HResult!XYFocusNavigationStrategyOverride {
        const this: *IFindNextElementOptions = @ptrCast(self);
        return try this.getXYFocusNavigationStrategyOverride();
    }
    pub fn putXYFocusNavigationStrategyOverride(self: *@This(), value: XYFocusNavigationStrategyOverride) core.HResult!void {
        const this: *IFindNextElementOptions = @ptrCast(self);
        return try this.putXYFocusNavigationStrategyOverride(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFindNextElementOptions.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.FindNextElementOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFindNextElementOptions.GUID;
    pub const IID: Guid = IFindNextElementOptions.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFindNextElementOptions.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const FocusInputDeviceKind = enum(i32) {
    None = 0,
    Mouse = 1,
    Touch = 2,
    Pen = 3,
    Keyboard = 4,
    GameController = 5,
};
pub const FocusManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetFocusedElement() core.HResult!*IInspectable {
        const factory = @This().IFocusManagerStaticsCache.get();
        return try factory.GetFocusedElement();
    }
    pub fn FindNextFocusableElement(focusNavigationDirection: FocusNavigationDirection) core.HResult!*UIElement {
        const factory = @This().IFocusManagerStatics3Cache.get();
        return try factory.FindNextFocusableElement(focusNavigationDirection);
    }
    pub fn FindNextFocusableElementWithHintRect(focusNavigationDirection: FocusNavigationDirection, hintRect: Rect) core.HResult!*UIElement {
        const factory = @This().IFocusManagerStatics3Cache.get();
        return try factory.FindNextFocusableElementWithHintRect(focusNavigationDirection, hintRect);
    }
    pub fn TryFocusAsync(element: *DependencyObject, value: FocusState) core.HResult!*IAsyncOperation(FocusMovementResult) {
        const factory = @This().IFocusManagerStatics5Cache.get();
        return try factory.TryFocusAsync(element, value);
    }
    pub fn TryMoveFocusAsync(focusNavigationDirection: FocusNavigationDirection) core.HResult!*IAsyncOperation(FocusMovementResult) {
        const factory = @This().IFocusManagerStatics5Cache.get();
        return try factory.TryMoveFocusAsync(focusNavigationDirection);
    }
    pub fn TryMoveFocusAsyncWithFocusNavigationOptions(focusNavigationDirection: FocusNavigationDirection, focusNavigationOptions: *FindNextElementOptions) core.HResult!*IAsyncOperation(FocusMovementResult) {
        const factory = @This().IFocusManagerStatics5Cache.get();
        return try factory.TryMoveFocusAsyncWithFocusNavigationOptions(focusNavigationDirection, focusNavigationOptions);
    }
    pub fn add_GotFocus(handler: *EventHandler(FocusManagerGotFocusEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IFocusManagerStatics6Cache.get();
        return try factory.addGotFocus(handler);
    }
    pub fn remove_GotFocus(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IFocusManagerStatics6Cache.get();
        return try factory.removeGotFocus(token);
    }
    pub fn add_LostFocus(handler: *EventHandler(FocusManagerLostFocusEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IFocusManagerStatics6Cache.get();
        return try factory.addLostFocus(handler);
    }
    pub fn remove_LostFocus(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IFocusManagerStatics6Cache.get();
        return try factory.removeLostFocus(token);
    }
    pub fn add_GettingFocus(handler: *EventHandler(GettingFocusEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IFocusManagerStatics6Cache.get();
        return try factory.addGettingFocus(handler);
    }
    pub fn remove_GettingFocus(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IFocusManagerStatics6Cache.get();
        return try factory.removeGettingFocus(token);
    }
    pub fn add_LosingFocus(handler: *EventHandler(LosingFocusEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().IFocusManagerStatics6Cache.get();
        return try factory.addLosingFocus(handler);
    }
    pub fn remove_LosingFocus(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().IFocusManagerStatics6Cache.get();
        return try factory.removeLosingFocus(token);
    }
    pub fn GetFocusedElementWithXamlRoot(xamlRoot: *XamlRoot) core.HResult!*IInspectable {
        const factory = @This().IFocusManagerStatics7Cache.get();
        return try factory.GetFocusedElement(xamlRoot);
    }
    pub fn TryMoveFocusWithFocusNavigationOptions(focusNavigationDirection: FocusNavigationDirection, focusNavigationOptions: *FindNextElementOptions) core.HResult!bool {
        const factory = @This().IFocusManagerStatics4Cache.get();
        return try factory.TryMoveFocus(focusNavigationDirection, focusNavigationOptions);
    }
    pub fn FindNextElement(focusNavigationDirection: FocusNavigationDirection) core.HResult!*DependencyObject {
        const factory = @This().IFocusManagerStatics4Cache.get();
        return try factory.FindNextElement(focusNavigationDirection);
    }
    pub fn FindFirstFocusableElement(searchScope: *DependencyObject) core.HResult!*DependencyObject {
        const factory = @This().IFocusManagerStatics4Cache.get();
        return try factory.FindFirstFocusableElement(searchScope);
    }
    pub fn FindLastFocusableElement(searchScope: *DependencyObject) core.HResult!*DependencyObject {
        const factory = @This().IFocusManagerStatics4Cache.get();
        return try factory.FindLastFocusableElement(searchScope);
    }
    pub fn FindNextElementWithFocusNavigationOptions(focusNavigationDirection: FocusNavigationDirection, focusNavigationOptions: *FindNextElementOptions) core.HResult!*DependencyObject {
        const factory = @This().IFocusManagerStatics4Cache.get();
        return try factory.FindNextElementWithFocusNavigationOptions(focusNavigationDirection, focusNavigationOptions);
    }
    pub fn TryMoveFocus(focusNavigationDirection: FocusNavigationDirection) core.HResult!bool {
        const factory = @This().IFocusManagerStatics2Cache.get();
        return try factory.TryMoveFocus(focusNavigationDirection);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.FocusManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFocusManager.GUID;
    pub const IID: Guid = IFocusManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFocusManager.SIGNATURE);
    var _IFocusManagerStaticsCache: FactoryCache(IFocusManagerStatics, RUNTIME_NAME) = .{};
    var _IFocusManagerStatics3Cache: FactoryCache(IFocusManagerStatics3, RUNTIME_NAME) = .{};
    var _IFocusManagerStatics5Cache: FactoryCache(IFocusManagerStatics5, RUNTIME_NAME) = .{};
    var _IFocusManagerStatics6Cache: FactoryCache(IFocusManagerStatics6, RUNTIME_NAME) = .{};
    var _IFocusManagerStatics7Cache: FactoryCache(IFocusManagerStatics7, RUNTIME_NAME) = .{};
    var _IFocusManagerStatics4Cache: FactoryCache(IFocusManagerStatics4, RUNTIME_NAME) = .{};
    var _IFocusManagerStatics2Cache: FactoryCache(IFocusManagerStatics2, RUNTIME_NAME) = .{};
};
pub const FocusManagerGotFocusEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNewFocusedElement(self: *@This()) core.HResult!*DependencyObject {
        const this: *IFocusManagerGotFocusEventArgs = @ptrCast(self);
        return try this.getNewFocusedElement();
    }
    pub fn getCorrelationId(self: *@This()) core.HResult!*Guid {
        const this: *IFocusManagerGotFocusEventArgs = @ptrCast(self);
        return try this.getCorrelationId();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.FocusManagerGotFocusEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFocusManagerGotFocusEventArgs.GUID;
    pub const IID: Guid = IFocusManagerGotFocusEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFocusManagerGotFocusEventArgs.SIGNATURE);
};
pub const FocusManagerLostFocusEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOldFocusedElement(self: *@This()) core.HResult!*DependencyObject {
        const this: *IFocusManagerLostFocusEventArgs = @ptrCast(self);
        return try this.getOldFocusedElement();
    }
    pub fn getCorrelationId(self: *@This()) core.HResult!*Guid {
        const this: *IFocusManagerLostFocusEventArgs = @ptrCast(self);
        return try this.getCorrelationId();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.FocusManagerLostFocusEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFocusManagerLostFocusEventArgs.GUID;
    pub const IID: Guid = IFocusManagerLostFocusEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFocusManagerLostFocusEventArgs.SIGNATURE);
};
pub const FocusMovementResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        const this: *IFocusMovementResult = @ptrCast(self);
        return try this.getSucceeded();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.FocusMovementResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFocusMovementResult.GUID;
    pub const IID: Guid = IFocusMovementResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFocusMovementResult.SIGNATURE);
};
pub const FocusNavigationDirection = enum(i32) {
    Next = 0,
    Previous = 1,
    Up = 2,
    Down = 3,
    Left = 4,
    Right = 5,
    None = 6,
};
pub const GettingFocusEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOldFocusedElement(self: *@This()) core.HResult!*DependencyObject {
        const this: *IGettingFocusEventArgs = @ptrCast(self);
        return try this.getOldFocusedElement();
    }
    pub fn getNewFocusedElement(self: *@This()) core.HResult!*DependencyObject {
        const this: *IGettingFocusEventArgs = @ptrCast(self);
        return try this.getNewFocusedElement();
    }
    pub fn putNewFocusedElement(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *IGettingFocusEventArgs = @ptrCast(self);
        return try this.putNewFocusedElement(value);
    }
    pub fn getFocusState(self: *@This()) core.HResult!FocusState {
        const this: *IGettingFocusEventArgs = @ptrCast(self);
        return try this.getFocusState();
    }
    pub fn getDirection(self: *@This()) core.HResult!FocusNavigationDirection {
        const this: *IGettingFocusEventArgs = @ptrCast(self);
        return try this.getDirection();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IGettingFocusEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IGettingFocusEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getInputDevice(self: *@This()) core.HResult!FocusInputDeviceKind {
        const this: *IGettingFocusEventArgs = @ptrCast(self);
        return try this.getInputDevice();
    }
    pub fn getCancel(self: *@This()) core.HResult!bool {
        const this: *IGettingFocusEventArgs = @ptrCast(self);
        return try this.getCancel();
    }
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const this: *IGettingFocusEventArgs = @ptrCast(self);
        return try this.putCancel(value);
    }
    pub fn TryCancel(self: *@This()) core.HResult!bool {
        var this: ?*IGettingFocusEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGettingFocusEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryCancel();
    }
    pub fn TrySetNewFocusedElement(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var this: ?*IGettingFocusEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGettingFocusEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TrySetNewFocusedElement(element);
    }
    pub fn getCorrelationId(self: *@This()) core.HResult!*Guid {
        var this: ?*IGettingFocusEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IGettingFocusEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCorrelationId();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.GettingFocusEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IGettingFocusEventArgs.GUID;
    pub const IID: Guid = IGettingFocusEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IGettingFocusEventArgs.SIGNATURE);
};
pub const HoldingEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *HoldingRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *HoldingRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *HoldingRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.HoldingEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ecae8ccd-8e5e-4fbe-9846-30a6370afcdf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *HoldingRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const HoldingRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IHoldingRoutedEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getHoldingState(self: *@This()) core.HResult!HoldingState {
        const this: *IHoldingRoutedEventArgs = @ptrCast(self);
        return try this.getHoldingState();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IHoldingRoutedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IHoldingRoutedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetPosition(self: *@This(), relativeTo: *UIElement) core.HResult!Point {
        const this: *IHoldingRoutedEventArgs = @ptrCast(self);
        return try this.GetPosition(relativeTo);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IHoldingRoutedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.HoldingRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHoldingRoutedEventArgs.GUID;
    pub const IID: Guid = IHoldingRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHoldingRoutedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IAccessKeyDisplayDismissedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IAccessKeyDisplayDismissedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a610dc6-d72d-4ca8-9f66-556f35b513da";
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
pub const IAccessKeyDisplayRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPressedKeys(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PressedKeys(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IAccessKeyDisplayRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c079e55-13fe-4d03-a61d-e12f06567286";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PressedKeys: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAccessKeyInvokedEventArgs = extern struct {
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IAccessKeyInvokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cfe9cd97-c718-4091-b7dd-adf1c072b1e1";
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
    };
};
pub const IAccessKeyManager = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IAccessKeyManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ecc973b0-2ee9-4b1c-98d7-6e0e816d334b";
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
pub const IAccessKeyManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn getIsDisplayModeEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsDisplayModeEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addIsDisplayModeEnabledChanged(self: *@This(), handler: *TypedEventHandler(IInspectable,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsDisplayModeEnabledChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsDisplayModeEnabledChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsDisplayModeEnabledChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ExitDisplayMode(self: *@This()) core.HResult!void {
        const _c = self.vtable.ExitDisplayMode(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IAccessKeyManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4ca0efe6-d9c8-4ebc-b4c7-30d1838a81f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsDisplayModeEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_IsDisplayModeEnabledChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(IInspectable,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsDisplayModeEnabledChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        ExitDisplayMode: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IAccessKeyManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn getAreKeyTipsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AreKeyTipsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putAreKeyTipsEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_AreKeyTipsEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IAccessKeyManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "962bb594-2ab3-47c5-954b-7092f355f797";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AreKeyTipsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_AreKeyTipsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICanExecuteRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getParameter(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Parameter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanExecute(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanExecute(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCanExecute(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CanExecute(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ICanExecuteRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c8e75256-1950-505d-993b-75907ef96830";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Parameter: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
        get_CanExecute: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CanExecute: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICharacterReceivedRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getCharacter(self: *@This()) core.HResult!u16 {
        var _r: u16 = undefined;
        const _c = self.vtable.get_Character(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        var _r: CorePhysicalKeyStatus = undefined;
        const _c = self.vtable.get_KeyStatus(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ICharacterReceivedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7849fd82-48e4-444d-9419-93ab8892c107";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Character: *const fn(self: *anyopaque, _r: *u16) callconv(.winapi) HRESULT,
        get_KeyStatus: *const fn(self: *anyopaque, _r: *CorePhysicalKeyStatus) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICommand = extern struct {
    vtable: *const VTable,
    pub fn addCanExecuteChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CanExecuteChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCanExecuteChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CanExecuteChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CanExecute(self: *@This(), parameter: *IInspectable) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.CanExecute(@ptrCast(self), parameter, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Execute(self: *@This(), parameter: *IInspectable) core.HResult!void {
        const _c = self.vtable.Execute(@ptrCast(self), parameter);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ICommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5af3542-ca67-4081-995b-709dd13792df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_CanExecuteChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CanExecuteChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        CanExecute: *const fn(self: *anyopaque, parameter: *IInspectable, _r: *bool) callconv(.winapi) HRESULT,
        Execute: *const fn(self: *anyopaque, parameter: *IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IContextRequestedEventArgs = extern struct {
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
    pub fn TryGetPosition(self: *@This(), relativeTo: *UIElement, point: Point) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryGetPosition(@ptrCast(self), relativeTo, point, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IContextRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "42618e0a-1cb6-46fb-8374-0aec68aa5e51";
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
        TryGetPosition: *const fn(self: *anyopaque, relativeTo: *UIElement, point: Point, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IDoubleTappedRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
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
    pub fn GetPosition(self: *@This(), relativeTo: *UIElement) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.GetPosition(@ptrCast(self), relativeTo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IDoubleTappedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af404424-26df-44f4-8714-9359249b62d3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetPosition: *const fn(self: *anyopaque, relativeTo: *UIElement, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const IExecuteRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getParameter(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.get_Parameter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IExecuteRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e07fa734-a0b6-5755-9e87-24f54cca9372";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Parameter: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IFindNextElementOptions = extern struct {
    vtable: *const VTable,
    pub fn getSearchRoot(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_SearchRoot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSearchRoot(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_SearchRoot(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExclusionRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_ExclusionRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExclusionRect(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_ExclusionRect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHintRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_HintRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putHintRect(self: *@This(), value: Rect) core.HResult!void {
        const _c = self.vtable.put_HintRect(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getXYFocusNavigationStrategyOverride(self: *@This()) core.HResult!XYFocusNavigationStrategyOverride {
        var _r: XYFocusNavigationStrategyOverride = undefined;
        const _c = self.vtable.get_XYFocusNavigationStrategyOverride(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putXYFocusNavigationStrategyOverride(self: *@This(), value: XYFocusNavigationStrategyOverride) core.HResult!void {
        const _c = self.vtable.put_XYFocusNavigationStrategyOverride(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IFindNextElementOptions";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d88ae22b-46c2-41fc-897e-b5961977b89d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SearchRoot: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_SearchRoot: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_ExclusionRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_ExclusionRect: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
        get_HintRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_HintRect: *const fn(self: *anyopaque, value: Rect) callconv(.winapi) HRESULT,
        get_XYFocusNavigationStrategyOverride: *const fn(self: *anyopaque, _r: *XYFocusNavigationStrategyOverride) callconv(.winapi) HRESULT,
        put_XYFocusNavigationStrategyOverride: *const fn(self: *anyopaque, value: XYFocusNavigationStrategyOverride) callconv(.winapi) HRESULT,
    };
};
pub const IFocusManager = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IFocusManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c843f50b-3b83-4da1-9d6f-557c1169f341";
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
pub const IFocusManagerGotFocusEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getNewFocusedElement(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_NewFocusedElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCorrelationId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CorrelationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IFocusManagerGotFocusEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "97aa5d83-535b-507a-868e-62b706f06b61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NewFocusedElement: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        get_CorrelationId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IFocusManagerLostFocusEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOldFocusedElement(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_OldFocusedElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCorrelationId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CorrelationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IFocusManagerLostFocusEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3e157e7a-9578-5cd3-aaa8-051b3d391978";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OldFocusedElement: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        get_CorrelationId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IFocusManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn GetFocusedElement(self: *@This()) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetFocusedElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IFocusManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1eccd326-8182-4482-826a-0918e9ed9af7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFocusedElement: *const fn(self: *anyopaque, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IFocusManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn TryMoveFocus(self: *@This(), focusNavigationDirection: FocusNavigationDirection) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryMoveFocus(@ptrCast(self), focusNavigationDirection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IFocusManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a920d761-dd87-4f31-beda-ef417fe7c04a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryMoveFocus: *const fn(self: *anyopaque, focusNavigationDirection: FocusNavigationDirection, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IFocusManagerStatics3 = extern struct {
    vtable: *const VTable,
    pub fn FindNextFocusableElement(self: *@This(), focusNavigationDirection: FocusNavigationDirection) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.FindNextFocusableElement(@ptrCast(self), focusNavigationDirection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindNextFocusableElementWithHintRect(self: *@This(), focusNavigationDirection: FocusNavigationDirection, hintRect: Rect) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.FindNextFocusableElementWithHintRect(@ptrCast(self), focusNavigationDirection, hintRect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IFocusManagerStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "60805ebf-b149-417d-83f1-baeb560e2a47";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindNextFocusableElement: *const fn(self: *anyopaque, focusNavigationDirection: FocusNavigationDirection, _r: **UIElement) callconv(.winapi) HRESULT,
        FindNextFocusableElementWithHintRect: *const fn(self: *anyopaque, focusNavigationDirection: FocusNavigationDirection, hintRect: Rect, _r: **UIElement) callconv(.winapi) HRESULT,
    };
};
pub const IFocusManagerStatics4 = extern struct {
    vtable: *const VTable,
    pub fn TryMoveFocus(self: *@This(), focusNavigationDirection: FocusNavigationDirection, focusNavigationOptions: *FindNextElementOptions) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryMoveFocus(@ptrCast(self), focusNavigationDirection, focusNavigationOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindNextElement(self: *@This(), focusNavigationDirection: FocusNavigationDirection) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.FindNextElement(@ptrCast(self), focusNavigationDirection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindFirstFocusableElement(self: *@This(), searchScope: *DependencyObject) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.FindFirstFocusableElement(@ptrCast(self), searchScope, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindLastFocusableElement(self: *@This(), searchScope: *DependencyObject) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.FindLastFocusableElement(@ptrCast(self), searchScope, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindNextElementWithFocusNavigationOptions(self: *@This(), focusNavigationDirection: FocusNavigationDirection, focusNavigationOptions: *FindNextElementOptions) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.FindNextElementWithFocusNavigationOptions(@ptrCast(self), focusNavigationDirection, focusNavigationOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IFocusManagerStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "29276e9c-1c6c-414a-ba1c-96efd5962bcd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryMoveFocus: *const fn(self: *anyopaque, focusNavigationDirection: FocusNavigationDirection, focusNavigationOptions: *FindNextElementOptions, _r: *bool) callconv(.winapi) HRESULT,
        FindNextElement: *const fn(self: *anyopaque, focusNavigationDirection: FocusNavigationDirection, _r: **DependencyObject) callconv(.winapi) HRESULT,
        FindFirstFocusableElement: *const fn(self: *anyopaque, searchScope: *DependencyObject, _r: **DependencyObject) callconv(.winapi) HRESULT,
        FindLastFocusableElement: *const fn(self: *anyopaque, searchScope: *DependencyObject, _r: **DependencyObject) callconv(.winapi) HRESULT,
        FindNextElementWithFocusNavigationOptions: *const fn(self: *anyopaque, focusNavigationDirection: FocusNavigationDirection, focusNavigationOptions: *FindNextElementOptions, _r: **DependencyObject) callconv(.winapi) HRESULT,
    };
};
pub const IFocusManagerStatics5 = extern struct {
    vtable: *const VTable,
    pub fn TryFocusAsync(self: *@This(), element: *DependencyObject, value: FocusState) core.HResult!*IAsyncOperation(FocusMovementResult) {
        var _r: *IAsyncOperation(FocusMovementResult) = undefined;
        const _c = self.vtable.TryFocusAsync(@ptrCast(self), element, value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryMoveFocusAsync(self: *@This(), focusNavigationDirection: FocusNavigationDirection) core.HResult!*IAsyncOperation(FocusMovementResult) {
        var _r: *IAsyncOperation(FocusMovementResult) = undefined;
        const _c = self.vtable.TryMoveFocusAsync(@ptrCast(self), focusNavigationDirection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryMoveFocusAsyncWithFocusNavigationOptions(self: *@This(), focusNavigationDirection: FocusNavigationDirection, focusNavigationOptions: *FindNextElementOptions) core.HResult!*IAsyncOperation(FocusMovementResult) {
        var _r: *IAsyncOperation(FocusMovementResult) = undefined;
        const _c = self.vtable.TryMoveFocusAsyncWithFocusNavigationOptions(@ptrCast(self), focusNavigationDirection, focusNavigationOptions, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IFocusManagerStatics5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "280edc61-207a-4d7b-b98f-ce165e1b2015";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryFocusAsync: *const fn(self: *anyopaque, element: *DependencyObject, value: FocusState, _r: **IAsyncOperation(FocusMovementResult)) callconv(.winapi) HRESULT,
        TryMoveFocusAsync: *const fn(self: *anyopaque, focusNavigationDirection: FocusNavigationDirection, _r: **IAsyncOperation(FocusMovementResult)) callconv(.winapi) HRESULT,
        TryMoveFocusAsyncWithFocusNavigationOptions: *const fn(self: *anyopaque, focusNavigationDirection: FocusNavigationDirection, focusNavigationOptions: *FindNextElementOptions, _r: **IAsyncOperation(FocusMovementResult)) callconv(.winapi) HRESULT,
    };
};
pub const IFocusManagerStatics6 = extern struct {
    vtable: *const VTable,
    pub fn addGotFocus(self: *@This(), handler: *EventHandler(FocusManagerGotFocusEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GotFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGotFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GotFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLostFocus(self: *@This(), handler: *EventHandler(FocusManagerLostFocusEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LostFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLostFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LostFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGettingFocus(self: *@This(), handler: *EventHandler(GettingFocusEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GettingFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGettingFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GettingFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLosingFocus(self: *@This(), handler: *EventHandler(LosingFocusEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LosingFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLosingFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LosingFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IFocusManagerStatics6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3546a1b6-20bf-5007-929d-e6d32e16afe4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_GotFocus: *const fn(self: *anyopaque, handler: *EventHandler(FocusManagerGotFocusEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GotFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LostFocus: *const fn(self: *anyopaque, handler: *EventHandler(FocusManagerLostFocusEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LostFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GettingFocus: *const fn(self: *anyopaque, handler: *EventHandler(GettingFocusEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GettingFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LosingFocus: *const fn(self: *anyopaque, handler: *EventHandler(LosingFocusEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LosingFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IFocusManagerStatics7 = extern struct {
    vtable: *const VTable,
    pub fn GetFocusedElement(self: *@This(), xamlRoot: *XamlRoot) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.GetFocusedElement(@ptrCast(self), xamlRoot, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IFocusManagerStatics7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95d6fa97-f0fc-5c32-b29d-07c04ec966b0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFocusedElement: *const fn(self: *anyopaque, xamlRoot: *XamlRoot, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IFocusMovementResult = extern struct {
    vtable: *const VTable,
    pub fn getSucceeded(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Succeeded(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IFocusMovementResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "06dfead3-c2ae-44bb-bfab-9c73de8407a4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Succeeded: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGettingFocusEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOldFocusedElement(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_OldFocusedElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewFocusedElement(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_NewFocusedElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNewFocusedElement(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_NewFocusedElement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFocusState(self: *@This()) core.HResult!FocusState {
        var _r: FocusState = undefined;
        const _c = self.vtable.get_FocusState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDirection(self: *@This()) core.HResult!FocusNavigationDirection {
        var _r: FocusNavigationDirection = undefined;
        const _c = self.vtable.get_Direction(@ptrCast(self), &_r);
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
    pub fn getInputDevice(self: *@This()) core.HResult!FocusInputDeviceKind {
        var _r: FocusInputDeviceKind = undefined;
        const _c = self.vtable.get_InputDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IGettingFocusEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fa05b9ce-c67c-4be8-8fd4-c44d67877e0d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OldFocusedElement: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        get_NewFocusedElement: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_NewFocusedElement: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_FocusState: *const fn(self: *anyopaque, _r: *FocusState) callconv(.winapi) HRESULT,
        get_Direction: *const fn(self: *anyopaque, _r: *FocusNavigationDirection) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_InputDevice: *const fn(self: *anyopaque, _r: *FocusInputDeviceKind) callconv(.winapi) HRESULT,
        get_Cancel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Cancel: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IGettingFocusEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn TryCancel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryCancel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetNewFocusedElement(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetNewFocusedElement(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IGettingFocusEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88754d7b-b4b9-4959-8bce-89bf212ed4eb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCancel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        TrySetNewFocusedElement: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IGettingFocusEventArgs3 = extern struct {
    vtable: *const VTable,
    pub fn getCorrelationId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CorrelationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IGettingFocusEventArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4e024891-db3f-5e78-b75a-62bfc3510735";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CorrelationId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IHoldingRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHoldingState(self: *@This()) core.HResult!HoldingState {
        var _r: HoldingState = undefined;
        const _c = self.vtable.get_HoldingState(@ptrCast(self), &_r);
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
    pub fn GetPosition(self: *@This(), relativeTo: *UIElement) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.GetPosition(@ptrCast(self), relativeTo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IHoldingRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c246ff23-d80d-44de-8db9-0d815e269ac0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_HoldingState: *const fn(self: *anyopaque, _r: *HoldingState) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetPosition: *const fn(self: *anyopaque, relativeTo: *UIElement, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const IInertiaExpansionBehavior = extern struct {
    vtable: *const VTable,
    pub fn getDesiredDeceleration(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DesiredDeceleration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredDeceleration(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DesiredDeceleration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredExpansion(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DesiredExpansion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredExpansion(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DesiredExpansion(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IInertiaExpansionBehavior";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "751d87e5-8d42-44c5-965e-3cd30cc9d6f7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredDeceleration: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DesiredDeceleration: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_DesiredExpansion: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DesiredExpansion: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IInertiaRotationBehavior = extern struct {
    vtable: *const VTable,
    pub fn getDesiredDeceleration(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DesiredDeceleration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredDeceleration(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DesiredDeceleration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredRotation(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DesiredRotation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredRotation(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DesiredRotation(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IInertiaRotationBehavior";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "424cfb2e-bbfd-4625-ae78-20c65bf1efaf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredDeceleration: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DesiredDeceleration: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_DesiredRotation: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DesiredRotation: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IInertiaTranslationBehavior = extern struct {
    vtable: *const VTable,
    pub fn getDesiredDeceleration(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DesiredDeceleration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredDeceleration(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DesiredDeceleration(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDesiredDisplacement(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_DesiredDisplacement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDesiredDisplacement(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_DesiredDisplacement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IInertiaTranslationBehavior";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "45d3a512-3b32-4882-a4c2-ecfa2d4b6df0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DesiredDeceleration: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DesiredDeceleration: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
        get_DesiredDisplacement: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_DesiredDisplacement: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IInputScope = extern struct {
    vtable: *const VTable,
    pub fn getNames(self: *@This()) core.HResult!*IVector(InputScopeName) {
        var _r: *IVector(InputScopeName) = undefined;
        const _c = self.vtable.get_Names(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IInputScope";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c0f85f3-f9d8-4220-b666-045d074d9bfa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Names: *const fn(self: *anyopaque, _r: **IVector(InputScopeName)) callconv(.winapi) HRESULT,
    };
};
pub const IInputScopeName = extern struct {
    vtable: *const VTable,
    pub fn getNameValue(self: *@This()) core.HResult!InputScopeNameValue {
        var _r: InputScopeNameValue = undefined;
        const _c = self.vtable.get_NameValue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNameValue(self: *@This(), value: InputScopeNameValue) core.HResult!void {
        const _c = self.vtable.put_NameValue(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IInputScopeName";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fd3e6997-08fb-4cba-a021-792d7589fd5a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NameValue: *const fn(self: *anyopaque, _r: *InputScopeNameValue) callconv(.winapi) HRESULT,
        put_NameValue: *const fn(self: *anyopaque, value: InputScopeNameValue) callconv(.winapi) HRESULT,
    };
};
pub const IInputScopeNameFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), nameValue: InputScopeNameValue) core.HResult!*InputScopeName {
        var _r: *InputScopeName = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), nameValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IInputScopeNameFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a40bb52-4bd7-4e54-8617-1cda8a1eda7f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, nameValue: InputScopeNameValue, _r: **InputScopeName) callconv(.winapi) HRESULT,
    };
};
pub const IKeyRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_Key(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        var _r: CorePhysicalKeyStatus = undefined;
        const _c = self.vtable.get_KeyStatus(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IKeyRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d4cd3dfe-4079-42e9-a39a-3095d3f049c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Key: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        get_KeyStatus: *const fn(self: *anyopaque, _r: *CorePhysicalKeyStatus) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IKeyRoutedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getOriginalKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_OriginalKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IKeyRoutedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b02d57a-9634-4f14-91b2-133e42fdb3cd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OriginalKey: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
    };
};
pub const IKeyRoutedEventArgs3 = extern struct {
    vtable: *const VTable,
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IKeyRoutedEventArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2779f5b4-ca41-411b-a8ef-f4fc78e78057";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IKeyboardAccelerator = extern struct {
    vtable: *const VTable,
    pub fn getKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_Key(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const _c = self.vtable.put_Key(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var _r: VirtualKeyModifiers = undefined;
        const _c = self.vtable.get_Modifiers(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const _c = self.vtable.put_Modifiers(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub fn getScopeOwner(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_ScopeOwner(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putScopeOwner(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_ScopeOwner(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addInvoked(self: *@This(), handler: *TypedEventHandler(KeyboardAccelerator,KeyboardAcceleratorInvokedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Invoked(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeInvoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Invoked(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IKeyboardAccelerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92e6181e-19ae-465a-9b3c-a71ee9ea7420";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Key: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        put_Key: *const fn(self: *anyopaque, value: VirtualKey) callconv(.winapi) HRESULT,
        get_Modifiers: *const fn(self: *anyopaque, _r: *VirtualKeyModifiers) callconv(.winapi) HRESULT,
        put_Modifiers: *const fn(self: *anyopaque, value: VirtualKeyModifiers) callconv(.winapi) HRESULT,
        get_IsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ScopeOwner: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_ScopeOwner: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        add_Invoked: *const fn(self: *anyopaque, handler: *TypedEventHandler(KeyboardAccelerator,KeyboardAcceleratorInvokedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Invoked: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IKeyboardAcceleratorFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*KeyboardAccelerator {
        var _r: *KeyboardAccelerator = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IKeyboardAcceleratorFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "44d88a99-4bfd-4a47-a893-515f388623f6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **KeyboardAccelerator) callconv(.winapi) HRESULT,
    };
};
pub const IKeyboardAcceleratorInvokedEventArgs = extern struct {
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
    pub fn getElement(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_Element(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IKeyboardAcceleratorInvokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c00b03f2-04e7-4415-b17d-d76b9490de2b";
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
        get_Element: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
    };
};
pub const IKeyboardAcceleratorInvokedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getKeyboardAccelerator(self: *@This()) core.HResult!*KeyboardAccelerator {
        var _r: *KeyboardAccelerator = undefined;
        const _c = self.vtable.get_KeyboardAccelerator(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IKeyboardAcceleratorInvokedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "befca4b8-5907-48ee-8e21-9c969078fa11";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyboardAccelerator: *const fn(self: *anyopaque, _r: **KeyboardAccelerator) callconv(.winapi) HRESULT,
    };
};
pub const IKeyboardAcceleratorStatics = extern struct {
    vtable: *const VTable,
    pub fn getKeyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModifiersProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ModifiersProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsEnabledProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IsEnabledProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScopeOwnerProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_ScopeOwnerProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IKeyboardAcceleratorStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3bd43d51-9bb3-456d-bf15-804adfb86261";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KeyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ModifiersProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IsEnabledProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_ScopeOwnerProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ILosingFocusEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOldFocusedElement(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_OldFocusedElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getNewFocusedElement(self: *@This()) core.HResult!*DependencyObject {
        var _r: *DependencyObject = undefined;
        const _c = self.vtable.get_NewFocusedElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNewFocusedElement(self: *@This(), value: *DependencyObject) core.HResult!void {
        const _c = self.vtable.put_NewFocusedElement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getFocusState(self: *@This()) core.HResult!FocusState {
        var _r: FocusState = undefined;
        const _c = self.vtable.get_FocusState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDirection(self: *@This()) core.HResult!FocusNavigationDirection {
        var _r: FocusNavigationDirection = undefined;
        const _c = self.vtable.get_Direction(@ptrCast(self), &_r);
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
    pub fn getInputDevice(self: *@This()) core.HResult!FocusInputDeviceKind {
        var _r: FocusInputDeviceKind = undefined;
        const _c = self.vtable.get_InputDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ILosingFocusEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f9f683c7-d789-472b-aa93-6d4105e6dabe";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OldFocusedElement: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        get_NewFocusedElement: *const fn(self: *anyopaque, _r: **DependencyObject) callconv(.winapi) HRESULT,
        put_NewFocusedElement: *const fn(self: *anyopaque, value: *DependencyObject) callconv(.winapi) HRESULT,
        get_FocusState: *const fn(self: *anyopaque, _r: *FocusState) callconv(.winapi) HRESULT,
        get_Direction: *const fn(self: *anyopaque, _r: *FocusNavigationDirection) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_InputDevice: *const fn(self: *anyopaque, _r: *FocusInputDeviceKind) callconv(.winapi) HRESULT,
        get_Cancel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Cancel: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ILosingFocusEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn TryCancel(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryCancel(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetNewFocusedElement(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetNewFocusedElement(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ILosingFocusEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0493fad9-c27f-469f-8e62-52b3a4f7cd54";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCancel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        TrySetNewFocusedElement: *const fn(self: *anyopaque, element: *DependencyObject, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ILosingFocusEventArgs3 = extern struct {
    vtable: *const VTable,
    pub fn getCorrelationId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CorrelationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ILosingFocusEventArgs3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c98900bd-0b79-566e-ad1f-436fa513ae22";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CorrelationId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationCompletedRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContainer(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Container(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInertial(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInertial(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        var _r: ManipulationDelta = undefined;
        const _c = self.vtable.get_Cumulative(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVelocities(self: *@This()) core.HResult!ManipulationVelocities {
        var _r: ManipulationVelocities = undefined;
        const _c = self.vtable.get_Velocities(@ptrCast(self), &_r);
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
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IManipulationCompletedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5ad9b23-2f41-498e-8319-015ee8a75346";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Container: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_IsInertial: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Cumulative: *const fn(self: *anyopaque, _r: *ManipulationDelta) callconv(.winapi) HRESULT,
        get_Velocities: *const fn(self: *anyopaque, _r: *ManipulationVelocities) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationDeltaRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContainer(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Container(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInertial(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInertial(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDelta(self: *@This()) core.HResult!ManipulationDelta {
        var _r: ManipulationDelta = undefined;
        const _c = self.vtable.get_Delta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        var _r: ManipulationDelta = undefined;
        const _c = self.vtable.get_Cumulative(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVelocities(self: *@This()) core.HResult!ManipulationVelocities {
        var _r: ManipulationVelocities = undefined;
        const _c = self.vtable.get_Velocities(@ptrCast(self), &_r);
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
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IManipulationDeltaRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "400d5794-4c6f-491d-82d6-3517109399c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Container: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_IsInertial: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Delta: *const fn(self: *anyopaque, _r: *ManipulationDelta) callconv(.winapi) HRESULT,
        get_Cumulative: *const fn(self: *anyopaque, _r: *ManipulationDelta) callconv(.winapi) HRESULT,
        get_Velocities: *const fn(self: *anyopaque, _r: *ManipulationVelocities) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationInertiaStartingRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContainer(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Container(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getExpansionBehavior(self: *@This()) core.HResult!*InertiaExpansionBehavior {
        var _r: *InertiaExpansionBehavior = undefined;
        const _c = self.vtable.get_ExpansionBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExpansionBehavior(self: *@This(), value: *InertiaExpansionBehavior) core.HResult!void {
        const _c = self.vtable.put_ExpansionBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getRotationBehavior(self: *@This()) core.HResult!*InertiaRotationBehavior {
        var _r: *InertiaRotationBehavior = undefined;
        const _c = self.vtable.get_RotationBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRotationBehavior(self: *@This(), value: *InertiaRotationBehavior) core.HResult!void {
        const _c = self.vtable.put_RotationBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTranslationBehavior(self: *@This()) core.HResult!*InertiaTranslationBehavior {
        var _r: *InertiaTranslationBehavior = undefined;
        const _c = self.vtable.get_TranslationBehavior(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTranslationBehavior(self: *@This(), value: *InertiaTranslationBehavior) core.HResult!void {
        const _c = self.vtable.put_TranslationBehavior(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDelta(self: *@This()) core.HResult!ManipulationDelta {
        var _r: ManipulationDelta = undefined;
        const _c = self.vtable.get_Delta(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        var _r: ManipulationDelta = undefined;
        const _c = self.vtable.get_Cumulative(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getVelocities(self: *@This()) core.HResult!ManipulationVelocities {
        var _r: ManipulationVelocities = undefined;
        const _c = self.vtable.get_Velocities(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IManipulationInertiaStartingRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "246a91a9-ca43-4c0b-acef-81e8b8147520";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Container: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        get_ExpansionBehavior: *const fn(self: *anyopaque, _r: **InertiaExpansionBehavior) callconv(.winapi) HRESULT,
        put_ExpansionBehavior: *const fn(self: *anyopaque, value: *InertiaExpansionBehavior) callconv(.winapi) HRESULT,
        get_RotationBehavior: *const fn(self: *anyopaque, _r: **InertiaRotationBehavior) callconv(.winapi) HRESULT,
        put_RotationBehavior: *const fn(self: *anyopaque, value: *InertiaRotationBehavior) callconv(.winapi) HRESULT,
        get_TranslationBehavior: *const fn(self: *anyopaque, _r: **InertiaTranslationBehavior) callconv(.winapi) HRESULT,
        put_TranslationBehavior: *const fn(self: *anyopaque, value: *InertiaTranslationBehavior) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Delta: *const fn(self: *anyopaque, _r: *ManipulationDelta) callconv(.winapi) HRESULT,
        get_Cumulative: *const fn(self: *anyopaque, _r: *ManipulationDelta) callconv(.winapi) HRESULT,
        get_Velocities: *const fn(self: *anyopaque, _r: *ManipulationVelocities) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationPivot = extern struct {
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
    pub fn getRadius(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Radius(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRadius(self: *@This(), value: f64) core.HResult!void {
        const _c = self.vtable.put_Radius(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IManipulationPivot";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e3838a5-e6c2-4998-82ac-18748b141666";
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
        get_Radius: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        put_Radius: *const fn(self: *anyopaque, value: f64) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationPivotFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstanceWithCenterAndRadius(self: *@This(), center: Point, radius: f64) core.HResult!*ManipulationPivot {
        var _r: *ManipulationPivot = undefined;
        const _c = self.vtable.CreateInstanceWithCenterAndRadius(@ptrCast(self), center, radius, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IManipulationPivotFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6d05b039-3702-4396-ad9b-a825efa63a3b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstanceWithCenterAndRadius: *const fn(self: *anyopaque, center: Point, radius: f64, _r: **ManipulationPivot) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationStartedRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getContainer(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Container(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Position(@ptrCast(self), &_r);
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
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        var _r: ManipulationDelta = undefined;
        const _c = self.vtable.get_Cumulative(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Complete(self: *@This()) core.HResult!void {
        const _c = self.vtable.Complete(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IManipulationStartedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5db1aa05-9f80-48b6-ae6c-4f119de8ff13";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Container: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        get_Position: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Cumulative: *const fn(self: *anyopaque, _r: *ManipulationDelta) callconv(.winapi) HRESULT,
        Complete: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationStartedRoutedEventArgsFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ManipulationStartedRoutedEventArgs {
        var _r: *ManipulationStartedRoutedEventArgs = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IManipulationStartedRoutedEventArgsFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "84c1daa7-7272-4463-b6c3-a40b9ba151fc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **ManipulationStartedRoutedEventArgs) callconv(.winapi) HRESULT,
    };
};
pub const IManipulationStartingRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getMode(self: *@This()) core.HResult!ManipulationModes {
        var _r: ManipulationModes = undefined;
        const _c = self.vtable.get_Mode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putMode(self: *@This(), value: ManipulationModes) core.HResult!void {
        const _c = self.vtable.put_Mode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getContainer(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Container(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContainer(self: *@This(), value: *UIElement) core.HResult!void {
        const _c = self.vtable.put_Container(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPivot(self: *@This()) core.HResult!*ManipulationPivot {
        var _r: *ManipulationPivot = undefined;
        const _c = self.vtable.get_Pivot(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPivot(self: *@This(), value: *ManipulationPivot) core.HResult!void {
        const _c = self.vtable.put_Pivot(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IManipulationStartingRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "18d636b7-53a4-4c15-a498-f3a9ca212a42";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Mode: *const fn(self: *anyopaque, _r: *ManipulationModes) callconv(.winapi) HRESULT,
        put_Mode: *const fn(self: *anyopaque, value: ManipulationModes) callconv(.winapi) HRESULT,
        get_Container: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        put_Container: *const fn(self: *anyopaque, value: *UIElement) callconv(.winapi) HRESULT,
        get_Pivot: *const fn(self: *anyopaque, _r: **ManipulationPivot) callconv(.winapi) HRESULT,
        put_Pivot: *const fn(self: *anyopaque, value: *ManipulationPivot) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const INoFocusCandidateFoundEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDirection(self: *@This()) core.HResult!FocusNavigationDirection {
        var _r: FocusNavigationDirection = undefined;
        const _c = self.vtable.get_Direction(@ptrCast(self), &_r);
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
    pub fn getInputDevice(self: *@This()) core.HResult!FocusInputDeviceKind {
        var _r: FocusInputDeviceKind = undefined;
        const _c = self.vtable.get_InputDevice(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.INoFocusCandidateFoundEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ec3601a7-1007-48f9-b6b3-ed0bea53937d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Direction: *const fn(self: *anyopaque, _r: *FocusNavigationDirection) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_InputDevice: *const fn(self: *anyopaque, _r: *FocusInputDeviceKind) callconv(.winapi) HRESULT,
    };
};
pub const IPointer = extern struct {
    vtable: *const VTable,
    pub fn getPointerId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_PointerId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInContact(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInContact(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsInRange(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsInRange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IPointer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ee8f39f-747d-4171-90e6-cd37a9dffb11";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerId: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_IsInContact: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsInRange: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IPointerRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointer(self: *@This()) core.HResult!*Pointer {
        var _r: *Pointer = undefined;
        const _c = self.vtable.get_Pointer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var _r: VirtualKeyModifiers = undefined;
        const _c = self.vtable.get_KeyModifiers(@ptrCast(self), &_r);
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
    pub fn GetCurrentPoint(self: *@This(), relativeTo: *UIElement) core.HResult!*PointerPoint {
        var _r: *PointerPoint = undefined;
        const _c = self.vtable.GetCurrentPoint(@ptrCast(self), relativeTo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetIntermediatePoints(self: *@This(), relativeTo: *UIElement) core.HResult!*IVector(PointerPoint) {
        var _r: *IVector(PointerPoint) = undefined;
        const _c = self.vtable.GetIntermediatePoints(@ptrCast(self), relativeTo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IPointerRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "da628f0a-9752-49e2-bde2-49eccab9194d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Pointer: *const fn(self: *anyopaque, _r: **Pointer) callconv(.winapi) HRESULT,
        get_KeyModifiers: *const fn(self: *anyopaque, _r: *VirtualKeyModifiers) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetCurrentPoint: *const fn(self: *anyopaque, relativeTo: *UIElement, _r: **PointerPoint) callconv(.winapi) HRESULT,
        GetIntermediatePoints: *const fn(self: *anyopaque, relativeTo: *UIElement, _r: **IVector(PointerPoint)) callconv(.winapi) HRESULT,
    };
};
pub const IPointerRoutedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getIsGenerated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsGenerated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IPointerRoutedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0821f294-1de6-4711-ba7c-8d4b8b0911d0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsGenerated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IProcessKeyboardAcceleratorEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getKey(self: *@This()) core.HResult!VirtualKey {
        var _r: VirtualKey = undefined;
        const _c = self.vtable.get_Key(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        var _r: VirtualKeyModifiers = undefined;
        const _c = self.vtable.get_Modifiers(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IProcessKeyboardAcceleratorEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fb79c216-972b-440c-9b83-2b4198dcf09d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Key: *const fn(self: *anyopaque, _r: *VirtualKey) callconv(.winapi) HRESULT,
        get_Modifiers: *const fn(self: *anyopaque, _r: *VirtualKeyModifiers) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IRightTappedRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
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
    pub fn GetPosition(self: *@This(), relativeTo: *UIElement) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.GetPosition(@ptrCast(self), relativeTo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IRightTappedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6834869d-7bd5-4033-b237-172f79abe393";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetPosition: *const fn(self: *anyopaque, relativeTo: *UIElement, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const IStandardUICommand = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!StandardUICommandKind {
        var _r: StandardUICommandKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IStandardUICommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d2bf7f43-0504-52d0-8aa6-0cb0f756eb27";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *StandardUICommandKind) callconv(.winapi) HRESULT,
    };
};
pub const IStandardUICommand2 = extern struct {
    vtable: *const VTable,
    pub fn putKind(self: *@This(), value: StandardUICommandKind) core.HResult!void {
        const _c = self.vtable.put_Kind(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IStandardUICommand2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3666069-f9e4-51eb-885b-7a620a0782ea";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_Kind: *const fn(self: *anyopaque, value: StandardUICommandKind) callconv(.winapi) HRESULT,
    };
};
pub const IStandardUICommandFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*StandardUICommand {
        var _r: *StandardUICommand = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithKind(self: *@This(), kind: StandardUICommandKind, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*StandardUICommand {
        var _r: *StandardUICommand = undefined;
        const _c = self.vtable.CreateInstanceWithKind(@ptrCast(self), kind, baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IStandardUICommandFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f1a7590-dce1-56e4-ab63-f5ce3ce4ebf6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **StandardUICommand) callconv(.winapi) HRESULT,
        CreateInstanceWithKind: *const fn(self: *anyopaque, kind: StandardUICommandKind, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **StandardUICommand) callconv(.winapi) HRESULT,
    };
};
pub const IStandardUICommandStatics = extern struct {
    vtable: *const VTable,
    pub fn getKindProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KindProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IStandardUICommandStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7ea87ed9-2978-5533-9b2e-6759ce88569f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_KindProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const ITappedRoutedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        var _r: PointerDeviceType = undefined;
        const _c = self.vtable.get_PointerDeviceType(@ptrCast(self), &_r);
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
    pub fn GetPosition(self: *@This(), relativeTo: *UIElement) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.GetPosition(@ptrCast(self), relativeTo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ITappedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a099e6be-e624-459a-bb1d-e05c73e2cc66";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PointerDeviceType: *const fn(self: *anyopaque, _r: *PointerDeviceType) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        GetPosition: *const fn(self: *anyopaque, relativeTo: *UIElement, _r: *Point) callconv(.winapi) HRESULT,
    };
};
pub const IXamlUICommand = extern struct {
    vtable: *const VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Label(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Label(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIconSource(self: *@This()) core.HResult!*IconSource {
        var _r: *IconSource = undefined;
        const _c = self.vtable.get_IconSource(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIconSource(self: *@This(), value: *IconSource) core.HResult!void {
        const _c = self.vtable.put_IconSource(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getKeyboardAccelerators(self: *@This()) core.HResult!*IVector(KeyboardAccelerator) {
        var _r: *IVector(KeyboardAccelerator) = undefined;
        const _c = self.vtable.get_KeyboardAccelerators(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
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
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Description(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Description(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
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
    pub fn addExecuteRequested(self: *@This(), handler: *TypedEventHandler(XamlUICommand,ExecuteRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ExecuteRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeExecuteRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ExecuteRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCanExecuteRequested(self: *@This(), handler: *TypedEventHandler(XamlUICommand,CanExecuteRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CanExecuteRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCanExecuteRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CanExecuteRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyCanExecuteChanged(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyCanExecuteChanged(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IXamlUICommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8494f8d4-ead1-5f01-ad2e-a8cad4f9dc0e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Label: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Label: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_IconSource: *const fn(self: *anyopaque, _r: **IconSource) callconv(.winapi) HRESULT,
        put_IconSource: *const fn(self: *anyopaque, value: *IconSource) callconv(.winapi) HRESULT,
        get_KeyboardAccelerators: *const fn(self: *anyopaque, _r: **IVector(KeyboardAccelerator)) callconv(.winapi) HRESULT,
        get_AccessKey: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_AccessKey: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Description: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Description: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Command: *const fn(self: *anyopaque, _r: **ICommand) callconv(.winapi) HRESULT,
        put_Command: *const fn(self: *anyopaque, value: *ICommand) callconv(.winapi) HRESULT,
        add_ExecuteRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(XamlUICommand,ExecuteRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ExecuteRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CanExecuteRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(XamlUICommand,CanExecuteRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CanExecuteRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        NotifyCanExecuteChanged: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IXamlUICommandFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*XamlUICommand {
        var _r: *XamlUICommand = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IXamlUICommandFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1eec08c3-e061-5e10-9f2a-2baa840885c2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **XamlUICommand) callconv(.winapi) HRESULT,
    };
};
pub const IXamlUICommandStatics = extern struct {
    vtable: *const VTable,
    pub fn getLabelProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_LabelProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIconSourceProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_IconSourceProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKeyboardAcceleratorsProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_KeyboardAcceleratorsProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAccessKeyProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_AccessKeyProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDescriptionProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_DescriptionProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCommandProperty(self: *@This()) core.HResult!*DependencyProperty {
        var _r: *DependencyProperty = undefined;
        const _c = self.vtable.get_CommandProperty(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.IXamlUICommandStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "66bc457c-1a0c-58ed-876e-71533f966db6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_LabelProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_IconSourceProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_KeyboardAcceleratorsProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_AccessKeyProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_DescriptionProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
        get_CommandProperty: *const fn(self: *anyopaque, _r: **DependencyProperty) callconv(.winapi) HRESULT,
    };
};
pub const InertiaExpansionBehavior = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDesiredDeceleration(self: *@This()) core.HResult!f64 {
        const this: *IInertiaExpansionBehavior = @ptrCast(self);
        return try this.getDesiredDeceleration();
    }
    pub fn putDesiredDeceleration(self: *@This(), value: f64) core.HResult!void {
        const this: *IInertiaExpansionBehavior = @ptrCast(self);
        return try this.putDesiredDeceleration(value);
    }
    pub fn getDesiredExpansion(self: *@This()) core.HResult!f64 {
        const this: *IInertiaExpansionBehavior = @ptrCast(self);
        return try this.getDesiredExpansion();
    }
    pub fn putDesiredExpansion(self: *@This(), value: f64) core.HResult!void {
        const this: *IInertiaExpansionBehavior = @ptrCast(self);
        return try this.putDesiredExpansion(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.InertiaExpansionBehavior";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInertiaExpansionBehavior.GUID;
    pub const IID: Guid = IInertiaExpansionBehavior.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInertiaExpansionBehavior.SIGNATURE);
};
pub const InertiaRotationBehavior = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDesiredDeceleration(self: *@This()) core.HResult!f64 {
        const this: *IInertiaRotationBehavior = @ptrCast(self);
        return try this.getDesiredDeceleration();
    }
    pub fn putDesiredDeceleration(self: *@This(), value: f64) core.HResult!void {
        const this: *IInertiaRotationBehavior = @ptrCast(self);
        return try this.putDesiredDeceleration(value);
    }
    pub fn getDesiredRotation(self: *@This()) core.HResult!f64 {
        const this: *IInertiaRotationBehavior = @ptrCast(self);
        return try this.getDesiredRotation();
    }
    pub fn putDesiredRotation(self: *@This(), value: f64) core.HResult!void {
        const this: *IInertiaRotationBehavior = @ptrCast(self);
        return try this.putDesiredRotation(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.InertiaRotationBehavior";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInertiaRotationBehavior.GUID;
    pub const IID: Guid = IInertiaRotationBehavior.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInertiaRotationBehavior.SIGNATURE);
};
pub const InertiaTranslationBehavior = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDesiredDeceleration(self: *@This()) core.HResult!f64 {
        const this: *IInertiaTranslationBehavior = @ptrCast(self);
        return try this.getDesiredDeceleration();
    }
    pub fn putDesiredDeceleration(self: *@This(), value: f64) core.HResult!void {
        const this: *IInertiaTranslationBehavior = @ptrCast(self);
        return try this.putDesiredDeceleration(value);
    }
    pub fn getDesiredDisplacement(self: *@This()) core.HResult!f64 {
        const this: *IInertiaTranslationBehavior = @ptrCast(self);
        return try this.getDesiredDisplacement();
    }
    pub fn putDesiredDisplacement(self: *@This(), value: f64) core.HResult!void {
        const this: *IInertiaTranslationBehavior = @ptrCast(self);
        return try this.putDesiredDisplacement(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.InertiaTranslationBehavior";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInertiaTranslationBehavior.GUID;
    pub const IID: Guid = IInertiaTranslationBehavior.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInertiaTranslationBehavior.SIGNATURE);
};
pub const InputScope = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNames(self: *@This()) core.HResult!*IVector(InputScopeName) {
        const this: *IInputScope = @ptrCast(self);
        return try this.getNames();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInputScope.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.InputScope";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInputScope.GUID;
    pub const IID: Guid = IInputScope.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInputScope.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const InputScopeName = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getNameValue(self: *@This()) core.HResult!InputScopeNameValue {
        const this: *IInputScopeName = @ptrCast(self);
        return try this.getNameValue();
    }
    pub fn putNameValue(self: *@This(), value: InputScopeNameValue) core.HResult!void {
        const this: *IInputScopeName = @ptrCast(self);
        return try this.putNameValue(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IInputScopeName.IID)));
    }
    pub fn CreateInstance(nameValue: InputScopeNameValue) core.HResult!*InputScopeName {
        const factory = @This().IInputScopeNameFactoryCache.get();
        return try factory.CreateInstance(nameValue);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.InputScopeName";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInputScopeName.GUID;
    pub const IID: Guid = IInputScopeName.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInputScopeName.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IInputScopeNameFactoryCache: FactoryCache(IInputScopeNameFactory, RUNTIME_NAME) = .{};
};
pub const InputScopeNameValue = enum(i32) {
    Default = 0,
    Url = 1,
    EmailSmtpAddress = 5,
    PersonalFullName = 7,
    CurrencyAmountAndSymbol = 20,
    CurrencyAmount = 21,
    DateMonthNumber = 23,
    DateDayNumber = 24,
    DateYear = 25,
    Digits = 28,
    Number = 29,
    Password = 31,
    TelephoneNumber = 32,
    TelephoneCountryCode = 33,
    TelephoneAreaCode = 34,
    TelephoneLocalNumber = 35,
    TimeHour = 37,
    TimeMinutesOrSeconds = 38,
    NumberFullWidth = 39,
    AlphanumericHalfWidth = 40,
    AlphanumericFullWidth = 41,
    Hiragana = 44,
    KatakanaHalfWidth = 45,
    KatakanaFullWidth = 46,
    Hanja = 47,
    HangulHalfWidth = 48,
    HangulFullWidth = 49,
    Search = 50,
    Formula = 51,
    SearchIncremental = 52,
    ChineseHalfWidth = 53,
    ChineseFullWidth = 54,
    NativeScript = 55,
    Text = 57,
    Chat = 58,
    NameOrPhoneNumber = 59,
    EmailNameOrAddress = 60,
    Private = 61,
    Maps = 62,
    NumericPassword = 63,
    NumericPin = 64,
    AlphanumericPin = 65,
    FormulaNumber = 67,
    ChatWithoutEmoji = 68,
};
pub const KeyEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *KeyRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *KeyRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *KeyRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.KeyEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "7c63d2e5-7a0e-4e12-b96a-7715aa6ff1c8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *KeyRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const KeyRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKey(self: *@This()) core.HResult!VirtualKey {
        const this: *IKeyRoutedEventArgs = @ptrCast(self);
        return try this.getKey();
    }
    pub fn getKeyStatus(self: *@This()) core.HResult!CorePhysicalKeyStatus {
        const this: *IKeyRoutedEventArgs = @ptrCast(self);
        return try this.getKeyStatus();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IKeyRoutedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IKeyRoutedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getOriginalKey(self: *@This()) core.HResult!VirtualKey {
        var this: ?*IKeyRoutedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IKeyRoutedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getOriginalKey();
    }
    pub fn getDeviceId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IKeyRoutedEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IKeyRoutedEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDeviceId();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.KeyRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyRoutedEventArgs.GUID;
    pub const IID: Guid = IKeyRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyRoutedEventArgs.SIGNATURE);
};
pub const KeyTipPlacementMode = enum(i32) {
    Auto = 0,
    Bottom = 1,
    Top = 2,
    Left = 3,
    Right = 4,
    Center = 5,
    Hidden = 6,
};
pub const KeyboardAccelerator = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKey(self: *@This()) core.HResult!VirtualKey {
        const this: *IKeyboardAccelerator = @ptrCast(self);
        return try this.getKey();
    }
    pub fn putKey(self: *@This(), value: VirtualKey) core.HResult!void {
        const this: *IKeyboardAccelerator = @ptrCast(self);
        return try this.putKey(value);
    }
    pub fn getModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        const this: *IKeyboardAccelerator = @ptrCast(self);
        return try this.getModifiers();
    }
    pub fn putModifiers(self: *@This(), value: VirtualKeyModifiers) core.HResult!void {
        const this: *IKeyboardAccelerator = @ptrCast(self);
        return try this.putModifiers(value);
    }
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IKeyboardAccelerator = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn putIsEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IKeyboardAccelerator = @ptrCast(self);
        return try this.putIsEnabled(value);
    }
    pub fn getScopeOwner(self: *@This()) core.HResult!*DependencyObject {
        const this: *IKeyboardAccelerator = @ptrCast(self);
        return try this.getScopeOwner();
    }
    pub fn putScopeOwner(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *IKeyboardAccelerator = @ptrCast(self);
        return try this.putScopeOwner(value);
    }
    pub fn addInvoked(self: *@This(), handler: *TypedEventHandler(KeyboardAccelerator,KeyboardAcceleratorInvokedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IKeyboardAccelerator = @ptrCast(self);
        return try this.addInvoked(handler);
    }
    pub fn removeInvoked(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IKeyboardAccelerator = @ptrCast(self);
        return try this.removeInvoked(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_KeyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IKeyboardAcceleratorStaticsCache.get();
        return try factory.getKeyProperty();
    }
    pub fn get_ModifiersProperty() core.HResult!*DependencyProperty {
        const factory = @This().IKeyboardAcceleratorStaticsCache.get();
        return try factory.getModifiersProperty();
    }
    pub fn get_IsEnabledProperty() core.HResult!*DependencyProperty {
        const factory = @This().IKeyboardAcceleratorStaticsCache.get();
        return try factory.getIsEnabledProperty();
    }
    pub fn get_ScopeOwnerProperty() core.HResult!*DependencyProperty {
        const factory = @This().IKeyboardAcceleratorStaticsCache.get();
        return try factory.getScopeOwnerProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*KeyboardAccelerator {
        const factory = @This().IKeyboardAcceleratorFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.KeyboardAccelerator";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyboardAccelerator.GUID;
    pub const IID: Guid = IKeyboardAccelerator.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyboardAccelerator.SIGNATURE);
    var _IKeyboardAcceleratorStaticsCache: FactoryCache(IKeyboardAcceleratorStatics, RUNTIME_NAME) = .{};
    var _IKeyboardAcceleratorFactoryCache: FactoryCache(IKeyboardAcceleratorFactory, RUNTIME_NAME) = .{};
};
pub const KeyboardAcceleratorInvokedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IKeyboardAcceleratorInvokedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IKeyboardAcceleratorInvokedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getElement(self: *@This()) core.HResult!*DependencyObject {
        const this: *IKeyboardAcceleratorInvokedEventArgs = @ptrCast(self);
        return try this.getElement();
    }
    pub fn getKeyboardAccelerator(self: *@This()) core.HResult!*KeyboardAccelerator {
        var this: ?*IKeyboardAcceleratorInvokedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IKeyboardAcceleratorInvokedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getKeyboardAccelerator();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.KeyboardAcceleratorInvokedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IKeyboardAcceleratorInvokedEventArgs.GUID;
    pub const IID: Guid = IKeyboardAcceleratorInvokedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IKeyboardAcceleratorInvokedEventArgs.SIGNATURE);
};
pub const KeyboardAcceleratorPlacementMode = enum(i32) {
    Auto = 0,
    Hidden = 1,
};
pub const KeyboardNavigationMode = enum(i32) {
    Local = 0,
    Cycle = 1,
    Once = 2,
};
pub const LosingFocusEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOldFocusedElement(self: *@This()) core.HResult!*DependencyObject {
        const this: *ILosingFocusEventArgs = @ptrCast(self);
        return try this.getOldFocusedElement();
    }
    pub fn getNewFocusedElement(self: *@This()) core.HResult!*DependencyObject {
        const this: *ILosingFocusEventArgs = @ptrCast(self);
        return try this.getNewFocusedElement();
    }
    pub fn putNewFocusedElement(self: *@This(), value: *DependencyObject) core.HResult!void {
        const this: *ILosingFocusEventArgs = @ptrCast(self);
        return try this.putNewFocusedElement(value);
    }
    pub fn getFocusState(self: *@This()) core.HResult!FocusState {
        const this: *ILosingFocusEventArgs = @ptrCast(self);
        return try this.getFocusState();
    }
    pub fn getDirection(self: *@This()) core.HResult!FocusNavigationDirection {
        const this: *ILosingFocusEventArgs = @ptrCast(self);
        return try this.getDirection();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *ILosingFocusEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *ILosingFocusEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getInputDevice(self: *@This()) core.HResult!FocusInputDeviceKind {
        const this: *ILosingFocusEventArgs = @ptrCast(self);
        return try this.getInputDevice();
    }
    pub fn getCancel(self: *@This()) core.HResult!bool {
        const this: *ILosingFocusEventArgs = @ptrCast(self);
        return try this.getCancel();
    }
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const this: *ILosingFocusEventArgs = @ptrCast(self);
        return try this.putCancel(value);
    }
    pub fn TryCancel(self: *@This()) core.HResult!bool {
        var this: ?*ILosingFocusEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILosingFocusEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryCancel();
    }
    pub fn TrySetNewFocusedElement(self: *@This(), element: *DependencyObject) core.HResult!bool {
        var this: ?*ILosingFocusEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILosingFocusEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TrySetNewFocusedElement(element);
    }
    pub fn getCorrelationId(self: *@This()) core.HResult!*Guid {
        var this: ?*ILosingFocusEventArgs3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ILosingFocusEventArgs3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getCorrelationId();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.LosingFocusEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ILosingFocusEventArgs.GUID;
    pub const IID: Guid = ILosingFocusEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ILosingFocusEventArgs.SIGNATURE);
};
pub const ManipulationCompletedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ManipulationCompletedRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ManipulationCompletedRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *ManipulationCompletedRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ManipulationCompletedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "38ef4b0f-14f8-42df-9a1e-a4bcc4af77f4";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *ManipulationCompletedRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const ManipulationCompletedRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContainer(self: *@This()) core.HResult!*UIElement {
        const this: *IManipulationCompletedRoutedEventArgs = @ptrCast(self);
        return try this.getContainer();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IManipulationCompletedRoutedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getIsInertial(self: *@This()) core.HResult!bool {
        const this: *IManipulationCompletedRoutedEventArgs = @ptrCast(self);
        return try this.getIsInertial();
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        const this: *IManipulationCompletedRoutedEventArgs = @ptrCast(self);
        return try this.getCumulative();
    }
    pub fn getVelocities(self: *@This()) core.HResult!ManipulationVelocities {
        const this: *IManipulationCompletedRoutedEventArgs = @ptrCast(self);
        return try this.getVelocities();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IManipulationCompletedRoutedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IManipulationCompletedRoutedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IManipulationCompletedRoutedEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IManipulationCompletedRoutedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ManipulationCompletedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IManipulationCompletedRoutedEventArgs.GUID;
    pub const IID: Guid = IManipulationCompletedRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IManipulationCompletedRoutedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ManipulationDeltaEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ManipulationDeltaRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ManipulationDeltaRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *ManipulationDeltaRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ManipulationDeltaEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aa1160cb-dfb9-4c56-abdc-711b63c8eb94";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *ManipulationDeltaRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const ManipulationDeltaRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContainer(self: *@This()) core.HResult!*UIElement {
        const this: *IManipulationDeltaRoutedEventArgs = @ptrCast(self);
        return try this.getContainer();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IManipulationDeltaRoutedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getIsInertial(self: *@This()) core.HResult!bool {
        const this: *IManipulationDeltaRoutedEventArgs = @ptrCast(self);
        return try this.getIsInertial();
    }
    pub fn getDelta(self: *@This()) core.HResult!ManipulationDelta {
        const this: *IManipulationDeltaRoutedEventArgs = @ptrCast(self);
        return try this.getDelta();
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        const this: *IManipulationDeltaRoutedEventArgs = @ptrCast(self);
        return try this.getCumulative();
    }
    pub fn getVelocities(self: *@This()) core.HResult!ManipulationVelocities {
        const this: *IManipulationDeltaRoutedEventArgs = @ptrCast(self);
        return try this.getVelocities();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IManipulationDeltaRoutedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IManipulationDeltaRoutedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IManipulationDeltaRoutedEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IManipulationDeltaRoutedEventArgs = @ptrCast(self);
        return try this.Complete();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IManipulationDeltaRoutedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ManipulationDeltaRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IManipulationDeltaRoutedEventArgs.GUID;
    pub const IID: Guid = IManipulationDeltaRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IManipulationDeltaRoutedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ManipulationInertiaStartingEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ManipulationInertiaStartingRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ManipulationInertiaStartingRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *ManipulationInertiaStartingRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ManipulationInertiaStartingEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d39d6322-7c9c-481b-827b-c8b2d9bb6fc7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *ManipulationInertiaStartingRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const ManipulationInertiaStartingRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContainer(self: *@This()) core.HResult!*UIElement {
        const this: *IManipulationInertiaStartingRoutedEventArgs = @ptrCast(self);
        return try this.getContainer();
    }
    pub fn getExpansionBehavior(self: *@This()) core.HResult!*InertiaExpansionBehavior {
        const this: *IManipulationInertiaStartingRoutedEventArgs = @ptrCast(self);
        return try this.getExpansionBehavior();
    }
    pub fn putExpansionBehavior(self: *@This(), value: *InertiaExpansionBehavior) core.HResult!void {
        const this: *IManipulationInertiaStartingRoutedEventArgs = @ptrCast(self);
        return try this.putExpansionBehavior(value);
    }
    pub fn getRotationBehavior(self: *@This()) core.HResult!*InertiaRotationBehavior {
        const this: *IManipulationInertiaStartingRoutedEventArgs = @ptrCast(self);
        return try this.getRotationBehavior();
    }
    pub fn putRotationBehavior(self: *@This(), value: *InertiaRotationBehavior) core.HResult!void {
        const this: *IManipulationInertiaStartingRoutedEventArgs = @ptrCast(self);
        return try this.putRotationBehavior(value);
    }
    pub fn getTranslationBehavior(self: *@This()) core.HResult!*InertiaTranslationBehavior {
        const this: *IManipulationInertiaStartingRoutedEventArgs = @ptrCast(self);
        return try this.getTranslationBehavior();
    }
    pub fn putTranslationBehavior(self: *@This(), value: *InertiaTranslationBehavior) core.HResult!void {
        const this: *IManipulationInertiaStartingRoutedEventArgs = @ptrCast(self);
        return try this.putTranslationBehavior(value);
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IManipulationInertiaStartingRoutedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IManipulationInertiaStartingRoutedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IManipulationInertiaStartingRoutedEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getDelta(self: *@This()) core.HResult!ManipulationDelta {
        const this: *IManipulationInertiaStartingRoutedEventArgs = @ptrCast(self);
        return try this.getDelta();
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        const this: *IManipulationInertiaStartingRoutedEventArgs = @ptrCast(self);
        return try this.getCumulative();
    }
    pub fn getVelocities(self: *@This()) core.HResult!ManipulationVelocities {
        const this: *IManipulationInertiaStartingRoutedEventArgs = @ptrCast(self);
        return try this.getVelocities();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IManipulationInertiaStartingRoutedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ManipulationInertiaStartingRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IManipulationInertiaStartingRoutedEventArgs.GUID;
    pub const IID: Guid = IManipulationInertiaStartingRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IManipulationInertiaStartingRoutedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ManipulationModes = enum(i32) {
    None = 0,
    TranslateX = 1,
    TranslateY = 2,
    TranslateRailsX = 4,
    TranslateRailsY = 8,
    Rotate = 16,
    Scale = 32,
    TranslateInertia = 64,
    RotateInertia = 128,
    ScaleInertia = 256,
    All = 65535,
    System = 65536,
};
pub const ManipulationPivot = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCenter(self: *@This()) core.HResult!Point {
        const this: *IManipulationPivot = @ptrCast(self);
        return try this.getCenter();
    }
    pub fn putCenter(self: *@This(), value: Point) core.HResult!void {
        const this: *IManipulationPivot = @ptrCast(self);
        return try this.putCenter(value);
    }
    pub fn getRadius(self: *@This()) core.HResult!f64 {
        const this: *IManipulationPivot = @ptrCast(self);
        return try this.getRadius();
    }
    pub fn putRadius(self: *@This(), value: f64) core.HResult!void {
        const this: *IManipulationPivot = @ptrCast(self);
        return try this.putRadius(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IManipulationPivot.IID)));
    }
    pub fn CreateInstanceWithCenterAndRadius(center: Point, radius: f64) core.HResult!*ManipulationPivot {
        const factory = @This().IManipulationPivotFactoryCache.get();
        return try factory.CreateInstanceWithCenterAndRadius(center, radius);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ManipulationPivot";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IManipulationPivot.GUID;
    pub const IID: Guid = IManipulationPivot.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IManipulationPivot.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IManipulationPivotFactoryCache: FactoryCache(IManipulationPivotFactory, RUNTIME_NAME) = .{};
};
pub const ManipulationStartedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ManipulationStartedRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ManipulationStartedRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *ManipulationStartedRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ManipulationStartedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f88345f8-e0a3-4be2-b90c-dc20e6d8beb0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *ManipulationStartedRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const ManipulationStartedRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContainer(self: *@This()) core.HResult!*UIElement {
        const this: *IManipulationStartedRoutedEventArgs = @ptrCast(self);
        return try this.getContainer();
    }
    pub fn getPosition(self: *@This()) core.HResult!Point {
        const this: *IManipulationStartedRoutedEventArgs = @ptrCast(self);
        return try this.getPosition();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IManipulationStartedRoutedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IManipulationStartedRoutedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IManipulationStartedRoutedEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getCumulative(self: *@This()) core.HResult!ManipulationDelta {
        const this: *IManipulationStartedRoutedEventArgs = @ptrCast(self);
        return try this.getCumulative();
    }
    pub fn Complete(self: *@This()) core.HResult!void {
        const this: *IManipulationStartedRoutedEventArgs = @ptrCast(self);
        return try this.Complete();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*ManipulationStartedRoutedEventArgs {
        const factory = @This().IManipulationStartedRoutedEventArgsFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ManipulationStartedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IManipulationStartedRoutedEventArgs.GUID;
    pub const IID: Guid = IManipulationStartedRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IManipulationStartedRoutedEventArgs.SIGNATURE);
    var _IManipulationStartedRoutedEventArgsFactoryCache: FactoryCache(IManipulationStartedRoutedEventArgsFactory, RUNTIME_NAME) = .{};
};
pub const ManipulationStartingEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ManipulationStartingRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *ManipulationStartingRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *ManipulationStartingRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ManipulationStartingEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "10d0b04e-bfe4-42cb-823c-3fecd8770ef8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *ManipulationStartingRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const ManipulationStartingRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getMode(self: *@This()) core.HResult!ManipulationModes {
        const this: *IManipulationStartingRoutedEventArgs = @ptrCast(self);
        return try this.getMode();
    }
    pub fn putMode(self: *@This(), value: ManipulationModes) core.HResult!void {
        const this: *IManipulationStartingRoutedEventArgs = @ptrCast(self);
        return try this.putMode(value);
    }
    pub fn getContainer(self: *@This()) core.HResult!*UIElement {
        const this: *IManipulationStartingRoutedEventArgs = @ptrCast(self);
        return try this.getContainer();
    }
    pub fn putContainer(self: *@This(), value: *UIElement) core.HResult!void {
        const this: *IManipulationStartingRoutedEventArgs = @ptrCast(self);
        return try this.putContainer(value);
    }
    pub fn getPivot(self: *@This()) core.HResult!*ManipulationPivot {
        const this: *IManipulationStartingRoutedEventArgs = @ptrCast(self);
        return try this.getPivot();
    }
    pub fn putPivot(self: *@This(), value: *ManipulationPivot) core.HResult!void {
        const this: *IManipulationStartingRoutedEventArgs = @ptrCast(self);
        return try this.putPivot(value);
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IManipulationStartingRoutedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IManipulationStartingRoutedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IManipulationStartingRoutedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ManipulationStartingRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IManipulationStartingRoutedEventArgs.GUID;
    pub const IID: Guid = IManipulationStartingRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IManipulationStartingRoutedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const NoFocusCandidateFoundEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDirection(self: *@This()) core.HResult!FocusNavigationDirection {
        const this: *INoFocusCandidateFoundEventArgs = @ptrCast(self);
        return try this.getDirection();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *INoFocusCandidateFoundEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *INoFocusCandidateFoundEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getInputDevice(self: *@This()) core.HResult!FocusInputDeviceKind {
        const this: *INoFocusCandidateFoundEventArgs = @ptrCast(self);
        return try this.getInputDevice();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.NoFocusCandidateFoundEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = INoFocusCandidateFoundEventArgs.GUID;
    pub const IID: Guid = INoFocusCandidateFoundEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, INoFocusCandidateFoundEventArgs.SIGNATURE);
};
pub const Pointer = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerId(self: *@This()) core.HResult!u32 {
        const this: *IPointer = @ptrCast(self);
        return try this.getPointerId();
    }
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IPointer = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getIsInContact(self: *@This()) core.HResult!bool {
        const this: *IPointer = @ptrCast(self);
        return try this.getIsInContact();
    }
    pub fn getIsInRange(self: *@This()) core.HResult!bool {
        const this: *IPointer = @ptrCast(self);
        return try this.getIsInRange();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.Pointer";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointer.GUID;
    pub const IID: Guid = IPointer.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointer.SIGNATURE);
};
pub const PointerEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *PointerRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *PointerRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *PointerRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.PointerEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e4385929-c004-4bcf-8970-359486e39f88";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *PointerRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const PointerRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointer(self: *@This()) core.HResult!*Pointer {
        const this: *IPointerRoutedEventArgs = @ptrCast(self);
        return try this.getPointer();
    }
    pub fn getKeyModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        const this: *IPointerRoutedEventArgs = @ptrCast(self);
        return try this.getKeyModifiers();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IPointerRoutedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IPointerRoutedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetCurrentPoint(self: *@This(), relativeTo: *UIElement) core.HResult!*PointerPoint {
        const this: *IPointerRoutedEventArgs = @ptrCast(self);
        return try this.GetCurrentPoint(relativeTo);
    }
    pub fn GetIntermediatePoints(self: *@This(), relativeTo: *UIElement) core.HResult!*IVector(PointerPoint) {
        const this: *IPointerRoutedEventArgs = @ptrCast(self);
        return try this.GetIntermediatePoints(relativeTo);
    }
    pub fn getIsGenerated(self: *@This()) core.HResult!bool {
        var this: ?*IPointerRoutedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IPointerRoutedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsGenerated();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.PointerRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IPointerRoutedEventArgs.GUID;
    pub const IID: Guid = IPointerRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IPointerRoutedEventArgs.SIGNATURE);
};
pub const ProcessKeyboardAcceleratorEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKey(self: *@This()) core.HResult!VirtualKey {
        const this: *IProcessKeyboardAcceleratorEventArgs = @ptrCast(self);
        return try this.getKey();
    }
    pub fn getModifiers(self: *@This()) core.HResult!VirtualKeyModifiers {
        const this: *IProcessKeyboardAcceleratorEventArgs = @ptrCast(self);
        return try this.getModifiers();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IProcessKeyboardAcceleratorEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IProcessKeyboardAcceleratorEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.ProcessKeyboardAcceleratorEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IProcessKeyboardAcceleratorEventArgs.GUID;
    pub const IID: Guid = IProcessKeyboardAcceleratorEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IProcessKeyboardAcceleratorEventArgs.SIGNATURE);
};
pub const RightTappedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *RightTappedRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *RightTappedRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *RightTappedRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.RightTappedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2532a062-f447-4950-9c46-f1e34a2c2238";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *RightTappedRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const RightTappedRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *IRightTappedRoutedEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IRightTappedRoutedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IRightTappedRoutedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetPosition(self: *@This(), relativeTo: *UIElement) core.HResult!Point {
        const this: *IRightTappedRoutedEventArgs = @ptrCast(self);
        return try this.GetPosition(relativeTo);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IRightTappedRoutedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.RightTappedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IRightTappedRoutedEventArgs.GUID;
    pub const IID: Guid = IRightTappedRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IRightTappedRoutedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const XamlUICommand = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getLabel(self: *@This()) core.HResult!HSTRING {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.getLabel();
    }
    pub fn putLabel(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.putLabel(value);
    }
    pub fn getIconSource(self: *@This()) core.HResult!*IconSource {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.getIconSource();
    }
    pub fn putIconSource(self: *@This(), value: *IconSource) core.HResult!void {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.putIconSource(value);
    }
    pub fn getKeyboardAccelerators(self: *@This()) core.HResult!*IVector(KeyboardAccelerator) {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.getKeyboardAccelerators();
    }
    pub fn getAccessKey(self: *@This()) core.HResult!HSTRING {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.getAccessKey();
    }
    pub fn putAccessKey(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.putAccessKey(value);
    }
    pub fn getDescription(self: *@This()) core.HResult!HSTRING {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.getDescription();
    }
    pub fn putDescription(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.putDescription(value);
    }
    pub fn getCommand(self: *@This()) core.HResult!*ICommand {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.getCommand();
    }
    pub fn putCommand(self: *@This(), value: *ICommand) core.HResult!void {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.putCommand(value);
    }
    pub fn addExecuteRequested(self: *@This(), handler: *TypedEventHandler(XamlUICommand,ExecuteRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.addExecuteRequested(handler);
    }
    pub fn removeExecuteRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.removeExecuteRequested(token);
    }
    pub fn addCanExecuteRequested(self: *@This(), handler: *TypedEventHandler(XamlUICommand,CanExecuteRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.addCanExecuteRequested(handler);
    }
    pub fn removeCanExecuteRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.removeCanExecuteRequested(token);
    }
    pub fn NotifyCanExecuteChanged(self: *@This()) core.HResult!void {
        const this: *IXamlUICommand = @ptrCast(self);
        return try this.NotifyCanExecuteChanged();
    }
    pub fn addCanExecuteChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*ICommand = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommand.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addCanExecuteChanged(handler);
    }
    pub fn removeCanExecuteChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ICommand = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommand.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeCanExecuteChanged(token);
    }
    pub fn CanExecute(self: *@This(), parameter: *IInspectable) core.HResult!bool {
        var this: ?*ICommand = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommand.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.CanExecute(parameter);
    }
    pub fn Execute(self: *@This(), parameter: *IInspectable) core.HResult!void {
        var this: ?*ICommand = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICommand.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Execute(parameter);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_LabelProperty() core.HResult!*DependencyProperty {
        const factory = @This().IXamlUICommandStaticsCache.get();
        return try factory.getLabelProperty();
    }
    pub fn get_IconSourceProperty() core.HResult!*DependencyProperty {
        const factory = @This().IXamlUICommandStaticsCache.get();
        return try factory.getIconSourceProperty();
    }
    pub fn get_KeyboardAcceleratorsProperty() core.HResult!*DependencyProperty {
        const factory = @This().IXamlUICommandStaticsCache.get();
        return try factory.getKeyboardAcceleratorsProperty();
    }
    pub fn get_AccessKeyProperty() core.HResult!*DependencyProperty {
        const factory = @This().IXamlUICommandStaticsCache.get();
        return try factory.getAccessKeyProperty();
    }
    pub fn get_DescriptionProperty() core.HResult!*DependencyProperty {
        const factory = @This().IXamlUICommandStaticsCache.get();
        return try factory.getDescriptionProperty();
    }
    pub fn get_CommandProperty() core.HResult!*DependencyProperty {
        const factory = @This().IXamlUICommandStaticsCache.get();
        return try factory.getCommandProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*XamlUICommand {
        const factory = @This().IXamlUICommandFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.XamlUICommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXamlUICommand.GUID;
    pub const IID: Guid = IXamlUICommand.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXamlUICommand.SIGNATURE);
    var _IXamlUICommandStaticsCache: FactoryCache(IXamlUICommandStatics, RUNTIME_NAME) = .{};
    var _IXamlUICommandFactoryCache: FactoryCache(IXamlUICommandFactory, RUNTIME_NAME) = .{};
};
pub const StandardUICommand = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!StandardUICommandKind {
        const this: *IStandardUICommand = @ptrCast(self);
        return try this.getKind();
    }
    pub fn putKind(self: *@This(), value: StandardUICommandKind) core.HResult!void {
        var this: ?*IStandardUICommand2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IStandardUICommand2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putKind(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn get_KindProperty() core.HResult!*DependencyProperty {
        const factory = @This().IStandardUICommandStaticsCache.get();
        return try factory.getKindProperty();
    }
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*StandardUICommand {
        const factory = @This().IStandardUICommandFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub fn CreateInstanceWithKind(kind: StandardUICommandKind, baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*StandardUICommand {
        const factory = @This().IStandardUICommandFactoryCache.get();
        return try factory.CreateInstanceWithKind(kind, baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.StandardUICommand";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IStandardUICommand.GUID;
    pub const IID: Guid = IStandardUICommand.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IStandardUICommand.SIGNATURE);
    var _IStandardUICommandStaticsCache: FactoryCache(IStandardUICommandStatics, RUNTIME_NAME) = .{};
    var _IStandardUICommandFactoryCache: FactoryCache(IStandardUICommandFactory, RUNTIME_NAME) = .{};
};
pub const StandardUICommandKind = enum(i32) {
    None = 0,
    Cut = 1,
    Copy = 2,
    Paste = 3,
    SelectAll = 4,
    Delete = 5,
    Share = 6,
    Save = 7,
    Open = 8,
    Close = 9,
    Pause = 10,
    Play = 11,
    Stop = 12,
    Forward = 13,
    Backward = 14,
    Undo = 15,
    Redo = 16,
};
pub const TappedEventHandler = extern struct {
    vtable: *const VTable,
    _refs: @import("std").atomic.Value(u32),
    _cb: *const fn (context: ?*anyopaque) callconv(.winapi) void,
    _context: ?*anyopaque = null,
    /// This creates a heap allocated instance that only frees/destroys when all
    /// references are released including any references Windows makes.
    pub fn init(
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *TappedRoutedEventArgs) callconv(.winapi) void,
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
        cb: *const fn(?*anyopaque, sender: *IInspectable, e: *TappedRoutedEventArgs) callconv(.winapi) void,
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
    pub fn Invoke(self: *anyopaque, sender: *IInspectable, e: *TappedRoutedEventArgs) callconv(.winapi) HRESULT {
        const this: *@This() = @ptrCast(@alignCast(self));
        this._cb(this._context, sender, e);
        return 0;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.TappedEventHandler";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68d940cc-9ff0-49ce-b141-3f07ec477b97";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.pinterface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        Invoke: *const fn(self: *anyopaque, sender: *IInspectable, e: *TappedRoutedEventArgs) callconv(.winapi) HRESULT
    };
    pub const VTABLE = VTable {
        .QueryInterface = QueryInterface,
        .AddRef = AddRef,
        .Release = Release,
        .Invoke = Invoke,
    };
};
pub const TappedRoutedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPointerDeviceType(self: *@This()) core.HResult!PointerDeviceType {
        const this: *ITappedRoutedEventArgs = @ptrCast(self);
        return try this.getPointerDeviceType();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *ITappedRoutedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *ITappedRoutedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn GetPosition(self: *@This(), relativeTo: *UIElement) core.HResult!Point {
        const this: *ITappedRoutedEventArgs = @ptrCast(self);
        return try this.GetPosition(relativeTo);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ITappedRoutedEventArgs.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Input.TappedRoutedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ITappedRoutedEventArgs.GUID;
    pub const IID: Guid = ITappedRoutedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ITappedRoutedEventArgs.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const XYFocusKeyboardNavigationMode = enum(i32) {
    Auto = 0,
    Enabled = 1,
    Disabled = 2,
};
pub const XYFocusNavigationStrategy = enum(i32) {
    Auto = 0,
    Projection = 1,
    NavigationDirectionDistance = 2,
    RectilinearDistance = 3,
};
pub const XYFocusNavigationStrategyOverride = enum(i32) {
    None = 0,
    Auto = 1,
    Projection = 2,
    NavigationDirectionDistance = 3,
    RectilinearDistance = 4,
};
const IUnknown = @import("../../root.zig").IUnknown;
const IActivationFactory = @import("../../Foundation.zig").IActivationFactory;
const Guid = @import("../../root.zig").Guid;
const ManipulationDelta = @import("../Input.zig").ManipulationDelta;
const IVector = @import("../../Foundation/Collections.zig").IVector;
const HoldingState = @import("../Input.zig").HoldingState;
const DependencyProperty = @import("../Xaml.zig").DependencyProperty;
const IconSource = @import("./Controls.zig").IconSource;
const DependencyObject = @import("../Xaml.zig").DependencyObject;
const CorePhysicalKeyStatus = @import("../Core.zig").CorePhysicalKeyStatus;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const XamlRoot = @import("../Xaml.zig").XamlRoot;
const UIElement = @import("../Xaml.zig").UIElement;
const HRESULT = @import("../../root.zig").HRESULT;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const PointerDeviceType = @import("../../Devices/Input.zig").PointerDeviceType;
const ManipulationVelocities = @import("../Input.zig").ManipulationVelocities;
const Point = @import("../../Foundation.zig").Point;
const FactoryCache = @import("../../core.zig").FactoryCache;
const PointerPoint = @import("../Input.zig").PointerPoint;
const Rect = @import("../../Foundation.zig").Rect;
const TrustLevel = @import("../../root.zig").TrustLevel;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const IAgileObject = @import("../../root.zig").IAgileObject;
const VirtualKey = @import("../../System.zig").VirtualKey;
const FocusState = @import("../Xaml.zig").FocusState;
const EventHandler = @import("../../Foundation.zig").EventHandler;
const VirtualKeyModifiers = @import("../../System.zig").VirtualKeyModifiers;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
