pub const AppListEntry = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getDisplayInfo(self: *@This()) core.HResult!*AppDisplayInfo {
        const this: *IAppListEntry = @ptrCast(self);
        return try this.getDisplayInfo();
    }
    pub fn LaunchAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        const this: *IAppListEntry = @ptrCast(self);
        return try this.LaunchAsync();
    }
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var this: ?*IAppListEntry2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppListEntry2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAppUserModelId();
    }
    pub fn LaunchForUserAsync(self: *@This(), user: *User) core.HResult!*IAsyncOperation(bool) {
        var this: ?*IAppListEntry3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppListEntry3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.LaunchForUserAsync(user);
    }
    pub fn getAppInfo(self: *@This()) core.HResult!*AppInfo {
        var this: ?*IAppListEntry4 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IAppListEntry4.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getAppInfo();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.AppListEntry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IAppListEntry.GUID;
    pub const IID: Guid = IAppListEntry.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IAppListEntry.SIGNATURE);
};
pub const AppRestartFailureReason = enum(i32) {
    RestartPending = 0,
    NotInForeground = 1,
    InvalidUser = 2,
    Other = 3,
};
pub const CoreApplication = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn addBackgroundActivated(handler: *EventHandler(BackgroundActivatedEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().ICoreApplication2Cache.get();
        return try factory.addBackgroundActivated(handler);
    }
    pub fn removeBackgroundActivated(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().ICoreApplication2Cache.get();
        return try factory.removeBackgroundActivated(token);
    }
    pub fn addLeavingBackground(handler: *EventHandler(LeavingBackgroundEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().ICoreApplication2Cache.get();
        return try factory.addLeavingBackground(handler);
    }
    pub fn removeLeavingBackground(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().ICoreApplication2Cache.get();
        return try factory.removeLeavingBackground(token);
    }
    pub fn addEnteredBackground(handler: *EventHandler(EnteredBackgroundEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().ICoreApplication2Cache.get();
        return try factory.addEnteredBackground(handler);
    }
    pub fn removeEnteredBackground(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().ICoreApplication2Cache.get();
        return try factory.removeEnteredBackground(token);
    }
    pub fn EnablePrelaunch(value: bool) core.HResult!void {
        const factory = @This().ICoreApplication2Cache.get();
        return try factory.EnablePrelaunch(value);
    }
    pub fn getId() core.HResult!HSTRING {
        const factory = @This().ICoreApplicationCache.get();
        return try factory.getId();
    }
    pub fn addSuspending(handler: *EventHandler(SuspendingEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().ICoreApplicationCache.get();
        return try factory.addSuspending(handler);
    }
    pub fn removeSuspending(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().ICoreApplicationCache.get();
        return try factory.removeSuspending(token);
    }
    pub fn addResuming(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().ICoreApplicationCache.get();
        return try factory.addResuming(handler);
    }
    pub fn removeResuming(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().ICoreApplicationCache.get();
        return try factory.removeResuming(token);
    }
    pub fn getProperties() core.HResult!*IPropertySet {
        const factory = @This().ICoreApplicationCache.get();
        return try factory.getProperties();
    }
    pub fn GetCurrentView() core.HResult!*CoreApplicationView {
        const factory = @This().ICoreApplicationCache.get();
        return try factory.GetCurrentView();
    }
    pub fn Run(viewSource: *IFrameworkViewSource) core.HResult!void {
        const factory = @This().ICoreApplicationCache.get();
        return try factory.Run(viewSource);
    }
    pub fn RunWithActivationFactories(activationFactoryCallback: *IGetActivationFactory) core.HResult!void {
        const factory = @This().ICoreApplicationCache.get();
        return try factory.RunWithActivationFactories(activationFactoryCallback);
    }
    pub fn CreateNewView() core.HResult!*CoreApplicationView {
        const factory = @This().ICoreImmersiveApplication2Cache.get();
        return try factory.CreateNewView();
    }
    pub fn addUnhandledErrorDetected(handler: *EventHandler(UnhandledErrorDetectedEventArgs)) core.HResult!EventRegistrationToken {
        const factory = @This().ICoreApplicationUnhandledErrorCache.get();
        return try factory.addUnhandledErrorDetected(handler);
    }
    pub fn removeUnhandledErrorDetected(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().ICoreApplicationUnhandledErrorCache.get();
        return try factory.removeUnhandledErrorDetected(token);
    }
    pub fn IncrementApplicationUseCount() core.HResult!void {
        const factory = @This().ICoreApplicationUseCountCache.get();
        return try factory.IncrementApplicationUseCount();
    }
    pub fn DecrementApplicationUseCount() core.HResult!void {
        const factory = @This().ICoreApplicationUseCountCache.get();
        return try factory.DecrementApplicationUseCount();
    }
    pub fn RequestRestartAsync(launchArguments: HSTRING) core.HResult!*IAsyncOperation(AppRestartFailureReason) {
        const factory = @This().ICoreApplication3Cache.get();
        return try factory.RequestRestartAsync(launchArguments);
    }
    pub fn RequestRestartForUserAsync(user: *User, launchArguments: HSTRING) core.HResult!*IAsyncOperation(AppRestartFailureReason) {
        const factory = @This().ICoreApplication3Cache.get();
        return try factory.RequestRestartForUserAsync(user, launchArguments);
    }
    pub fn CreateNewView(viewSource: *IFrameworkViewSource) core.HResult!*CoreApplicationView {
        const factory = @This().ICoreImmersiveApplication3Cache.get();
        return try factory.CreateNewView(viewSource);
    }
    pub fn getViews() core.HResult!*IVectorView(CoreApplicationView) {
        const factory = @This().ICoreImmersiveApplicationCache.get();
        return try factory.getViews();
    }
    pub fn CreateNewView(runtimeType: HSTRING, entryPoint: HSTRING) core.HResult!*CoreApplicationView {
        const factory = @This().ICoreImmersiveApplicationCache.get();
        return try factory.CreateNewView(runtimeType, entryPoint);
    }
    pub fn getMainView() core.HResult!*CoreApplicationView {
        const factory = @This().ICoreImmersiveApplicationCache.get();
        return try factory.getMainView();
    }
    pub fn Exit() core.HResult!void {
        const factory = @This().ICoreApplicationExitCache.get();
        return try factory.Exit();
    }
    pub fn addExiting(handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        const factory = @This().ICoreApplicationExitCache.get();
        return try factory.addExiting(handler);
    }
    pub fn removeExiting(token: EventRegistrationToken) core.HResult!void {
        const factory = @This().ICoreApplicationExitCache.get();
        return try factory.removeExiting(token);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.CoreApplication";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    var _ICoreApplication2Cache: FactoryCache(ICoreApplication2, RUNTIME_NAME) = .{};
    var _ICoreApplicationCache: FactoryCache(ICoreApplication, RUNTIME_NAME) = .{};
    var _ICoreImmersiveApplication2Cache: FactoryCache(ICoreImmersiveApplication2, RUNTIME_NAME) = .{};
    var _ICoreApplicationUnhandledErrorCache: FactoryCache(ICoreApplicationUnhandledError, RUNTIME_NAME) = .{};
    var _ICoreApplicationUseCountCache: FactoryCache(ICoreApplicationUseCount, RUNTIME_NAME) = .{};
    var _ICoreApplication3Cache: FactoryCache(ICoreApplication3, RUNTIME_NAME) = .{};
    var _ICoreImmersiveApplication3Cache: FactoryCache(ICoreImmersiveApplication3, RUNTIME_NAME) = .{};
    var _ICoreImmersiveApplicationCache: FactoryCache(ICoreImmersiveApplication, RUNTIME_NAME) = .{};
    var _ICoreApplicationExitCache: FactoryCache(ICoreApplicationExit, RUNTIME_NAME) = .{};
};
pub const CoreApplicationView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getCoreWindow(self: *@This()) core.HResult!*CoreWindow {
        const this: *ICoreApplicationView = @ptrCast(self);
        return try this.getCoreWindow();
    }
    pub fn addActivated(self: *@This(), handler: *TypedEventHandler(CoreApplicationView,IActivatedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *ICoreApplicationView = @ptrCast(self);
        return try this.addActivated(handler);
    }
    pub fn removeActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICoreApplicationView = @ptrCast(self);
        return try this.removeActivated(token);
    }
    pub fn getIsMain(self: *@This()) core.HResult!bool {
        const this: *ICoreApplicationView = @ptrCast(self);
        return try this.getIsMain();
    }
    pub fn getIsHosted(self: *@This()) core.HResult!bool {
        const this: *ICoreApplicationView = @ptrCast(self);
        return try this.getIsHosted();
    }
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        var this: ?*ICoreApplicationView2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreApplicationView2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDispatcher();
    }
    pub fn getIsComponent(self: *@This()) core.HResult!bool {
        var this: ?*ICoreApplicationView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreApplicationView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getIsComponent();
    }
    pub fn getTitleBar(self: *@This()) core.HResult!*CoreApplicationViewTitleBar {
        var this: ?*ICoreApplicationView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreApplicationView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getTitleBar();
    }
    pub fn addHostedViewClosing(self: *@This(), handler: *TypedEventHandler(CoreApplicationView,HostedViewClosingEventArgs)) core.HResult!EventRegistrationToken {
        var this: ?*ICoreApplicationView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreApplicationView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.addHostedViewClosing(handler);
    }
    pub fn removeHostedViewClosing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        var this: ?*ICoreApplicationView3 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreApplicationView3.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.removeHostedViewClosing(token);
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var this: ?*ICoreApplicationView5 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreApplicationView5.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getProperties();
    }
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var this: ?*ICoreApplicationView6 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &ICoreApplicationView6.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getDispatcherQueue();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.CoreApplicationView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreApplicationView.GUID;
    pub const IID: Guid = ICoreApplicationView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreApplicationView.SIGNATURE);
};
pub const CoreApplicationViewTitleBar = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putExtendViewIntoTitleBar(self: *@This(), value: bool) core.HResult!void {
        const this: *ICoreApplicationViewTitleBar = @ptrCast(self);
        return try this.putExtendViewIntoTitleBar(value);
    }
    pub fn getExtendViewIntoTitleBar(self: *@This()) core.HResult!bool {
        const this: *ICoreApplicationViewTitleBar = @ptrCast(self);
        return try this.getExtendViewIntoTitleBar();
    }
    pub fn getSystemOverlayLeftInset(self: *@This()) core.HResult!f64 {
        const this: *ICoreApplicationViewTitleBar = @ptrCast(self);
        return try this.getSystemOverlayLeftInset();
    }
    pub fn getSystemOverlayRightInset(self: *@This()) core.HResult!f64 {
        const this: *ICoreApplicationViewTitleBar = @ptrCast(self);
        return try this.getSystemOverlayRightInset();
    }
    pub fn getHeight(self: *@This()) core.HResult!f64 {
        const this: *ICoreApplicationViewTitleBar = @ptrCast(self);
        return try this.getHeight();
    }
    pub fn addLayoutMetricsChanged(self: *@This(), handler: *TypedEventHandler(CoreApplicationViewTitleBar,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ICoreApplicationViewTitleBar = @ptrCast(self);
        return try this.addLayoutMetricsChanged(handler);
    }
    pub fn removeLayoutMetricsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICoreApplicationViewTitleBar = @ptrCast(self);
        return try this.removeLayoutMetricsChanged(token);
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        const this: *ICoreApplicationViewTitleBar = @ptrCast(self);
        return try this.getIsVisible();
    }
    pub fn addIsVisibleChanged(self: *@This(), handler: *TypedEventHandler(CoreApplicationViewTitleBar,IInspectable)) core.HResult!EventRegistrationToken {
        const this: *ICoreApplicationViewTitleBar = @ptrCast(self);
        return try this.addIsVisibleChanged(handler);
    }
    pub fn removeIsVisibleChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *ICoreApplicationViewTitleBar = @ptrCast(self);
        return try this.removeIsVisibleChanged(token);
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.CoreApplicationViewTitleBar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = ICoreApplicationViewTitleBar.GUID;
    pub const IID: Guid = ICoreApplicationViewTitleBar.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, ICoreApplicationViewTitleBar.SIGNATURE);
};
pub const HostedViewClosingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IHostedViewClosingEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.HostedViewClosingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IHostedViewClosingEventArgs.GUID;
    pub const IID: Guid = IHostedViewClosingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IHostedViewClosingEventArgs.SIGNATURE);
};
pub const IAppListEntry = extern struct {
    vtable: *const VTable,
    pub fn getDisplayInfo(self: *@This()) core.HResult!*AppDisplayInfo {
        var _r: *AppDisplayInfo = undefined;
        const _c = self.vtable.get_DisplayInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LaunchAsync(self: *@This()) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.IAppListEntry";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "ef00f07f-2108-490a-877a-8a9f17c25fad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_DisplayInfo: *const fn(self: *anyopaque, _r: **AppDisplayInfo) callconv(.winapi) HRESULT,
        LaunchAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IAppListEntry2 = extern struct {
    vtable: *const VTable,
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppUserModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.IAppListEntry2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d0a618ad-bf35-42ac-ac06-86eeeb41d04b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppUserModelId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IAppListEntry3 = extern struct {
    vtable: *const VTable,
    pub fn LaunchForUserAsync(self: *@This(), user: *User) core.HResult!*IAsyncOperation(bool) {
        var _r: *IAsyncOperation(bool) = undefined;
        const _c = self.vtable.LaunchForUserAsync(@ptrCast(self), user, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.IAppListEntry3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "6099f28d-fc32-470a-bc69-4b061a76ef2e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        LaunchForUserAsync: *const fn(self: *anyopaque, user: *User, _r: **IAsyncOperation(bool)) callconv(.winapi) HRESULT,
    };
};
pub const IAppListEntry4 = extern struct {
    vtable: *const VTable,
    pub fn getAppInfo(self: *@This()) core.HResult!*AppInfo {
        var _r: *AppInfo = undefined;
        const _c = self.vtable.get_AppInfo(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.IAppListEntry4";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a131ed2-56f5-487c-8697-5166f3b33da0";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_AppInfo: *const fn(self: *anyopaque, _r: **AppInfo) callconv(.winapi) HRESULT,
    };
};
pub const ICoreApplication = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addSuspending(self: *@This(), handler: *EventHandler(SuspendingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Suspending(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeSuspending(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Suspending(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addResuming(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Resuming(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeResuming(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Resuming(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetCurrentView(self: *@This()) core.HResult!*CoreApplicationView {
        var _r: *CoreApplicationView = undefined;
        const _c = self.vtable.GetCurrentView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Run(self: *@This(), viewSource: *IFrameworkViewSource) core.HResult!void {
        const _c = self.vtable.Run(@ptrCast(self), viewSource);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn RunWithActivationFactories(self: *@This(), activationFactoryCallback: *IGetActivationFactory) core.HResult!void {
        const _c = self.vtable.RunWithActivationFactories(@ptrCast(self), activationFactoryCallback);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreApplication";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0aacf7a4-5e1d-49df-8034-fb6a68bc5ed1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        add_Suspending: *const fn(self: *anyopaque, handler: *EventHandler(SuspendingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Suspending: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_Resuming: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Resuming: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
        GetCurrentView: *const fn(self: *anyopaque, _r: **CoreApplicationView) callconv(.winapi) HRESULT,
        Run: *const fn(self: *anyopaque, viewSource: *IFrameworkViewSource) callconv(.winapi) HRESULT,
        RunWithActivationFactories: *const fn(self: *anyopaque, activationFactoryCallback: *IGetActivationFactory) callconv(.winapi) HRESULT,
    };
};
pub const ICoreApplication2 = extern struct {
    vtable: *const VTable,
    pub fn addBackgroundActivated(self: *@This(), handler: *EventHandler(BackgroundActivatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_BackgroundActivated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeBackgroundActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_BackgroundActivated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLeavingBackground(self: *@This(), handler: *EventHandler(LeavingBackgroundEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LeavingBackground(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLeavingBackground(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LeavingBackground(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addEnteredBackground(self: *@This(), handler: *EventHandler(EnteredBackgroundEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_EnteredBackground(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeEnteredBackground(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_EnteredBackground(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn EnablePrelaunch(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.EnablePrelaunch(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreApplication2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "998681fb-1ab6-4b7f-be4a-9a0645224c04";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_BackgroundActivated: *const fn(self: *anyopaque, handler: *EventHandler(BackgroundActivatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_BackgroundActivated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LeavingBackground: *const fn(self: *anyopaque, handler: *EventHandler(LeavingBackgroundEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LeavingBackground: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_EnteredBackground: *const fn(self: *anyopaque, handler: *EventHandler(EnteredBackgroundEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_EnteredBackground: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        EnablePrelaunch: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const ICoreApplication3 = extern struct {
    vtable: *const VTable,
    pub fn RequestRestartAsync(self: *@This(), launchArguments: HSTRING) core.HResult!*IAsyncOperation(AppRestartFailureReason) {
        var _r: *IAsyncOperation(AppRestartFailureReason) = undefined;
        const _c = self.vtable.RequestRestartAsync(@ptrCast(self), launchArguments, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn RequestRestartForUserAsync(self: *@This(), user: *User, launchArguments: HSTRING) core.HResult!*IAsyncOperation(AppRestartFailureReason) {
        var _r: *IAsyncOperation(AppRestartFailureReason) = undefined;
        const _c = self.vtable.RequestRestartForUserAsync(@ptrCast(self), user, launchArguments, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreApplication3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "feec0d39-598b-4507-8a67-772632580a57";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        RequestRestartAsync: *const fn(self: *anyopaque, launchArguments: HSTRING, _r: **IAsyncOperation(AppRestartFailureReason)) callconv(.winapi) HRESULT,
        RequestRestartForUserAsync: *const fn(self: *anyopaque, user: *User, launchArguments: HSTRING, _r: **IAsyncOperation(AppRestartFailureReason)) callconv(.winapi) HRESULT,
    };
};
pub const ICoreApplicationExit = extern struct {
    vtable: *const VTable,
    pub fn Exit(self: *@This()) core.HResult!void {
        const _c = self.vtable.Exit(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addExiting(self: *@This(), handler: *EventHandler(IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Exiting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeExiting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Exiting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreApplicationExit";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cf86461d-261e-4b72-9acd-44ed2ace6a29";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Exit: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        add_Exiting: *const fn(self: *anyopaque, handler: *EventHandler(IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Exiting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreApplicationUnhandledError = extern struct {
    vtable: *const VTable,
    pub fn addUnhandledErrorDetected(self: *@This(), handler: *EventHandler(UnhandledErrorDetectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UnhandledErrorDetected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUnhandledErrorDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UnhandledErrorDetected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreApplicationUnhandledError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f0e24ab0-dd09-42e1-b0bc-e0e131f78d7e";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        add_UnhandledErrorDetected: *const fn(self: *anyopaque, handler: *EventHandler(UnhandledErrorDetectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UnhandledErrorDetected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreApplicationUseCount = extern struct {
    vtable: *const VTable,
    pub fn IncrementApplicationUseCount(self: *@This()) core.HResult!void {
        const _c = self.vtable.IncrementApplicationUseCount(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn DecrementApplicationUseCount(self: *@This()) core.HResult!void {
        const _c = self.vtable.DecrementApplicationUseCount(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreApplicationUseCount";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "518dc408-c077-475b-809e-0bc0c57e4b74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        IncrementApplicationUseCount: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        DecrementApplicationUseCount: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const ICoreApplicationView = extern struct {
    vtable: *const VTable,
    pub fn getCoreWindow(self: *@This()) core.HResult!*CoreWindow {
        var _r: *CoreWindow = undefined;
        const _c = self.vtable.get_CoreWindow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addActivated(self: *@This(), handler: *TypedEventHandler(CoreApplicationView,IActivatedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_Activated(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeActivated(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_Activated(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsMain(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsMain(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsHosted(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsHosted(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreApplicationView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "638bb2db-451d-4661-b099-414f34ffb9f1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CoreWindow: *const fn(self: *anyopaque, _r: **CoreWindow) callconv(.winapi) HRESULT,
        add_Activated: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreApplicationView,IActivatedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_Activated: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_IsMain: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_IsHosted: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const ICoreApplicationView2 = extern struct {
    vtable: *const VTable,
    pub fn getDispatcher(self: *@This()) core.HResult!*CoreDispatcher {
        var _r: *CoreDispatcher = undefined;
        const _c = self.vtable.get_Dispatcher(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreApplicationView2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "68eb7adf-917f-48eb-9aeb-7de53e086ab1";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Dispatcher: *const fn(self: *anyopaque, _r: **CoreDispatcher) callconv(.winapi) HRESULT,
    };
};
pub const ICoreApplicationView3 = extern struct {
    vtable: *const VTable,
    pub fn getIsComponent(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsComponent(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getTitleBar(self: *@This()) core.HResult!*CoreApplicationViewTitleBar {
        var _r: *CoreApplicationViewTitleBar = undefined;
        const _c = self.vtable.get_TitleBar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addHostedViewClosing(self: *@This(), handler: *TypedEventHandler(CoreApplicationView,HostedViewClosingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_HostedViewClosing(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeHostedViewClosing(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_HostedViewClosing(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreApplicationView3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "07ebe1b3-a4cf-4550-ab70-b07e85330bc8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_IsComponent: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_TitleBar: *const fn(self: *anyopaque, _r: **CoreApplicationViewTitleBar) callconv(.winapi) HRESULT,
        add_HostedViewClosing: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreApplicationView,HostedViewClosingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_HostedViewClosing: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreApplicationView5 = extern struct {
    vtable: *const VTable,
    pub fn getProperties(self: *@This()) core.HResult!*IPropertySet {
        var _r: *IPropertySet = undefined;
        const _c = self.vtable.get_Properties(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreApplicationView5";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2bc095a8-8ef0-446d-9e60-3a3e0428c671";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Properties: *const fn(self: *anyopaque, _r: **IPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const ICoreApplicationView6 = extern struct {
    vtable: *const VTable,
    pub fn getDispatcherQueue(self: *@This()) core.HResult!*DispatcherQueue {
        var _r: *DispatcherQueue = undefined;
        const _c = self.vtable.get_DispatcherQueue(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreApplicationView6";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c119d49a-0679-49ba-803f-b79c5cf34cca";
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
pub const ICoreApplicationViewTitleBar = extern struct {
    vtable: *const VTable,
    pub fn putExtendViewIntoTitleBar(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_ExtendViewIntoTitleBar(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getExtendViewIntoTitleBar(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ExtendViewIntoTitleBar(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemOverlayLeftInset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SystemOverlayLeftInset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSystemOverlayRightInset(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_SystemOverlayRightInset(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHeight(self: *@This()) core.HResult!f64 {
        var _r: f64 = undefined;
        const _c = self.vtable.get_Height(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addLayoutMetricsChanged(self: *@This(), handler: *TypedEventHandler(CoreApplicationViewTitleBar,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LayoutMetricsChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLayoutMetricsChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LayoutMetricsChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsVisible(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsVisible(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addIsVisibleChanged(self: *@This(), handler: *TypedEventHandler(CoreApplicationViewTitleBar,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_IsVisibleChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeIsVisibleChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_IsVisibleChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreApplicationViewTitleBar";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "006d35e3-e1f1-431b-9508-29b96926ac53";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_ExtendViewIntoTitleBar: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_ExtendViewIntoTitleBar: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_SystemOverlayLeftInset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_SystemOverlayRightInset: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        get_Height: *const fn(self: *anyopaque, _r: *f64) callconv(.winapi) HRESULT,
        add_LayoutMetricsChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreApplicationViewTitleBar,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LayoutMetricsChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        get_IsVisible: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_IsVisibleChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(CoreApplicationViewTitleBar,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_IsVisibleChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const ICoreImmersiveApplication = extern struct {
    vtable: *const VTable,
    pub fn getViews(self: *@This()) core.HResult!*IVectorView(CoreApplicationView) {
        var _r: *IVectorView(CoreApplicationView) = undefined;
        const _c = self.vtable.get_Views(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateNewView(self: *@This(), runtimeType: HSTRING, entryPoint: HSTRING) core.HResult!*CoreApplicationView {
        var _r: *CoreApplicationView = undefined;
        const _c = self.vtable.CreateNewView(@ptrCast(self), runtimeType, entryPoint, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMainView(self: *@This()) core.HResult!*CoreApplicationView {
        var _r: *CoreApplicationView = undefined;
        const _c = self.vtable.get_MainView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreImmersiveApplication";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "1ada0e3e-e4a2-4123-b451-dc96bf800419";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Views: *const fn(self: *anyopaque, _r: **IVectorView(CoreApplicationView)) callconv(.winapi) HRESULT,
        CreateNewView: *const fn(self: *anyopaque, runtimeType: HSTRING, entryPoint: HSTRING, _r: **CoreApplicationView) callconv(.winapi) HRESULT,
        get_MainView: *const fn(self: *anyopaque, _r: **CoreApplicationView) callconv(.winapi) HRESULT,
    };
};
pub const ICoreImmersiveApplication2 = extern struct {
    vtable: *const VTable,
    pub fn CreateNewView(self: *@This()) core.HResult!*CoreApplicationView {
        var _r: *CoreApplicationView = undefined;
        const _c = self.vtable.CreateNewView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreImmersiveApplication2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "828e1e36-e9e3-4cfc-9b66-48b78ea9bb2c";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateNewView: *const fn(self: *anyopaque, _r: **CoreApplicationView) callconv(.winapi) HRESULT,
    };
};
pub const ICoreImmersiveApplication3 = extern struct {
    vtable: *const VTable,
    pub fn CreateNewView(self: *@This(), viewSource: *IFrameworkViewSource) core.HResult!*CoreApplicationView {
        var _r: *CoreApplicationView = undefined;
        const _c = self.vtable.CreateNewView(@ptrCast(self), viewSource, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.ICoreImmersiveApplication3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "34a05b2f-ee0d-41e5-8314-cf10c91bf0af";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateNewView: *const fn(self: *anyopaque, viewSource: *IFrameworkViewSource, _r: **CoreApplicationView) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkView = extern struct {
    vtable: *const VTable,
    pub fn Initialize(self: *@This(), applicationView: *CoreApplicationView) core.HResult!void {
        const _c = self.vtable.Initialize(@ptrCast(self), applicationView);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetWindow(self: *@This(), window: *CoreWindow) core.HResult!void {
        const _c = self.vtable.SetWindow(@ptrCast(self), window);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Load(self: *@This(), entryPoint: HSTRING) core.HResult!void {
        const _c = self.vtable.Load(@ptrCast(self), entryPoint);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Run(self: *@This()) core.HResult!void {
        const _c = self.vtable.Run(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Uninitialize(self: *@This()) core.HResult!void {
        const _c = self.vtable.Uninitialize(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.IFrameworkView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "faab5cd0-8924-45ac-ad0f-a08fae5d0324";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Initialize: *const fn(self: *anyopaque, applicationView: *CoreApplicationView) callconv(.winapi) HRESULT,
        SetWindow: *const fn(self: *anyopaque, window: *CoreWindow) callconv(.winapi) HRESULT,
        Load: *const fn(self: *anyopaque, entryPoint: HSTRING) callconv(.winapi) HRESULT,
        Run: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Uninitialize: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IFrameworkViewSource = extern struct {
    vtable: *const VTable,
    pub fn CreateView(self: *@This()) core.HResult!*IFrameworkView {
        var _r: *IFrameworkView = undefined;
        const _c = self.vtable.CreateView(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.IFrameworkViewSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "cd770614-65c4-426c-9494-34fc43554862";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateView: *const fn(self: *anyopaque, _r: **IFrameworkView) callconv(.winapi) HRESULT,
    };
};
pub const IHostedViewClosingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.IHostedViewClosingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d238943c-b24e-4790-acb5-3e4243c4ff87";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IUnhandledError = extern struct {
    vtable: *const VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_Handled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Propagate(self: *@This()) core.HResult!void {
        const _c = self.vtable.Propagate(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.IUnhandledError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9459b726-53b5-4686-9eaf-fa8162dc3980";
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
        Propagate: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IUnhandledErrorDetectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUnhandledError(self: *@This()) core.HResult!*UnhandledError {
        var _r: *UnhandledError = undefined;
        const _c = self.vtable.get_UnhandledError(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.IUnhandledErrorDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "679ab78b-b336-4822-ac40-0d750f0b7a2b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_UnhandledError: *const fn(self: *anyopaque, _r: **UnhandledError) callconv(.winapi) HRESULT,
    };
};
pub const UnhandledError = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IUnhandledError = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn Propagate(self: *@This()) core.HResult!void {
        const this: *IUnhandledError = @ptrCast(self);
        return try this.Propagate();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.UnhandledError";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUnhandledError.GUID;
    pub const IID: Guid = IUnhandledError.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUnhandledError.SIGNATURE);
};
pub const UnhandledErrorDetectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUnhandledError(self: *@This()) core.HResult!*UnhandledError {
        const this: *IUnhandledErrorDetectedEventArgs = @ptrCast(self);
        return try this.getUnhandledError();
    }
    pub const NAME: []const u8 = "Windows.ApplicationModel.Core.UnhandledErrorDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IUnhandledErrorDetectedEventArgs.GUID;
    pub const IID: Guid = IUnhandledErrorDetectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IUnhandledErrorDetectedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const Deferral = @import("../Foundation.zig").Deferral;
const EnteredBackgroundEventArgs = @import("../ApplicationModel.zig").EnteredBackgroundEventArgs;
const AppDisplayInfo = @import("../ApplicationModel.zig").AppDisplayInfo;
const CoreWindow = @import("../UI/Core.zig").CoreWindow;
const BackgroundActivatedEventArgs = @import("./Activation.zig").BackgroundActivatedEventArgs;
const DispatcherQueue = @import("../System.zig").DispatcherQueue;
const FactoryCache = @import("../core.zig").FactoryCache;
const AppInfo = @import("../ApplicationModel.zig").AppInfo;
const SuspendingEventArgs = @import("../ApplicationModel.zig").SuspendingEventArgs;
const IGetActivationFactory = @import("../Foundation.zig").IGetActivationFactory;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const IInspectable = @import("../Foundation.zig").IInspectable;
const LeavingBackgroundEventArgs = @import("../ApplicationModel.zig").LeavingBackgroundEventArgs;
const EventHandler = @import("../Foundation.zig").EventHandler;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const CoreDispatcher = @import("../UI/Core.zig").CoreDispatcher;
const IActivatedEventArgs = @import("./Activation.zig").IActivatedEventArgs;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IPropertySet = @import("../Foundation/Collections.zig").IPropertySet;
const User = @import("../System.zig").User;
