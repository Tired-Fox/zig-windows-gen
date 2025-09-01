pub const ApplicationViewScaling = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn getDisableLayoutScaling() core.HResult!bool {
        const _f = @This().IApplicationViewScalingStaticsCache.get();
        return try _f.getDisableLayoutScaling();
    }
    pub fn TrySetDisableLayoutScaling(disableLayoutScaling: bool) core.HResult!bool {
        const _f = @This().IApplicationViewScalingStaticsCache.get();
        return try _f.TrySetDisableLayoutScaling(disableLayoutScaling);
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.ApplicationViewScaling";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IApplicationViewScaling.GUID;
    pub const IID: Guid = IApplicationViewScaling.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IApplicationViewScaling.SIGNATURE);
    var _IApplicationViewScalingStaticsCache: FactoryCache(IApplicationViewScalingStatics, RUNTIME_NAME) = .{};
};
pub const IApplicationViewScaling = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewScaling";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1d0ddc23-23f3-4b2d-84fe-74bf37b48b66";
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
pub const IApplicationViewScalingStatics = extern struct {
    vtable: *const VTable,
    pub fn getDisableLayoutScaling(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_DisableLayoutScaling(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TrySetDisableLayoutScaling(self: *@This(), disableLayoutScaling: bool) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TrySetDisableLayoutScaling(@ptrCast(self), disableLayoutScaling, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewScalingStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b08fecf0-b946-45c8-a5e3-71f5aa78f861";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisableLayoutScaling: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        TrySetDisableLayoutScaling: *const fn(self: *anyopaque, disableLayoutScaling: bool, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const AccessibilitySettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHighContrast(self: *@This()) core.HResult!bool {
        const this: *IAccessibilitySettings = @ptrCast(self);
        return try this.getHighContrast();
    }
    pub fn getHighContrastScheme(self: *@This()) core.HResult!HSTRING {
        const this: *IAccessibilitySettings = @ptrCast(self);
        return try this.getHighContrastScheme();
    }
    pub fn addHighContrastChanged(self: *@This(), handler: *TypedEventHandler(AccessibilitySettings,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *IAccessibilitySettings = @ptrCast(self);
        return try this.addHighContrastChanged(handler);
    }
    pub fn removeHighContrastChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const this: *IAccessibilitySettings = @ptrCast(self);
        return try this.removeHighContrastChanged(cookie);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IAccessibilitySettings.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.AccessibilitySettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAccessibilitySettings.GUID;
    pub const IID: Guid = IAccessibilitySettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAccessibilitySettings.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const ActivationViewSwitcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn ShowAsStandaloneAsync(self: *@This(), viewId: i32) core.HResult!*IAsyncAction {
        const this: *IActivationViewSwitcher = @ptrCast(self);
        return try this.ShowAsStandaloneAsync(viewId);
    }
    pub fn ShowAsStandaloneAsyncWithSizePreference(self: *@This(), viewId: i32, sizePreference: ViewSizePreference) core.HResult!*IAsyncAction {
        const this: *IActivationViewSwitcher = @ptrCast(self);
        return try this.ShowAsStandaloneAsyncWithSizePreference(viewId, sizePreference);
    }
    pub fn IsViewPresentedOnActivationVirtualDesktop(self: *@This(), viewId: i32) core.HResult!bool {
        const this: *IActivationViewSwitcher = @ptrCast(self);
        return try this.IsViewPresentedOnActivationVirtualDesktop(viewId);
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.ActivationViewSwitcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IActivationViewSwitcher.GUID;
    pub const IID: Guid = IActivationViewSwitcher.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IActivationViewSwitcher.SIGNATURE);
};
pub const ApplicationView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOrientation(self: *@This()) core.HResult!ApplicationViewOrientation {
        const this: *IApplicationView = @ptrCast(self);
        return try this.getOrientation();
    }
    pub fn getAdjacentToLeftDisplayEdge(self: *@This()) core.HResult!bool {
        const this: *IApplicationView = @ptrCast(self);
        return try this.getAdjacentToLeftDisplayEdge();
    }
    pub fn getAdjacentToRightDisplayEdge(self: *@This()) core.HResult!bool {
        const this: *IApplicationView = @ptrCast(self);
        return try this.getAdjacentToRightDisplayEdge();
    }
    pub fn getIsFullScreen(self: *@This()) core.HResult!bool {
        const this: *IApplicationView = @ptrCast(self);
        return try this.getIsFullScreen();
    }
    pub fn getIsOnLockScreen(self: *@This()) core.HResult!bool {
        const this: *IApplicationView = @ptrCast(self);
        return try this.getIsOnLockScreen();
    }
    pub fn getIsScreenCaptureEnabled(self: *@This()) core.HResult!bool {
        const this: *IApplicationView = @ptrCast(self);
        return try this.getIsScreenCaptureEnabled();
    }
    pub fn putIsScreenCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IApplicationView = @ptrCast(self);
        return try this.putIsScreenCaptureEnabled(value);
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IApplicationView = @ptrCast(self);
        return try this.putTitle(value);
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        const this: *IApplicationView = @ptrCast(self);
        return try this.getTitle();
    }
    pub fn getId(self: *@This()) core.HResult!i32 {
        const this: *IApplicationView = @ptrCast(self);
        return try this.getId();
    }
    pub fn addConsolidated(self: *@This(), handler: *TypedEventHandler(ApplicationView,ApplicationViewConsolidatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IApplicationView = @ptrCast(self);
        return try this.addConsolidated(handler);
    }
    pub fn removeConsolidated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IApplicationView = @ptrCast(self);
        return try this.removeConsolidated(token);
    }
    pub fn getSuppressSystemOverlays(self: *@This()) core.HResult!bool {
        var this: ?*IApplicationView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getSuppressSystemOverlays();
    }
    pub fn putSuppressSystemOverlays(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IApplicationView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putSuppressSystemOverlays(value);
    }
    pub fn getVisibleBounds(self: *@This()) core.HResult!Rect {
        var this: ?*IApplicationView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVisibleBounds();
    }
    pub fn addVisibleBoundsChanged(self: *@This(), handler: *TypedEventHandler(ApplicationView,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IApplicationView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addVisibleBoundsChanged(handler);
    }
    pub fn removeVisibleBoundsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IApplicationView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeVisibleBoundsChanged(token);
    }
    pub fn SetDesiredBoundsMode(self: *@This(), boundsMode: ApplicationViewBoundsMode) core.HResult!bool {
        var this: ?*IApplicationView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetDesiredBoundsMode(boundsMode);
    }
    pub fn getDesiredBoundsMode(self: *@This()) core.HResult!ApplicationViewBoundsMode {
        var this: ?*IApplicationView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDesiredBoundsMode();
    }
    pub fn getTitleBar(self: *@This()) core.HResult!*ApplicationViewTitleBar {
        var this: ?*IApplicationView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTitleBar();
    }
    pub fn getFullScreenSystemOverlayMode(self: *@This()) core.HResult!FullScreenSystemOverlayMode {
        var this: ?*IApplicationView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getFullScreenSystemOverlayMode();
    }
    pub fn putFullScreenSystemOverlayMode(self: *@This(), value: FullScreenSystemOverlayMode) core.HResult!void {
        var this: ?*IApplicationView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putFullScreenSystemOverlayMode(value);
    }
    pub fn getIsFullScreenMode(self: *@This()) core.HResult!bool {
        var this: ?*IApplicationView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsFullScreenMode();
    }
    pub fn TryEnterFullScreenMode(self: *@This()) core.HResult!bool {
        var this: ?*IApplicationView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryEnterFullScreenMode();
    }
    pub fn ExitFullScreenMode(self: *@This()) core.HResult!void {
        var this: ?*IApplicationView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ExitFullScreenMode();
    }
    pub fn ShowStandardSystemOverlays(self: *@This()) core.HResult!void {
        var this: ?*IApplicationView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.ShowStandardSystemOverlays();
    }
    pub fn TryResizeView(self: *@This(), value: Size) core.HResult!bool {
        var this: ?*IApplicationView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryResizeView(value);
    }
    pub fn SetPreferredMinSize(self: *@This(), minSize: Size) core.HResult!void {
        var this: ?*IApplicationView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.SetPreferredMinSize(minSize);
    }
    pub fn getViewMode(self: *@This()) core.HResult!ApplicationViewMode {
        var this: ?*IApplicationView4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getViewMode();
    }
    pub fn IsViewModeSupported(self: *@This(), viewMode: ApplicationViewMode) core.HResult!bool {
        var this: ?*IApplicationView4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.IsViewModeSupported(viewMode);
    }
    pub fn TryEnterViewModeAsync(self: *@This(), viewMode: ApplicationViewMode) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IApplicationView4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryEnterViewModeAsync(viewMode);
    }
    pub fn TryEnterViewModeAsyncWithViewModePreferences(self: *@This(), viewMode: ApplicationViewMode, viewModePreferences: *ViewModePreferences) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IApplicationView4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryEnterViewModeAsyncWithViewModePreferences(viewMode, viewModePreferences);
    }
    pub fn TryConsolidateAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IApplicationView4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryConsolidateAsync();
    }
    pub fn getPersistedStateId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IApplicationView7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getPersistedStateId();
    }
    pub fn putPersistedStateId(self: *@This(), value: HSTRING) core.HResult!void {
        var this: ?*IApplicationView7 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView7.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putPersistedStateId(value);
    }
    pub fn getWindowingEnvironment(self: *@This()) core.HResult!*WindowingEnvironment {
        var this: ?*IApplicationView9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getWindowingEnvironment();
    }
    pub fn GetDisplayRegions(self: *@This()) core.HResult!*IVectorView(DisplayRegion) {
        var this: ?*IApplicationView9 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationView9.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDisplayRegions();
    }
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        var this: ?*IApplicationViewWithContext = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewWithContext.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getUIContext();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn TryUnsnapToFullscreen() core.HResult!bool {
        const _f = @This().IApplicationViewFullscreenStaticsCache.get();
        return try _f.TryUnsnapToFullscreen();
    }
    pub fn GetForCurrentView() core.HResult!*ApplicationView {
        const _f = @This().IApplicationViewStatics2Cache.get();
        return try _f.GetForCurrentView();
    }
    pub fn getTerminateAppOnFinalViewClose() core.HResult!bool {
        const _f = @This().IApplicationViewStatics2Cache.get();
        return try _f.getTerminateAppOnFinalViewClose();
    }
    pub fn putTerminateAppOnFinalViewClose(value: bool) core.HResult!void {
        const _f = @This().IApplicationViewStatics2Cache.get();
        return try _f.putTerminateAppOnFinalViewClose(value);
    }
    pub fn getPreferredLaunchWindowingMode() core.HResult!ApplicationViewWindowingMode {
        const _f = @This().IApplicationViewStatics3Cache.get();
        return try _f.getPreferredLaunchWindowingMode();
    }
    pub fn putPreferredLaunchWindowingMode(value: ApplicationViewWindowingMode) core.HResult!void {
        const _f = @This().IApplicationViewStatics3Cache.get();
        return try _f.putPreferredLaunchWindowingMode(value);
    }
    pub fn getPreferredLaunchViewSize() core.HResult!Size {
        const _f = @This().IApplicationViewStatics3Cache.get();
        return try _f.getPreferredLaunchViewSize();
    }
    pub fn putPreferredLaunchViewSize(value: Size) core.HResult!void {
        const _f = @This().IApplicationViewStatics3Cache.get();
        return try _f.putPreferredLaunchViewSize(value);
    }
    pub fn getValue() core.HResult!ApplicationViewState {
        const _f = @This().IApplicationViewStaticsCache.get();
        return try _f.getValue();
    }
    pub fn TryUnsnap() core.HResult!bool {
        const _f = @This().IApplicationViewStaticsCache.get();
        return try _f.TryUnsnap();
    }
    pub fn GetApplicationViewIdForWindow(window: *ICoreWindow) core.HResult!i32 {
        const _f = @This().IApplicationViewInteropStaticsCache.get();
        return try _f.GetApplicationViewIdForWindow(window);
    }
    pub fn ClearAllPersistedState() core.HResult!void {
        const _f = @This().IApplicationViewStatics4Cache.get();
        return try _f.ClearAllPersistedState();
    }
    pub fn ClearPersistedState(key: HSTRING) core.HResult!void {
        const _f = @This().IApplicationViewStatics4Cache.get();
        return try _f.ClearPersistedState(key);
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.ApplicationView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IApplicationView.GUID;
    pub const IID: Guid = IApplicationView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IApplicationView.SIGNATURE);
    var _IApplicationViewFullscreenStaticsCache: FactoryCache(IApplicationViewFullscreenStatics, RUNTIME_NAME) = .{};
    var _IApplicationViewStatics2Cache: FactoryCache(IApplicationViewStatics2, RUNTIME_NAME) = .{};
    var _IApplicationViewStatics3Cache: FactoryCache(IApplicationViewStatics3, RUNTIME_NAME) = .{};
    var _IApplicationViewStaticsCache: FactoryCache(IApplicationViewStatics, RUNTIME_NAME) = .{};
    var _IApplicationViewInteropStaticsCache: FactoryCache(IApplicationViewInteropStatics, RUNTIME_NAME) = .{};
    var _IApplicationViewStatics4Cache: FactoryCache(IApplicationViewStatics4, RUNTIME_NAME) = .{};
};
pub const ApplicationViewBoundsMode = enum(i32) {
    UseVisible = 0,
    UseCoreWindow = 1,
};
pub const ApplicationViewConsolidatedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getIsUserInitiated(self: *@This()) core.HResult!bool {
        const this: *IApplicationViewConsolidatedEventArgs = @ptrCast(self);
        return try this.getIsUserInitiated();
    }
    pub fn getIsAppInitiated(self: *@This()) core.HResult!bool {
        var this: ?*IApplicationViewConsolidatedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IApplicationViewConsolidatedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsAppInitiated();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.ApplicationViewConsolidatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IApplicationViewConsolidatedEventArgs.GUID;
    pub const IID: Guid = IApplicationViewConsolidatedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IApplicationViewConsolidatedEventArgs.SIGNATURE);
};
pub const ApplicationViewMode = enum(i32) {
    Default = 0,
    CompactOverlay = 1,
};
pub const ApplicationViewOrientation = enum(i32) {
    Landscape = 0,
    Portrait = 1,
};
pub const ApplicationViewState = enum(i32) {
    FullScreenLandscape = 0,
    Filled = 1,
    Snapped = 2,
    FullScreenPortrait = 3,
};
pub const ApplicationViewSwitcher = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn DisableShowingMainViewOnActivation() core.HResult!void {
        const _f = @This().IApplicationViewSwitcherStaticsCache.get();
        return try _f.DisableShowingMainViewOnActivation();
    }
    pub fn TryShowAsStandaloneAsync(viewId: i32) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IApplicationViewSwitcherStaticsCache.get();
        return try _f.TryShowAsStandaloneAsync(viewId);
    }
    pub fn TryShowAsStandaloneAsyncWithSizePreference(viewId: i32, sizePreference: ViewSizePreference) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IApplicationViewSwitcherStaticsCache.get();
        return try _f.TryShowAsStandaloneAsyncWithSizePreference(viewId, sizePreference);
    }
    pub fn TryShowAsStandaloneAsyncWithSizePreferenceAndAnchorViewIdAndAnchorSizePreference(viewId: i32, sizePreference: ViewSizePreference, anchorViewId: i32, anchorSizePreference: ViewSizePreference) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IApplicationViewSwitcherStaticsCache.get();
        return try _f.TryShowAsStandaloneAsyncWithSizePreferenceAndAnchorViewIdAndAnchorSizePreference(viewId, sizePreference, anchorViewId, anchorSizePreference);
    }
    pub fn SwitchAsync(viewId: i32) core.HResult!*IAsyncAction {
        const _f = @This().IApplicationViewSwitcherStaticsCache.get();
        return try _f.SwitchAsync(viewId);
    }
    pub fn SwitchAsyncWithFromViewId(toViewId: i32, fromViewId: i32) core.HResult!*IAsyncAction {
        const _f = @This().IApplicationViewSwitcherStaticsCache.get();
        return try _f.SwitchAsyncWithFromViewId(toViewId, fromViewId);
    }
    pub fn SwitchAsyncWithFromViewIdAndOptions(toViewId: i32, fromViewId: i32, options: ApplicationViewSwitchingOptions) core.HResult!*IAsyncAction {
        const _f = @This().IApplicationViewSwitcherStaticsCache.get();
        return try _f.SwitchAsyncWithFromViewIdAndOptions(toViewId, fromViewId, options);
    }
    pub fn PrepareForCustomAnimatedSwitchAsync(toViewId: i32, fromViewId: i32, options: ApplicationViewSwitchingOptions) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IApplicationViewSwitcherStaticsCache.get();
        return try _f.PrepareForCustomAnimatedSwitchAsync(toViewId, fromViewId, options);
    }
    pub fn TryShowAsViewModeAsync(viewId: i32, viewMode: ApplicationViewMode) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IApplicationViewSwitcherStatics3Cache.get();
        return try _f.TryShowAsViewModeAsync(viewId, viewMode);
    }
    pub fn TryShowAsViewModeAsyncWithViewModePreferences(viewId: i32, viewMode: ApplicationViewMode, viewModePreferences: *ViewModePreferences) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IApplicationViewSwitcherStatics3Cache.get();
        return try _f.TryShowAsViewModeAsyncWithViewModePreferences(viewId, viewMode, viewModePreferences);
    }
    pub fn DisableSystemViewActivationPolicy() core.HResult!void {
        const _f = @This().IApplicationViewSwitcherStatics2Cache.get();
        return try _f.DisableSystemViewActivationPolicy();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.ApplicationViewSwitcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IApplicationViewSwitcherStaticsCache: FactoryCache(IApplicationViewSwitcherStatics, RUNTIME_NAME) = .{};
    var _IApplicationViewSwitcherStatics3Cache: FactoryCache(IApplicationViewSwitcherStatics3, RUNTIME_NAME) = .{};
    var _IApplicationViewSwitcherStatics2Cache: FactoryCache(IApplicationViewSwitcherStatics2, RUNTIME_NAME) = .{};
};
pub const ApplicationViewSwitchingOptions = enum(i32) {
    Default = 0,
    SkipAnimation = 1,
    ConsolidateViews = 2,
};
pub const ApplicationViewTitleBar = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.putForegroundColor(value);
    }
    pub fn getForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.getForegroundColor();
    }
    pub fn putBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.putBackgroundColor(value);
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.getBackgroundColor();
    }
    pub fn putButtonForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.putButtonForegroundColor(value);
    }
    pub fn getButtonForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.getButtonForegroundColor();
    }
    pub fn putButtonBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.putButtonBackgroundColor(value);
    }
    pub fn getButtonBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.getButtonBackgroundColor();
    }
    pub fn putButtonHoverForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.putButtonHoverForegroundColor(value);
    }
    pub fn getButtonHoverForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.getButtonHoverForegroundColor();
    }
    pub fn putButtonHoverBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.putButtonHoverBackgroundColor(value);
    }
    pub fn getButtonHoverBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.getButtonHoverBackgroundColor();
    }
    pub fn putButtonPressedForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.putButtonPressedForegroundColor(value);
    }
    pub fn getButtonPressedForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.getButtonPressedForegroundColor();
    }
    pub fn putButtonPressedBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.putButtonPressedBackgroundColor(value);
    }
    pub fn getButtonPressedBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.getButtonPressedBackgroundColor();
    }
    pub fn putInactiveForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.putInactiveForegroundColor(value);
    }
    pub fn getInactiveForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.getInactiveForegroundColor();
    }
    pub fn putInactiveBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.putInactiveBackgroundColor(value);
    }
    pub fn getInactiveBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.getInactiveBackgroundColor();
    }
    pub fn putButtonInactiveForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.putButtonInactiveForegroundColor(value);
    }
    pub fn getButtonInactiveForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.getButtonInactiveForegroundColor();
    }
    pub fn putButtonInactiveBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.putButtonInactiveBackgroundColor(value);
    }
    pub fn getButtonInactiveBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        const this: *IApplicationViewTitleBar = @ptrCast(self);
        return try this.getButtonInactiveBackgroundColor();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.ApplicationViewTitleBar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IApplicationViewTitleBar.GUID;
    pub const IID: Guid = IApplicationViewTitleBar.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IApplicationViewTitleBar.SIGNATURE);
};
pub const ApplicationViewTransferContext = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getViewId(self: *@This()) core.HResult!i32 {
        const this: *IApplicationViewTransferContext = @ptrCast(self);
        return try this.getViewId();
    }
    pub fn putViewId(self: *@This(), value: i32) core.HResult!void {
        const this: *IApplicationViewTransferContext = @ptrCast(self);
        return try this.putViewId(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IApplicationViewTransferContext.IID)));
    }
    pub fn getDataPackageFormatId() core.HResult!HSTRING {
        const _f = @This().IApplicationViewTransferContextStaticsCache.get();
        return try _f.getDataPackageFormatId();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.ApplicationViewTransferContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IApplicationViewTransferContext.GUID;
    pub const IID: Guid = IApplicationViewTransferContext.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IApplicationViewTransferContext.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
    var _IApplicationViewTransferContextStaticsCache: FactoryCache(IApplicationViewTransferContextStatics, RUNTIME_NAME) = .{};
};
pub const ApplicationViewWindowingMode = enum(i32) {
    Auto = 0,
    PreferredLaunchViewSize = 1,
    FullScreen = 2,
    CompactOverlay = 3,
    Maximized = 4,
};
pub const FullScreenSystemOverlayMode = enum(i32) {
    Standard = 0,
    Minimal = 1,
};
pub const HandPreference = enum(i32) {
    LeftHanded = 0,
    RightHanded = 1,
};
pub const IAccessibilitySettings = extern struct {
    vtable: *const VTable,
    pub fn getHighContrast(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HighContrast(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHighContrastScheme(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_HighContrastScheme(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addHighContrastChanged(self: *@This(), handler: *TypedEventHandler(AccessibilitySettings,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HighContrastChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHighContrastChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HighContrastChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IAccessibilitySettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe0e8147-c4c0-4562-b962-1327b52ad5b9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HighContrast: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_HighContrastScheme: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        add_HighContrastChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(AccessibilitySettings,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HighContrastChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IActivationViewSwitcher = extern struct {
    vtable: *const VTable,
    pub fn ShowAsStandaloneAsync(self: *@This(), viewId: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAsStandaloneAsync(@ptrCast(self), viewId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ShowAsStandaloneAsyncWithSizePreference(self: *@This(), viewId: i32, sizePreference: ViewSizePreference) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.ShowAsStandaloneAsyncWithSizePreference(@ptrCast(self), viewId, sizePreference, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsViewPresentedOnActivationVirtualDesktop(self: *@This(), viewId: i32) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsViewPresentedOnActivationVirtualDesktop(@ptrCast(self), viewId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IActivationViewSwitcher";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "dca71bb6-7350-492b-aac7-c8a13d7224ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ShowAsStandaloneAsync: *const fn(self: *anyopaque, viewId: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        ShowAsStandaloneAsyncWithSizePreference: *const fn(self: *anyopaque, viewId: i32, sizePreference: ViewSizePreference, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        IsViewPresentedOnActivationVirtualDesktop: *const fn(self: *anyopaque, viewId: i32, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationView = extern struct {
    vtable: *const VTable,
    pub fn getOrientation(self: *@This()) core.HResult!ApplicationViewOrientation {
        var _r: ApplicationViewOrientation = undefined;
        const _c = self.vtable.get_Orientation(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdjacentToLeftDisplayEdge(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AdjacentToLeftDisplayEdge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAdjacentToRightDisplayEdge(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AdjacentToRightDisplayEdge(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsFullScreen(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFullScreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsOnLockScreen(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsOnLockScreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsScreenCaptureEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsScreenCaptureEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsScreenCaptureEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsScreenCaptureEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn putTitle(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_Title(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Title(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addConsolidated(self: *@This(), handler: *TypedEventHandler(ApplicationView,ApplicationViewConsolidatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Consolidated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeConsolidated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Consolidated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d222d519-4361-451e-96c4-60f4f9742db0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Orientation: *const fn(self: *anyopaque, _r: *ApplicationViewOrientation) callconv(.winapi) HRESULT,
        get_AdjacentToLeftDisplayEdge: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_AdjacentToRightDisplayEdge: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsFullScreen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsOnLockScreen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsScreenCaptureEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsScreenCaptureEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        put_Title: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_Title: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        add_Consolidated: *const fn(self: *anyopaque, handler: *TypedEventHandler(ApplicationView,ApplicationViewConsolidatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Consolidated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationView2 = extern struct {
    vtable: *const VTable,
    pub fn getSuppressSystemOverlays(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_SuppressSystemOverlays(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSuppressSystemOverlays(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_SuppressSystemOverlays(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getVisibleBounds(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_VisibleBounds(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addVisibleBoundsChanged(self: *@This(), handler: *TypedEventHandler(ApplicationView,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_VisibleBoundsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeVisibleBoundsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_VisibleBoundsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetDesiredBoundsMode(self: *@This(), boundsMode: ApplicationViewBoundsMode) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.SetDesiredBoundsMode(@ptrCast(self), boundsMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDesiredBoundsMode(self: *@This()) core.HResult!ApplicationViewBoundsMode {
        var _r: ApplicationViewBoundsMode = undefined;
        const _c = self.vtable.get_DesiredBoundsMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationView2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e876b196-a545-40dc-b594-450cba68cc00";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_SuppressSystemOverlays: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_SuppressSystemOverlays: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_VisibleBounds: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        add_VisibleBoundsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(ApplicationView,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_VisibleBoundsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        SetDesiredBoundsMode: *const fn(self: *anyopaque, boundsMode: ApplicationViewBoundsMode, _r: *bool) callconv(.winapi) HRESULT,
        get_DesiredBoundsMode: *const fn(self: *anyopaque, _r: *ApplicationViewBoundsMode) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationView3 = extern struct {
    vtable: *const VTable,
    pub fn getTitleBar(self: *@This()) core.HResult!*ApplicationViewTitleBar {
        var _r: *ApplicationViewTitleBar = undefined;
        const _c = self.vtable.get_TitleBar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getFullScreenSystemOverlayMode(self: *@This()) core.HResult!FullScreenSystemOverlayMode {
        var _r: FullScreenSystemOverlayMode = undefined;
        const _c = self.vtable.get_FullScreenSystemOverlayMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putFullScreenSystemOverlayMode(self: *@This(), value: FullScreenSystemOverlayMode) core.HResult!void {
        const _c = self.vtable.put_FullScreenSystemOverlayMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsFullScreenMode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsFullScreenMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryEnterFullScreenMode(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryEnterFullScreenMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn ExitFullScreenMode(self: *@This()) core.HResult!void {
        const _c = self.vtable.ExitFullScreenMode(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ShowStandardSystemOverlays(self: *@This()) core.HResult!void {
        const _c = self.vtable.ShowStandardSystemOverlays(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryResizeView(self: *@This(), value: Size) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryResizeView(@ptrCast(self), value, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetPreferredMinSize(self: *@This(), minSize: Size) core.HResult!void {
        const _c = self.vtable.SetPreferredMinSize(@ptrCast(self), minSize);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationView3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "903c9ce5-793a-4fdf-a2b2-af1ac21e3108";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TitleBar: *const fn(self: *anyopaque, _r: **ApplicationViewTitleBar) callconv(.winapi) HRESULT,
        get_FullScreenSystemOverlayMode: *const fn(self: *anyopaque, _r: *FullScreenSystemOverlayMode) callconv(.winapi) HRESULT,
        put_FullScreenSystemOverlayMode: *const fn(self: *anyopaque, value: FullScreenSystemOverlayMode) callconv(.winapi) HRESULT,
        get_IsFullScreenMode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        TryEnterFullScreenMode: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        ExitFullScreenMode: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ShowStandardSystemOverlays: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        TryResizeView: *const fn(self: *anyopaque, value: Size, _r: *bool) callconv(.winapi) HRESULT,
        SetPreferredMinSize: *const fn(self: *anyopaque, minSize: Size) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationView4 = extern struct {
    vtable: *const VTable,
    pub fn getViewMode(self: *@This()) core.HResult!ApplicationViewMode {
        var _r: ApplicationViewMode = undefined;
        const _c = self.vtable.get_ViewMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn IsViewModeSupported(self: *@This(), viewMode: ApplicationViewMode) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.IsViewModeSupported(@ptrCast(self), viewMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryEnterViewModeAsync(self: *@This(), viewMode: ApplicationViewMode) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryEnterViewModeAsync(@ptrCast(self), viewMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryEnterViewModeAsyncWithViewModePreferences(self: *@This(), viewMode: ApplicationViewMode, viewModePreferences: *ViewModePreferences) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryEnterViewModeAsyncWithViewModePreferences(@ptrCast(self), viewMode, viewModePreferences, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryConsolidateAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryConsolidateAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationView4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "15e5cbec-9e0f-46b5-bc3f-9bf653e74b5e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ViewMode: *const fn(self: *anyopaque, _r: *ApplicationViewMode) callconv(.winapi) HRESULT,
        IsViewModeSupported: *const fn(self: *anyopaque, viewMode: ApplicationViewMode, _r: *bool) callconv(.winapi) HRESULT,
        TryEnterViewModeAsync: *const fn(self: *anyopaque, viewMode: ApplicationViewMode, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryEnterViewModeAsyncWithViewModePreferences: *const fn(self: *anyopaque, viewMode: ApplicationViewMode, viewModePreferences: *ViewModePreferences, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryConsolidateAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationView7 = extern struct {
    vtable: *const VTable,
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
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationView7";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a0369647-5faf-5aa6-9c38-befbb12a071e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PersistedStateId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_PersistedStateId: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationView9 = extern struct {
    vtable: *const VTable,
    pub fn getWindowingEnvironment(self: *@This()) core.HResult!*WindowingEnvironment {
        var _r: *WindowingEnvironment = undefined;
        const _c = self.vtable.get_WindowingEnvironment(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDisplayRegions(self: *@This()) core.HResult!*IVectorView(DisplayRegion) {
        var _r: *IVectorView(DisplayRegion) = undefined;
        const _c = self.vtable.GetDisplayRegions(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationView9";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9c6516f9-021a-5f01-93e5-9bdad2647574";
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
        GetDisplayRegions: *const fn(self: *anyopaque, _r: **IVectorView(DisplayRegion)) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewConsolidatedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getIsUserInitiated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsUserInitiated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewConsolidatedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "514449ec-7ea2-4de7-a6a6-7dfbaaebb6fb";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsUserInitiated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewConsolidatedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getIsAppInitiated(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsAppInitiated(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewConsolidatedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1c199ecc-6dc1-40f4-afee-07d9ea296430";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsAppInitiated: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewFullscreenStatics = extern struct {
    vtable: *const VTable,
    pub fn TryUnsnapToFullscreen(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryUnsnapToFullscreen(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewFullscreenStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bc792ebd-64fe-4b65-a0c0-901ce2b68636";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryUnsnapToFullscreen: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewInteropStatics = extern struct {
    vtable: *const VTable,
    pub fn GetApplicationViewIdForWindow(self: *@This(), window: *ICoreWindow) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.GetApplicationViewIdForWindow(@ptrCast(self), window, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewInteropStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c446fb5d-4793-4896-a8e2-be57a8bb0f50";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetApplicationViewIdForWindow: *const fn(self: *anyopaque, window: *ICoreWindow, _r: *i32) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewStatics = extern struct {
    vtable: *const VTable,
    pub fn getValue(self: *@This()) core.HResult!ApplicationViewState {
        var _r: ApplicationViewState = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryUnsnap(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryUnsnap(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "010a6306-c433-44e5-a9f2-bd84d4030a95";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *ApplicationViewState) callconv(.winapi) HRESULT,
        TryUnsnap: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*ApplicationView {
        var _r: *ApplicationView = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTerminateAppOnFinalViewClose(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_TerminateAppOnFinalViewClose(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putTerminateAppOnFinalViewClose(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_TerminateAppOnFinalViewClose(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "af338ae5-cf64-423c-85e5-f3e72448fb23";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **ApplicationView) callconv(.winapi) HRESULT,
        get_TerminateAppOnFinalViewClose: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_TerminateAppOnFinalViewClose: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewStatics3 = extern struct {
    vtable: *const VTable,
    pub fn getPreferredLaunchWindowingMode(self: *@This()) core.HResult!ApplicationViewWindowingMode {
        var _r: ApplicationViewWindowingMode = undefined;
        const _c = self.vtable.get_PreferredLaunchWindowingMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferredLaunchWindowingMode(self: *@This(), value: ApplicationViewWindowingMode) core.HResult!void {
        const _c = self.vtable.put_PreferredLaunchWindowingMode(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getPreferredLaunchViewSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_PreferredLaunchViewSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putPreferredLaunchViewSize(self: *@This(), value: Size) core.HResult!void {
        const _c = self.vtable.put_PreferredLaunchViewSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a28d7594-8c41-4e13-9719-5164796fe4c7";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PreferredLaunchWindowingMode: *const fn(self: *anyopaque, _r: *ApplicationViewWindowingMode) callconv(.winapi) HRESULT,
        put_PreferredLaunchWindowingMode: *const fn(self: *anyopaque, value: ApplicationViewWindowingMode) callconv(.winapi) HRESULT,
        get_PreferredLaunchViewSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        put_PreferredLaunchViewSize: *const fn(self: *anyopaque, value: Size) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewStatics4 = extern struct {
    vtable: *const VTable,
    pub fn ClearAllPersistedState(self: *@This()) core.HResult!void {
        const _c = self.vtable.ClearAllPersistedState(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn ClearPersistedState(self: *@This(), key: HSTRING) core.HResult!void {
        const _c = self.vtable.ClearPersistedState(@ptrCast(self), key);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewStatics4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08fd8d33-2611-5336-a315-d98e6366c9db";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ClearAllPersistedState: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        ClearPersistedState: *const fn(self: *anyopaque, key: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewSwitcherStatics = extern struct {
    vtable: *const VTable,
    pub fn DisableShowingMainViewOnActivation(self: *@This()) core.HResult!void {
        const _c = self.vtable.DisableShowingMainViewOnActivation(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn TryShowAsStandaloneAsync(self: *@This(), viewId: i32) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryShowAsStandaloneAsync(@ptrCast(self), viewId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryShowAsStandaloneAsyncWithSizePreference(self: *@This(), viewId: i32, sizePreference: ViewSizePreference) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryShowAsStandaloneAsyncWithSizePreference(@ptrCast(self), viewId, sizePreference, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryShowAsStandaloneAsyncWithSizePreferenceAndAnchorViewIdAndAnchorSizePreference(self: *@This(), viewId: i32, sizePreference: ViewSizePreference, anchorViewId: i32, anchorSizePreference: ViewSizePreference) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryShowAsStandaloneAsyncWithSizePreferenceAndAnchorViewIdAndAnchorSizePreference(@ptrCast(self), viewId, sizePreference, anchorViewId, anchorSizePreference, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SwitchAsync(self: *@This(), viewId: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SwitchAsync(@ptrCast(self), viewId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SwitchAsyncWithFromViewId(self: *@This(), toViewId: i32, fromViewId: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SwitchAsyncWithFromViewId(@ptrCast(self), toViewId, fromViewId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SwitchAsyncWithFromViewIdAndOptions(self: *@This(), toViewId: i32, fromViewId: i32, options: ApplicationViewSwitchingOptions) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SwitchAsyncWithFromViewIdAndOptions(@ptrCast(self), toViewId, fromViewId, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn PrepareForCustomAnimatedSwitchAsync(self: *@This(), toViewId: i32, fromViewId: i32, options: ApplicationViewSwitchingOptions) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.PrepareForCustomAnimatedSwitchAsync(@ptrCast(self), toViewId, fromViewId, options, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewSwitcherStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "975f2f1e-e656-4c5e-a0a1-717c6ffa7d64";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DisableShowingMainViewOnActivation: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        TryShowAsStandaloneAsync: *const fn(self: *anyopaque, viewId: i32, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryShowAsStandaloneAsyncWithSizePreference: *const fn(self: *anyopaque, viewId: i32, sizePreference: ViewSizePreference, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryShowAsStandaloneAsyncWithSizePreferenceAndAnchorViewIdAndAnchorSizePreference: *const fn(self: *anyopaque, viewId: i32, sizePreference: ViewSizePreference, anchorViewId: i32, anchorSizePreference: ViewSizePreference, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        SwitchAsync: *const fn(self: *anyopaque, viewId: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SwitchAsyncWithFromViewId: *const fn(self: *anyopaque, toViewId: i32, fromViewId: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SwitchAsyncWithFromViewIdAndOptions: *const fn(self: *anyopaque, toViewId: i32, fromViewId: i32, options: ApplicationViewSwitchingOptions, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        PrepareForCustomAnimatedSwitchAsync: *const fn(self: *anyopaque, toViewId: i32, fromViewId: i32, options: ApplicationViewSwitchingOptions, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewSwitcherStatics2 = extern struct {
    vtable: *const VTable,
    pub fn DisableSystemViewActivationPolicy(self: *@This()) core.HResult!void {
        const _c = self.vtable.DisableSystemViewActivationPolicy(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewSwitcherStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "60e995cd-4fc2-48c4-b8e3-395f2b9f0fc1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        DisableSystemViewActivationPolicy: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewSwitcherStatics3 = extern struct {
    vtable: *const VTable,
    pub fn TryShowAsViewModeAsync(self: *@This(), viewId: i32, viewMode: ApplicationViewMode) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryShowAsViewModeAsync(@ptrCast(self), viewId, viewMode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryShowAsViewModeAsyncWithViewModePreferences(self: *@This(), viewId: i32, viewMode: ApplicationViewMode, viewModePreferences: *ViewModePreferences) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.TryShowAsViewModeAsyncWithViewModePreferences(@ptrCast(self), viewId, viewMode, viewModePreferences, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewSwitcherStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "92059420-80a7-486d-b21f-c7a4a242a383";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryShowAsViewModeAsync: *const fn(self: *anyopaque, viewId: i32, viewMode: ApplicationViewMode, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        TryShowAsViewModeAsyncWithViewModePreferences: *const fn(self: *anyopaque, viewId: i32, viewMode: ApplicationViewMode, viewModePreferences: *ViewModePreferences, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewTitleBar = extern struct {
    vtable: *const VTable,
    pub fn putForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_BackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_BackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonBackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonHoverForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonHoverForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonHoverForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonHoverForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonHoverBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonHoverBackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonHoverBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonHoverBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonPressedForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonPressedForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonPressedForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonPressedForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonPressedBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonPressedBackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonPressedBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonPressedBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInactiveForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_InactiveForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInactiveForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_InactiveForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putInactiveBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_InactiveBackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getInactiveBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_InactiveBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonInactiveForegroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonInactiveForegroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonInactiveForegroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonInactiveForegroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putButtonInactiveBackgroundColor(self: *@This(), value: *IReference(Color)) core.HResult!void {
        const _c = self.vtable.put_ButtonInactiveBackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getButtonInactiveBackgroundColor(self: *@This()) core.HResult!*IReference(Color) {
        var _r: *IReference(Color) = undefined;
        const _c = self.vtable.get_ButtonInactiveBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewTitleBar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "00924ac0-932b-4a6b-9c4b-dc38c82478ce";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ForegroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ForegroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_BackgroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_BackgroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonForegroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonForegroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonBackgroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonBackgroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonHoverForegroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonHoverForegroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonHoverBackgroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonHoverBackgroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonPressedForegroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonPressedForegroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonPressedBackgroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonPressedBackgroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_InactiveForegroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_InactiveForegroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_InactiveBackgroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_InactiveBackgroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonInactiveForegroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonInactiveForegroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
        put_ButtonInactiveBackgroundColor: *const fn(self: *anyopaque, value: *IReference(Color)) callconv(.winapi) HRESULT,
        get_ButtonInactiveBackgroundColor: *const fn(self: *anyopaque, _r: **IReference(Color)) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewTransferContext = extern struct {
    vtable: *const VTable,
    pub fn getViewId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ViewId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putViewId(self: *@This(), value: i32) core.HResult!void {
        const _c = self.vtable.put_ViewId(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewTransferContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8574bc63-3c17-408e-9408-8a1a9ea81bfa";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ViewId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        put_ViewId: *const fn(self: *anyopaque, value: i32) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewTransferContextStatics = extern struct {
    vtable: *const VTable,
    pub fn getDataPackageFormatId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DataPackageFormatId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewTransferContextStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "15a89d92-dd79-4b0b-bc47-d5f195f14661";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DataPackageFormatId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IApplicationViewWithContext = extern struct {
    vtable: *const VTable,
    pub fn getUIContext(self: *@This()) core.HResult!*UIContext {
        var _r: *UIContext = undefined;
        const _c = self.vtable.get_UIContext(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IApplicationViewWithContext";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bd55d512-9dc1-44fc-8501-666625df60dc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UIContext: *const fn(self: *anyopaque, _r: **UIContext) callconv(.winapi) HRESULT,
    };
};
pub const IInputPane = extern struct {
    vtable: *const VTable,
    pub fn addShowing(self: *@This(), handler: *TypedEventHandler(InputPane,InputPaneVisibilityEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Showing(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeShowing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Showing(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addHiding(self: *@This(), handler: *TypedEventHandler(InputPane,InputPaneVisibilityEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Hiding(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHiding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Hiding(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getOccludedRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_OccludedRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IInputPane";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "640ada70-06f3-4c87-a678-9829c9127c28";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_Showing: *const fn(self: *anyopaque, handler: *TypedEventHandler(InputPane,InputPaneVisibilityEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Showing: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Hiding: *const fn(self: *anyopaque, handler: *TypedEventHandler(InputPane,InputPaneVisibilityEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Hiding: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_OccludedRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const IInputPane2 = extern struct {
    vtable: *const VTable,
    pub fn TryShow(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryShow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn TryHide(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.TryHide(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IInputPane2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8a6b3f26-7090-4793-944c-c3f2cde26276";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        TryShow: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        TryHide: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IInputPaneControl = extern struct {
    vtable: *const VTable,
    pub fn getVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Visible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putVisible(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_Visible(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IInputPaneControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "088bb24f-962f-489d-aa6e-c6be1a0a6e52";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Visible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Visible: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IInputPaneStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*InputPane {
        var _r: *InputPane = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IInputPaneStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "95f4af3a-ef47-424a-9741-fd2815eba2bd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **InputPane) callconv(.winapi) HRESULT,
    };
};
pub const IInputPaneStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetForUIContext(self: *@This(), context: *UIContext) core.HResult!*InputPane {
        var _r: *InputPane = undefined;
        const _c = self.vtable.GetForUIContext(@ptrCast(self), context, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IInputPaneStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1b63529b-d9ec-4531-8445-71bab9fb828e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForUIContext: *const fn(self: *anyopaque, context: *UIContext, _r: **InputPane) callconv(.winapi) HRESULT,
    };
};
pub const IInputPaneVisibilityEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getOccludedRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_OccludedRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putEnsuredFocusedElementInView(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_EnsuredFocusedElementInView(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getEnsuredFocusedElementInView(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_EnsuredFocusedElementInView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IInputPaneVisibilityEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d243e016-d907-4fcc-bb8d-f77baa5028f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_OccludedRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        put_EnsuredFocusedElementInView: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_EnsuredFocusedElementInView: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IProjectionManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn StartProjectingAsync(self: *@This(), projectionViewId: i32, anchorViewId: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartProjectingAsync(@ptrCast(self), projectionViewId, anchorViewId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SwapDisplaysForViewsAsync(self: *@This(), projectionViewId: i32, anchorViewId: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.SwapDisplaysForViewsAsync(@ptrCast(self), projectionViewId, anchorViewId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn StopProjectingAsync(self: *@This(), projectionViewId: i32, anchorViewId: i32) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StopProjectingAsync(@ptrCast(self), projectionViewId, anchorViewId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getProjectionDisplayAvailable(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ProjectionDisplayAvailable(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addProjectionDisplayAvailableChanged(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ProjectionDisplayAvailableChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeProjectionDisplayAvailableChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ProjectionDisplayAvailableChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IProjectionManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b65f913d-e2f0-4ffd-ba95-34241647e45c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartProjectingAsync: *const fn(self: *anyopaque, projectionViewId: i32, anchorViewId: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        SwapDisplaysForViewsAsync: *const fn(self: *anyopaque, projectionViewId: i32, anchorViewId: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        StopProjectingAsync: *const fn(self: *anyopaque, projectionViewId: i32, anchorViewId: i32, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        get_ProjectionDisplayAvailable: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_ProjectionDisplayAvailableChanged: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ProjectionDisplayAvailableChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IProjectionManagerStatics2 = extern struct {
    vtable: *const VTable,
    pub fn StartProjectingAsync(self: *@This(), projectionViewId: i32, anchorViewId: i32, displayDeviceInfo: *DeviceInformation) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.StartProjectingAsync(@ptrCast(self), projectionViewId, anchorViewId, displayDeviceInfo, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestStartProjectingAsync(self: *@This(), projectionViewId: i32, anchorViewId: i32, selection: Rect) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestStartProjectingAsync(@ptrCast(self), projectionViewId, anchorViewId, selection, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestStartProjectingAsyncWithPrefferedPlacement(self: *@This(), projectionViewId: i32, anchorViewId: i32, selection: Rect, prefferedPlacement: Placement) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.RequestStartProjectingAsyncWithPrefferedPlacement(@ptrCast(self), projectionViewId, anchorViewId, selection, prefferedPlacement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeviceSelector(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetDeviceSelector(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IProjectionManagerStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f33d2f43-2749-4cde-b977-c0c41e7415d1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        StartProjectingAsync: *const fn(self: *anyopaque, projectionViewId: i32, anchorViewId: i32, displayDeviceInfo: *DeviceInformation, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        RequestStartProjectingAsync: *const fn(self: *anyopaque, projectionViewId: i32, anchorViewId: i32, selection: Rect, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        RequestStartProjectingAsyncWithPrefferedPlacement: *const fn(self: *anyopaque, projectionViewId: i32, anchorViewId: i32, selection: Rect, prefferedPlacement: Placement, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
        GetDeviceSelector: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IUISettings = extern struct {
    vtable: *const VTable,
    pub fn getHandPreference(self: *@This()) core.HResult!HandPreference {
        var _r: HandPreference = undefined;
        const _c = self.vtable.get_HandPreference(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCursorSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_CursorSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScrollBarSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_ScrollBarSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScrollBarArrowSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_ScrollBarArrowSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getScrollBarThumbBoxSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_ScrollBarThumbBoxSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMessageDuration(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MessageDuration(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAnimationsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AnimationsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCaretBrowsingEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CaretBrowsingEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCaretBlinkRate(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CaretBlinkRate(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCaretWidth(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_CaretWidth(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDoubleClickTime(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_DoubleClickTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMouseHoverTime(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_MouseHoverTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UIElementColor(self: *@This(), desiredElement: UIElementType) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.UIElementColor(@ptrCast(self), desiredElement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IUISettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "85361600-1c63-4627-bcb1-3a89e0bc9c55";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_HandPreference: *const fn(self: *anyopaque, _r: *HandPreference) callconv(.winapi) HRESULT,
        get_CursorSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_ScrollBarSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_ScrollBarArrowSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_ScrollBarThumbBoxSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        get_MessageDuration: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_AnimationsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CaretBrowsingEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CaretBlinkRate: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_CaretWidth: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_DoubleClickTime: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_MouseHoverTime: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        UIElementColor: *const fn(self: *anyopaque, desiredElement: UIElementType, _r: *Color) callconv(.winapi) HRESULT,
    };
};
pub const IUISettings2 = extern struct {
    vtable: *const VTable,
    pub fn getTextScaleFactor(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_TextScaleFactor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addTextScaleFactorChanged(self: *@This(), handler: *TypedEventHandler(UISettings,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TextScaleFactorChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTextScaleFactorChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TextScaleFactorChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IUISettings2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "bad82401-2721-44f9-bb91-2bb228be442f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_TextScaleFactor: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        add_TextScaleFactorChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(UISettings,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TextScaleFactorChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUISettings3 = extern struct {
    vtable: *const VTable,
    pub fn GetColorValue(self: *@This(), desiredColor: UIColorType) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.GetColorValue(@ptrCast(self), desiredColor, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addColorValuesChanged(self: *@This(), handler: *TypedEventHandler(UISettings,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ColorValuesChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeColorValuesChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ColorValuesChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IUISettings3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "03021be4-5254-4781-8194-5168f7d06d7b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetColorValue: *const fn(self: *anyopaque, desiredColor: UIColorType, _r: *Color) callconv(.winapi) HRESULT,
        add_ColorValuesChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(UISettings,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ColorValuesChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUISettings4 = extern struct {
    vtable: *const VTable,
    pub fn getAdvancedEffectsEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AdvancedEffectsEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAdvancedEffectsEnabledChanged(self: *@This(), handler: *TypedEventHandler(UISettings,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AdvancedEffectsEnabledChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAdvancedEffectsEnabledChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AdvancedEffectsEnabledChanged(@ptrCast(self), cookie);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IUISettings4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "52bb3002-919b-4d6b-9b78-8dd66ff4b93b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AdvancedEffectsEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_AdvancedEffectsEnabledChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(UISettings,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AdvancedEffectsEnabledChanged: *const fn(self: *anyopaque, cookie: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUISettings5 = extern struct {
    vtable: *const VTable,
    pub fn getAutoHideScrollBars(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_AutoHideScrollBars(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addAutoHideScrollBarsChanged(self: *@This(), handler: *TypedEventHandler(UISettings,UISettingsAutoHideScrollBarsChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AutoHideScrollBarsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAutoHideScrollBarsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AutoHideScrollBarsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IUISettings5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5349d588-0cb5-5f05-bd34-706b3231f0bd";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AutoHideScrollBars: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_AutoHideScrollBarsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(UISettings,UISettingsAutoHideScrollBarsChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AutoHideScrollBarsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUISettings6 = extern struct {
    vtable: *const VTable,
    pub fn addAnimationsEnabledChanged(self: *@This(), handler: *TypedEventHandler(UISettings,UISettingsAnimationsEnabledChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_AnimationsEnabledChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeAnimationsEnabledChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_AnimationsEnabledChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addMessageDurationChanged(self: *@This(), handler: *TypedEventHandler(UISettings,UISettingsMessageDurationChangedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_MessageDurationChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeMessageDurationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_MessageDurationChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IUISettings6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aef19bd7-fe31-5a04-ada4-469aaec6dfa9";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_AnimationsEnabledChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(UISettings,UISettingsAnimationsEnabledChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_AnimationsEnabledChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_MessageDurationChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(UISettings,UISettingsMessageDurationChangedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_MessageDurationChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUISettingsAnimationsEnabledChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IUISettingsAnimationsEnabledChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c7b4b3d-2ea1-533e-894d-415bc5243c29";
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
pub const IUISettingsAutoHideScrollBarsChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IUISettingsAutoHideScrollBarsChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "87afd4b2-9146-5f02-8f6b-06d454174c0f";
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
pub const IUISettingsMessageDurationChangedEventArgs = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IUISettingsMessageDurationChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "338aad52-4a5d-5b59-8002-d930f608fd6e";
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
pub const IUIViewSettings = extern struct {
    vtable: *const VTable,
    pub fn getUserInteractionMode(self: *@This()) core.HResult!UserInteractionMode {
        var _r: UserInteractionMode = undefined;
        const _c = self.vtable.get_UserInteractionMode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IUIViewSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c63657f6-8850-470d-88f8-455e16ea2c26";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UserInteractionMode: *const fn(self: *anyopaque, _r: *UserInteractionMode) callconv(.winapi) HRESULT,
    };
};
pub const IUIViewSettingsPreferredInteractionMode = extern struct {
    vtable: *const VTable,
    pub fn GetPreferredInteractionMode(self: *@This(), supportedModes: [*]UserInteractionMode) core.HResult!UserInteractionMode {
        var _r: UserInteractionMode = undefined;
        const _c = self.vtable.GetPreferredInteractionMode(@ptrCast(self), supportedModes, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addPreferredInteractionModeChanged(self: *@This(), handler: *TypedEventHandler(UIViewSettings,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PreferredInteractionModeChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePreferredInteractionModeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PreferredInteractionModeChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IUIViewSettingsPreferredInteractionMode";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "426de261-82ec-5f61-bad4-19b2d0d3cf35";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetPreferredInteractionMode: *const fn(self: *anyopaque, supportedModes: [*]UserInteractionMode, _r: *UserInteractionMode) callconv(.winapi) HRESULT,
        add_PreferredInteractionModeChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(UIViewSettings,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PreferredInteractionModeChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IUIViewSettingsStatics = extern struct {
    vtable: *const VTable,
    pub fn GetForCurrentView(self: *@This()) core.HResult!*UIViewSettings {
        var _r: *UIViewSettings = undefined;
        const _c = self.vtable.GetForCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IUIViewSettingsStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "595c97a5-f8f6-41cf-b0fb-aacdb81fd5f6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetForCurrentView: *const fn(self: *anyopaque, _r: **UIViewSettings) callconv(.winapi) HRESULT,
    };
};
pub const IViewModePreferences = extern struct {
    vtable: *const VTable,
    pub fn getViewSizePreference(self: *@This()) core.HResult!ViewSizePreference {
        var _r: ViewSizePreference = undefined;
        const _c = self.vtable.get_ViewSizePreference(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putViewSizePreference(self: *@This(), value: ViewSizePreference) core.HResult!void {
        const _c = self.vtable.put_ViewSizePreference(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getCustomSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_CustomSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCustomSize(self: *@This(), value: Size) core.HResult!void {
        const _c = self.vtable.put_CustomSize(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IViewModePreferences";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "878fcd3a-0b99-42c9-84d0-d3f1d403554b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ViewSizePreference: *const fn(self: *anyopaque, _r: *ViewSizePreference) callconv(.winapi) HRESULT,
        put_ViewSizePreference: *const fn(self: *anyopaque, value: ViewSizePreference) callconv(.winapi) HRESULT,
        get_CustomSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        put_CustomSize: *const fn(self: *anyopaque, value: Size) callconv(.winapi) HRESULT,
    };
};
pub const IViewModePreferencesStatics = extern struct {
    vtable: *const VTable,
    pub fn CreateDefault(self: *@This(), mode: ApplicationViewMode) core.HResult!*ViewModePreferences {
        var _r: *ViewModePreferences = undefined;
        const _c = self.vtable.CreateDefault(@ptrCast(self), mode, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.IViewModePreferencesStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "69b60a65-5de5-40d8-8306-3833df7a2274";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateDefault: *const fn(self: *anyopaque, mode: ApplicationViewMode, _r: **ViewModePreferences) callconv(.winapi) HRESULT,
    };
};
pub const InputPane = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn addShowing(self: *@This(), handler: *TypedEventHandler(InputPane,InputPaneVisibilityEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInputPane = @ptrCast(self);
        return try this.addShowing(handler);
    }
    pub fn removeShowing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IInputPane = @ptrCast(self);
        return try this.removeShowing(token);
    }
    pub fn addHiding(self: *@This(), handler: *TypedEventHandler(InputPane,InputPaneVisibilityEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IInputPane = @ptrCast(self);
        return try this.addHiding(handler);
    }
    pub fn removeHiding(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IInputPane = @ptrCast(self);
        return try this.removeHiding(token);
    }
    pub fn getOccludedRect(self: *@This()) core.HResult!Rect {
        const this: *IInputPane = @ptrCast(self);
        return try this.getOccludedRect();
    }
    pub fn TryShow(self: *@This()) core.HResult!bool {
        var this: ?*IInputPane2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputPane2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryShow();
    }
    pub fn TryHide(self: *@This()) core.HResult!bool {
        var this: ?*IInputPane2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputPane2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.TryHide();
    }
    pub fn getVisible(self: *@This()) core.HResult!bool {
        var this: ?*IInputPaneControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputPaneControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getVisible();
    }
    pub fn putVisible(self: *@This(), value: bool) core.HResult!void {
        var this: ?*IInputPaneControl = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IInputPaneControl.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putVisible(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForUIContext(context: *UIContext) core.HResult!*InputPane {
        const _f = @This().IInputPaneStatics2Cache.get();
        return try _f.GetForUIContext(context);
    }
    pub fn GetForCurrentView() core.HResult!*InputPane {
        const _f = @This().IInputPaneStaticsCache.get();
        return try _f.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.InputPane";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInputPane.GUID;
    pub const IID: Guid = IInputPane.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInputPane.SIGNATURE);
    var _IInputPaneStatics2Cache: FactoryCache(IInputPaneStatics2, RUNTIME_NAME) = .{};
    var _IInputPaneStaticsCache: FactoryCache(IInputPaneStatics, RUNTIME_NAME) = .{};
};
pub const InputPaneVisibilityEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getOccludedRect(self: *@This()) core.HResult!Rect {
        const this: *IInputPaneVisibilityEventArgs = @ptrCast(self);
        return try this.getOccludedRect();
    }
    pub fn putEnsuredFocusedElementInView(self: *@This(), value: bool) core.HResult!void {
        const this: *IInputPaneVisibilityEventArgs = @ptrCast(self);
        return try this.putEnsuredFocusedElementInView(value);
    }
    pub fn getEnsuredFocusedElementInView(self: *@This()) core.HResult!bool {
        const this: *IInputPaneVisibilityEventArgs = @ptrCast(self);
        return try this.getEnsuredFocusedElementInView();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.InputPaneVisibilityEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IInputPaneVisibilityEventArgs.GUID;
    pub const IID: Guid = IInputPaneVisibilityEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IInputPaneVisibilityEventArgs.SIGNATURE);
};
pub const ProjectionManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn StartProjectingAsync(projectionViewId: i32, anchorViewId: i32) core.HResult!*IAsyncAction {
        const _f = @This().IProjectionManagerStaticsCache.get();
        return try _f.StartProjectingAsync(projectionViewId, anchorViewId);
    }
    pub fn SwapDisplaysForViewsAsync(projectionViewId: i32, anchorViewId: i32) core.HResult!*IAsyncAction {
        const _f = @This().IProjectionManagerStaticsCache.get();
        return try _f.SwapDisplaysForViewsAsync(projectionViewId, anchorViewId);
    }
    pub fn StopProjectingAsync(projectionViewId: i32, anchorViewId: i32) core.HResult!*IAsyncAction {
        const _f = @This().IProjectionManagerStaticsCache.get();
        return try _f.StopProjectingAsync(projectionViewId, anchorViewId);
    }
    pub fn getProjectionDisplayAvailable() core.HResult!bool {
        const _f = @This().IProjectionManagerStaticsCache.get();
        return try _f.getProjectionDisplayAvailable();
    }
    pub fn addProjectionDisplayAvailableChanged(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const _f = @This().IProjectionManagerStaticsCache.get();
        return try _f.addProjectionDisplayAvailableChanged(handler);
    }
    pub fn removeProjectionDisplayAvailableChanged(token: EventRegistrationToken) core.HResult!void {
        const _f = @This().IProjectionManagerStaticsCache.get();
        return try _f.removeProjectionDisplayAvailableChanged(token);
    }
    pub fn StartProjectingAsyncWithDisplayDeviceInfo(projectionViewId: i32, anchorViewId: i32, displayDeviceInfo: *DeviceInformation) core.HResult!*IAsyncAction {
        const _f = @This().IProjectionManagerStatics2Cache.get();
        return try _f.StartProjectingAsync(projectionViewId, anchorViewId, displayDeviceInfo);
    }
    pub fn RequestStartProjectingAsync(projectionViewId: i32, anchorViewId: i32, selection: Rect) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IProjectionManagerStatics2Cache.get();
        return try _f.RequestStartProjectingAsync(projectionViewId, anchorViewId, selection);
    }
    pub fn RequestStartProjectingAsyncWithPrefferedPlacement(projectionViewId: i32, anchorViewId: i32, selection: Rect, prefferedPlacement: Placement) core.HResult!*IAsyncOperation(bool) {
        const _f = @This().IProjectionManagerStatics2Cache.get();
        return try _f.RequestStartProjectingAsyncWithPrefferedPlacement(projectionViewId, anchorViewId, selection, prefferedPlacement);
    }
    pub fn GetDeviceSelector() core.HResult!HSTRING {
        const _f = @This().IProjectionManagerStatics2Cache.get();
        return try _f.GetDeviceSelector();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.ProjectionManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _IProjectionManagerStaticsCache: FactoryCache(IProjectionManagerStatics, RUNTIME_NAME) = .{};
    var _IProjectionManagerStatics2Cache: FactoryCache(IProjectionManagerStatics2, RUNTIME_NAME) = .{};
};
pub const ScreenCaptureDisabledBehavior = enum(i32) {
    DrawAsBlack = 0,
    ExcludeFromCapture = 1,
};
pub const UIColorType = enum(i32) {
    Background = 0,
    Foreground = 1,
    AccentDark3 = 2,
    AccentDark2 = 3,
    AccentDark1 = 4,
    Accent = 5,
    AccentLight1 = 6,
    AccentLight2 = 7,
    AccentLight3 = 8,
    Complement = 9,
};
pub const UIElementType = enum(i32) {
    ActiveCaption = 0,
    Background = 1,
    ButtonFace = 2,
    ButtonText = 3,
    CaptionText = 4,
    GrayText = 5,
    Highlight = 6,
    HighlightText = 7,
    Hotlight = 8,
    InactiveCaption = 9,
    InactiveCaptionText = 10,
    Window = 11,
    WindowText = 12,
    AccentColor = 1000,
    TextHigh = 1001,
    TextMedium = 1002,
    TextLow = 1003,
    TextContrastWithHigh = 1004,
    NonTextHigh = 1005,
    NonTextMediumHigh = 1006,
    NonTextMedium = 1007,
    NonTextMediumLow = 1008,
    NonTextLow = 1009,
    PageBackground = 1010,
    PopupBackground = 1011,
    OverlayOutsidePopup = 1012,
};
pub const UISettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandPreference(self: *@This()) core.HResult!HandPreference {
        const this: *IUISettings = @ptrCast(self);
        return try this.getHandPreference();
    }
    pub fn getCursorSize(self: *@This()) core.HResult!Size {
        const this: *IUISettings = @ptrCast(self);
        return try this.getCursorSize();
    }
    pub fn getScrollBarSize(self: *@This()) core.HResult!Size {
        const this: *IUISettings = @ptrCast(self);
        return try this.getScrollBarSize();
    }
    pub fn getScrollBarArrowSize(self: *@This()) core.HResult!Size {
        const this: *IUISettings = @ptrCast(self);
        return try this.getScrollBarArrowSize();
    }
    pub fn getScrollBarThumbBoxSize(self: *@This()) core.HResult!Size {
        const this: *IUISettings = @ptrCast(self);
        return try this.getScrollBarThumbBoxSize();
    }
    pub fn getMessageDuration(self: *@This()) core.HResult!u32 {
        const this: *IUISettings = @ptrCast(self);
        return try this.getMessageDuration();
    }
    pub fn getAnimationsEnabled(self: *@This()) core.HResult!bool {
        const this: *IUISettings = @ptrCast(self);
        return try this.getAnimationsEnabled();
    }
    pub fn getCaretBrowsingEnabled(self: *@This()) core.HResult!bool {
        const this: *IUISettings = @ptrCast(self);
        return try this.getCaretBrowsingEnabled();
    }
    pub fn getCaretBlinkRate(self: *@This()) core.HResult!u32 {
        const this: *IUISettings = @ptrCast(self);
        return try this.getCaretBlinkRate();
    }
    pub fn getCaretWidth(self: *@This()) core.HResult!u32 {
        const this: *IUISettings = @ptrCast(self);
        return try this.getCaretWidth();
    }
    pub fn getDoubleClickTime(self: *@This()) core.HResult!u32 {
        const this: *IUISettings = @ptrCast(self);
        return try this.getDoubleClickTime();
    }
    pub fn getMouseHoverTime(self: *@This()) core.HResult!u32 {
        const this: *IUISettings = @ptrCast(self);
        return try this.getMouseHoverTime();
    }
    pub fn UIElementColor(self: *@This(), desiredElement: UIElementType) core.HResult!Color {
        const this: *IUISettings = @ptrCast(self);
        return try this.UIElementColor(desiredElement);
    }
    pub fn getTextScaleFactor(self: *@This()) core.HResult!f64 {
        var this: ?*IUISettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTextScaleFactor();
    }
    pub fn addTextScaleFactorChanged(self: *@This(), handler: *TypedEventHandler(UISettings,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IUISettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addTextScaleFactorChanged(handler);
    }
    pub fn removeTextScaleFactorChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IUISettings2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeTextScaleFactorChanged(cookie);
    }
    pub fn GetColorValue(self: *@This(), desiredColor: UIColorType) core.HResult!Color {
        var this: ?*IUISettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetColorValue(desiredColor);
    }
    pub fn addColorValuesChanged(self: *@This(), handler: *TypedEventHandler(UISettings,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IUISettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addColorValuesChanged(handler);
    }
    pub fn removeColorValuesChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IUISettings3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeColorValuesChanged(cookie);
    }
    pub fn getAdvancedEffectsEnabled(self: *@This()) core.HResult!bool {
        var this: ?*IUISettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAdvancedEffectsEnabled();
    }
    pub fn addAdvancedEffectsEnabledChanged(self: *@This(), handler: *TypedEventHandler(UISettings,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IUISettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAdvancedEffectsEnabledChanged(handler);
    }
    pub fn removeAdvancedEffectsEnabledChanged(self: *@This(), cookie: EventRegistrationToken) core.HResult!void {
        var this: ?*IUISettings4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAdvancedEffectsEnabledChanged(cookie);
    }
    pub fn getAutoHideScrollBars(self: *@This()) core.HResult!bool {
        var this: ?*IUISettings5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAutoHideScrollBars();
    }
    pub fn addAutoHideScrollBarsChanged(self: *@This(), handler: *TypedEventHandler(UISettings,UISettingsAutoHideScrollBarsChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUISettings5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAutoHideScrollBarsChanged(handler);
    }
    pub fn removeAutoHideScrollBarsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUISettings5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAutoHideScrollBarsChanged(token);
    }
    pub fn addAnimationsEnabledChanged(self: *@This(), handler: *TypedEventHandler(UISettings,UISettingsAnimationsEnabledChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUISettings6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addAnimationsEnabledChanged(handler);
    }
    pub fn removeAnimationsEnabledChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUISettings6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeAnimationsEnabledChanged(token);
    }
    pub fn addMessageDurationChanged(self: *@This(), handler: *TypedEventHandler(UISettings,UISettingsMessageDurationChangedEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*IUISettings6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addMessageDurationChanged(handler);
    }
    pub fn removeMessageDurationChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUISettings6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUISettings6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeMessageDurationChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn init() core.HResult!*@This() {
        const _f = try @This()._IActivationFactoryCache.get();
        return @ptrCast(@alignCast(try _f.ActivateInstance(&IUISettings.IID)));
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.UISettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUISettings.GUID;
    pub const IID: Guid = IUISettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUISettings.SIGNATURE);
    var _IActivationFactoryCache: FactoryCache(IActivationFactory, RUNTIME_NAME) = .{};
};
pub const UISettingsAnimationsEnabledChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.UISettingsAnimationsEnabledChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUISettingsAnimationsEnabledChangedEventArgs.GUID;
    pub const IID: Guid = IUISettingsAnimationsEnabledChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUISettingsAnimationsEnabledChangedEventArgs.SIGNATURE);
};
pub const UISettingsAutoHideScrollBarsChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.UISettingsAutoHideScrollBarsChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUISettingsAutoHideScrollBarsChangedEventArgs.GUID;
    pub const IID: Guid = IUISettingsAutoHideScrollBarsChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUISettingsAutoHideScrollBarsChangedEventArgs.SIGNATURE);
};
pub const UISettingsMessageDurationChangedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.UISettingsMessageDurationChangedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUISettingsMessageDurationChangedEventArgs.GUID;
    pub const IID: Guid = IUISettingsMessageDurationChangedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUISettingsMessageDurationChangedEventArgs.SIGNATURE);
};
pub const UIViewSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUserInteractionMode(self: *@This()) core.HResult!UserInteractionMode {
        const this: *IUIViewSettings = @ptrCast(self);
        return try this.getUserInteractionMode();
    }
    pub fn GetPreferredInteractionMode(self: *@This(), supportedModes: [*]UserInteractionMode) core.HResult!UserInteractionMode {
        var this: ?*IUIViewSettingsPreferredInteractionMode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIViewSettingsPreferredInteractionMode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetPreferredInteractionMode(supportedModes);
    }
    pub fn addPreferredInteractionModeChanged(self: *@This(), handler: *TypedEventHandler(UIViewSettings,IInspectable)) core.HResult!EventRegistrationToken {
        var this: ?*IUIViewSettingsPreferredInteractionMode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIViewSettingsPreferredInteractionMode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addPreferredInteractionModeChanged(handler);
    }
    pub fn removePreferredInteractionModeChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*IUIViewSettingsPreferredInteractionMode = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IUIViewSettingsPreferredInteractionMode.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removePreferredInteractionModeChanged(token);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetForCurrentView() core.HResult!*UIViewSettings {
        const _f = @This().IUIViewSettingsStaticsCache.get();
        return try _f.GetForCurrentView();
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.UIViewSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUIViewSettings.GUID;
    pub const IID: Guid = IUIViewSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUIViewSettings.SIGNATURE);
    var _IUIViewSettingsStaticsCache: FactoryCache(IUIViewSettingsStatics, RUNTIME_NAME) = .{};
};
pub const UserInteractionMode = enum(i32) {
    Mouse = 0,
    Touch = 1,
};
pub const ViewModePreferences = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getViewSizePreference(self: *@This()) core.HResult!ViewSizePreference {
        const this: *IViewModePreferences = @ptrCast(self);
        return try this.getViewSizePreference();
    }
    pub fn putViewSizePreference(self: *@This(), value: ViewSizePreference) core.HResult!void {
        const this: *IViewModePreferences = @ptrCast(self);
        return try this.putViewSizePreference(value);
    }
    pub fn getCustomSize(self: *@This()) core.HResult!Size {
        const this: *IViewModePreferences = @ptrCast(self);
        return try this.getCustomSize();
    }
    pub fn putCustomSize(self: *@This(), value: Size) core.HResult!void {
        const this: *IViewModePreferences = @ptrCast(self);
        return try this.putCustomSize(value);
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateDefault(mode: ApplicationViewMode) core.HResult!*ViewModePreferences {
        const _f = @This().IViewModePreferencesStaticsCache.get();
        return try _f.CreateDefault(mode);
    }
    pub const NAME: []const u8 = "Windows.UI.ViewManagement.ViewModePreferences";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IViewModePreferences.GUID;
    pub const IID: Guid = IViewModePreferences.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IViewModePreferences.SIGNATURE);
    var _IViewModePreferencesStaticsCache: FactoryCache(IViewModePreferencesStatics, RUNTIME_NAME) = .{};
};
pub const ViewSizePreference = enum(i32) {
    Default = 0,
    UseLess = 1,
    UseHalf = 2,
    UseMore = 3,
    UseMinimum = 4,
    UseNone = 5,
    Custom = 6,
};
const IUnknown = @import("../root.zig").IUnknown;
const IActivationFactory = @import("../Foundation.zig").IActivationFactory;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const Size = @import("../Foundation.zig").Size;
const IReference = @import("../Foundation.zig").IReference;
const Placement = @import("./Popups.zig").Placement;
const FactoryCache = @import("../core.zig").FactoryCache;
const Rect = @import("../Foundation.zig").Rect;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const ICoreWindow = @import("./Core.zig").ICoreWindow;
const UIContext = @import("../UI.zig").UIContext;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const Color = @import("../UI.zig").Color;
const DeviceInformation = @import("../Devices/Enumeration.zig").DeviceInformation;
const DisplayRegion = @import("./WindowManagement.zig").DisplayRegion;
const EventHandler = @import("../Foundation.zig").EventHandler;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const WindowingEnvironment = @import("./WindowManagement.zig").WindowingEnvironment;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
pub const Core = @import("./ViewManagement/Core.zig");
