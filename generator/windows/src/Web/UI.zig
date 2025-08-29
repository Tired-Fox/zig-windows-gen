pub const IWebViewControl = extern struct {
    vtable: *const VTable,
    pub fn getSource(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Source(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putSource(self: *@This(), source: *Uri) core.HResult!void {
        const _c = self.vtable.put_Source(@ptrCast(self), source);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDocumentTitle(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_DocumentTitle(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanGoBack(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanGoBack(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getCanGoForward(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_CanGoForward(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putDefaultBackgroundColor(self: *@This(), value: Color) core.HResult!void {
        const _c = self.vtable.put_DefaultBackgroundColor(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getDefaultBackgroundColor(self: *@This()) core.HResult!Color {
        var _r: Color = undefined;
        const _c = self.vtable.get_DefaultBackgroundColor(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getContainsFullScreenElement(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_ContainsFullScreenElement(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getSettings(self: *@This()) core.HResult!*WebViewControlSettings {
        var _r: *WebViewControlSettings = undefined;
        const _c = self.vtable.get_Settings(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getDeferredPermissionRequests(self: *@This()) core.HResult!*IVectorView(WebViewControlDeferredPermissionRequest) {
        var _r: *IVectorView(WebViewControlDeferredPermissionRequest) = undefined;
        const _c = self.vtable.get_DeferredPermissionRequests(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GoForward(self: *@This()) core.HResult!void {
        const _c = self.vtable.GoForward(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GoBack(self: *@This()) core.HResult!void {
        const _c = self.vtable.GoBack(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Refresh(self: *@This()) core.HResult!void {
        const _c = self.vtable.Refresh(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Stop(self: *@This()) core.HResult!void {
        const _c = self.vtable.Stop(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Navigate(self: *@This(), source: *Uri) core.HResult!void {
        const _c = self.vtable.Navigate(@ptrCast(self), source);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NavigateToString(self: *@This(), text: HSTRING) core.HResult!void {
        const _c = self.vtable.NavigateToString(@ptrCast(self), text);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NavigateToLocalStreamUri(self: *@This(), source: *Uri, streamResolver: *IUriToStreamResolver) core.HResult!void {
        const _c = self.vtable.NavigateToLocalStreamUri(@ptrCast(self), source, streamResolver);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn NavigateWithHttpRequestMessage(self: *@This(), requestMessage: *HttpRequestMessage) core.HResult!void {
        const _c = self.vtable.NavigateWithHttpRequestMessage(@ptrCast(self), requestMessage);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn InvokeScriptAsync(self: *@This(), scriptName: HSTRING, arguments: *IIterable(HSTRING)) core.HResult!*IAsyncOperation(HSTRING) {
        var _r: *IAsyncOperation(HSTRING) = undefined;
        const _c = self.vtable.InvokeScriptAsync(@ptrCast(self), scriptName, arguments, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CapturePreviewToStreamAsync(self: *@This(), stream: *IRandomAccessStream) core.HResult!*IAsyncAction {
        var _r: *IAsyncAction = undefined;
        const _c = self.vtable.CapturePreviewToStreamAsync(@ptrCast(self), stream, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn CaptureSelectedContentToDataPackageAsync(self: *@This()) core.HResult!*IAsyncOperation(DataPackage) {
        var _r: *IAsyncOperation(DataPackage) = undefined;
        const _c = self.vtable.CaptureSelectedContentToDataPackageAsync(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn BuildLocalStreamUri(self: *@This(), contentIdentifier: HSTRING, relativePath: HSTRING) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.BuildLocalStreamUri(@ptrCast(self), contentIdentifier, relativePath, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn GetDeferredPermissionRequestById(self: *@This(), id: u32, result: *WebViewControlDeferredPermissionRequest) core.HResult!void {
        const _c = self.vtable.GetDeferredPermissionRequestById(@ptrCast(self), id, result);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNavigationStarting(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationStartingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NavigationStarting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNavigationStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NavigationStarting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addContentLoading(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlContentLoadingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ContentLoading(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeContentLoading(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ContentLoading(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addDOMContentLoaded(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlDOMContentLoadedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_DOMContentLoaded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeDOMContentLoaded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_DOMContentLoaded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNavigationCompleted(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NavigationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNavigationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NavigationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFrameNavigationStarting(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationStartingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FrameNavigationStarting(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFrameNavigationStarting(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FrameNavigationStarting(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFrameContentLoading(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlContentLoadingEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FrameContentLoading(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFrameContentLoading(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FrameContentLoading(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFrameDOMContentLoaded(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlDOMContentLoadedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FrameDOMContentLoaded(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFrameDOMContentLoaded(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FrameDOMContentLoaded(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addFrameNavigationCompleted(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationCompletedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_FrameNavigationCompleted(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeFrameNavigationCompleted(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_FrameNavigationCompleted(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addScriptNotify(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlScriptNotifyEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ScriptNotify(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeScriptNotify(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ScriptNotify(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addLongRunningScriptDetected(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlLongRunningScriptDetectedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_LongRunningScriptDetected(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeLongRunningScriptDetected(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_LongRunningScriptDetected(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUnsafeContentWarningDisplaying(self: *@This(), handler: *TypedEventHandler(IWebViewControl,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UnsafeContentWarningDisplaying(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUnsafeContentWarningDisplaying(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UnsafeContentWarningDisplaying(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUnviewableContentIdentified(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlUnviewableContentIdentifiedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UnviewableContentIdentified(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUnviewableContentIdentified(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UnviewableContentIdentified(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addPermissionRequested(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlPermissionRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_PermissionRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removePermissionRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_PermissionRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addUnsupportedUriSchemeIdentified(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlUnsupportedUriSchemeIdentifiedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_UnsupportedUriSchemeIdentified(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeUnsupportedUriSchemeIdentified(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_UnsupportedUriSchemeIdentified(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addNewWindowRequested(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlNewWindowRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_NewWindowRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeNewWindowRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_NewWindowRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addContainsFullScreenElementChanged(self: *@This(), handler: *TypedEventHandler(IWebViewControl,IInspectable)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_ContainsFullScreenElementChanged(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeContainsFullScreenElementChanged(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_ContainsFullScreenElementChanged(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn addWebResourceRequested(self: *@This(), handler: *TypedEventHandler(IWebViewControl,WebViewControlWebResourceRequestedEventArgs)) core.HResult!EventRegistrationToken {
        var _r: EventRegistrationToken = undefined;
        const _c = self.vtable.add_WebResourceRequested(@ptrCast(self), handler, &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn removeWebResourceRequested(self: *@This(), token: EventRegistrationToken) core.HResult!void {
        const _c = self.vtable.remove_WebResourceRequested(@ptrCast(self), token);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControl";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3f921316-bc70-4bda-9136-c94370899fab";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Source: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        put_Source: *const fn(self: *anyopaque, source: *Uri) callconv(.winapi) HRESULT,
        get_DocumentTitle: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
        get_CanGoBack: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_CanGoForward: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_DefaultBackgroundColor: *const fn(self: *anyopaque, value: Color) callconv(.winapi) HRESULT,
        get_DefaultBackgroundColor: *const fn(self: *anyopaque, _r: *Color) callconv(.winapi) HRESULT,
        get_ContainsFullScreenElement: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_Settings: *const fn(self: *anyopaque, _r: **WebViewControlSettings) callconv(.winapi) HRESULT,
        get_DeferredPermissionRequests: *const fn(self: *anyopaque, _r: **IVectorView(WebViewControlDeferredPermissionRequest)) callconv(.winapi) HRESULT,
        GoForward: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        GoBack: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Refresh: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Stop: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Navigate: *const fn(self: *anyopaque, source: *Uri) callconv(.winapi) HRESULT,
        NavigateToString: *const fn(self: *anyopaque, text: HSTRING) callconv(.winapi) HRESULT,
        NavigateToLocalStreamUri: *const fn(self: *anyopaque, source: *Uri, streamResolver: *IUriToStreamResolver) callconv(.winapi) HRESULT,
        NavigateWithHttpRequestMessage: *const fn(self: *anyopaque, requestMessage: *HttpRequestMessage) callconv(.winapi) HRESULT,
        InvokeScriptAsync: *const fn(self: *anyopaque, scriptName: HSTRING, arguments: *IIterable(HSTRING), _r: **IAsyncOperation(HSTRING)) callconv(.winapi) HRESULT,
        CapturePreviewToStreamAsync: *const fn(self: *anyopaque, stream: *IRandomAccessStream, _r: **IAsyncAction) callconv(.winapi) HRESULT,
        CaptureSelectedContentToDataPackageAsync: *const fn(self: *anyopaque, _r: **IAsyncOperation(DataPackage)) callconv(.winapi) HRESULT,
        BuildLocalStreamUri: *const fn(self: *anyopaque, contentIdentifier: HSTRING, relativePath: HSTRING, _r: **Uri) callconv(.winapi) HRESULT,
        GetDeferredPermissionRequestById: *const fn(self: *anyopaque, id: u32, result: *WebViewControlDeferredPermissionRequest) callconv(.winapi) HRESULT,
        add_NavigationStarting: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationStartingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NavigationStarting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ContentLoading: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlContentLoadingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ContentLoading: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_DOMContentLoaded: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlDOMContentLoadedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_DOMContentLoaded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_NavigationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NavigationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_FrameNavigationStarting: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationStartingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FrameNavigationStarting: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_FrameContentLoading: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlContentLoadingEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FrameContentLoading: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_FrameDOMContentLoaded: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlDOMContentLoadedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FrameDOMContentLoaded: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_FrameNavigationCompleted: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlNavigationCompletedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_FrameNavigationCompleted: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ScriptNotify: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlScriptNotifyEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ScriptNotify: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_LongRunningScriptDetected: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlLongRunningScriptDetectedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_LongRunningScriptDetected: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_UnsafeContentWarningDisplaying: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UnsafeContentWarningDisplaying: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_UnviewableContentIdentified: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlUnviewableContentIdentifiedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UnviewableContentIdentified: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_PermissionRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlPermissionRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_PermissionRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_UnsupportedUriSchemeIdentified: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlUnsupportedUriSchemeIdentifiedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_UnsupportedUriSchemeIdentified: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_NewWindowRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlNewWindowRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_NewWindowRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_ContainsFullScreenElementChanged: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,IInspectable), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_ContainsFullScreenElementChanged: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
        add_WebResourceRequested: *const fn(self: *anyopaque, handler: *TypedEventHandler(IWebViewControl,WebViewControlWebResourceRequestedEventArgs), _r: *EventRegistrationToken) callconv(.winapi) HRESULT,
        remove_WebResourceRequested: *const fn(self: *anyopaque, token: EventRegistrationToken) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControl2 = extern struct {
    vtable: *const VTable,
    pub fn AddInitializeScript(self: *@This(), script: HSTRING) core.HResult!void {
        const _c = self.vtable.AddInitializeScript(@ptrCast(self), script);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControl2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4d3c06f9-c8df-41cc-8bd5-2a947b204503";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        AddInitializeScript: *const fn(self: *anyopaque, script: HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlContentLoadingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlContentLoadingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "9a3fccb2-b9bb-404b-a22b-66dccd1250c6";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlDOMContentLoadedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlDOMContentLoadedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "be8bc008-9541-4545-9ff2-2df585b29f7d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlDeferredPermissionRequest = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPermissionType(self: *@This()) core.HResult!WebViewControlPermissionType {
        var _r: WebViewControlPermissionType = undefined;
        const _c = self.vtable.get_PermissionType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Allow(self: *@This()) core.HResult!void {
        const _c = self.vtable.Allow(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Deny(self: *@This()) core.HResult!void {
        const _c = self.vtable.Deny(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlDeferredPermissionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2ce349e0-d759-445c-9926-8995298f152b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_PermissionType: *const fn(self: *anyopaque, _r: *WebViewControlPermissionType) callconv(.winapi) HRESULT,
        Allow: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Deny: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlLongRunningScriptDetectedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getExecutionTime(self: *@This()) core.HResult!TimeSpan {
        var _r: TimeSpan = undefined;
        const _c = self.vtable.get_ExecutionTime(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getStopPageScriptExecution(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_StopPageScriptExecution(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putStopPageScriptExecution(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_StopPageScriptExecution(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlLongRunningScriptDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "2a6e5bba-98b4-45bc-bbeb-0f69ce49c599";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_ExecutionTime: *const fn(self: *anyopaque, _r: *TimeSpan) callconv(.winapi) HRESULT,
        get_StopPageScriptExecution: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_StopPageScriptExecution: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlNavigationCompletedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getIsSuccess(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsSuccess(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getWebErrorStatus(self: *@This()) core.HResult!WebErrorStatus {
        var _r: WebErrorStatus = undefined;
        const _c = self.vtable.get_WebErrorStatus(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlNavigationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "20409918-4a15-4c46-a55d-f79edb0bde8b";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_IsSuccess: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        get_WebErrorStatus: *const fn(self: *anyopaque, _r: *WebErrorStatus) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlNavigationStartingEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlNavigationStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "0c9057c5-0a08-41c7-863b-71e3a9549137";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Cancel: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Cancel: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlNewWindowRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReferrer(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Referrer(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlNewWindowRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "3df44bbb-a124-46d5-a083-d02cacdff5ad";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Referrer: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlNewWindowRequestedEventArgs2 = extern struct {
    vtable: *const VTable,
    pub fn getNewWindow(self: *@This()) core.HResult!*IWebViewControl {
        var _r: *IWebViewControl = undefined;
        const _c = self.vtable.get_NewWindow(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putNewWindow(self: *@This(), value: *IWebViewControl) core.HResult!void {
        const _c = self.vtable.put_NewWindow(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlNewWindowRequestedEventArgs2";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "b53c5ca6-2aae-4bfc-92b9-c30e92b48098";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_NewWindow: *const fn(self: *anyopaque, _r: **IWebViewControl) callconv(.winapi) HRESULT,
        put_NewWindow: *const fn(self: *anyopaque, value: *IWebViewControl) callconv(.winapi) HRESULT,
        GetDeferral: *const fn(self: *anyopaque, _r: **Deferral) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlPermissionRequest = extern struct {
    vtable: *const VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        var _r: u32 = undefined;
        const _c = self.vtable.get_Id(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getPermissionType(self: *@This()) core.HResult!WebViewControlPermissionType {
        var _r: WebViewControlPermissionType = undefined;
        const _c = self.vtable.get_PermissionType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getState(self: *@This()) core.HResult!WebViewControlPermissionState {
        var _r: WebViewControlPermissionState = undefined;
        const _c = self.vtable.get_State(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn Defer(self: *@This()) core.HResult!void {
        const _c = self.vtable.Defer(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Allow(self: *@This()) core.HResult!void {
        const _c = self.vtable.Allow(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn Deny(self: *@This()) core.HResult!void {
        const _c = self.vtable.Deny(@ptrCast(self));
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlPermissionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e5bc836c-f22f-40e2-95b2-7729f840eb7f";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Id: *const fn(self: *anyopaque, _r: *u32) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_PermissionType: *const fn(self: *anyopaque, _r: *WebViewControlPermissionType) callconv(.winapi) HRESULT,
        get_State: *const fn(self: *anyopaque, _r: *WebViewControlPermissionState) callconv(.winapi) HRESULT,
        Defer: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Allow: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
        Deny: *const fn(self: *anyopaque) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlPermissionRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getPermissionRequest(self: *@This()) core.HResult!*WebViewControlPermissionRequest {
        var _r: *WebViewControlPermissionRequest = undefined;
        const _c = self.vtable.get_PermissionRequest(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlPermissionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "27204d51-2488-4cc5-968e-0a771e59c147";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_PermissionRequest: *const fn(self: *anyopaque, _r: **WebViewControlPermissionRequest) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlScriptNotifyEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_Value(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlScriptNotifyEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "491de57b-6f49-41bb-b591-51b85b817037";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Value: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlSettings = extern struct {
    vtable: *const VTable,
    pub fn putIsJavaScriptEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsJavaScriptEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsJavaScriptEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsJavaScriptEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsIndexedDBEnabled(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsIndexedDBEnabled(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsIndexedDBEnabled(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsIndexedDBEnabled(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putIsScriptNotifyAllowed(self: *@This(), value: bool) core.HResult!void {
        const _c = self.vtable.put_IsScriptNotifyAllowed(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getIsScriptNotifyAllowed(self: *@This()) core.HResult!bool {
        var _r: bool = undefined;
        const _c = self.vtable.get_IsScriptNotifyAllowed(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "c9967fbf-5e98-4cfd-8cce-27b0911e3de8";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        put_IsJavaScriptEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsJavaScriptEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsIndexedDBEnabled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsIndexedDBEnabled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_IsScriptNotifyAllowed: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
        get_IsScriptNotifyAllowed: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlUnsupportedUriSchemeIdentifiedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
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
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlUnsupportedUriSchemeIdentifiedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "e3b81944-e4fc-43dc-94ca-f980f30bc51d";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Handled: *const fn(self: *anyopaque, _r: *bool) callconv(.winapi) HRESULT,
        put_Handled: *const fn(self: *anyopaque, value: bool) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlUnviewableContentIdentifiedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Uri(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getReferrer(self: *@This()) core.HResult!*Uri {
        var _r: *Uri = undefined;
        const _c = self.vtable.get_Referrer(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getMediaType(self: *@This()) core.HResult!HSTRING {
        var _r: HSTRING = undefined;
        const _c = self.vtable.get_MediaType(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlUnviewableContentIdentifiedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "4a9680db-88f2-4e20-b693-b4e2df4aa581";
    pub const IID: Guid = Guid.initString(GUID);
    pub const SIGNATURE: []const u8 = core.Signature.interface(GUID);
    pub const VTable = extern struct {
        QueryInterface: *const fn(self: *anyopaque, riid: *const Guid, ppvObject: *?*anyopaque) callconv(.winapi) HRESULT,
        AddRef: *const fn(self: *anyopaque) callconv(.winapi) u32,
        Release: *const fn(self: *anyopaque,) callconv(.winapi) u32,
        GetIids: *const fn(self: *anyopaque, iidCount: *u32, iids: *[*]Guid) callconv(.winapi) HRESULT,
        GetRuntimeClassName: *const fn(self: *anyopaque, className: *HSTRING) callconv(.winapi) HRESULT,
        GetTrustLevel: *const fn(self: *anyopaque, trustLevel: *TrustLevel) callconv(.winapi) HRESULT,
        get_Uri: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_Referrer: *const fn(self: *anyopaque, _r: **Uri) callconv(.winapi) HRESULT,
        get_MediaType: *const fn(self: *anyopaque, _r: *HSTRING) callconv(.winapi) HRESULT,
    };
};
pub const IWebViewControlWebResourceRequestedEventArgs = extern struct {
    vtable: *const VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var _r: *Deferral = undefined;
        const _c = self.vtable.GetDeferral(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn getRequest(self: *@This()) core.HResult!*HttpRequestMessage {
        var _r: *HttpRequestMessage = undefined;
        const _c = self.vtable.get_Request(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub fn putResponse(self: *@This(), value: *HttpResponseMessage) core.HResult!void {
        const _c = self.vtable.put_Response(@ptrCast(self), value);
        if (_c != 0) return core.hresultToError(_c).err;
    }
    pub fn getResponse(self: *@This()) core.HResult!*HttpResponseMessage {
        var _r: *HttpResponseMessage = undefined;
        const _c = self.vtable.get_Response(@ptrCast(self), &_r);
        if (_c != 0) return core.hresultToError(_c).err;
        return _r;
    }
    pub const NAME: []const u8 = "Windows.Web.UI.IWebViewControlWebResourceRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = "44d6524d-55a4-4d8b-891c-931d8e25d42e";
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
        get_Request: *const fn(self: *anyopaque, _r: **HttpRequestMessage) callconv(.winapi) HRESULT,
        put_Response: *const fn(self: *anyopaque, value: *HttpResponseMessage) callconv(.winapi) HRESULT,
        get_Response: *const fn(self: *anyopaque, _r: **HttpResponseMessage) callconv(.winapi) HRESULT,
    };
};
pub const WebViewControlContentLoadingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebViewControlContentLoadingEventArgs = @ptrCast(self);
        return try this.getUri();
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlContentLoadingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlContentLoadingEventArgs.GUID;
    pub const IID: Guid = IWebViewControlContentLoadingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlContentLoadingEventArgs.SIGNATURE);
};
pub const WebViewControlDOMContentLoadedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebViewControlDOMContentLoadedEventArgs = @ptrCast(self);
        return try this.getUri();
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlDOMContentLoadedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlDOMContentLoadedEventArgs.GUID;
    pub const IID: Guid = IWebViewControlDOMContentLoadedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlDOMContentLoadedEventArgs.SIGNATURE);
};
pub const WebViewControlDeferredPermissionRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IWebViewControlDeferredPermissionRequest = @ptrCast(self);
        return try this.getId();
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebViewControlDeferredPermissionRequest = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getPermissionType(self: *@This()) core.HResult!WebViewControlPermissionType {
        const this: *IWebViewControlDeferredPermissionRequest = @ptrCast(self);
        return try this.getPermissionType();
    }
    pub fn Allow(self: *@This()) core.HResult!void {
        const this: *IWebViewControlDeferredPermissionRequest = @ptrCast(self);
        return try this.Allow();
    }
    pub fn Deny(self: *@This()) core.HResult!void {
        const this: *IWebViewControlDeferredPermissionRequest = @ptrCast(self);
        return try this.Deny();
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlDeferredPermissionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlDeferredPermissionRequest.GUID;
    pub const IID: Guid = IWebViewControlDeferredPermissionRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlDeferredPermissionRequest.SIGNATURE);
};
pub const WebViewControlLongRunningScriptDetectedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getExecutionTime(self: *@This()) core.HResult!TimeSpan {
        const this: *IWebViewControlLongRunningScriptDetectedEventArgs = @ptrCast(self);
        return try this.getExecutionTime();
    }
    pub fn getStopPageScriptExecution(self: *@This()) core.HResult!bool {
        const this: *IWebViewControlLongRunningScriptDetectedEventArgs = @ptrCast(self);
        return try this.getStopPageScriptExecution();
    }
    pub fn putStopPageScriptExecution(self: *@This(), value: bool) core.HResult!void {
        const this: *IWebViewControlLongRunningScriptDetectedEventArgs = @ptrCast(self);
        return try this.putStopPageScriptExecution(value);
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlLongRunningScriptDetectedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlLongRunningScriptDetectedEventArgs.GUID;
    pub const IID: Guid = IWebViewControlLongRunningScriptDetectedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlLongRunningScriptDetectedEventArgs.SIGNATURE);
};
pub const WebViewControlNavigationCompletedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebViewControlNavigationCompletedEventArgs = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getIsSuccess(self: *@This()) core.HResult!bool {
        const this: *IWebViewControlNavigationCompletedEventArgs = @ptrCast(self);
        return try this.getIsSuccess();
    }
    pub fn getWebErrorStatus(self: *@This()) core.HResult!WebErrorStatus {
        const this: *IWebViewControlNavigationCompletedEventArgs = @ptrCast(self);
        return try this.getWebErrorStatus();
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlNavigationCompletedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlNavigationCompletedEventArgs.GUID;
    pub const IID: Guid = IWebViewControlNavigationCompletedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlNavigationCompletedEventArgs.SIGNATURE);
};
pub const WebViewControlNavigationStartingEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebViewControlNavigationStartingEventArgs = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getCancel(self: *@This()) core.HResult!bool {
        const this: *IWebViewControlNavigationStartingEventArgs = @ptrCast(self);
        return try this.getCancel();
    }
    pub fn putCancel(self: *@This(), value: bool) core.HResult!void {
        const this: *IWebViewControlNavigationStartingEventArgs = @ptrCast(self);
        return try this.putCancel(value);
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlNavigationStartingEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlNavigationStartingEventArgs.GUID;
    pub const IID: Guid = IWebViewControlNavigationStartingEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlNavigationStartingEventArgs.SIGNATURE);
};
pub const WebViewControlNewWindowRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebViewControlNewWindowRequestedEventArgs = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getReferrer(self: *@This()) core.HResult!*Uri {
        const this: *IWebViewControlNewWindowRequestedEventArgs = @ptrCast(self);
        return try this.getReferrer();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IWebViewControlNewWindowRequestedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IWebViewControlNewWindowRequestedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub fn getNewWindow(self: *@This()) core.HResult!*IWebViewControl {
        var this: ?*IWebViewControlNewWindowRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlNewWindowRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.getNewWindow();
    }
    pub fn putNewWindow(self: *@This(), value: *IWebViewControl) core.HResult!void {
        var this: ?*IWebViewControlNewWindowRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlNewWindowRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.putNewWindow(value);
    }
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        var this: ?*IWebViewControlNewWindowRequestedEventArgs2 = undefined;
        const _c = IUnknown.QueryInterface(@ptrCast(self), &IWebViewControlNewWindowRequestedEventArgs2.IID, @ptrCast(&this));
        if (this == null or _c != 0) return core.hresultToError(_c).err;
        return try this.?.GetDeferral();
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlNewWindowRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlNewWindowRequestedEventArgs.GUID;
    pub const IID: Guid = IWebViewControlNewWindowRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlNewWindowRequestedEventArgs.SIGNATURE);
};
pub const WebViewControlPermissionRequest = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getId(self: *@This()) core.HResult!u32 {
        const this: *IWebViewControlPermissionRequest = @ptrCast(self);
        return try this.getId();
    }
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebViewControlPermissionRequest = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getPermissionType(self: *@This()) core.HResult!WebViewControlPermissionType {
        const this: *IWebViewControlPermissionRequest = @ptrCast(self);
        return try this.getPermissionType();
    }
    pub fn getState(self: *@This()) core.HResult!WebViewControlPermissionState {
        const this: *IWebViewControlPermissionRequest = @ptrCast(self);
        return try this.getState();
    }
    pub fn Defer(self: *@This()) core.HResult!void {
        const this: *IWebViewControlPermissionRequest = @ptrCast(self);
        return try this.Defer();
    }
    pub fn Allow(self: *@This()) core.HResult!void {
        const this: *IWebViewControlPermissionRequest = @ptrCast(self);
        return try this.Allow();
    }
    pub fn Deny(self: *@This()) core.HResult!void {
        const this: *IWebViewControlPermissionRequest = @ptrCast(self);
        return try this.Deny();
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlPermissionRequest";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlPermissionRequest.GUID;
    pub const IID: Guid = IWebViewControlPermissionRequest.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlPermissionRequest.SIGNATURE);
};
pub const WebViewControlPermissionRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getPermissionRequest(self: *@This()) core.HResult!*WebViewControlPermissionRequest {
        const this: *IWebViewControlPermissionRequestedEventArgs = @ptrCast(self);
        return try this.getPermissionRequest();
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlPermissionRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlPermissionRequestedEventArgs.GUID;
    pub const IID: Guid = IWebViewControlPermissionRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlPermissionRequestedEventArgs.SIGNATURE);
};
pub const WebViewControlPermissionState = enum(i32) {
    Unknown = 0,
    Defer = 1,
    Allow = 2,
    Deny = 3,
};
pub const WebViewControlPermissionType = enum(i32) {
    Geolocation = 0,
    UnlimitedIndexedDBQuota = 1,
    Media = 2,
    PointerLock = 3,
    WebNotifications = 4,
    Screen = 5,
    ImmersiveView = 6,
};
pub const WebViewControlScriptNotifyEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebViewControlScriptNotifyEventArgs = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getValue(self: *@This()) core.HResult!HSTRING {
        const this: *IWebViewControlScriptNotifyEventArgs = @ptrCast(self);
        return try this.getValue();
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlScriptNotifyEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlScriptNotifyEventArgs.GUID;
    pub const IID: Guid = IWebViewControlScriptNotifyEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlScriptNotifyEventArgs.SIGNATURE);
};
pub const WebViewControlSettings = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn putIsJavaScriptEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IWebViewControlSettings = @ptrCast(self);
        return try this.putIsJavaScriptEnabled(value);
    }
    pub fn getIsJavaScriptEnabled(self: *@This()) core.HResult!bool {
        const this: *IWebViewControlSettings = @ptrCast(self);
        return try this.getIsJavaScriptEnabled();
    }
    pub fn putIsIndexedDBEnabled(self: *@This(), value: bool) core.HResult!void {
        const this: *IWebViewControlSettings = @ptrCast(self);
        return try this.putIsIndexedDBEnabled(value);
    }
    pub fn getIsIndexedDBEnabled(self: *@This()) core.HResult!bool {
        const this: *IWebViewControlSettings = @ptrCast(self);
        return try this.getIsIndexedDBEnabled();
    }
    pub fn putIsScriptNotifyAllowed(self: *@This(), value: bool) core.HResult!void {
        const this: *IWebViewControlSettings = @ptrCast(self);
        return try this.putIsScriptNotifyAllowed(value);
    }
    pub fn getIsScriptNotifyAllowed(self: *@This()) core.HResult!bool {
        const this: *IWebViewControlSettings = @ptrCast(self);
        return try this.getIsScriptNotifyAllowed();
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlSettings";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlSettings.GUID;
    pub const IID: Guid = IWebViewControlSettings.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlSettings.SIGNATURE);
};
pub const WebViewControlUnsupportedUriSchemeIdentifiedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebViewControlUnsupportedUriSchemeIdentifiedEventArgs = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getHandled(self: *@This()) core.HResult!bool {
        const this: *IWebViewControlUnsupportedUriSchemeIdentifiedEventArgs = @ptrCast(self);
        return try this.getHandled();
    }
    pub fn putHandled(self: *@This(), value: bool) core.HResult!void {
        const this: *IWebViewControlUnsupportedUriSchemeIdentifiedEventArgs = @ptrCast(self);
        return try this.putHandled(value);
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlUnsupportedUriSchemeIdentifiedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlUnsupportedUriSchemeIdentifiedEventArgs.GUID;
    pub const IID: Guid = IWebViewControlUnsupportedUriSchemeIdentifiedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlUnsupportedUriSchemeIdentifiedEventArgs.SIGNATURE);
};
pub const WebViewControlUnviewableContentIdentifiedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn getUri(self: *@This()) core.HResult!*Uri {
        const this: *IWebViewControlUnviewableContentIdentifiedEventArgs = @ptrCast(self);
        return try this.getUri();
    }
    pub fn getReferrer(self: *@This()) core.HResult!*Uri {
        const this: *IWebViewControlUnviewableContentIdentifiedEventArgs = @ptrCast(self);
        return try this.getReferrer();
    }
    pub fn getMediaType(self: *@This()) core.HResult!HSTRING {
        const this: *IWebViewControlUnviewableContentIdentifiedEventArgs = @ptrCast(self);
        return try this.getMediaType();
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlUnviewableContentIdentifiedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlUnviewableContentIdentifiedEventArgs.GUID;
    pub const IID: Guid = IWebViewControlUnviewableContentIdentifiedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlUnviewableContentIdentifiedEventArgs.SIGNATURE);
};
pub const WebViewControlWebResourceRequestedEventArgs = extern struct {
    vtable: *const IInspectable.VTable,
    pub fn GetDeferral(self: *@This()) core.HResult!*Deferral {
        const this: *IWebViewControlWebResourceRequestedEventArgs = @ptrCast(self);
        return try this.GetDeferral();
    }
    pub fn getRequest(self: *@This()) core.HResult!*HttpRequestMessage {
        const this: *IWebViewControlWebResourceRequestedEventArgs = @ptrCast(self);
        return try this.getRequest();
    }
    pub fn putResponse(self: *@This(), value: *HttpResponseMessage) core.HResult!void {
        const this: *IWebViewControlWebResourceRequestedEventArgs = @ptrCast(self);
        return try this.putResponse(value);
    }
    pub fn getResponse(self: *@This()) core.HResult!*HttpResponseMessage {
        const this: *IWebViewControlWebResourceRequestedEventArgs = @ptrCast(self);
        return try this.getResponse();
    }
    pub const NAME: []const u8 = "Windows.Web.UI.WebViewControlWebResourceRequestedEventArgs";
    pub const RUNTIME_NAME: [:0]const u16 = @import("std").unicode.utf8ToUtf16LeStringLiteral(NAME);
    pub const GUID: []const u8 = IWebViewControlWebResourceRequestedEventArgs.GUID;
    pub const IID: Guid = IWebViewControlWebResourceRequestedEventArgs.IID;
    pub const SIGNATURE: []const u8 = core.Signature.class(NAME, IWebViewControlWebResourceRequestedEventArgs.SIGNATURE);
};
const IUnknown = @import("../root.zig").IUnknown;
const Guid = @import("../root.zig").Guid;
const IVectorView = @import("../Foundation/Collections.zig").IVectorView;
const Deferral = @import("../Foundation.zig").Deferral;
const IRandomAccessStream = @import("../Storage/Streams.zig").IRandomAccessStream;
const WebErrorStatus = @import("../Web.zig").WebErrorStatus;
const TrustLevel = @import("../root.zig").TrustLevel;
const TypedEventHandler = @import("../Foundation.zig").TypedEventHandler;
const HSTRING = @import("../root.zig").HSTRING;
const HttpResponseMessage = @import("./Http.zig").HttpResponseMessage;
const Color = @import("../UI.zig").Color;
const IIterable = @import("../Foundation/Collections.zig").IIterable;
const IInspectable = @import("../Foundation.zig").IInspectable;
const TimeSpan = @import("../Foundation.zig").TimeSpan;
const Uri = @import("../Foundation.zig").Uri;
const IUriToStreamResolver = @import("../Web.zig").IUriToStreamResolver;
const HRESULT = @import("../root.zig").HRESULT;
const IAsyncOperation = @import("../Foundation.zig").IAsyncOperation;
const core = @import("../root.zig").core;
const DataPackage = @import("../ApplicationModel/DataTransfer.zig").DataPackage;
const HttpRequestMessage = @import("./Http.zig").HttpRequestMessage;
const EventRegistrationToken = @import("../Foundation.zig").EventRegistrationToken;
const IAsyncAction = @import("../Foundation.zig").IAsyncAction;
pub const Interop = @import("./UI/Interop.zig");
