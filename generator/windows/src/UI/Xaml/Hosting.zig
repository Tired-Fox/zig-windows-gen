pub const DesignerAppExitedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExitCode(self: *@This()) core.HResult!u32 {
        const this: *IDesignerAppExitedEventArgs = @ptrCast(self);
        return try this.getExitCode();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.DesignerAppExitedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDesignerAppExitedEventArgs.GUID;
    pub const IID: Guid = IDesignerAppExitedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDesignerAppExitedEventArgs.SIGNATURE);
};
pub const DesignerAppManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        const this: *IDesignerAppManager = @ptrCast(self);
        return try this.getAppUserModelId();
    }
    pub fn addDesignerAppExited(self: *@This(), handler: *TypedEventHandler(DesignerAppManager,DesignerAppExitedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDesignerAppManager = @ptrCast(self);
        return try this.addDesignerAppExited(handler);
    }
    pub fn removeDesignerAppExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDesignerAppManager = @ptrCast(self);
        return try this.removeDesignerAppExited(token);
    }
    pub fn CreateNewViewAsync(self: *@This(), initialViewState: DesignerAppViewState, initialViewSize: Size) core.HResult!*IAsyncOperation(DesignerAppView) {
        const this: *IDesignerAppManager = @ptrCast(self);
        return try this.CreateNewViewAsync(initialViewState, initialViewSize);
    }
    pub fn LoadObjectIntoAppAsync(self: *@This(), dllName: HSTRING, classId: *Guid, initializationData: HSTRING) core.HResult!*IAsyncAction {
        const this: *IDesignerAppManager = @ptrCast(self);
        return try this.LoadObjectIntoAppAsync(dllName, classId, initializationData);
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
    pub fn Create(appUserModelId: HSTRING) core.HResult!*DesignerAppManager {
        const factory = @This().IDesignerAppManagerFactoryCache.get();
        return try factory.Create(appUserModelId);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.DesignerAppManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDesignerAppManager.GUID;
    pub const IID: Guid = IDesignerAppManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDesignerAppManager.SIGNATURE);
    var _IDesignerAppManagerFactoryCache: FactoryCache(IDesignerAppManagerFactory, RUNTIME_NAME) = .{};
};
pub const DesignerAppView = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getApplicationViewId(self: *@This()) core.HResult!i32 {
        const this: *IDesignerAppView = @ptrCast(self);
        return try this.getApplicationViewId();
    }
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        const this: *IDesignerAppView = @ptrCast(self);
        return try this.getAppUserModelId();
    }
    pub fn getViewState(self: *@This()) core.HResult!DesignerAppViewState {
        const this: *IDesignerAppView = @ptrCast(self);
        return try this.getViewState();
    }
    pub fn getViewSize(self: *@This()) core.HResult!Size {
        const this: *IDesignerAppView = @ptrCast(self);
        return try this.getViewSize();
    }
    pub fn UpdateViewAsync(self: *@This(), viewState: DesignerAppViewState, viewSize: Size) core.HResult!*IAsyncAction {
        const this: *IDesignerAppView = @ptrCast(self);
        return try this.UpdateViewAsync(viewState, viewSize);
    }
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.DesignerAppView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDesignerAppView.GUID;
    pub const IID: Guid = IDesignerAppView.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDesignerAppView.SIGNATURE);
};
pub const DesignerAppViewState = enum(i32) {
    Visible = 0,
    Hidden = 1,
};
pub const DesktopWindowXamlSource = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getContent(self: *@This()) core.HResult!*UIElement {
        const this: *IDesktopWindowXamlSource = @ptrCast(self);
        return try this.getContent();
    }
    pub fn putContent(self: *@This(), value: *UIElement) core.HResult!void {
        const this: *IDesktopWindowXamlSource = @ptrCast(self);
        return try this.putContent(value);
    }
    pub fn getHasFocus(self: *@This()) core.HResult!bool {
        const this: *IDesktopWindowXamlSource = @ptrCast(self);
        return try this.getHasFocus();
    }
    pub fn addTakeFocusRequested(self: *@This(), handler: *TypedEventHandler(DesktopWindowXamlSource,DesktopWindowXamlSourceTakeFocusRequestedEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDesktopWindowXamlSource = @ptrCast(self);
        return try this.addTakeFocusRequested(handler);
    }
    pub fn removeTakeFocusRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDesktopWindowXamlSource = @ptrCast(self);
        return try this.removeTakeFocusRequested(token);
    }
    pub fn addGotFocus(self: *@This(), handler: *TypedEventHandler(DesktopWindowXamlSource,DesktopWindowXamlSourceGotFocusEventArgs)) core.HResult!EventRegistrationToken {
        const this: *IDesktopWindowXamlSource = @ptrCast(self);
        return try this.addGotFocus(handler);
    }
    pub fn removeGotFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const this: *IDesktopWindowXamlSource = @ptrCast(self);
        return try this.removeGotFocus(token);
    }
    pub fn NavigateFocus(self: *@This(), request: *XamlSourceFocusNavigationRequest) core.HResult!*XamlSourceFocusNavigationResult {
        const this: *IDesktopWindowXamlSource = @ptrCast(self);
        return try this.NavigateFocus(request);
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
    pub fn CreateInstance(baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DesktopWindowXamlSource {
        const factory = @This().IDesktopWindowXamlSourceFactoryCache.get();
        return try factory.CreateInstance(baseInterface, innerInterface);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.DesktopWindowXamlSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDesktopWindowXamlSource.GUID;
    pub const IID: Guid = IDesktopWindowXamlSource.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDesktopWindowXamlSource.SIGNATURE);
    var _IDesktopWindowXamlSourceFactoryCache: FactoryCache(IDesktopWindowXamlSourceFactory, RUNTIME_NAME) = .{};
};
pub const DesktopWindowXamlSourceGotFocusEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*XamlSourceFocusNavigationRequest {
        const this: *IDesktopWindowXamlSourceGotFocusEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.DesktopWindowXamlSourceGotFocusEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDesktopWindowXamlSourceGotFocusEventArgs.GUID;
    pub const IID: Guid = IDesktopWindowXamlSourceGotFocusEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDesktopWindowXamlSourceGotFocusEventArgs.SIGNATURE);
};
pub const DesktopWindowXamlSourceTakeFocusRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRequest(self: *@This()) core.HResult!*XamlSourceFocusNavigationRequest {
        const this: *IDesktopWindowXamlSourceTakeFocusRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.DesktopWindowXamlSourceTakeFocusRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IDesktopWindowXamlSourceTakeFocusRequestedEventArgs.GUID;
    pub const IID: Guid = IDesktopWindowXamlSourceTakeFocusRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IDesktopWindowXamlSourceTakeFocusRequestedEventArgs.SIGNATURE);
};
pub const IDesignerAppExitedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getExitCode(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_ExitCode(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IDesignerAppExitedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "f6aac86a-0cad-410c-8f62-dc2936151c74";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExitCode: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
    };
};
pub const IDesignerAppManager = extern struct {
    vtable: *const VTable,
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppUserModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addDesignerAppExited(self: *@This(), handler: *TypedEventHandler(DesignerAppManager,DesignerAppExitedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DesignerAppExited(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDesignerAppExited(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DesignerAppExited(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn CreateNewViewAsync(self: *@This(), initialViewState: DesignerAppViewState, initialViewSize: Size) core.HResult!*IAsyncOperation(DesignerAppView) {
        var _r: *IAsyncOperation(DesignerAppView) = undefined;
        const _c = self.vtable.CreateNewViewAsync(@ptrCast(self), initialViewState, initialViewSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn LoadObjectIntoAppAsync(self: *@This(), dllName: HSTRING, classId: *Guid, initializationData: HSTRING) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.LoadObjectIntoAppAsync(@ptrCast(self), dllName, classId, initializationData, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IDesignerAppManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a6272caa-d5c6-40cb-abd9-27ba43831bb7";
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
        add_DesignerAppExited: *const fn(self: *anyopaque, handler: *TypedEventHandler(DesignerAppManager,DesignerAppExitedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DesignerAppExited: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        CreateNewViewAsync: *const fn(self: *anyopaque, initialViewState: DesignerAppViewState, initialViewSize: Size, _r: **IAsyncOperation(DesignerAppView)) callconv(.winapi) HRESULT,
        LoadObjectIntoAppAsync: *const fn(self: *anyopaque, dllName: HSTRING, classId: *Guid, initializationData: HSTRING, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IDesignerAppManagerFactory = extern struct {
    vtable: *const VTable,
    pub fn Create(self: *@This(), appUserModelId: HSTRING) core.HResult!*DesignerAppManager {
        var _r: *DesignerAppManager = undefined;
        const _c = self.vtable.Create(@ptrCast(self), appUserModelId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IDesignerAppManagerFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "8f9d633b-1266-4c0e-8499-0db85bbd4c43";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        Create: *const fn(self: *anyopaque, appUserModelId: HSTRING, _r: **DesignerAppManager) callconv(.winapi) HRESULT,
    };
};
pub const IDesignerAppView = extern struct {
    vtable: *const VTable,
    pub fn getApplicationViewId(self: *@This()) core.HResult!i32 {
        var _r: i32 = undefined;
        const _c = self.vtable.get_ApplicationViewId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getAppUserModelId(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_AppUserModelId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViewState(self: *@This()) core.HResult!DesignerAppViewState {
        var _r: DesignerAppViewState = undefined;
        const _c = self.vtable.get_ViewState(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getViewSize(self: *@This()) core.HResult!Size {
        var _r: Size = undefined;
        const _c = self.vtable.get_ViewSize(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn UpdateViewAsync(self: *@This(), viewState: DesignerAppViewState, viewSize: Size) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.UpdateViewAsync(@ptrCast(self), viewState, viewSize, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IDesignerAppView";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c777cea-dd71-4a84-a56f-dacb4b14706f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ApplicationViewId: *const fn(self: *anyopaque, _r: *i32) callconv(.winapi) HRESULT,
        get_AppUserModelId: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_ViewState: *const fn(self: *anyopaque, _r: *DesignerAppViewState) callconv(.winapi) HRESULT,
        get_ViewSize: *const fn(self: *anyopaque, _r: *Size) callconv(.winapi) HRESULT,
        UpdateViewAsync: *const fn(self: *anyopaque, viewState: DesignerAppViewState, viewSize: Size, _r: **IAsyncAction) callconv(.winapi) HRESULT,
    };
};
pub const IDesktopWindowXamlSource = extern struct {
    vtable: *const VTable,
    pub fn getContent(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_Content(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putContent(self: *@This(), value: *UIElement) core.HResult!void {
        const _c = self.vtable.put_Content(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getHasFocus(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_HasFocus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn addTakeFocusRequested(self: *@This(), handler: *TypedEventHandler(DesktopWindowXamlSource,DesktopWindowXamlSourceTakeFocusRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_TakeFocusRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeTakeFocusRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_TakeFocusRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addGotFocus(self: *@This(), handler: *TypedEventHandler(DesktopWindowXamlSource,DesktopWindowXamlSourceGotFocusEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_GotFocus(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeGotFocus(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_GotFocus(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NavigateFocus(self: *@This(), request: *XamlSourceFocusNavigationRequest) core.HResult!*XamlSourceFocusNavigationResult {
        var _r: *XamlSourceFocusNavigationResult = undefined;
        const _c = self.vtable.NavigateFocus(@ptrCast(self), request, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IDesktopWindowXamlSource";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "d585bfe1-00ff-51be-ba1d-a1329956ea0a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Content: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        put_Content: *const fn(self: *anyopaque, value: *UIElement) callconv(.winapi) HRESULT,
        get_HasFocus: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        add_TakeFocusRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(DesktopWindowXamlSource,DesktopWindowXamlSourceTakeFocusRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_TakeFocusRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_GotFocus: *const fn(self: *anyopaque, handler: *TypedEventHandler(DesktopWindowXamlSource,DesktopWindowXamlSourceGotFocusEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_GotFocus: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        NavigateFocus: *const fn(self: *anyopaque, request: *XamlSourceFocusNavigationRequest, _r: **XamlSourceFocusNavigationResult) callconv(.winapi) HRESULT,
    };
};
pub const IDesktopWindowXamlSourceFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), baseInterface: *IInspectable, innerInterface: *IInspectable) core.HResult!*DesktopWindowXamlSource {
        var _r: *DesktopWindowXamlSource = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), baseInterface, innerInterface, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IDesktopWindowXamlSourceFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5cd61dc0-2561-56e1-8e75-6e44173805e3";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, baseInterface: *IInspectable, innerInterface: *IInspectable, _r: **DesktopWindowXamlSource) callconv(.winapi) HRESULT,
    };
};
pub const IDesktopWindowXamlSourceGotFocusEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*XamlSourceFocusNavigationRequest {
        var _r: *XamlSourceFocusNavigationRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IDesktopWindowXamlSourceGotFocusEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "39be4849-d9cc-5b70-8f05-1ad9a4aaa342";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **XamlSourceFocusNavigationRequest) callconv(.winapi) HRESULT,
    };
};
pub const IDesktopWindowXamlSourceTakeFocusRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getRequest(self: *@This()) core.HResult!*XamlSourceFocusNavigationRequest {
        var _r: *XamlSourceFocusNavigationRequest = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IDesktopWindowXamlSourceTakeFocusRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fe61e4b9-a7af-52b3-bdb9-c3305c0b8df2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Request: *const fn(self: *anyopaque, _r: **XamlSourceFocusNavigationRequest) callconv(.winapi) HRESULT,
    };
};
pub const IWindowsXamlManager = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IWindowsXamlManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "56096c31-1aa0-5288-8818-6e74a2dcaff5";
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
pub const IWindowsXamlManagerStatics = extern struct {
    vtable: *const VTable,
    pub fn InitializeForCurrentThread(self: *@This()) core.HResult!*WindowsXamlManager {
        var _r: *WindowsXamlManager = undefined;
        const _c = self.vtable.InitializeForCurrentThread(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IWindowsXamlManagerStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "28258a12-7d82-505b-b210-712b04a58882";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        InitializeForCurrentThread: *const fn(self: *anyopaque, _r: **WindowsXamlManager) callconv(.winapi) HRESULT,
    };
};
pub const IXamlSourceFocusNavigationRequest = extern struct {
    vtable: *const VTable,
    pub fn getReason(self: *@This()) core.HResult!XamlSourceFocusNavigationReason {
        var _r: XamlSourceFocusNavigationReason = undefined;
        const _c = self.vtable.get_Reason(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getHintRect(self: *@This()) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.get_HintRect(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCorrelationId(self: *@This()) core.HResult!*Guid {
        var _r: *Guid = undefined;
        const _c = self.vtable.get_CorrelationId(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IXamlSourceFocusNavigationRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "fbb93bb5-1496-5a80-ac00-e757359755e6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Reason: *const fn(self: *anyopaque, _r: *XamlSourceFocusNavigationReason) callconv(.winapi) HRESULT,
        get_HintRect: *const fn(self: *anyopaque, _r: *Rect) callconv(.winapi) HRESULT,
        get_CorrelationId: *const fn(self: *anyopaque, _r: **Guid) callconv(.winapi) HRESULT,
    };
};
pub const IXamlSourceFocusNavigationRequestFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), reason: XamlSourceFocusNavigationReason) core.HResult!*XamlSourceFocusNavigationRequest {
        var _r: *XamlSourceFocusNavigationRequest = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), reason, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithHintRect(self: *@This(), reason: XamlSourceFocusNavigationReason, hintRect: Rect) core.HResult!*XamlSourceFocusNavigationRequest {
        var _r: *XamlSourceFocusNavigationRequest = undefined;
        const _c = self.vtable.CreateInstanceWithHintRect(@ptrCast(self), reason, hintRect, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CreateInstanceWithHintRectAndCorrelationId(self: *@This(), reason: XamlSourceFocusNavigationReason, hintRect: Rect, correlationId: *Guid) core.HResult!*XamlSourceFocusNavigationRequest {
        var _r: *XamlSourceFocusNavigationRequest = undefined;
        const _c = self.vtable.CreateInstanceWithHintRectAndCorrelationId(@ptrCast(self), reason, hintRect, correlationId, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IXamlSourceFocusNavigationRequestFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e746ab8f-b4ef-5390-97e5-cc0a2779c574";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, reason: XamlSourceFocusNavigationReason, _r: **XamlSourceFocusNavigationRequest) callconv(.winapi) HRESULT,
        CreateInstanceWithHintRect: *const fn(self: *anyopaque, reason: XamlSourceFocusNavigationReason, hintRect: Rect, _r: **XamlSourceFocusNavigationRequest) callconv(.winapi) HRESULT,
        CreateInstanceWithHintRectAndCorrelationId: *const fn(self: *anyopaque, reason: XamlSourceFocusNavigationReason, hintRect: Rect, correlationId: *Guid, _r: **XamlSourceFocusNavigationRequest) callconv(.winapi) HRESULT,
    };
};
pub const IXamlSourceFocusNavigationResult = extern struct {
    vtable: *const VTable,
    pub fn getWasFocusMoved(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_WasFocusMoved(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IXamlSourceFocusNavigationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "88d55a5f-9603-5d8f-9cc7-d1c4070d9801";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_WasFocusMoved: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IXamlSourceFocusNavigationResultFactory = extern struct {
    vtable: *const VTable,
    pub fn CreateInstance(self: *@This(), focusMoved: bool) core.HResult!*XamlSourceFocusNavigationResult {
        var _r: *XamlSourceFocusNavigationResult = undefined;
        const _c = self.vtable.CreateInstance(@ptrCast(self), focusMoved, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IXamlSourceFocusNavigationResultFactory";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "43bbadbf-f9e1-5527-b8c5-09339ff2ca76";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        CreateInstance: *const fn(self: *anyopaque, focusMoved: bool, _r: **XamlSourceFocusNavigationResult) callconv(.winapi) HRESULT,
    };
};
pub const IXamlUIPresenter = extern struct {
    vtable: *const VTable,
    pub fn getRootElement(self: *@This()) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.get_RootElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putRootElement(self: *@This(), value: *UIElement) core.HResult!void {
        const _c = self.vtable.put_RootElement(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThemeKey(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ThemeKey(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThemeKey(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ThemeKey(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getThemeResourcesXaml(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_ThemeResourcesXaml(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putThemeResourcesXaml(self: *@This(), value: HSTRING) core.HResult!void {
        const _c = self.vtable.put_ThemeResourcesXaml(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetSize(self: *@This(), width: i32, height: i32) core.HResult!void {
        const _c = self.vtable.SetSize(@ptrCast(self), width, height);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Render(self: *@This()) core.HResult!void {
        const _c = self.vtable.Render(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Present(self: *@This()) core.HResult!void {
        const _c = self.vtable.Present(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IXamlUIPresenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "a714944a-1619-4fc6-b31b-89512ef022a2";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_RootElement: *const fn(self: *anyopaque, _r: **UIElement) callconv(.winapi) HRESULT,
        put_RootElement: *const fn(self: *anyopaque, value: *UIElement) callconv(.winapi) HRESULT,
        get_ThemeKey: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ThemeKey: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        get_ThemeResourcesXaml: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        put_ThemeResourcesXaml: *const fn(self: *anyopaque, value: HSTRING) callconv(.winapi) HRESULT,
        SetSize: *const fn(self: *anyopaque, width: i32, height: i32) callconv(.winapi) HRESULT,
        Render: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Present: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IXamlUIPresenterHost = extern struct {
    vtable: *const VTable,
    pub fn ResolveFileResource(self: *@This(), path: HSTRING) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.ResolveFileResource(@ptrCast(self), path, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IXamlUIPresenterHost";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "aafb84cd-9f6d-4f80-ac2c-0e6cb9f31659";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ResolveFileResource: *const fn(self: *anyopaque, path: HSTRING, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IXamlUIPresenterHost2 = extern struct {
    vtable: *const VTable,
    pub fn GetGenericXamlFilePath(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.GetGenericXamlFilePath(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IXamlUIPresenterHost2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "61595672-7ca4-4a21-b56a-88f4812388ca";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetGenericXamlFilePath: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IXamlUIPresenterHost3 = extern struct {
    vtable: *const VTable,
    pub fn ResolveDictionaryResource(self: *@This(), dictionary: *ResourceDictionary, dictionaryKey: *IInspectable, suggestedValue: *IInspectable) core.HResult!*IInspectable {
        var _r: *IInspectable = undefined;
        const _c = self.vtable.ResolveDictionaryResource(@ptrCast(self), dictionary, dictionaryKey, suggestedValue, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IXamlUIPresenterHost3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b14292bf-7320-41bb-9f26-4d6fd34db45a";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        ResolveDictionaryResource: *const fn(self: *anyopaque, dictionary: *ResourceDictionary, dictionaryKey: *IInspectable, suggestedValue: *IInspectable, _r: **IInspectable) callconv(.winapi) HRESULT,
    };
};
pub const IXamlUIPresenterStatics = extern struct {
    vtable: *const VTable,
    pub fn getCompleteTimelinesAutomatically(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CompleteTimelinesAutomatically(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putCompleteTimelinesAutomatically(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_CompleteTimelinesAutomatically(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetHost(self: *@This(), host: *IXamlUIPresenterHost) core.HResult!void {
        const _c = self.vtable.SetHost(@ptrCast(self), host);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NotifyWindowSizeChanged(self: *@This()) core.HResult!void {
        const _c = self.vtable.NotifyWindowSizeChanged(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IXamlUIPresenterStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "71eaeac8-45e1-4192-85aa-3a422edd23cf";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_CompleteTimelinesAutomatically: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_CompleteTimelinesAutomatically: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        SetHost: *const fn(self: *anyopaque, host: *IXamlUIPresenterHost) callconv(.winapi) HRESULT,
        NotifyWindowSizeChanged: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IXamlUIPresenterStatics2 = extern struct {
    vtable: *const VTable,
    pub fn GetFlyoutPlacementTargetInfo(self: *@This(), placementTarget: *FrameworkElement, preferredPlacement: FlyoutPlacementMode, targetPreferredPlacement: FlyoutPlacementMode, allowFallbacks: bool) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.GetFlyoutPlacementTargetInfo(@ptrCast(self), placementTarget, preferredPlacement, targetPreferredPlacement, allowFallbacks, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetFlyoutPlacement(self: *@This(), placementTargetBounds: Rect, controlSize: Size, minControlSize: Size, containerRect: Rect, targetPreferredPlacement: FlyoutPlacementMode, allowFallbacks: bool, chosenPlacement: FlyoutPlacementMode) core.HResult!Rect {
        var _r: Rect = undefined;
        const _c = self.vtable.GetFlyoutPlacement(@ptrCast(self), placementTargetBounds, controlSize, minControlSize, containerRect, targetPreferredPlacement, allowFallbacks, chosenPlacement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IXamlUIPresenterStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "5c6b68d2-cf1c-4f53-bf09-6a745f7a9703";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetFlyoutPlacementTargetInfo: *const fn(self: *anyopaque, placementTarget: *FrameworkElement, preferredPlacement: FlyoutPlacementMode, targetPreferredPlacement: FlyoutPlacementMode, allowFallbacks: bool, _r: *Rect) callconv(.winapi) HRESULT,
        GetFlyoutPlacement: *const fn(self: *anyopaque, placementTargetBounds: Rect, controlSize: Size, minControlSize: Size, containerRect: Rect, targetPreferredPlacement: FlyoutPlacementMode, allowFallbacks: bool, chosenPlacement: FlyoutPlacementMode, _r: *Rect) callconv(.winapi) HRESULT,
    };
};
pub const WindowsXamlManager = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn Close(self: *@This()) core.HResult!void {
        var this: ?*IClosable = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IClosable.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.Close();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn InitializeForCurrentThread() core.HResult!*WindowsXamlManager {
        const factory = @This().IWindowsXamlManagerStaticsCache.get();
        return try factory.InitializeForCurrentThread();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.WindowsXamlManager";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWindowsXamlManager.GUID;
    pub const IID: Guid = IWindowsXamlManager.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWindowsXamlManager.SIGNATURE);
    var _IWindowsXamlManagerStaticsCache: FactoryCache(IWindowsXamlManagerStatics, RUNTIME_NAME) = .{};
};
pub const XamlSourceFocusNavigationReason = enum(i32) {
    Programmatic = 0,
    Restore = 1,
    First = 3,
    Last = 4,
    Left = 7,
    Up = 8,
    Right = 9,
    Down = 10,
};
pub const XamlSourceFocusNavigationRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getReason(self: *@This()) core.HResult!XamlSourceFocusNavigationReason {
        const this: *IXamlSourceFocusNavigationRequest = @ptrCast(self);
        return try this.getReason();
    }
    pub fn getHintRect(self: *@This()) core.HResult!Rect {
        const this: *IXamlSourceFocusNavigationRequest = @ptrCast(self);
        return try this.getHintRect();
    }
    pub fn getCorrelationId(self: *@This()) core.HResult!*Guid {
        const this: *IXamlSourceFocusNavigationRequest = @ptrCast(self);
        return try this.getCorrelationId();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(reason: XamlSourceFocusNavigationReason) core.HResult!*XamlSourceFocusNavigationRequest {
        const factory = @This().IXamlSourceFocusNavigationRequestFactoryCache.get();
        return try factory.CreateInstance(reason);
    }
    pub fn CreateInstanceWithHintRect(reason: XamlSourceFocusNavigationReason, hintRect: Rect) core.HResult!*XamlSourceFocusNavigationRequest {
        const factory = @This().IXamlSourceFocusNavigationRequestFactoryCache.get();
        return try factory.CreateInstanceWithHintRect(reason, hintRect);
    }
    pub fn CreateInstanceWithHintRectAndCorrelationId(reason: XamlSourceFocusNavigationReason, hintRect: Rect, correlationId: *Guid) core.HResult!*XamlSourceFocusNavigationRequest {
        const factory = @This().IXamlSourceFocusNavigationRequestFactoryCache.get();
        return try factory.CreateInstanceWithHintRectAndCorrelationId(reason, hintRect, correlationId);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.XamlSourceFocusNavigationRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXamlSourceFocusNavigationRequest.GUID;
    pub const IID: Guid = IXamlSourceFocusNavigationRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXamlSourceFocusNavigationRequest.SIGNATURE);
    var _IXamlSourceFocusNavigationRequestFactoryCache: FactoryCache(IXamlSourceFocusNavigationRequestFactory, RUNTIME_NAME) = .{};
};
pub const XamlSourceFocusNavigationResult = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getWasFocusMoved(self: *@This()) core.HResult!bool {
        const this: *IXamlSourceFocusNavigationResult = @ptrCast(self);
        return try this.getWasFocusMoved();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn CreateInstance(focusMoved: bool) core.HResult!*XamlSourceFocusNavigationResult {
        const factory = @This().IXamlSourceFocusNavigationResultFactoryCache.get();
        return try factory.CreateInstance(focusMoved);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.XamlSourceFocusNavigationResult";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXamlSourceFocusNavigationResult.GUID;
    pub const IID: Guid = IXamlSourceFocusNavigationResult.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXamlSourceFocusNavigationResult.SIGNATURE);
    var _IXamlSourceFocusNavigationResultFactoryCache: FactoryCache(IXamlSourceFocusNavigationResultFactory, RUNTIME_NAME) = .{};
};
pub const XamlUIPresenter = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getRootElement(self: *@This()) core.HResult!*UIElement {
        const this: *IXamlUIPresenter = @ptrCast(self);
        return try this.getRootElement();
    }
    pub fn putRootElement(self: *@This(), value: *UIElement) core.HResult!void {
        const this: *IXamlUIPresenter = @ptrCast(self);
        return try this.putRootElement(value);
    }
    pub fn getThemeKey(self: *@This()) core.HResult!HSTRING {
        const this: *IXamlUIPresenter = @ptrCast(self);
        return try this.getThemeKey();
    }
    pub fn putThemeKey(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IXamlUIPresenter = @ptrCast(self);
        return try this.putThemeKey(value);
    }
    pub fn getThemeResourcesXaml(self: *@This()) core.HResult!HSTRING {
        const this: *IXamlUIPresenter = @ptrCast(self);
        return try this.getThemeResourcesXaml();
    }
    pub fn putThemeResourcesXaml(self: *@This(), value: HSTRING) core.HResult!void {
        const this: *IXamlUIPresenter = @ptrCast(self);
        return try this.putThemeResourcesXaml(value);
    }
    pub fn SetSize(self: *@This(), width: i32, height: i32) core.HResult!void {
        const this: *IXamlUIPresenter = @ptrCast(self);
        return try this.SetSize(width, height);
    }
    pub fn Render(self: *@This()) core.HResult!void {
        const this: *IXamlUIPresenter = @ptrCast(self);
        return try this.Render();
    }
    pub fn Present(self: *@This()) core.HResult!void {
        const this: *IXamlUIPresenter = @ptrCast(self);
        return try this.Present();
    }
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn GetFlyoutPlacementTargetInfo(placementTarget: *FrameworkElement, preferredPlacement: FlyoutPlacementMode, targetPreferredPlacement: FlyoutPlacementMode, allowFallbacks: bool) core.HResult!Rect {
        const factory = @This().IXamlUIPresenterStatics2Cache.get();
        return try factory.GetFlyoutPlacementTargetInfo(placementTarget, preferredPlacement, targetPreferredPlacement, allowFallbacks);
    }
    pub fn GetFlyoutPlacement(placementTargetBounds: Rect, controlSize: Size, minControlSize: Size, containerRect: Rect, targetPreferredPlacement: FlyoutPlacementMode, allowFallbacks: bool, chosenPlacement: FlyoutPlacementMode) core.HResult!Rect {
        const factory = @This().IXamlUIPresenterStatics2Cache.get();
        return try factory.GetFlyoutPlacement(placementTargetBounds, controlSize, minControlSize, containerRect, targetPreferredPlacement, allowFallbacks, chosenPlacement);
    }
    pub fn getCompleteTimelinesAutomatically() core.HResult!bool {
        const factory = @This().IXamlUIPresenterStaticsCache.get();
        return try factory.getCompleteTimelinesAutomatically();
    }
    pub fn putCompleteTimelinesAutomatically(value: bool) core.HResult!void {
        const factory = @This().IXamlUIPresenterStaticsCache.get();
        return try factory.putCompleteTimelinesAutomatically(value);
    }
    pub fn SetHost(host: *IXamlUIPresenterHost) core.HResult!void {
        const factory = @This().IXamlUIPresenterStaticsCache.get();
        return try factory.SetHost(host);
    }
    pub fn NotifyWindowSizeChanged() core.HResult!void {
        const factory = @This().IXamlUIPresenterStaticsCache.get();
        return try factory.NotifyWindowSizeChanged();
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.XamlUIPresenter";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IXamlUIPresenter.GUID;
    pub const IID: Guid = IXamlUIPresenter.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IXamlUIPresenter.SIGNATURE);
    var _IXamlUIPresenterStatics2Cache: FactoryCache(IXamlUIPresenterStatics2, RUNTIME_NAME) = .{};
    var _IXamlUIPresenterStaticsCache: FactoryCache(IXamlUIPresenterStatics, RUNTIME_NAME) = .{};
};
pub const ElementCompositionPreview = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn deinit(self: *@This()) void {
        _ = IUnknown.Release(@ptrCast(self));
    }
    pub fn SetImplicitShowAnimation(element: *UIElement, animation: *ICompositionAnimationBase) core.HResult!void {
        const factory = @This().IElementCompositionPreviewStatics2Cache.get();
        return try factory.SetImplicitShowAnimation(element, animation);
    }
    pub fn SetImplicitHideAnimation(element: *UIElement, animation: *ICompositionAnimationBase) core.HResult!void {
        const factory = @This().IElementCompositionPreviewStatics2Cache.get();
        return try factory.SetImplicitHideAnimation(element, animation);
    }
    pub fn SetIsTranslationEnabled(element: *UIElement, value: bool) core.HResult!void {
        const factory = @This().IElementCompositionPreviewStatics2Cache.get();
        return try factory.SetIsTranslationEnabled(element, value);
    }
    pub fn GetPointerPositionPropertySet(targetElement: *UIElement) core.HResult!*CompositionPropertySet {
        const factory = @This().IElementCompositionPreviewStatics2Cache.get();
        return try factory.GetPointerPositionPropertySet(targetElement);
    }
    pub fn SetAppWindowContent(appWindow: *AppWindow, xamlContent: *UIElement) core.HResult!void {
        const factory = @This().IElementCompositionPreviewStatics3Cache.get();
        return try factory.SetAppWindowContent(appWindow, xamlContent);
    }
    pub fn GetAppWindowContent(appWindow: *AppWindow) core.HResult!*UIElement {
        const factory = @This().IElementCompositionPreviewStatics3Cache.get();
        return try factory.GetAppWindowContent(appWindow);
    }
    pub fn GetElementVisual(element: *UIElement) core.HResult!*Visual {
        const factory = @This().IElementCompositionPreviewStaticsCache.get();
        return try factory.GetElementVisual(element);
    }
    pub fn GetElementChildVisual(element: *UIElement) core.HResult!*Visual {
        const factory = @This().IElementCompositionPreviewStaticsCache.get();
        return try factory.GetElementChildVisual(element);
    }
    pub fn SetElementChildVisual(element: *UIElement, visual: *Visual) core.HResult!void {
        const factory = @This().IElementCompositionPreviewStaticsCache.get();
        return try factory.SetElementChildVisual(element, visual);
    }
    pub fn GetScrollViewerManipulationPropertySet(scrollViewer: *ScrollViewer) core.HResult!*CompositionPropertySet {
        const factory = @This().IElementCompositionPreviewStaticsCache.get();
        return try factory.GetScrollViewerManipulationPropertySet(scrollViewer);
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.ElementCompositionPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IElementCompositionPreview.GUID;
    pub const IID: Guid = IElementCompositionPreview.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IElementCompositionPreview.SIGNATURE);
    var _IElementCompositionPreviewStatics2Cache: FactoryCache(IElementCompositionPreviewStatics2, RUNTIME_NAME) = .{};
    var _IElementCompositionPreviewStatics3Cache: FactoryCache(IElementCompositionPreviewStatics3, RUNTIME_NAME) = .{};
    var _IElementCompositionPreviewStaticsCache: FactoryCache(IElementCompositionPreviewStatics, RUNTIME_NAME) = .{};
};
pub const IElementCompositionPreview = extern struct {
    vtable: *const VTable,
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IElementCompositionPreview";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b6f1a676-cfe6-46ac-acf6-c4687bb65e60";
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
pub const IElementCompositionPreviewStatics = extern struct {
    vtable: *const VTable,
    pub fn GetElementVisual(self: *@This(), element: *UIElement) core.HResult!*Visual {
        var _r: *Visual = undefined;
        const _c = self.vtable.GetElementVisual(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetElementChildVisual(self: *@This(), element: *UIElement) core.HResult!*Visual {
        var _r: *Visual = undefined;
        const _c = self.vtable.GetElementChildVisual(@ptrCast(self), element, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn SetElementChildVisual(self: *@This(), element: *UIElement, visual: *Visual) core.HResult!void {
        const _c = self.vtable.SetElementChildVisual(@ptrCast(self), element, visual);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetScrollViewerManipulationPropertySet(self: *@This(), scrollViewer: *ScrollViewer) core.HResult!*CompositionPropertySet {
        var _r: *CompositionPropertySet = undefined;
        const _c = self.vtable.GetScrollViewerManipulationPropertySet(@ptrCast(self), scrollViewer, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IElementCompositionPreviewStatics";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "08c92b38-ec99-4c55-bc85-a1c180b27646";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        GetElementVisual: *const fn(self: *anyopaque, element: *UIElement, _r: **Visual) callconv(.winapi) HRESULT,
        GetElementChildVisual: *const fn(self: *anyopaque, element: *UIElement, _r: **Visual) callconv(.winapi) HRESULT,
        SetElementChildVisual: *const fn(self: *anyopaque, element: *UIElement, visual: *Visual) callconv(.winapi) HRESULT,
        GetScrollViewerManipulationPropertySet: *const fn(self: *anyopaque, scrollViewer: *ScrollViewer, _r: **CompositionPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IElementCompositionPreviewStatics2 = extern struct {
    vtable: *const VTable,
    pub fn SetImplicitShowAnimation(self: *@This(), element: *UIElement, animation: *ICompositionAnimationBase) core.HResult!void {
        const _c = self.vtable.SetImplicitShowAnimation(@ptrCast(self), element, animation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetImplicitHideAnimation(self: *@This(), element: *UIElement, animation: *ICompositionAnimationBase) core.HResult!void {
        const _c = self.vtable.SetImplicitHideAnimation(@ptrCast(self), element, animation);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn SetIsTranslationEnabled(self: *@This(), element: *UIElement, value: bool) core.HResult!void {
        const _c = self.vtable.SetIsTranslationEnabled(@ptrCast(self), element, value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetPointerPositionPropertySet(self: *@This(), targetElement: *UIElement) core.HResult!*CompositionPropertySet {
        var _r: *CompositionPropertySet = undefined;
        const _c = self.vtable.GetPointerPositionPropertySet(@ptrCast(self), targetElement, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IElementCompositionPreviewStatics2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "24148fbb-23d6-4f37-ba0c-0733e799722d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetImplicitShowAnimation: *const fn(self: *anyopaque, element: *UIElement, animation: *ICompositionAnimationBase) callconv(.winapi) HRESULT,
        SetImplicitHideAnimation: *const fn(self: *anyopaque, element: *UIElement, animation: *ICompositionAnimationBase) callconv(.winapi) HRESULT,
        SetIsTranslationEnabled: *const fn(self: *anyopaque, element: *UIElement, value: bool) callconv(.winapi) HRESULT,
        GetPointerPositionPropertySet: *const fn(self: *anyopaque, targetElement: *UIElement, _r: **CompositionPropertySet) callconv(.winapi) HRESULT,
    };
};
pub const IElementCompositionPreviewStatics3 = extern struct {
    vtable: *const VTable,
    pub fn SetAppWindowContent(self: *@This(), appWindow: *AppWindow, xamlContent: *UIElement) core.HResult!void {
        const _c = self.vtable.SetAppWindowContent(@ptrCast(self), appWindow, xamlContent);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetAppWindowContent(self: *@This(), appWindow: *AppWindow) core.HResult!*UIElement {
        var _r: *UIElement = undefined;
        const _c = self.vtable.GetAppWindowContent(@ptrCast(self), appWindow, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.UI.Xaml.Hosting.IElementCompositionPreviewStatics3";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "843bc4c3-c105-59fe-a3d1-373c1d3e6fbc";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        SetAppWindowContent: *const fn(self: *anyopaque, appWindow: *AppWindow, xamlContent: *UIElement) callconv(.winapi) HRESULT,
        GetAppWindowContent: *const fn(self: *anyopaque, appWindow: *AppWindow, _r: **UIElement) callconv(.winapi) HRESULT,
    };
};
const IUnknown = @import("../../root.zig").IUnknown;
const AppWindow = @import("../WindowManagement.zig").AppWindow;
const Guid = @import("../../root.zig").Guid;
const FlyoutPlacementMode = @import("./Controls/Primitives.zig").FlyoutPlacementMode;
const Size = @import("../../Foundation.zig").Size;
const FactoryCache = @import("../../core.zig").FactoryCache;
const Visual = @import("../Composition.zig").Visual;
const Rect = @import("../../Foundation.zig").Rect;
const TrustLevel = @import("../../root.zig").TrustLevel;
const IClosable = @import("../../Foundation.zig").IClosable;
const TypedEventHandler = @import("../../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../../root.zig").HSTRING;
const IInspectable = @import("../../Foundation.zig").IInspectable;
const ICompositionAnimationBase = @import("../Composition.zig").ICompositionAnimationBase;
const FrameworkElement = @import("../Xaml.zig").FrameworkElement;
const CompositionPropertySet = @import("../Composition.zig").CompositionPropertySet;
const ResourceDictionary = @import("../Xaml.zig").ResourceDictionary;
const UIElement = @import("../Xaml.zig").UIElement;
const HRESULT = @import("../../root.zig").HRESULT;
const IAsyncOperation = @import("../../Foundation.zig").IAsyncOperation;
const core = @import("../../root.zig").core;
const EventRegistrationToken = @import("../../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../../Foundation.zig").IAsyncAction;
const ScrollViewer = @import("./Controls.zig").ScrollViewer;
