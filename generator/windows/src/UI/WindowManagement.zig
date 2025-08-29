pub const AppWindow = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContent(self: *@This()) core.HResult!*UIContentRoot {
        const this: *IAppWindow = @ptrCast(self);
        return try this.getContent();
    }
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        const this: *IAppWindow = @ptrCast(self);
        return try this.getDispatcherQueue();
    }
    pub fn getFrame(self: *@This()) core.HResult!*AppWindowFrame {
        const this: *IAppWindow = @ptrCast(self);
        return try this.getFrame();
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        const this: *IAppWindow = @ptrCast(self);
        return try this.getIsVisible();
    }
    pub fn getPersistedStateId(self: *@This()) core.HResult!HSTRING {
        const this: *IAppWindow = @ptrCast(self);
        return try this.getPersistedStateId();
    }
    pub fn putPersistedStateId(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppWindow = @ptrCast(self);
        return try this.putPersistedStateId(value);
    }
    pub fn getPresenter(self: *@This()) core.HResult!*AppWindowPresenter {
        const this: *IAppWindow = @ptrCast(self);
        return try this.getPresenter();
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IAppWindow = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IAppWindow = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getTitleBar(self: *@This()) core.HResult!*AppWindowTitleBar {
        const this: *IAppWindow = @ptrCast(self);
        return try this.getTitleBar();
    }
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        const this: *IAppWindow = @ptrCast(self);
        return try this.getUIContext();
    }
    pub fn getWindowingEnvironment(self: *@This()) core.HResult!*WindowingEnvironment {
        const this: *IAppWindow = @ptrCast(self);
        return try this.getWindowingEnvironment();
    }
    pub fn CloseAsync(self: *@This()) core.HResult!*IAsyncAction {
        const this: *IAppWindow = @ptrCast(self);
        return try this.CloseAsync();
    }
    pub fn GetPlacement(self: *@This()) core.HResult!*AppWindowPlacement {
        const this: *IAppWindow = @ptrCast(self);
        return try this.GetPlacement();
    }
    pub fn GetDisplayRegions(self: *@This()) core.HResult!*IVectorView(DisplayRegion) {
        const this: *IAppWindow = @ptrCast(self);
        return try this.GetDisplayRegions();
    }
    pub fn RequestMoveToDisplayRegion(self: *@This(), displayRegion: *DisplayRegion) core.HResult!void {
        const this: *IAppWindow = @ptrCast(self);
        return try this.RequestMoveToDisplayRegion(displayRegion);
    }
    pub fn RequestMoveAdjacentToCurrentView(self: *@This()) core.HResult!void {
        const this: *IAppWindow = @ptrCast(self);
        return try this.RequestMoveAdjacentToCurrentView();
    }
    pub fn RequestMoveAdjacentToWindow(self: *@This(), anchorWindow: *AppWindow) core.HResult!void {
        const this: *IAppWindow = @ptrCast(self);
        return try this.RequestMoveAdjacentToWindow(anchorWindow);
    }
    pub fn RequestMoveRelativeToWindowContent(self: *@This(), anchorWindow: *AppWindow, contentOffset: Point) core.HResult!void {
        const this: *IAppWindow = @ptrCast(self);
        return try this.RequestMoveRelativeToWindowContent(anchorWindow, contentOffset);
    }
    pub fn RequestMoveRelativeToCurrentViewContent(self: *@This(), contentOffset: Point) core.HResult!void {
        const this: *IAppWindow = @ptrCast(self);
        return try this.RequestMoveRelativeToCurrentViewContent(contentOffset);
    }
    pub fn RequestMoveRelativeToDisplayRegion(self: *@This(), displayRegion: *DisplayRegion, displayRegionOffset: Point) core.HResult!void {
        const this: *IAppWindow = @ptrCast(self);
        return try this.RequestMoveRelativeToDisplayRegion(displayRegion, displayRegionOffset);
    }
    pub fn RequestSize(self: *@This(), frameSize: Size) core.HResult!void {
        const this: *IAppWindow = @ptrCast(self);
        return try this.RequestSize(frameSize);
    }
    pub fn TryShowAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IAppWindow = @ptrCast(self);
        return try this.TryShowAsync();
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(AppWindow,AppWindowChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppWindow = @ptrCast(self);
        return try this.addChanged(handler);
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppWindow = @ptrCast(self);
        return try this.removeChanged(token);
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(AppWindow,AppWindowClosedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppWindow = @ptrCast(self);
        return try this.addClosed(handler);
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppWindow = @ptrCast(self);
        return try this.removeClosed(token);
    }
    pub fn addCloseRequested(self: *@This(), handler: *TypedEventHandler(AppWindow,AppWindowCloseRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IAppWindow = @ptrCast(self);
        return try this.addCloseRequested(handler);
    }
    pub fn removeCloseRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IAppWindow = @ptrCast(self);
        return try this.removeCloseRequested(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryCreateAsync() core.HResult!*IAsyncOperation(AppWindow) {
        const factory = @This().IAppWindowStaticsCache.get();
        return try factory.TryCreateAsync();
    }
    pub fn ClearAllPersistedState() core.HResult!void {
        const factory = @This().IAppWindowStaticsCache.get();
        return try factory.ClearAllPersistedState();
    }
    pub fn ClearPersistedState(key: HSTRING) core.HResult!void {
        const factory = @This().IAppWindowStaticsCache.get();
        return try factory.ClearPersistedState(key);
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.AppWindow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppWindow.GUID;
    pub const IID: Guid = IAppWindow.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppWindow.SIGNATURE);
    var _IAppWindowStaticsCache: FactoryCache(IAppWindowStatics, RUNTIME_NAME) = .{};
};
pub const AppWindowChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDidAvailableWindowPresentationsChange(self: *@This()) core.HResult!bool {
        const this: *IAppWindowChangedEventArgs = @ptrCast(self);
        return try this.getDidAvailableWindowPresentationsChange();
    }
    pub fn getDidDisplayRegionsChange(self: *@This()) core.HResult!bool {
        const this: *IAppWindowChangedEventArgs = @ptrCast(self);
        return try this.getDidDisplayRegionsChange();
    }
    pub fn getDidFrameChange(self: *@This()) core.HResult!bool {
        const this: *IAppWindowChangedEventArgs = @ptrCast(self);
        return try this.getDidFrameChange();
    }
    pub fn getDidSizeChange(self: *@This()) core.HResult!bool {
        const this: *IAppWindowChangedEventArgs = @ptrCast(self);
        return try this.getDidSizeChange();
    }
    pub fn getDidTitleBarChange(self: *@This()) core.HResult!bool {
        const this: *IAppWindowChangedEventArgs = @ptrCast(self);
        return try this.getDidTitleBarChange();
    }
    pub fn getDidVisibilityChange(self: *@This()) core.HResult!bool {
        const this: *IAppWindowChangedEventArgs = @ptrCast(self);
        return try this.getDidVisibilityChange();
    }
    pub fn getDidWindowingEnvironmentChange(self: *@This()) core.HResult!bool {
        const this: *IAppWindowChangedEventArgs = @ptrCast(self);
        return try this.getDidWindowingEnvironmentChange();
    }
    pub fn getDidWindowPresentationChange(self: *@This()) core.HResult!bool {
        const this: *IAppWindowChangedEventArgs = @ptrCast(self);
        return try this.getDidWindowPresentationChange();
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.AppWindowChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppWindowChangedEventArgs.GUID;
    pub const IID: Guid = IAppWindowChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppWindowChangedEventArgs.SIGNATURE);
};
pub const AppWindowCloseRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCancel(self: *@This()) core.HResult!bool {
        const this: *IAppWindowCloseRequestedEventArgs = @ptrCast(self);
        return try this.getCancel();
    }
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppWindowCloseRequestedEventArgs = @ptrCast(self);
        return try this.putCancel(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IAppWindowCloseRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.AppWindowCloseRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppWindowCloseRequestedEventArgs.GUID;
    pub const IID: Guid = IAppWindowCloseRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppWindowCloseRequestedEventArgs.SIGNATURE);
};
pub const AppWindowClosedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!AppWindowClosedReason {
        const this: *IAppWindowClosedEventArgs = @ptrCast(self);
        return try this.getReason();
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.AppWindowClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppWindowClosedEventArgs.GUID;
    pub const IID: Guid = IAppWindowClosedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppWindowClosedEventArgs.SIGNATURE);
};
pub const AppWindowClosedReason = enum(i32) {
    Other = 0,
    AppInitiated = 1,
    UserInitiated = 2,
};
pub const AppWindowFrame = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetFrameStyle(self: *@This()) core.HResult!AppWindowFrameStyle {
        var this: ?*IAppWindowFrameStyle = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppWindowFrameStyle.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetFrameStyle();
    }
    pub fn SetFrameStyle(self: *@This(), frameStyle: AppWindowFrameStyle) core.HResult!void {
        var this: ?*IAppWindowFrameStyle = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppWindowFrameStyle.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetFrameStyle(frameStyle);
    }
    pub fn getDragRegionVisuals(self: *@This()) core.HResult!*IVector(IVisualElement) {
        const this: *IAppWindowFrame = @ptrCast(self);
        return try this.getDragRegionVisuals();
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.AppWindowFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppWindowFrame.GUID;
    pub const IID: Guid = IAppWindowFrame.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppWindowFrame.SIGNATURE);
};
pub const AppWindowFrameStyle = enum(i32) {
    Default = 0,
    NoFrame = 1,
};
pub const AppWindowPlacement = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayRegion(self: *@This()) core.HResult!*DisplayRegion {
        const this: *IAppWindowPlacement = @ptrCast(self);
        return try this.getDisplayRegion();
    }
    pub fn getOffset(self: *@This()) core.HResult!Point {
        const this: *IAppWindowPlacement = @ptrCast(self);
        return try this.getOffset();
    }
    pub fn getSize(self: *@This()) core.HResult!Size {
        const this: *IAppWindowPlacement = @ptrCast(self);
        return try this.getSize();
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.AppWindowPlacement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppWindowPlacement.GUID;
    pub const IID: Guid = IAppWindowPlacement.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppWindowPlacement.SIGNATURE);
};
pub const AppWindowPresentationConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getKind(self: *@This()) core.HResult!AppWindowPresentationKind {
        const this: *IAppWindowPresentationConfiguration = @ptrCast(self);
        return try this.getKind();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.AppWindowPresentationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppWindowPresentationConfiguration.GUID;
    pub const IID: Guid = IAppWindowPresentationConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppWindowPresentationConfiguration.SIGNATURE);
    var _IAppWindowPresentationConfigurationFactoryCache: FactoryCache(IAppWindowPresentationConfigurationFactory, RUNTIME_NAME) = .{};
};
pub const AppWindowPresentationKind = enum(i32) {
    Default = 0,
    CompactOverlay = 1,
    FullScreen = 2,
};
pub const AppWindowPresenter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetConfiguration(self: *@This()) core.HResult!*AppWindowPresentationConfiguration {
        const this: *IAppWindowPresenter = @ptrCast(self);
        return try this.GetConfiguration();
    }
    pub fn IsPresentationSupported(self: *@This(), presentationKind: AppWindowPresentationKind) core.HResult!bool {
        const this: *IAppWindowPresenter = @ptrCast(self);
        return try this.IsPresentationSupported(presentationKind);
    }
    pub fn RequestPresentation(self: *@This(), configuration: *AppWindowPresentationConfiguration) core.HResult!bool {
        const this: *IAppWindowPresenter = @ptrCast(self);
        return try this.RequestPresentation(configuration);
    }
    pub fn RequestPresentationWithPresentationKind(self: *@This(), presentationKind: AppWindowPresentationKind) core.HResult!bool {
        const this: *IAppWindowPresenter = @ptrCast(self);
        return try this.RequestPresentationWithPresentationKind(presentationKind);
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.AppWindowPresenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppWindowPresenter.GUID;
    pub const IID: Guid = IAppWindowPresenter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppWindowPresenter.SIGNATURE);
};
pub const AppWindowTitleBar = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetPreferredVisibility(self: *@This()) core.HResult!AppWindowTitleBarVisibility {
        var this: ?*IAppWindowTitleBarVisibility = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppWindowTitleBarVisibility.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPreferredVisibility();
    }
    pub fn SetPreferredVisibility(self: *@This(), visibilityMode: AppWindowTitleBarVisibility) core.HResult!void {
        var this: ?*IAppWindowTitleBarVisibility = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppWindowTitleBarVisibility.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPreferredVisibility(visibilityMode);
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getBackgroundColor();
    }
    pub fn putBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.putBackgroundColor(value);
    }
    pub fn getButtonBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getButtonBackgroundColor();
    }
    pub fn putButtonBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.putButtonBackgroundColor(value);
    }
    pub fn getButtonForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getButtonForegroundColor();
    }
    pub fn putButtonForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.putButtonForegroundColor(value);
    }
    pub fn getButtonHoverBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getButtonHoverBackgroundColor();
    }
    pub fn putButtonHoverBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.putButtonHoverBackgroundColor(value);
    }
    pub fn getButtonHoverForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getButtonHoverForegroundColor();
    }
    pub fn putButtonHoverForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.putButtonHoverForegroundColor(value);
    }
    pub fn getButtonInactiveBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getButtonInactiveBackgroundColor();
    }
    pub fn putButtonInactiveBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.putButtonInactiveBackgroundColor(value);
    }
    pub fn getButtonInactiveForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getButtonInactiveForegroundColor();
    }
    pub fn putButtonInactiveForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.putButtonInactiveForegroundColor(value);
    }
    pub fn getButtonPressedBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getButtonPressedBackgroundColor();
    }
    pub fn putButtonPressedBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.putButtonPressedBackgroundColor(value);
    }
    pub fn getButtonPressedForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getButtonPressedForegroundColor();
    }
    pub fn putButtonPressedForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.putButtonPressedForegroundColor(value);
    }
    pub fn getExtendsContentIntoTitleBar(self: *@This()) core.HResult!bool {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getExtendsContentIntoTitleBar();
    }
    pub fn putExtendsContentIntoTitleBar(self: *@This(), value: bool) core.HResult!void {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.putExtendsContentIntoTitleBar(value);
    }
    pub fn getForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getForegroundColor();
    }
    pub fn putForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.putForegroundColor(value);
    }
    pub fn getInactiveBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getInactiveBackgroundColor();
    }
    pub fn putInactiveBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.putInactiveBackgroundColor(value);
    }
    pub fn getInactiveForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getInactiveForegroundColor();
    }
    pub fn putInactiveForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.putInactiveForegroundColor(value);
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.getIsVisible();
    }
    pub fn GetTitleBarOcclusions(self: *@This()) core.HResult!*IVectorView(AppWindowTitleBarOcclusion) {
        const this: *IAppWindowTitleBar = @ptrCast(self);
        return try this.GetTitleBarOcclusions();
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.AppWindowTitleBar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppWindowTitleBar.GUID;
    pub const IID: Guid = IAppWindowTitleBar.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppWindowTitleBar.SIGNATURE);
};
pub const AppWindowTitleBarOcclusion = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOccludingRect(self: *@This()) core.HResult!Rect {
        const this: *IAppWindowTitleBarOcclusion = @ptrCast(self);
        return try this.getOccludingRect();
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.AppWindowTitleBarOcclusion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppWindowTitleBarOcclusion.GUID;
    pub const IID: Guid = IAppWindowTitleBarOcclusion.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppWindowTitleBarOcclusion.SIGNATURE);
};
pub const AppWindowTitleBarVisibility = enum(i32) {
    Default = 0,
    AlwaysHidden = 1,
};
pub const CompactOverlayPresentationConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&ICompactOverlayPresentationConfiguration.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.CompactOverlayPresentationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICompactOverlayPresentationConfiguration.GUID;
    pub const IID: Guid = ICompactOverlayPresentationConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICompactOverlayPresentationConfiguration.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DefaultPresentationConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IDefaultPresentationConfiguration.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.DefaultPresentationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDefaultPresentationConfiguration.GUID;
    pub const IID: Guid = IDefaultPresentationConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDefaultPresentationConfiguration.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const DisplayRegion = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayMonitorDeviceId(self: *@This()) core.HResult!HSTRING {
        const this: *IDisplayRegion = @ptrCast(self);
        return try this.getDisplayMonitorDeviceId();
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        const this: *IDisplayRegion = @ptrCast(self);
        return try this.getIsVisible();
    }
    pub fn getWorkAreaOffset(self: *@This()) core.HResult!Point {
        const this: *IDisplayRegion = @ptrCast(self);
        return try this.getWorkAreaOffset();
    }
    pub fn getWorkAreaSize(self: *@This()) core.HResult!Size {
        const this: *IDisplayRegion = @ptrCast(self);
        return try this.getWorkAreaSize();
    }
    pub fn getWindowingEnvironment(self: *@This()) core.HResult!*WindowingEnvironment {
        const this: *IDisplayRegion = @ptrCast(self);
        return try this.getWindowingEnvironment();
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(DisplayRegion,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IDisplayRegion = @ptrCast(self);
        return try this.addChanged(handler);
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDisplayRegion = @ptrCast(self);
        return try this.removeChanged(token);
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.DisplayRegion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDisplayRegion.GUID;
    pub const IID: Guid = IDisplayRegion.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDisplayRegion.SIGNATURE);
};
pub const FullScreenPresentationConfiguration = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsExclusive(self: *@This()) core.HResult!bool {
        const this: *IFullScreenPresentationConfiguration = @ptrCast(self);
        return try this.getIsExclusive();
    }
    pub fn putIsExclusive(self: *@This(), value: bool) core.HResult!void {
        const this: *IFullScreenPresentationConfiguration = @ptrCast(self);
        return try this.putIsExclusive(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IFullScreenPresentationConfiguration.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.FullScreenPresentationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IFullScreenPresentationConfiguration.GUID;
    pub const IID: Guid = IFullScreenPresentationConfiguration.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IFullScreenPresentationConfiguration.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const IAppWindow = extern struct {
    vtable: *const VTable,
    pub fn getContent(self: *@This()) core.HResult!*UIContentRoot {
        var _r: *UIContentRoot = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var _r: *DispatcherQueue = undefined;
        const _c = self.vtable.get_DispatcherQueue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFrame(self: *@This()) core.HResult!*AppWindowFrame {
        var _r: *AppWindowFrame = undefined;
        const _c = self.vtable.get_Frame(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPersistedStateId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_PersistedStateId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPersistedStateId(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_PersistedStateId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPresenter(self: *@This()) core.HResult!*AppWindowPresenter {
        var _r: *AppWindowPresenter = undefined;
        const _c = self.vtable.get_Presenter(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTitleBar(self: *@This()) core.HResult!*AppWindowTitleBar {
        var _r: *AppWindowTitleBar = undefined;
        const _c = self.vtable.get_TitleBar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        var _r: *UIContext = undefined;
        const _c = self.vtable.get_UIContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWindowingEnvironment(self: *@This()) core.HResult!*WindowingEnvironment {
        var _r: *WindowingEnvironment = undefined;
        const _c = self.vtable.get_WindowingEnvironment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CloseAsync(self: *@This()) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CloseAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetPlacement(self: *@This()) core.HResult!*AppWindowPlacement {
        var _r: *AppWindowPlacement = undefined;
        const _c = self.vtable.GetPlacement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDisplayRegions(self: *@This()) core.HResult!*IVectorView(DisplayRegion) {
        var _r: *IVectorView(DisplayRegion) = undefined;
        const _c = self.vtable.GetDisplayRegions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestMoveToDisplayRegion(self: *@This(), displayRegion: *DisplayRegion) core.HResult!void {
        const _c = self.vtable.RequestMoveToDisplayRegion(@ptrCast(self), displayRegion);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestMoveAdjacentToCurrentView(self: *@This()) core.HResult!void {
        const _c = self.vtable.RequestMoveAdjacentToCurrentView(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestMoveAdjacentToWindow(self: *@This(), anchorWindow: *AppWindow) core.HResult!void {
        const _c = self.vtable.RequestMoveAdjacentToWindow(@ptrCast(self), anchorWindow);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestMoveRelativeToWindowContent(self: *@This(), anchorWindow: *AppWindow, contentOffset: Point) core.HResult!void {
        const _c = self.vtable.RequestMoveRelativeToWindowContent(@ptrCast(self), anchorWindow, contentOffset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestMoveRelativeToCurrentViewContent(self: *@This(), contentOffset: Point) core.HResult!void {
        const _c = self.vtable.RequestMoveRelativeToCurrentViewContent(@ptrCast(self), contentOffset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestMoveRelativeToDisplayRegion(self: *@This(), displayRegion: *DisplayRegion, displayRegionOffset: Point) core.HResult!void {
        const _c = self.vtable.RequestMoveRelativeToDisplayRegion(@ptrCast(self), displayRegion, displayRegionOffset);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RequestSize(self: *@This(), frameSize: Size) core.HResult!void {
        const _c = self.vtable.RequestSize(@ptrCast(self), frameSize);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryShowAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryShowAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(AppWindow,AppWindowChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Changed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Changed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addClosed(self: *@This(), handler: *TypedEventHandler(AppWindow,AppWindowClosedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Closed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeClosed(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Closed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addCloseRequested(self: *@This(), handler: *TypedEventHandler(AppWindow,AppWindowCloseRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_CloseRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeCloseRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_CloseRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindow";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "663014a6-b75e-5dbd-995c-f0117fa3fb61";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **UIContentRoot) callconv(.winapi) HRESULT,
        get_DispatcherQueue: *const fn(self: *anyopaque, _r: **DispatcherQueue) callconv(.winapi) HRESULT,
        get_Frame: *const fn(self: *anyopaque, _r: **AppWindowFrame) callconv(.winapi) HRESULT,
        get_IsVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_PersistedStateId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PersistedStateId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Presenter: *const fn(self: *anyopaque, _r: **AppWindowPresenter) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_TitleBar: *const fn(self: *anyopaque, _r: **AppWindowTitleBar) callconv(.winapi) HRESULT,
        get_UIContext: *const fn(self: *anyopaque, _r: **UIContext) callconv(.winapi) HRESULT,
        get_WindowingEnvironment: *const fn(self: *anyopaque, _r: **WindowingEnvironment) callconv(.winapi) HRESULT,
        CloseAsync: *const fn(self: *anyopaque, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        GetPlacement: *const fn(self: *anyopaque, _r: **AppWindowPlacement) callconv(.winapi) HRESULT,
        GetDisplayRegions: *const fn(self: *anyopaque, _r: **IVectorView(DisplayRegion)) callconv(.winapi) HRESULT,
        RequestMoveToDisplayRegion: *const fn(self: *anyopaque, displayRegion: *DisplayRegion) callconv(.winapi) HRESULT,
        RequestMoveAdjacentToCurrentView: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        RequestMoveAdjacentToWindow: *const fn(self: *anyopaque, anchorWindow: *AppWindow) callconv(.winapi) HRESULT,
        RequestMoveRelativeToWindowContent: *const fn(self: *anyopaque, anchorWindow: *AppWindow, contentOffset: Point) callconv(.winapi) HRESULT,
        RequestMoveRelativeToCurrentViewContent: *const fn(self: *anyopaque, contentOffset: Point) callconv(.winapi) HRESULT,
        RequestMoveRelativeToDisplayRegion: *const fn(self: *anyopaque, displayRegion: *DisplayRegion, displayRegionOffset: Point) callconv(.winapi) HRESULT,
        RequestSize: *const fn(self: *anyopaque, frameSize: Size) callconv(.winapi) HRESULT,
        TryShowAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        add_Changed: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppWindow,AppWindowChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Changed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Closed: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppWindow,AppWindowClosedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Closed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_CloseRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(AppWindow,AppWindowCloseRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_CloseRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IAppWindowChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getDidAvailableWindowPresentationsChange(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DidAvailableWindowPresentationsChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDidDisplayRegionsChange(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DidDisplayRegionsChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDidFrameChange(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DidFrameChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDidSizeChange(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DidSizeChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDidTitleBarChange(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DidTitleBarChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDidVisibilityChange(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DidVisibilityChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDidWindowingEnvironmentChange(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DidWindowingEnvironmentChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDidWindowPresentationChange(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DidWindowPresentationChange(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindowChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1de1f3be-a655-55ad-b2b6-eb240f880356";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DidAvailableWindowPresentationsChange: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DidDisplayRegionsChange: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DidFrameChange: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DidSizeChange: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DidTitleBarChange: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DidVisibilityChange: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DidWindowingEnvironmentChange: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_DidWindowPresentationChange: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppWindowCloseRequestedEventArgs = extern struct {
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
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindowCloseRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e9ff01da-e7a2-57a8-8b5e-39c4003afdbb";
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
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IAppWindowClosedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!AppWindowClosedReason {
        var _r: AppWindowClosedReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindowClosedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cc7df816-9520-5a06-821e-456ad8b358aa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *AppWindowClosedReason) callconv(.winapi) HRESULT,
    };
};
pub const IAppWindowFrame = extern struct {
    vtable: *const VTable,
    pub fn getDragRegionVisuals(self: *@This()) core.HResult!*IVector(IVisualElement) {
        var _r: *IVector(IVisualElement) = undefined;
        const _c = self.vtable.get_DragRegionVisuals(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindowFrame";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9ee22601-7e5d-52af-846b-01dc6c296567";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DragRegionVisuals: *const fn(self: *anyopaque, _r: **IVector(IVisualElement)) callconv(.winapi) HRESULT,
    };
};
pub const IAppWindowFrameStyle = extern struct {
    vtable: *const VTable,
    pub fn GetFrameStyle(self: *@This()) core.HResult!AppWindowFrameStyle {
        var _r: AppWindowFrameStyle = undefined;
        const _c = self.vtable.GetFrameStyle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetFrameStyle(self: *@This(), frameStyle: AppWindowFrameStyle) core.HResult!void {
        const _c = self.vtable.SetFrameStyle(@ptrCast(self), frameStyle);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindowFrameStyle";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ac412946-e1ac-5230-944a-c60873dcf4a9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFrameStyle: *const fn(self: *anyopaque, _r: *AppWindowFrameStyle) callconv(.winapi) HRESULT,
        SetFrameStyle: *const fn(self: *anyopaque, frameStyle: AppWindowFrameStyle) callconv(.winapi) HRESULT,
    };
};
pub const IAppWindowPlacement = extern struct {
    vtable: *const VTable,
    pub fn getDisplayRegion(self: *@This()) core.HResult!*DisplayRegion {
        var _r: *DisplayRegion = undefined;
        const _c = self.vtable.get_DisplayRegion(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getOffset(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_Offset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_Size(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindowPlacement";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03dc815e-e7a9-5857-9c03-7d670594410e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayRegion: *const fn(self: *anyopaque, _r: **DisplayRegion) callconv(.winapi) HRESULT,
        get_Offset: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_Size: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
    };
};
pub const IAppWindowPresentationConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getKind(self: *@This()) core.HResult!AppWindowPresentationKind {
        var _r: AppWindowPresentationKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindowPresentationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b5a43ee3-df33-5e67-bd31-1072457300df";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Kind: *const fn(self: *anyopaque, _r: *AppWindowPresentationKind) callconv(.winapi) HRESULT,
    };
};
pub const IAppWindowPresentationConfigurationFactory = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindowPresentationConfigurationFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fd3606a6-7875-5de8-84ff-6351ee13dd0d";
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
pub const IAppWindowPresenter = extern struct {
    vtable: *const VTable,
    pub fn GetConfiguration(self: *@This()) core.HResult!*AppWindowPresentationConfiguration {
        var _r: *AppWindowPresentationConfiguration = undefined;
        const _c = self.vtable.GetConfiguration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsPresentationSupported(self: *@This(), presentationKind: AppWindowPresentationKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsPresentationSupported(@ptrCast(self), presentationKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPresentation(self: *@This(), configuration: *AppWindowPresentationConfiguration) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.RequestPresentation(@ptrCast(self), configuration, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestPresentationWithPresentationKind(self: *@This(), presentationKind: AppWindowPresentationKind) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.RequestPresentationWithPresentationKind(@ptrCast(self), presentationKind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindowPresenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5ae9ed73-e1fd-5317-ad78-5a3ed271bbde";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetConfiguration: *const fn(self: *anyopaque, _r: **AppWindowPresentationConfiguration) callconv(.winapi) HRESULT,
        IsPresentationSupported: *const fn(self: *anyopaque, presentationKind: AppWindowPresentationKind, _r: *bool) callconv(.winapi) HRESULT,
        RequestPresentation: *const fn(self: *anyopaque, configuration: *AppWindowPresentationConfiguration, _r: *bool) callconv(.winapi) HRESULT,
        RequestPresentationWithPresentationKind: *const fn(self: *anyopaque, presentationKind: AppWindowPresentationKind, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IAppWindowStatics = extern struct {
    vtable: *const VTable,
    pub fn TryCreateAsync(self: *@This()) core.HResult!*IAsyncOperation(AppWindow) {
        var _r: *IAsyncOperation(AppWindow) = undefined;
        const _c = self.vtable.TryCreateAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ClearAllPersistedState(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearAllPersistedState(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearPersistedState(self: *@This(), key: HSTRING) core.HResult!void {
        const _c = self.vtable.ClearPersistedState(@ptrCast(self), key);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindowStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff1f3ea3-b769-50ef-9873-108cd0e89746";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryCreateAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(AppWindow)) callconv(.winapi) HRESULT,
        ClearAllPersistedState: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ClearPersistedState: *const fn(self: *anyopaque, key: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppWindowTitleBar = extern struct {
    vtable: *const VTable,
    pub fn getBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_BackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_BackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonBackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonHoverBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonHoverBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonHoverBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonHoverBackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonHoverForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonHoverForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonHoverForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonHoverForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonInactiveBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonInactiveBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonInactiveBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonInactiveBackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonInactiveForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonInactiveForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonInactiveForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonInactiveForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonPressedBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonPressedBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonPressedBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonPressedBackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonPressedForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonPressedForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonPressedForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonPressedForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExtendsContentIntoTitleBar(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ExtendsContentIntoTitleBar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putExtendsContentIntoTitleBar(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ExtendsContentIntoTitleBar(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInactiveBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_InactiveBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInactiveBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_InactiveBackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInactiveForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_InactiveForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInactiveForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_InactiveForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetTitleBarOcclusions(self: *@This()) core.HResult!*IVectorView(AppWindowTitleBarOcclusion) {
        var _r: *IVectorView(AppWindowTitleBarOcclusion) = undefined;
        const _c = self.vtable.GetTitleBarOcclusions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindowTitleBar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6e932c84-f644-541d-a2d7-0c262437842d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_BackgroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_BackgroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonBackgroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonBackgroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonForegroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonForegroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonHoverBackgroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonHoverBackgroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonHoverForegroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonHoverForegroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonInactiveBackgroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonInactiveBackgroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonInactiveForegroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonInactiveForegroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonPressedBackgroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonPressedBackgroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonPressedForegroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonPressedForegroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ExtendsContentIntoTitleBar: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_ExtendsContentIntoTitleBar: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ForegroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ForegroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_InactiveBackgroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_InactiveBackgroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_InactiveForegroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_InactiveForegroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_IsVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        GetTitleBarOcclusions: *const fn(self: *anyopaque, _r: **IVectorView(AppWindowTitleBarOcclusion)) callconv(.winapi) HRESULT,
    };
};
pub const IAppWindowTitleBarOcclusion = extern struct {
    vtable: *const VTable,
    pub fn getOccludingRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_OccludingRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindowTitleBarOcclusion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fea3cffd-2ccf-5fc3-aeae-f843876bf37e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OccludingRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const IAppWindowTitleBarVisibility = extern struct {
    vtable: *const VTable,
    pub fn GetPreferredVisibility(self: *@This()) core.HResult!AppWindowTitleBarVisibility {
        var _r: AppWindowTitleBarVisibility = undefined;
        const _c = self.vtable.GetPreferredVisibility(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPreferredVisibility(self: *@This(), visibilityMode: AppWindowTitleBarVisibility) core.HResult!void {
        const _c = self.vtable.SetPreferredVisibility(@ptrCast(self), visibilityMode);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IAppWindowTitleBarVisibility";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a215a4e3-6e7e-5651-8c3b-624819528154";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPreferredVisibility: *const fn(self: *anyopaque, _r: *AppWindowTitleBarVisibility) callconv(.winapi) HRESULT,
        SetPreferredVisibility: *const fn(self: *anyopaque, visibilityMode: AppWindowTitleBarVisibility) callconv(.winapi) HRESULT,
    };
};
pub const ICompactOverlayPresentationConfiguration = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.ICompactOverlayPresentationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a7e5750f-5730-56c6-8e1f-d63ff4d7980d";
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
pub const IDefaultPresentationConfiguration = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IDefaultPresentationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d8c2b53b-2168-5703-a853-d525589fe2b9";
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
pub const IDisplayRegion = extern struct {
    vtable: *const VTable,
    pub fn getDisplayMonitorDeviceId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DisplayMonitorDeviceId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWorkAreaOffset(self: *@This()) core.HResult!Point {
        var _r: Point = undefined;
        const _c = self.vtable.get_WorkAreaOffset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWorkAreaSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_WorkAreaSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWindowingEnvironment(self: *@This()) core.HResult!*WindowingEnvironment {
        var _r: *WindowingEnvironment = undefined;
        const _c = self.vtable.get_WindowingEnvironment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(DisplayRegion,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Changed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Changed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IDisplayRegion";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "db50c3a2-4094-5f47-8cb1-ea01ddafaa94";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayMonitorDeviceId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_IsVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_WorkAreaOffset: *const fn(self: *anyopaque, _r: *Point) callconv(.winapi) HRESULT,
        get_WorkAreaSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_WindowingEnvironment: *const fn(self: *anyopaque, _r: **WindowingEnvironment) callconv(.winapi) HRESULT,
        add_Changed: *const fn(self: *anyopaque, handler: *TypedEventHandler(DisplayRegion,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Changed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IFullScreenPresentationConfiguration = extern struct {
    vtable: *const VTable,
    pub fn getIsExclusive(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsExclusive(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsExclusive(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsExclusive(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IFullScreenPresentationConfiguration";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43d3dcd8-d2a8-503d-a626-15533d6d5f62";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsExclusive: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsExclusive: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IWindowServicesStatics = extern struct {
    vtable: *const VTable,
    pub fn FindAllTopLevelWindowIds(self: *@This()) core.HResult!*IVectorView(WindowId) {
        var _r: *IVectorView(WindowId) = undefined;
        const _c = self.vtable.FindAllTopLevelWindowIds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IWindowServicesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cff4d519-50a6-5c64-97f6-c2d96add7f42";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAllTopLevelWindowIds: *const fn(self: *anyopaque, _r: **IVectorView(WindowId)) callconv(.winapi) HRESULT,
    };
};
pub const IWindowingEnvironment = extern struct {
    vtable: *const VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getKind(self: *@This()) core.HResult!WindowingEnvironmentKind {
        var _r: WindowingEnvironmentKind = undefined;
        const _c = self.vtable.get_Kind(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDisplayRegions(self: *@This()) core.HResult!*IVectorView(DisplayRegion) {
        var _r: *IVectorView(DisplayRegion) = undefined;
        const _c = self.vtable.GetDisplayRegions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(WindowingEnvironment,WindowingEnvironmentChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Changed(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Changed(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IWindowingEnvironment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "264363c0-2a49-5417-b3ae-48a71c63a3bd";
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
        get_Kind: *const fn(self: *anyopaque, _r: *WindowingEnvironmentKind) callconv(.winapi) HRESULT,
        GetDisplayRegions: *const fn(self: *anyopaque, _r: **IVectorView(DisplayRegion)) callconv(.winapi) HRESULT,
        add_Changed: *const fn(self: *anyopaque, handler: *TypedEventHandler(WindowingEnvironment,WindowingEnvironmentChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Changed: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IWindowingEnvironmentAddedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getWindowingEnvironment(self: *@This()) core.HResult!*WindowingEnvironment {
        var _r: *WindowingEnvironment = undefined;
        const _c = self.vtable.get_WindowingEnvironment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IWindowingEnvironmentAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ff2a5b7f-f183-5c66-99b2-429082069299";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WindowingEnvironment: *const fn(self: *anyopaque, _r: **WindowingEnvironment) callconv(.winapi) HRESULT,
    };
};
pub const IWindowingEnvironmentChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IWindowingEnvironmentChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4160cfc6-023d-5e9a-b431-350e67dc978a";
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
pub const IWindowingEnvironmentRemovedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getWindowingEnvironment(self: *@This()) core.HResult!*WindowingEnvironment {
        var _r: *WindowingEnvironment = undefined;
        const _c = self.vtable.get_WindowingEnvironment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IWindowingEnvironmentRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2e5b5473-beff-5e53-9316-7e775fe568b3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WindowingEnvironment: *const fn(self: *anyopaque, _r: **WindowingEnvironment) callconv(.winapi) HRESULT,
    };
};
pub const IWindowingEnvironmentStatics = extern struct {
    vtable: *const VTable,
    pub fn FindAll(self: *@This()) core.HResult!*IVectorView(WindowingEnvironment) {
        var _r: *IVectorView(WindowingEnvironment) = undefined;
        const _c = self.vtable.FindAll(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn FindAll(self: *@This(), kind: WindowingEnvironmentKind) core.HResult!*IVectorView(WindowingEnvironment) {
        var _r: *IVectorView(WindowingEnvironment) = undefined;
        const _c = self.vtable.FindAll(@ptrCast(self), kind, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.IWindowingEnvironmentStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "874e9fb7-c642-55ab-8aa2-162f734a9a72";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        FindAll: *const fn(self: *anyopaque, _r: **IVectorView(WindowingEnvironment)) callconv(.winapi) HRESULT,
        FindAll: *const fn(self: *anyopaque, kind: WindowingEnvironmentKind, _r: **IVectorView(WindowingEnvironment)) callconv(.winapi) HRESULT,
    };
};
pub const WindowServices = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindAllTopLevelWindowIds() core.HResult!*IVectorView(WindowId) {
        const factory = @This().IWindowServicesStaticsCache.get();
        return try factory.FindAllTopLevelWindowIds();
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.WindowServices";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IWindowServicesStaticsCache: FactoryCache(IWindowServicesStatics, RUNTIME_NAME) = .{};
};
pub const WindowingEnvironment = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsEnabled(self: *@This()) core.HResult!bool {
        const this: *IWindowingEnvironment = @ptrCast(self);
        return try this.getIsEnabled();
    }
    pub fn getKind(self: *@This()) core.HResult!WindowingEnvironmentKind {
        const this: *IWindowingEnvironment = @ptrCast(self);
        return try this.getKind();
    }
    pub fn GetDisplayRegions(self: *@This()) core.HResult!*IVectorView(DisplayRegion) {
        const this: *IWindowingEnvironment = @ptrCast(self);
        return try this.GetDisplayRegions();
    }
    pub fn addChanged(self: *@This(), handler: *TypedEventHandler(WindowingEnvironment,WindowingEnvironmentChangedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IWindowingEnvironment = @ptrCast(self);
        return try this.addChanged(handler);
    }
    pub fn removeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IWindowingEnvironment = @ptrCast(self);
        return try this.removeChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn FindAll() core.HResult!*IVectorView(WindowingEnvironment) {
        const factory = @This().IWindowingEnvironmentStaticsCache.get();
        return try factory.FindAll();
    }
    pub fn FindAll(kind: WindowingEnvironmentKind) core.HResult!*IVectorView(WindowingEnvironment) {
        const factory = @This().IWindowingEnvironmentStaticsCache.get();
        return try factory.FindAll(kind);
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.WindowingEnvironment";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowingEnvironment.GUID;
    pub const IID: Guid = IWindowingEnvironment.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowingEnvironment.SIGNATURE);
    var _IWindowingEnvironmentStaticsCache: FactoryCache(IWindowingEnvironmentStatics, RUNTIME_NAME) = .{};
};
pub const WindowingEnvironmentAddedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWindowingEnvironment(self: *@This()) core.HResult!*WindowingEnvironment {
        const this: *IWindowingEnvironmentAddedEventArgs = @ptrCast(self);
        return try this.getWindowingEnvironment();
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.WindowingEnvironmentAddedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowingEnvironmentAddedEventArgs.GUID;
    pub const IID: Guid = IWindowingEnvironmentAddedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowingEnvironmentAddedEventArgs.SIGNATURE);
};
pub const WindowingEnvironmentChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.WindowingEnvironmentChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowingEnvironmentChangedEventArgs.GUID;
    pub const IID: Guid = IWindowingEnvironmentChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowingEnvironmentChangedEventArgs.SIGNATURE);
};
pub const WindowingEnvironmentKind = enum(i32) {
    Unknown = 0,
    Overlapped = 1,
    Tiled = 2,
};
pub const WindowingEnvironmentRemovedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWindowingEnvironment(self: *@This()) core.HResult!*WindowingEnvironment {
        const this: *IWindowingEnvironmentRemovedEventArgs = @ptrCast(self);
        return try this.getWindowingEnvironment();
    }
    pub const NAME: []const u8 = "Windows.UI.WindowManagement.WindowingEnvironmentRemovedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowingEnvironmentRemovedEventArgs.GUID;
    pub const IID: Guid = IWindowingEnvironmentRemovedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowingEnvironmentRemovedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const Deferral = @import("../Foundation.zig").Deferral;
const IVisualElement = @import("./Composition.zig").IVisualElement;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const IVector = @import("../Foundation/Collections.zig").IVector;
const Size = @import("../Foundation.zig").Size;
const WindowId = @import("../UI.zig").WindowId;
const IReference = @import("../Foundation.zig").IReference;
const Point = @import("../Foundation.zig").Point;
const DispatcherQueue = @import("../System.zig").DispatcherQueue;
const FactoryCache = @import("../core.zig").FactoryCache;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const UIContentRoot = @import("../UI.zig").UIContentRoot;
const UIContext = @import("../UI.zig").UIContext;
const HSTRING = @import("../root.zig").HSTRING;
const Color = @import("../UI.zig").Color;
const IInspectable = @import("../Foundation.zig").IInspectable;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
pub const Preview = @import("./WindowManagement/Preview.zig");
